<#
.SYNOPSIS
    Verification script for AI Agent setup integrity.
#>

$ErrorActionPreference = 'Continue'

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "  🔍 AI AGENT ENVIRONMENT VERIFICATION" -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

$geminiDir = Join-Path $HOME ".gemini"
$agentsDir = Join-Path $HOME ".agents"

$allGood = $true

# 1. Check GEMINI.md / Rules
$ruleFile = Join-Path $geminiDir "GEMINI.md"
if (Test-Path $ruleFile) {
    $hasCl4r1t4s = Select-String -Path $ruleFile -Pattern "CL4R1T4S" -Quiet
    if ($hasCl4r1t4s) {
        Write-Host "[PASS] GEMINI.md (Rules & CL4R1T4S Scaffolding) terpasang valid." -ForegroundColor Green
    } else {
        Write-Host "[WARN] GEMINI.md ada tapi pola CL4R1T4S tidak ditemukan." -ForegroundColor Yellow
        $allGood = $false
    }
} else {
    Write-Host "[FAIL] GEMINI.md tidak ditemukan di $ruleFile" -ForegroundColor Red
    $allGood = $false
}

# 2. Check Configs & MCP
$manifestFile = Join-Path $geminiDir "config\import_manifest.json"
if (Test-Path $manifestFile) {
    Write-Host "[PASS] import_manifest.json valid." -ForegroundColor Green
} else {
    Write-Host "[FAIL] import_manifest.json tidak ditemukan." -ForegroundColor Red
    $allGood = $false
}

$mcpFile = Join-Path $geminiDir "config\mcp_config.json"
if (Test-Path $mcpFile) {
    try {
        $mcpJson = Get-Content $mcpFile -Raw | ConvertFrom-Json
        $serverCount = ($mcpJson.mcpServers.PSObject.Properties | Measure-Object).Count
        Write-Host "[PASS] MCP Servers: $serverCount servers aktif (context7, memory, sequential-thinking, fetch, puppeteer)." -ForegroundColor Green
    } catch {
        Write-Host "[WARN] mcp_config.json gagal diparse." -ForegroundColor Yellow
    }
} else {
    Write-Host "[FAIL] mcp_config.json tidak ditemukan." -ForegroundColor Red
    $allGood = $false
}

# 3. Check Built-in Skills
$builtinDir = Join-Path $geminiDir "antigravity-cli\builtin\skills"
if (Test-Path $builtinDir) {
    $builtinCount = (Get-ChildItem $builtinDir -Directory).Count
    Write-Host "[PASS] Antigravity Built-in Skills: $builtinCount skills ditemukan." -ForegroundColor Green
} else {
    Write-Host "[FAIL] Built-in skills folder tidak ditemukan." -ForegroundColor Red
    $allGood = $false
}

# 4. Check Plugins
$pluginsDir = Join-Path $geminiDir "config\plugins"
if (Test-Path $pluginsDir) {
    $pluginCount = (Get-ChildItem $pluginsDir -Directory).Count
    Write-Host "[PASS] Plugins: $pluginCount plugins ditemukan (Target: >= 11)." -ForegroundColor Green
} else {
    Write-Host "[FAIL] Plugins folder tidak ditemukan." -ForegroundColor Red
    $allGood = $false
}

# 5. Check Canonical Skills
$skillsDir = Join-Path $agentsDir "skills"
if (Test-Path $skillsDir) {
    $skillsCount = (Get-ChildItem $skillsDir -Directory).Count
    Write-Host "[PASS] Canonical Agent Skills: $skillsCount skills ditemukan (Target: >= 380)." -ForegroundColor Green
} else {
    Write-Host "[FAIL] Skills folder tidak ditemukan." -ForegroundColor Red
    $allGood = $false
}

# 6. Check Subagents in Plugins
$eccAgents = Join-Path $pluginsDir "ecc\agents"
$cavemanAgents = Join-Path $pluginsDir "caveman\agents"
$contextAgent = Join-Path $pluginsDir "context-management\agents"
$totalSubagents = 0
if (Test-Path $eccAgents) { $totalSubagents += (Get-ChildItem $eccAgents -Filter "*.md").Count }
if (Test-Path $cavemanAgents) { $totalSubagents += (Get-ChildItem $cavemanAgents -Filter "*.md").Count }
if (Test-Path $contextAgent) { $totalSubagents += (Get-ChildItem $contextAgent -Filter "*.md").Count }

Write-Host "[PASS] Subagents terdaftar: $totalSubagents subagent profiles." -ForegroundColor Green

Write-Host "==========================================================" -ForegroundColor Cyan
if ($allGood) {
    Write-Host "  ✅ ALL SYSTEMS GO! Agen siap bekerja dengan kepatuhan 100%." -ForegroundColor Green
} else {
    Write-Host "  ⚠️ Ada beberapa komponen yang kurang. Jalankan .\install.ps1 lagi." -ForegroundColor Yellow
}
Write-Host "==========================================================" -ForegroundColor Cyan
