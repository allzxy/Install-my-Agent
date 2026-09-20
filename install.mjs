#!/usr/bin/env node
/**
 * Universal AI Agent Adaptive Installer (Node.js Edition)
 * Zero external dependencies. Fast cross-platform installation.
 * Supports: Windows, Linux, macOS, Docker containers, WSL.
 */

import fs from 'node:fs';
import path from 'node:path';
import os from 'node:os';
import { fileURLToPath } from 'node:url';
import { execSync } from 'node:child_process';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

console.log("==========================================================");
console.log("  🚀 UNIVERSAL AI AGENT ADAPTIVE INSTALLER (NODE.JS)");
console.log(`  OS: ${os.type()} ${os.release()} (${os.arch()})`);
console.log(`  Node: ${process.version}`);
console.log("==========================================================");

const homeDir = os.homedir();
const cwd = process.cwd();
const sourceDir = __dirname;

function copyDirRecursive(src, dst) {
  if (!fs.existsSync(src)) return 0;
  fs.mkdirSync(dst, { recursive: true });
  let count = 0;
  const entries = fs.readdirSync(src, { withFileTypes: true });
  for (const entry of entries) {
    const srcPath = path.join(src, entry.name);
    const dstPath = path.join(dst, entry.name);
    if (entry.isDirectory()) {
      count += copyDirRecursive(srcPath, dstPath);
    } else {
      fs.copyFileSync(srcPath, dstPath);
      count++;
    }
  }
  return count;
}

// 1. Create Core Target Folders
console.log("\n[1/8] Setting up target agent directories...");
const geminiDir = path.join(homeDir, '.gemini');
const geminiConfig = path.join(geminiDir, 'config');
const geminiPlugins = path.join(geminiConfig, 'plugins');
const geminiBuiltin = path.join(geminiDir, 'antigravity-cli', 'builtin', 'skills');

const agentsDir = path.join(homeDir, '.agents');
const agentsSkills = path.join(agentsDir, 'skills');
const agentsMemory = path.join(agentsDir, 'memory');

const claudeDir = path.join(homeDir, '.claude');
const claudeSkills = path.join(claudeDir, 'skills');

for (const d of [geminiPlugins, geminiBuiltin, agentsSkills, agentsMemory, claudeSkills]) {
  fs.mkdirSync(d, { recursive: true });
}
console.log("  [OK] Target folders prepared.");

// 2. Behavioral Rules Injection
console.log("\n[2/8] Ingesting Behavioral Rules (CL4R1T4S, GateGuard, Obedience Scaffolding)...");
const ruleSrc = path.join(sourceDir, 'GEMINI.md');
if (fs.existsSync(ruleSrc)) {
  const content = fs.readFileSync(ruleSrc, 'utf8');
  const targets = [
    path.join(geminiDir, 'GEMINI.md'),
    path.join(agentsDir, 'AGENTS.md'),
    path.join(claudeDir, 'CLAUDE.md'),
    path.join(homeDir, '.cursorrules'),
    path.join(cwd, 'AGENTS.md'),
    path.join(cwd, 'GEMINI.md'),
    path.join(cwd, 'CLAUDE.md'),
    path.join(cwd, '.cursorrules'),
    path.join(cwd, '.windsurfrules'),
    path.join(cwd, '.clinerules'),
    path.join(cwd, 'CONVENTIONS.md')
  ];
  for (const t of targets) {
    try {
      fs.mkdirSync(path.dirname(t), { recursive: true });
      fs.writeFileSync(t, content, 'utf8');
    } catch (e) {}
  }
  console.log("  [OK] Injected into Antigravity, Claude, Cursor, Windsurf, Cline, Aider.");
}

// 3. Install Configs
console.log("\n[3/8] Installing Runtime Configs & Manifests...");
const configsSrc = path.join(sourceDir, 'configs');
if (fs.existsSync(configsSrc)) {
  copyDirRecursive(configsSrc, geminiConfig);
  const mcpSrc = path.join(configsSrc, 'mcp_config.json');
  if (fs.existsSync(mcpSrc)) {
    try {
      fs.copyFileSync(mcpSrc, path.join(claudeDir, 'mcp_config.json'));
      const cursorDir = path.join(homeDir, '.cursor');
      fs.mkdirSync(cursorDir, { recursive: true });
      fs.copyFileSync(mcpSrc, path.join(cursorDir, 'mcp.json'));
    } catch (e) {}
  }
  console.log("  [OK] config.json, import_manifest.json, mcp_config.json installed to Antigravity, Claude, dan Cursor.");
}

// 4. Install Builtin Skills
console.log("\n[4/8] Installing Antigravity Built-in Skills...");
const builtinSrc = path.join(sourceDir, 'builtin-skills');
if (fs.existsSync(builtinSrc)) {
  const count = copyDirRecursive(builtinSrc, geminiBuiltin);
  console.log(`  [OK] 5 Builtin skills deployed (${count} files).`);
}

// 5. Install Plugins & Subagents
console.log("\n[5/8] Installing 11 Plugins & 70+ Subagents...");
const pluginsSrc = path.join(sourceDir, 'plugins');
if (fs.existsSync(pluginsSrc)) {
  const pCount = copyDirRecursive(pluginsSrc, geminiPlugins);
  const pluginList = fs.readdirSync(pluginsSrc).filter(f => fs.statSync(path.join(pluginsSrc, f)).isDirectory());
  console.log(`  [OK] ${pluginList.length} plugins & subagents installed (${pCount} files).`);
}

// 6. Install Canonical Agent Skills
console.log("\n[6/8] Installing 380+ Canonical Agent Skills (~/.agents & ~/.claude)...");
const skillsSrc = path.join(sourceDir, 'skills');
if (fs.existsSync(skillsSrc)) {
  const sCount = copyDirRecursive(skillsSrc, agentsSkills);
  copyDirRecursive(skillsSrc, claudeSkills);
  const skillList = fs.readdirSync(skillsSrc).filter(f => fs.statSync(path.join(skillsSrc, f)).isDirectory());
  console.log(`  [OK] ${skillList.length} skills installed to ~/.agents/skills/ and ~/.claude/skills/ (${sCount} files).`);
}

// 7. Check & Install Obsidian
console.log("\n[7/8] Detecting & Installing Obsidian Application...");
const currentPlatform = os.platform(); // 'win32', 'darwin', 'linux'
let obsidianInstalled = false;

function commandExists(cmd) {
  try {
    const checkCmd = currentPlatform === 'win32' ? `where ${cmd}` : `which ${cmd}`;
    execSync(checkCmd, { stdio: 'ignore' });
    return true;
  } catch {
    return false;
  }
}

if (currentPlatform === 'win32') {
  const localApp = process.env.LOCALAPPDATA || path.join(homeDir, 'AppData', 'Local');
  const winObsidianPath = path.join(localApp, 'Programs', 'Obsidian', 'Obsidian.exe');
  if (fs.existsSync(winObsidianPath) || commandExists('obsidian')) {
    obsidianInstalled = true;
  }
} else if (currentPlatform === 'darwin') {
  if (fs.existsSync('/Applications/Obsidian.app') || commandExists('obsidian')) {
    obsidianInstalled = true;
  }
} else {
  // linux
  if (commandExists('obsidian') || fs.existsSync('/usr/bin/obsidian') || fs.existsSync('/snap/bin/obsidian')) {
    obsidianInstalled = true;
  }
}

if (obsidianInstalled) {
  console.log("  [OK] Obsidian is already installed on the system.");
} else {
  console.log("  Obsidian not detected. Attempting automated package install...");
  if (currentPlatform === 'win32') {
    if (commandExists('winget')) {
      try {
        console.log("  Running winget install for Obsidian...");
        execSync('winget install --id Obsidian.Obsidian --silent --accept-source-agreements --accept-package-agreements', { stdio: 'inherit' });
        console.log("  [OK] Obsidian installed successfully via winget.");
      } catch (e) {
        console.log("  [WARN] winget install failed. Please install Obsidian manually from https://obsidian.md");
      }
    } else {
      console.log("  [WARN] winget not found. Please install Obsidian manually from https://obsidian.md");
    }
  } else if (currentPlatform === 'darwin') {
    if (commandExists('brew')) {
      try {
        console.log("  Running brew install for Obsidian...");
        execSync('brew install --cask obsidian', { stdio: 'inherit' });
        console.log("  [OK] Obsidian installed successfully via Homebrew.");
      } catch (e) {
        console.log("  [WARN] brew install failed. Please install Obsidian manually from https://obsidian.md");
      }
    } else {
      console.log("  [WARN] Homebrew not found. Please download Obsidian from https://obsidian.md");
    }
  } else {
    console.log("  [INFO] On Linux, install Obsidian via Flatpak ('flatpak install flathub md.obsidian.Obsidian'), Snap ('sudo snap install obsidian --classic'), or download AppImage from https://obsidian.md");
  }
}

// 8. Auto-Scaffolding BrainVault & Registering Vault
console.log("\n[8/8] Auto-Scaffolding BrainVault & Obsidian Configuration...");
const brainVaultDir = path.join(homeDir, 'BrainVault');
const bvFolders = ['01_User_Profile', '02_Projects', '03_Knowledge_Base', '04_Decision_Logs', '05_Daily_Context', '.obsidian'];
for (const f of bvFolders) {
  fs.mkdirSync(path.join(brainVaultDir, f), { recursive: true });
}
console.log(`  [OK] BrainVault directories ready at ${brainVaultDir}`);

const indexFile = path.join(brainVaultDir, '00_INDEX.md');
if (!fs.existsSync(indexFile)) {
  const indexContent = `# 🧠 Antigravity Agent Brain (Obsidian Vault)

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
`;
  fs.writeFileSync(indexFile, indexContent, 'utf8');
  console.log("  [OK] Initial 00_INDEX.md created.");
} else {
  console.log("  [OK] 00_INDEX.md already exists.");
}

const appJsonFile = path.join(brainVaultDir, '.obsidian', 'app.json');
if (!fs.existsSync(appJsonFile)) {
  const appConfig = {
    alwaysUpdateLinks: true,
    useMarkdownLinks: false,
    newFileLocation: "root"
  };
  fs.writeFileSync(appJsonFile, JSON.stringify(appConfig, null, 2), 'utf8');
  console.log("  [OK] .obsidian/app.json configured.");
}

const graphJsonFile = path.join(brainVaultDir, '.obsidian', 'graph.json');
if (!fs.existsSync(graphJsonFile)) {
  const graphConfig = {
    "collapse-filter": false,
    "search": "",
    "showTags": false,
    "showAttachments": false,
    "hideUnresolved": false,
    "showOrphans": true,
    "collapse-color-groups": false,
    "colorGroups": [
      { "query": "path:01_User_Profile", "color": { "a": 1, "rgb": 14701138 } },
      { "query": "path:02_Projects", "color": { "a": 1, "rgb": 40447 } },
      { "query": "path:03_Knowledge_Base", "color": { "a": 1, "rgb": 65330 } },
      { "query": "path:04_Decision_Logs", "color": { "a": 1, "rgb": 16753920 } },
      { "query": "path:05_Daily_Context", "color": { "a": 1, "rgb": 11141375 } }
    ],
    "collapse-display": false,
    "showArrow": true,
    "textFadeMultiplier": 0,
    "nodeSizeMultiplier": 1.2,
    "lineSizeMultiplier": 1,
    "collapse-forces": false,
    "centerStrength": 0.5,
    "repelStrength": 10,
    "linkStrength": 1,
    "linkDistance": 250,
    "scale": 0.4522759805680858,
    "close": true
  };
  fs.writeFileSync(graphJsonFile, JSON.stringify(graphConfig, null, 2), 'utf8');
  console.log("  [OK] .obsidian/graph.json (visual node colors & forces) configured.");
}

// Register vault to obsidian.json
let obsidianConfigDir = '';
if (currentPlatform === 'win32') {
  obsidianConfigDir = path.join(process.env.APPDATA || path.join(homeDir, 'AppData', 'Roaming'), 'obsidian');
} else if (currentPlatform === 'darwin') {
  obsidianConfigDir = path.join(homeDir, 'Library', 'Application Support', 'obsidian');
} else {
  obsidianConfigDir = path.join(homeDir, '.config', 'obsidian');
}

try {
  fs.mkdirSync(obsidianConfigDir, { recursive: true });
  const obsidianConfigFile = path.join(obsidianConfigDir, 'obsidian.json');
  let configData = { vaults: {} };
  if (fs.existsSync(obsidianConfigFile)) {
    try {
      configData = JSON.parse(fs.readFileSync(obsidianConfigFile, 'utf8'));
      if (!configData.vaults) configData.vaults = {};
    } catch {}
  }

  const normVaultPath = path.resolve(brainVaultDir).toLowerCase();
  let alreadyExists = false;
  for (const [vKey, vVal] of Object.entries(configData.vaults)) {
    if (vVal && vVal.path && path.resolve(vVal.path).toLowerCase() === normVaultPath) {
      alreadyExists = true;
      vVal.open = true;
      break;
    }
  }

  if (!alreadyExists) {
    const vId = 'brainvault' + Date.now();
    configData.vaults[vId] = {
      path: brainVaultDir,
      ts: Date.now(),
      open: true
    };
  }

  fs.writeFileSync(obsidianConfigFile, JSON.stringify(configData, null, 2), 'utf8');
  console.log(`  [OK] BrainVault registered into Obsidian config (${obsidianConfigFile}).`);
} catch (err) {
  console.log(`  [WARN] Could not register vault into obsidian.json: ${err.message}`);
}

// 9. Auto-Approve Wrapper for Antigravity CLI (agy)
console.log("\n[9/9] Configuring Auto-Approve Wrapper for Antigravity CLI (agy)...");
try {
  if (currentPlatform === 'win32') {
    const docsDir = path.join(homeDir, 'Documents');
    const psProfiles = [
      path.join(docsDir, 'WindowsPowerShell', 'Microsoft.PowerShell_profile.ps1'),
      path.join(docsDir, 'PowerShell', 'Microsoft.PowerShell_profile.ps1')
    ];
    const psContent = `\n# Antigravity CLI Auto-Approve Wrapper\nfunction agy {\n    & "$env:LOCALAPPDATA\\agy\\bin\\agy.exe" --dangerously-skip-permissions $args\n}\n`;
    for (const p of psProfiles) {
      fs.mkdirSync(path.dirname(p), { recursive: true });
      if (fs.existsSync(p)) {
        const cur = fs.readFileSync(p, 'utf8');
        if (!cur.includes('dangerously-skip-permissions')) {
          fs.appendFileSync(p, psContent, 'utf8');
        }
      } else {
        fs.writeFileSync(p, psContent, 'utf8');
      }
    }
    const agyBinDir = path.join(process.env.LOCALAPPDATA || path.join(homeDir, 'AppData', 'Local'), 'agy', 'bin');
    if (fs.existsSync(agyBinDir)) {
      const initBat = path.join(agyBinDir, 'agy_cmd_init.bat');
      fs.writeFileSync(initBat, 'doskey agy="%LOCALAPPDATA%\\agy\\bin\\agy.exe" --dangerously-skip-permissions $*\r\n', 'utf8');
      try {
        execSync('reg add "HKCU\\Software\\Microsoft\\Command Processor" /v AutoRun /t REG_SZ /d "call \\"%LOCALAPPDATA%\\agy\\bin\\agy_cmd_init.bat\\"" /f', { stdio: 'ignore' });
      } catch {}
    }
    console.log("  [OK] Auto-Approve Wrapper configured for PowerShell & CMD.");
  } else {
    const shellRcFiles = [
      path.join(homeDir, '.bashrc'),
      path.join(homeDir, '.zshrc')
    ];
    const aliasLine = `\nalias agy='agy --dangerously-skip-permissions'\n`;
    for (const rc of shellRcFiles) {
      if (fs.existsSync(rc)) {
        const cur = fs.readFileSync(rc, 'utf8');
        if (!cur.includes('dangerously-skip-permissions')) {
          fs.appendFileSync(rc, aliasLine, 'utf8');
        }
      }
    }
    console.log("  [OK] Auto-Approve alias configured in ~/.bashrc and ~/.zshrc.");
  }
} catch (e) {
  console.log(`  [WARN] Could not configure auto-approve wrapper: ${e.message}`);
}

console.log("\n==========================================================");
console.log("  🎉 BRAIN INGESTION COMPLETE & ACTIVE!");
console.log("==========================================================");
