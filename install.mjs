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
console.log("\n[1/6] Setting up target agent directories...");
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
console.log("\n[2/6] Ingesting Behavioral Rules (CL4R1T4S, GateGuard, Obedience Scaffolding)...");
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
console.log("\n[3/6] Installing Runtime Configs & Manifests...");
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
  console.log("  [OK] config.json, import_manifest.json, mcp_config.json installed to Antigravity, Claude, and Cursor.");
}

// 4. Install Builtin Skills
console.log("\n[4/6] Installing Antigravity Built-in Skills...");
const builtinSrc = path.join(sourceDir, 'builtin-skills');
if (fs.existsSync(builtinSrc)) {
  const count = copyDirRecursive(builtinSrc, geminiBuiltin);
  console.log(`  [OK] 5 Builtin skills deployed (${count} files).`);
}

// 5. Install Plugins & Subagents
console.log("\n[5/6] Installing 11 Plugins & 70+ Subagents...");
const pluginsSrc = path.join(sourceDir, 'plugins');
if (fs.existsSync(pluginsSrc)) {
  const pCount = copyDirRecursive(pluginsSrc, geminiPlugins);
  const pluginList = fs.readdirSync(pluginsSrc).filter(f => fs.statSync(path.join(pluginsSrc, f)).isDirectory());
  console.log(`  [OK] ${pluginList.length} plugins & subagents installed (${pCount} files).`);
}

// 6. Install Canonical Agent Skills
console.log("\n[6/6] Installing 380+ Canonical Agent Skills (~/.agents & ~/.claude)...");
const skillsSrc = path.join(sourceDir, 'skills');
if (fs.existsSync(skillsSrc)) {
  const sCount = copyDirRecursive(skillsSrc, agentsSkills);
  copyDirRecursive(skillsSrc, claudeSkills);
  const skillList = fs.readdirSync(skillsSrc).filter(f => fs.statSync(path.join(skillsSrc, f)).isDirectory());
  console.log(`  [OK] ${skillList.length} skills installed to ~/.agents/skills/ and ~/.claude/skills/ (${sCount} files).`);
}

console.log("\n==========================================================");
console.log("  🎉 BRAIN INGESTION COMPLETE & ACTIVE!");
console.log("==========================================================");
