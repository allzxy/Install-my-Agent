<#
.SYNOPSIS
    Universal AI Agent Installer (Antigravity, Gemini CLI, Claude Code, Cursor, Codex).
.DESCRIPTION
    Installs 370+ canonical skills, 11 powerhouse plugins, 70+ subagents, Antigravity builtin skills,
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

Write-Host "`n[1/6] Menyiapkan struktur direktori tujuan..." -ForegroundColor Yellow
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

Write-Host "`n[2/6] Memasang Rules & Scaffolding (GEMINI.md & AGENTS.md)..." -ForegroundColor Yellow
$ruleSrc = Join-Path $sourceRoot "GEMINI.md"
if (Test-Path $ruleSrc) {
    Copy-Item $ruleSrc (Join-Path $geminiDir "GEMINI.md") -Force
    Copy-Item $ruleSrc (Join-Path $agentsDir "AGENTS.md") -Force
    Write-Host "  [OK] Rules CL4R1T4S & Gen Z ADHD tersalin ke $geminiDir\GEMINI.md" -ForegroundColor Green
}

Write-Host "`n[3/6] Memasang Konfigurasi & Plugin Manifest..." -ForegroundColor Yellow
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

Write-Host "`n[4/6] Memasang Built-in Skills Antigravity..." -ForegroundColor Yellow
$builtinSrc = Join-Path $sourceRoot "builtin-skills"
if (Test-Path $builtinSrc) {
    robocopy $builtinSrc $geminiBuiltinDir /E /NFL /NDL /NJH /NJS /nc /ns /np | Out-Null
    $builtinCount = (Get-ChildItem $geminiBuiltinDir -Directory).Count
    Write-Host "  [OK] $builtinCount built-in skills terpasang di $geminiBuiltinDir" -ForegroundColor Green
}

Write-Host "`n[5/6] Memasang 11 Plugin & 70+ Subagents..." -ForegroundColor Yellow
$pluginsSrc = Join-Path $sourceRoot "plugins"
if (Test-Path $pluginsSrc) {
    robocopy $pluginsSrc $geminiPluginsDir /E /NFL /NDL /NJH /NJS /nc /ns /np | Out-Null
    $pluginCount = (Get-ChildItem $geminiPluginsDir -Directory).Count
    Write-Host "  [OK] $pluginCount plugins (ECC, Caveman, Context-Management, UX-UI, etc.) terpasang." -ForegroundColor Green
}

Write-Host "`n[6/6] Memasang 370+ Canonical Agent Skills..." -ForegroundColor Yellow
$skillsSrc = Join-Path $sourceRoot "skills"
if (Test-Path $skillsSrc) {
    robocopy $skillsSrc $agentsSkillsDir /E /NFL /NDL /NJH /NJS /nc /ns /np | Out-Null
    $skillCount = (Get-ChildItem $agentsSkillsDir -Directory).Count
    Write-Host "  [OK] $skillCount skills terpasang di $agentsSkillsDir" -ForegroundColor Green
}

Write-Host "`n==========================================================" -ForegroundColor Cyan
Write-Host "  🎉 INSTALASI SELESAI SAT-SET & FULLY OPERATIONAL!" -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "Semua AI Agent (Antigravity, Gemini CLI, Claude, Cursor) sekarang langsung:" -ForegroundColor White
Write-Host "1. Mengenali 370+ skills di ~/.agents/skills/" -ForegroundColor Gray
Write-Host "2. Mengenali 11 plugins & subagents di ~/.gemini/config/plugins/" -ForegroundColor Gray
Write-Host "3. Menjalankan aturan CL4R1T4S, auto-delegasi background, dan zero-hallucination!" -ForegroundColor Gray
Write-Host "Jalankan 'powershell -File .\verify.ps1' untuk test integritas kapan pun.`n" -ForegroundColor Yellow
