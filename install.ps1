<#
.SYNOPSIS
    Universal AI Agent Installer (Antigravity, Gemini CLI, Claude Code, Cursor, Codex).
.DESCRIPTION
    Installs 380+ canonical skills, 11 powerhouse plugins, 70+ subagents, Antigravity builtin skills,
    system configs, and CL4R1T4S zero-hallucination agent rules to your system (~/.gemini and ~/.agents).
.PARAMETER Scope
    'Global' (default, installs to ~/.gemini and ~/.agents) or 'Workspace' (installs to current directory).
#>

[CmdletBinding()]
param (
    [ValidateSet('Global', 'Workspace')]
    [string]$Scope = 'Global'
)

$ErrorActionPreference = 'Stop'

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "  🚀 UNIVERSAL AI AGENT ENVIRONMENT INSTALLER" -ForegroundColor Cyan
Write-Host "  Skills + Plugins + Subagents + CL4R1T4S Behavioral Rules" -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

$sourceRoot = $PSScriptRoot
if (-not $sourceRoot) { $sourceRoot = (Get-Location).Path }

if ($Scope -eq 'Global') {
    $geminiDir = Join-Path $HOME ".gemini"
    $agentsDir = Join-Path $HOME ".agents"
} else {
    $geminiDir = Join-Path (Get-Location).Path ".gemini"
    $agentsDir = Join-Path (Get-Location).Path ".agents"
}

Write-Host "`n[1/8] Menyiapkan struktur direktori tujuan..." -ForegroundColor Yellow
$geminiConfigDir  = Join-Path $geminiDir "config"
$geminiPluginsDir = Join-Path $geminiConfigDir "plugins"
$geminiBuiltinDir = Join-Path $geminiDir "antigravity-cli\builtin\skills"
$agentsSkillsDir  = Join-Path $agentsDir "skills"
$agentsMemoryDir  = Join-Path $agentsDir "memory"

$dirs = @($geminiDir, $geminiConfigDir, $geminiPluginsDir, $geminiBuiltinDir, $agentsDir, $agentsSkillsDir, $agentsMemoryDir)
foreach ($d in $dirs) {
    if (-not (Test-Path $d)) {
        New-Item -ItemType Directory -Path $d -Force | Out-Null
    }
}
Write-Host "  [OK] Direktori target ready: $geminiDir & $agentsDir" -ForegroundColor Green

Write-Host "`n[2/8] Memasang Rules & Scaffolding (GEMINI.md & AGENTS.md)..." -ForegroundColor Yellow
$ruleSrc = Join-Path $sourceRoot "GEMINI.md"
if (Test-Path $ruleSrc) {
    Copy-Item $ruleSrc (Join-Path $geminiDir "GEMINI.md") -Force
    Copy-Item $ruleSrc (Join-Path $agentsDir "AGENTS.md") -Force
    Write-Host "  [OK] Rules CL4R1T4S & Gen Z ADHD tersalin ke $geminiDir\GEMINI.md" -ForegroundColor Green
}

Write-Host "`n[3/8] Memasang Konfigurasi & Plugin Manifest..." -ForegroundColor Yellow
$configSrc = Join-Path $sourceRoot "configs"
if (Test-Path $configSrc) {
    Copy-Item (Join-Path $configSrc "*") $geminiConfigDir -Recurse -Force
    $mcpSrc = Join-Path $configSrc "mcp_config.json"
    if (Test-Path $mcpSrc) {
        $claudeDir = Join-Path $HOME ".claude"
        if (Test-Path $claudeDir) { Copy-Item $mcpSrc (Join-Path $claudeDir "mcp_config.json") -Force }
        $cursorDir = Join-Path $HOME ".cursor"
        New-Item -ItemType Directory -Path $cursorDir -Force | Out-Null
        Copy-Item $mcpSrc (Join-Path $cursorDir "mcp.json") -Force
    }
    Write-Host "  [OK] config.json, import_manifest.json, mcp_config.json terpasang di Antigravity, Claude, dan Cursor." -ForegroundColor Green
}

Write-Host "`n[4/8] Memasang Built-in Skills Antigravity..." -ForegroundColor Yellow
$builtinSrc = Join-Path $sourceRoot "builtin-skills"
if (Test-Path $builtinSrc) {
    robocopy $builtinSrc $geminiBuiltinDir /E /NFL /NDL /NJH /NJS /nc /ns /np | Out-Null
    $builtinCount = (Get-ChildItem $geminiBuiltinDir -Directory).Count
    Write-Host "  [OK] $builtinCount built-in skills terpasang di $geminiBuiltinDir" -ForegroundColor Green
}

Write-Host "`n[5/8] Memasang 11 Plugin & 70+ Subagents..." -ForegroundColor Yellow
$pluginsSrc = Join-Path $sourceRoot "plugins"
if (Test-Path $pluginsSrc) {
    robocopy $pluginsSrc $geminiPluginsDir /E /NFL /NDL /NJH /NJS /nc /ns /np | Out-Null
    $pluginCount = (Get-ChildItem $geminiPluginsDir -Directory).Count
    Write-Host "  [OK] $pluginCount plugins (ECC, Caveman, Context-Management, UX-UI, etc.) terpasang." -ForegroundColor Green
}

Write-Host "`n[6/8] Memasang 380+ Canonical Agent Skills..." -ForegroundColor Yellow
$skillsSrc = Join-Path $sourceRoot "skills"
if (Test-Path $skillsSrc) {
    robocopy $skillsSrc $agentsSkillsDir /E /NFL /NDL /NJH /NJS /nc /ns /np | Out-Null
    $skillCount = (Get-ChildItem $agentsSkillsDir -Directory).Count
    Write-Host "  [OK] $skillCount skills terpasang di $agentsSkillsDir" -ForegroundColor Green
}

Write-Host "`n[7/8] Memeriksa & Menginstal Obsidian Application..." -ForegroundColor Yellow
$obsidianInstalled = $false
$obsidianExePath = Join-Path $env:LOCALAPPDATA "Programs\Obsidian\Obsidian.exe"
if (Test-Path $obsidianExePath) {
    $obsidianInstalled = $true
} elseif (Get-Command obsidian -ErrorAction SilentlyContinue) {
    $obsidianInstalled = $true
} else {
    $regPaths = @(
        "HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*",
        "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*",
        "HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*"
    )
    foreach ($rp in $regPaths) {
        $found = Get-ItemProperty $rp -ErrorAction SilentlyContinue | Where-Object { $_.DisplayName -like "*Obsidian*" }
        if ($found) {
            $obsidianInstalled = $true
            break
        }
    }
}

if ($obsidianInstalled) {
    Write-Host "  [OK] Obsidian sudah terinstall di sistem." -ForegroundColor Green
} else {
    Write-Host "  Obsidian belum terdeteksi. Mencoba menginstal otomatis via winget..." -ForegroundColor Yellow
    if (Get-Command winget -ErrorAction SilentlyContinue) {
        try {
            winget install --id Obsidian.Obsidian --silent --accept-source-agreements --accept-package-agreements
            if ($LASTEXITCODE -eq 0) {
                Write-Host "  [OK] Obsidian berhasil diinstall via winget." -ForegroundColor Green
            } else {
                Write-Host "  [WARN] winget selesai dengan kode: $LASTEXITCODE. Silakan cek instalasi atau unduh manual dari https://obsidian.md" -ForegroundColor Yellow
            }
        } catch {
            Write-Host "  [WARN] Gagal mengeksekusi winget: $_. Silakan download manual dari https://obsidian.md" -ForegroundColor Yellow
        }
    } else {
        Write-Host "  [WARN] winget tidak tersedia di lingkungan ini. Silakan unduh dan pasang Obsidian dari https://obsidian.md" -ForegroundColor Yellow
    }
}

Write-Host "`n[8/8] Auto-Scaffolding BrainVault & Registrasi Vault Obsidian..." -ForegroundColor Yellow
$brainVaultDir = Join-Path $HOME "BrainVault"
$bvFolders = @("01_User_Profile", "02_Projects", "03_Knowledge_Base", "04_Decision_Logs", "05_Daily_Context", ".obsidian")
foreach ($folder in $bvFolders) {
    $targetFolder = Join-Path $brainVaultDir $folder
    if (-not (Test-Path $targetFolder)) {
        New-Item -ItemType Directory -Path $targetFolder -Force | Out-Null
    }
}
Write-Host "  [OK] Struktur folder BrainVault siap di $brainVaultDir" -ForegroundColor Green

$indexFile = Join-Path $brainVaultDir "00_INDEX.md"
if (-not (Test-Path $indexFile)) {
    $defaultIndex = @'
# 🧠 Antigravity Agent Brain (Obsidian Vault)

Selamat datang di **Map of Content (MOC)** otak agent Antigravity. Seluruh riwayat, arsitektur sistem, preferensi user, dan pelajaran dari tiap pengerjaan task tersimpan dan saling terhubung di sini secara otonom.

---

## 🗺️ Peta Navigasi Otak

### 1. [[User_Style_Preferences|01. Profil & Preferensi User]]
- Format komunikasi santai, Gen Z Indonesian, sat-set, no cap.
- Aturan anti-kaku, ADHD-friendly, bebas template boilerplate.

### 2. [[02_Projects|02. Projects Active & Repositories]]
- Catatan arsitektur, progres task, dan blueprint deployment aktif.

### 3. [[03_Knowledge_Base|03. Knowledge Base & Engineering Skills]]
- Best practices, ADRs, arsitektur sistem, dan referensi teknologi.

### 4. [[04_Decision_Logs|04. Decision Logs & Retrospectives]]
- Catatan keputusan arsitektural (ADR) dan pembelajaran pasca-eksekusi.

### 5. [[05_Daily_Context|05. Daily Context & Memory]]
- Konteks kerja harian dan snapshot session log.

---
'@
    Set-Content -Path $indexFile -Value $defaultIndex -Encoding UTF8
    Write-Host "  [OK] File 00_INDEX.md (Map of Content) dibuat." -ForegroundColor Green
} else {
    Write-Host "  [OK] File 00_INDEX.md sudah ada." -ForegroundColor Green
}

$appJsonFile = Join-Path $brainVaultDir ".obsidian\app.json"
if (-not (Test-Path $appJsonFile)) {
    $appConfig = @{
        alwaysUpdateLinks = $true
        useMarkdownLinks  = $false
        newFileLocation   = "root"
    } | ConvertTo-Json -Depth 5
    Set-Content -Path $appJsonFile -Value $appConfig -Encoding UTF8
    Write-Host "  [OK] Konfigurasi app.json dibuat." -ForegroundColor Green
}

$graphJsonFile = Join-Path $brainVaultDir ".obsidian\graph.json"
if (-not (Test-Path $graphJsonFile)) {
    $graphConfig = @{
        "collapse-filter"        = $false
        "search"                 = ""
        "showTags"               = $false
        "showAttachments"        = $false
        "hideUnresolved"         = $false
        "showOrphans"            = $true
        "collapse-color-groups"  = $false
        "colorGroups"            = @(
            @{ query = "path:01_User_Profile"; color = @{ a = 1; rgb = 14701138 } },
            @{ query = "path:02_Projects";     color = @{ a = 1; rgb = 40447 } },
            @{ query = "path:03_Knowledge_Base"; color = @{ a = 1; rgb = 65330 } },
            @{ query = "path:04_Decision_Logs"; color = @{ a = 1; rgb = 16753920 } },
            @{ query = "path:05_Daily_Context"; color = @{ a = 1; rgb = 11141375 } }
        )
        "collapse-display"       = $false
        "showArrow"              = $true
        "textFadeMultiplier"     = 0
        "nodeSizeMultiplier"     = 1.2
        "lineSizeMultiplier"     = 1
        "collapse-forces"        = $false
        "centerStrength"         = 0.5
        "repelStrength"          = 10
        "linkStrength"           = 1
        "linkDistance"           = 250
        "scale"                  = 0.4522759805680858
        "close"                  = $true
    } | ConvertTo-Json -Depth 10
    Set-Content -Path $graphJsonFile -Value $graphConfig -Encoding UTF8
    Write-Host "  [OK] Konfigurasi visual graph.json dibuat." -ForegroundColor Green
}

$obsidianConfigDir = Join-Path $env:APPDATA "obsidian"
$obsidianConfigFile = Join-Path $obsidianConfigDir "obsidian.json"
try {
    if (-not (Test-Path $obsidianConfigDir)) {
        New-Item -ItemType Directory -Path $obsidianConfigDir -Force | Out-Null
    }
    
    $vaultRegistry = @{ vaults = @{} }
    if (Test-Path $obsidianConfigFile) {
        try {
            $parsed = Get-Content -Path $obsidianConfigFile -Raw | ConvertFrom-Json
            if ($parsed.vaults) {
                foreach ($prop in $parsed.vaults.PSObject.Properties) {
                    $vaultRegistry.vaults[$prop.Name] = $prop.Value
                }
            }
        } catch {}
    }
    
    $normTarget = $brainVaultDir.TrimEnd('\')
    $alreadyRegistered = $false
    foreach ($vKey in $vaultRegistry.vaults.Keys) {
        $vPath = $vaultRegistry.vaults[$vKey].path
        if ($vPath -and ($vPath.TrimEnd('\') -ieq $normTarget)) {
            $alreadyRegistered = $true
            $vaultRegistry.vaults[$vKey].open = $true
            break
        }
    }
    
    if (-not $alreadyRegistered) {
        $vaultId = "brainvault" + [DateTimeOffset]::UtcNow.ToUnixTimeMilliseconds()
        $vaultRegistry.vaults[$vaultId] = @{
            path = $brainVaultDir
            ts   = [DateTimeOffset]::UtcNow.ToUnixTimeMilliseconds()
            open = $true
        }
    }
    
    $vaultRegistry | ConvertTo-Json -Depth 10 | Set-Content -Path $obsidianConfigFile -Encoding UTF8
    Write-Host "  [OK] BrainVault berhasil didaftarkan ke konfigurasi Obsidian ($obsidianConfigFile)." -ForegroundColor Green
} catch {
    Write-Host "  [WARN] Tidak dapat mendaftarkan vault ke obsidian.json: $_" -ForegroundColor Yellow
}

Write-Host "`n==========================================================" -ForegroundColor Cyan
Write-Host "  🎉 INSTALASI SELESAI SAT-SET & FULLY OPERATIONAL!" -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "Semua AI Agent (Antigravity, Gemini CLI, Claude, Cursor) sekarang langsung:" -ForegroundColor White
Write-Host "1. Mengenali 380+ skills di ~/.agents/skills/" -ForegroundColor Gray
Write-Host "2. Mengenali 11 plugins & subagents di ~/.gemini/config/plugins/" -ForegroundColor Gray
Write-Host "3. Menjalankan aturan CL4R1T4S, auto-delegasi background, dan zero-hallucination!" -ForegroundColor Gray
Write-Host "4. Terintegrasi penuh dengan Obsidian BrainVault di $brainVaultDir" -ForegroundColor Gray
Write-Host "Jalankan 'powershell -File .\verify.ps1' untuk test integritas kapan pun.`n" -ForegroundColor Yellow
