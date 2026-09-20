#!/usr/bin/env bash
set -e

echo "=========================================================="
echo "  🚀 UNIVERSAL AI AGENT ENVIRONMENT INSTALLER (UNIX/POSIX)"
echo "  Skills + Plugins + Subagents + CL4R1T4S Behavioral Rules"
echo "=========================================================="

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_GEMINI="${HOME}/.gemini"
TARGET_AGENTS="${HOME}/.agents"

echo "[1/8] Setting up target directories..."
mkdir -p "${TARGET_GEMINI}/config/plugins"
mkdir -p "${TARGET_GEMINI}/antigravity-cli/builtin/skills"
mkdir -p "${TARGET_AGENTS}/skills"
mkdir -p "${TARGET_AGENTS}/memory"

echo "[2/8] Installing GEMINI.md & AGENTS.md rules..."
if [ -f "${SOURCE_DIR}/GEMINI.md" ]; then
    cp -f "${SOURCE_DIR}/GEMINI.md" "${TARGET_GEMINI}/GEMINI.md"
    cp -f "${SOURCE_DIR}/GEMINI.md" "${TARGET_AGENTS}/AGENTS.md"
fi

echo "[3/8] Installing configs and manifests..."
if [ -d "${SOURCE_DIR}/configs" ]; then
    cp -rf "${SOURCE_DIR}/configs/"* "${TARGET_GEMINI}/config/"
fi

echo "[4/8] Installing Antigravity built-in skills..."
if [ -d "${SOURCE_DIR}/builtin-skills" ]; then
    cp -rf "${SOURCE_DIR}/builtin-skills/"* "${TARGET_GEMINI}/antigravity-cli/builtin/skills/"
fi

echo "[5/8] Installing plugins & subagents..."
if [ -d "${SOURCE_DIR}/plugins" ]; then
    cp -rf "${SOURCE_DIR}/plugins/"* "${TARGET_GEMINI}/config/plugins/"
fi

echo "[6/8] Installing 370+ canonical agent skills..."
if [ -d "${SOURCE_DIR}/skills" ]; then
    cp -rf "${SOURCE_DIR}/skills/"* "${TARGET_AGENTS}/skills/"
fi

echo "[7/8] Detecting & Installing Obsidian..."
OS_TYPE="$(uname -s)"
OBSIDIAN_INSTALLED=false

if command -v obsidian >/dev/null 2>&1; then
    OBSIDIAN_INSTALLED=true
elif [ "$OS_TYPE" = "Darwin" ] && [ -d "/Applications/Obsidian.app" ]; then
    OBSIDIAN_INSTALLED=true
elif [ -f "/usr/bin/obsidian" ] || [ -f "/snap/bin/obsidian" ]; then
    OBSIDIAN_INSTALLED=true
fi

if [ "$OBSIDIAN_INSTALLED" = true ]; then
    echo "  [OK] Obsidian is already installed."
else
    echo "  Obsidian not detected. Checking package managers..."
    if [ "$OS_TYPE" = "Darwin" ]; then
        if command -v brew >/dev/null 2>&1; then
            echo "  Running brew install --cask obsidian..."
            brew install --cask obsidian || echo "  [WARN] brew install failed. Please install Obsidian manually from https://obsidian.md"
        else
            echo "  [WARN] Homebrew not found. Please download Obsidian from https://obsidian.md"
        fi
    else
        echo "  [INFO] On Linux, install Obsidian via Flatpak ('flatpak install flathub md.obsidian.Obsidian'), Snap ('sudo snap install obsidian --classic'), or download AppImage from https://obsidian.md"
    fi
fi

echo "[8/8] Auto-Scaffolding BrainVault & Obsidian Configuration..."
BRAINVAULT_DIR="${HOME}/BrainVault"
mkdir -p "${BRAINVAULT_DIR}/01_User_Profile"
mkdir -p "${BRAINVAULT_DIR}/02_Projects"
mkdir -p "${BRAINVAULT_DIR}/03_Knowledge_Base"
mkdir -p "${BRAINVAULT_DIR}/04_Decision_Logs"
mkdir -p "${BRAINVAULT_DIR}/05_Daily_Context"
mkdir -p "${BRAINVAULT_DIR}/.obsidian"
echo "  [OK] BrainVault directories ready at ${BRAINVAULT_DIR}"

if [ ! -f "${BRAINVAULT_DIR}/00_INDEX.md" ]; then
    cat << 'EOF' > "${BRAINVAULT_DIR}/00_INDEX.md"
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
EOF
    echo "  [OK] Initial 00_INDEX.md created."
fi

if [ ! -f "${BRAINVAULT_DIR}/.obsidian/app.json" ]; then
    cat << 'EOF' > "${BRAINVAULT_DIR}/.obsidian/app.json"
{
  "alwaysUpdateLinks": true,
  "useMarkdownLinks": false,
  "newFileLocation": "root"
}
EOF
    echo "  [OK] .obsidian/app.json configured."
fi

if [ ! -f "${BRAINVAULT_DIR}/.obsidian/graph.json" ]; then
    cat << 'EOF' > "${BRAINVAULT_DIR}/.obsidian/graph.json"
{
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
}
EOF
    echo "  [OK] .obsidian/graph.json configured."
fi

if [ "$OS_TYPE" = "Darwin" ]; then
    OBSIDIAN_CONF_DIR="${HOME}/Library/Application Support/obsidian"
else
    OBSIDIAN_CONF_DIR="${HOME}/.config/obsidian"
fi
mkdir -p "${OBSIDIAN_CONF_DIR}"
OBSIDIAN_CONF_FILE="${OBSIDIAN_CONF_DIR}/obsidian.json"

if command -v node >/dev/null 2>&1; then
    node -e '
    const fs = require("fs");
    const p = process.argv[1];
    const vPath = process.argv[2];
    let data = { vaults: {} };
    if (fs.existsSync(p)) {
      try { data = JSON.parse(fs.readFileSync(p, "utf8")); if (!data.vaults) data.vaults = {}; } catch {}
    }
    let found = false;
    for (const k of Object.keys(data.vaults)) {
      if (data.vaults[k] && data.vaults[k].path === vPath) { found = true; data.vaults[k].open = true; break; }
    }
    if (!found) {
      data.vaults["brainvault" + Date.now()] = { path: vPath, ts: Date.now(), open: true };
    }
    fs.writeFileSync(p, JSON.stringify(data, null, 2), "utf8");
    ' "${OBSIDIAN_CONF_FILE}" "${BRAINVAULT_DIR}" 2>/dev/null || true
elif command -v python3 >/dev/null 2>&1; then
    python3 -c '
import json, os, sys, time
p, vPath = sys.argv[1], sys.argv[2]
data = {"vaults": {}}
if os.path.exists(p):
    try:
        with open(p, "r", encoding="utf-8") as f:
            data = json.load(f)
            if "vaults" not in data: data["vaults"] = {}
    except Exception: pass
found = False
for k, v in data.get("vaults", {}).items():
    if isinstance(v, dict) and v.get("path") == vPath:
        found = True
        v["open"] = True
        break
if not found:
    now_ms = int(time.time() * 1000)
    data.setdefault("vaults", {})[f"brainvault{now_ms}"] = {"path": vPath, "ts": now_ms, "open": True}
with open(p, "w", encoding="utf-8") as f:
    json.dump(data, f, indent=2)
' "${OBSIDIAN_CONF_FILE}" "${BRAINVAULT_DIR}" 2>/dev/null || true
elif [ ! -f "${OBSIDIAN_CONF_FILE}" ]; then
    echo "{\"vaults\":{\"brainvault01\":{\"path\":\"${BRAINVAULT_DIR}\",\"ts\":1789863800000,\"open\":true}}}" > "${OBSIDIAN_CONF_FILE}"
fi
echo "  [OK] Obsidian vault configuration registered."

echo ""
echo "[9/9] Configuring Auto-Approve alias for Antigravity CLI (agy)..."
for rc in "${HOME}/.bashrc" "${HOME}/.zshrc"; do
    if [ -f "${rc}" ]; then
        if ! grep -q "dangerously-skip-permissions" "${rc}"; then
            echo "alias agy='agy --dangerously-skip-permissions'" >> "${rc}"
        fi
    fi
done
echo "  [OK] Auto-Approve alias configured in shell profiles."

echo "=========================================================="
echo "  🎉 INSTALLATION COMPLETE & OPERATIONAL!"
echo "=========================================================="
