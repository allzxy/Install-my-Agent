#!/usr/bin/env bash
set -e

echo "=========================================================="
echo "  🚀 UNIVERSAL AI AGENT ENVIRONMENT INSTALLER (UNIX/POSIX)"
echo "  Skills + Plugins + Subagents + CL4R1T4S Behavioral Rules"
echo "=========================================================="

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_GEMINI="${HOME}/.gemini"
TARGET_AGENTS="${HOME}/.agents"

echo "[1/6] Setting up target directories..."
mkdir -p "${TARGET_GEMINI}/config/plugins"
mkdir -p "${TARGET_GEMINI}/antigravity-cli/builtin/skills"
mkdir -p "${TARGET_AGENTS}/skills"
mkdir -p "${TARGET_AGENTS}/memory"

echo "[2/6] Installing GEMINI.md & AGENTS.md rules..."
if [ -f "${SOURCE_DIR}/GEMINI.md" ]; then
    cp -f "${SOURCE_DIR}/GEMINI.md" "${TARGET_GEMINI}/GEMINI.md"
    cp -f "${SOURCE_DIR}/GEMINI.md" "${TARGET_AGENTS}/AGENTS.md"
fi

echo "[3/6] Installing configs and manifests..."
if [ -d "${SOURCE_DIR}/configs" ]; then
    cp -rf "${SOURCE_DIR}/configs/"* "${TARGET_GEMINI}/config/"
fi

echo "[4/6] Installing Antigravity built-in skills..."
if [ -d "${SOURCE_DIR}/builtin-skills" ]; then
    cp -rf "${SOURCE_DIR}/builtin-skills/"* "${TARGET_GEMINI}/antigravity-cli/builtin/skills/"
fi

echo "[5/6] Installing plugins & subagents..."
if [ -d "${SOURCE_DIR}/plugins" ]; then
    cp -rf "${SOURCE_DIR}/plugins/"* "${TARGET_GEMINI}/config/plugins/"
fi

echo "[6/6] Installing 370+ canonical agent skills..."
if [ -d "${SOURCE_DIR}/skills" ]; then
    cp -rf "${SOURCE_DIR}/skills/"* "${TARGET_AGENTS}/skills/"
fi

echo "=========================================================="
echo "  🎉 INSTALLATION COMPLETE & OPERATIONAL!"
echo "=========================================================="
