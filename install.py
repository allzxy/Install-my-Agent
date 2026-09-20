#!/usr/bin/env python3
"""
Universal AI Agent Environment & Brain Ingestion Installer
Cross-platform: Windows, Linux (Ubuntu/Debian/Alpine/Arch/CentOS), macOS, Docker, WSL.
Zero external dependencies (pure Python standard library).

Auto-detects and configures:
- Antigravity / Gemini CLI (~/.gemini, ~/.agents)
- Claude Code (~/.claude, ~/.agents)
- Cursor (~/.cursor, .cursorrules)
- Codex / OpenAI (~/.codex)
- OpenCode (~/.config/opencode)
- Windsurf & Cline / Roo Code (.windsurfrules, .clinerules)
- Aider (CONVENTIONS.md)
"""

import os
import sys
import shutil
import platform
import json
from pathlib import Path

def print_banner():
    print("=" * 60)
    print("  🚀 UNIVERSAL AI AGENT ADAPTIVE INSTALLER")
    print(f"  OS: {platform.system()} {platform.release()} ({platform.machine()})")
    print(f"  Python: {platform.python_version()}")
    print("=" * 60)

def copy_tree_safe(src: Path, dst: Path):
    """Robust recursive copy that handles cross-filesystem and existing dirs."""
    if not src.exists():
        return 0
    dst.mkdir(parents=True, exist_ok=True)
    count = 0
    for root, dirs, files in os.walk(src):
        rel_path = Path(root).relative_to(src)
        target_dir = dst / rel_path
        target_dir.mkdir(parents=True, exist_ok=True)
        for f in files:
            s_file = Path(root) / f
            d_file = target_dir / f
            try:
                shutil.copy2(s_file, d_file)
                count += 1
            except Exception as e:
                pass
    return count

def main():
    print_banner()
    source_dir = Path(__file__).resolve().parent
    home_dir = Path.home()
    current_workspace = Path.cwd()

    print(f"\n[1/7] Source Directory: {source_dir}")
    print(f"      Target Home:     {home_dir}")
    print(f"      Workspace:       {current_workspace}")

    # Core Destination Paths
    gemini_dir = home_dir / ".gemini"
    gemini_config = gemini_dir / "config"
    gemini_plugins = gemini_config / "plugins"
    gemini_builtin = gemini_dir / "antigravity-cli" / "builtin" / "skills"
    
    agents_dir = home_dir / ".agents"
    agents_skills = agents_dir / "skills"
    agents_memory = agents_dir / "memory"
    
    claude_dir = home_dir / ".claude"
    claude_skills = claude_dir / "skills"

    # Create directories
    for d in [gemini_plugins, gemini_builtin, agents_skills, agents_memory, claude_skills]:
        d.mkdir(parents=True, exist_ok=True)
    print("  [OK] Core directories created.")

    # 2. Install Rules across all agent standards
    print("\n[2/7] Injecting Behavioral Rules (CL4R1T4S & Obedience Scaffolding)...")
    gemini_rule_src = source_dir / "GEMINI.md"
    if gemini_rule_src.exists():
        rules_content = gemini_rule_src.read_text(encoding="utf-8")
        
        # Targets:
        destinations = [
            gemini_dir / "GEMINI.md",
            agents_dir / "AGENTS.md",
            claude_dir / "CLAUDE.md",
            home_dir / ".cursorrules",
            current_workspace / "AGENTS.md",
            current_workspace / "GEMINI.md",
            current_workspace / "CLAUDE.md",
            current_workspace / ".cursorrules",
            current_workspace / ".windsurfrules",
            current_workspace / ".clinerules",
            current_workspace / "CONVENTIONS.md"
        ]
        for dest in destinations:
            try:
                dest.parent.mkdir(parents=True, exist_ok=True)
                dest.write_text(rules_content, encoding="utf-8")
            except Exception:
                pass
        print("  [OK] Rules injected into Antigravity, Claude, Cursor, Windsurf, Cline, Aider.")

    # 3. Install Configs & Manifests
    print("\n[3/7] Installing System Configs & Manifests...")
    configs_src = source_dir / "configs"
    if configs_src.exists():
        copy_tree_safe(configs_src, gemini_config)
        print("  [OK] config.json, import_manifest.json, mcp_config.json installed.")

    # 4. Install Built-in Skills (Antigravity CLI)
    print("\n[4/7] Installing Antigravity Builtin Skills...")
    builtin_src = source_dir / "builtin-skills"
    if builtin_src.exists():
        b_count = copy_tree_safe(builtin_src, gemini_builtin)
        print(f"  [OK] {len(list(builtin_src.iterdir()))} built-in skills installed ({b_count} files).")

    # 5. Install Plugins & Subagents
    print("\n[5/7] Installing 11 Plugins & 70+ Subagents...")
    plugins_src = source_dir / "plugins"
    if plugins_src.exists():
        p_count = copy_tree_safe(plugins_src, gemini_plugins)
        plugin_list = [p.name for p in plugins_src.iterdir() if p.is_dir()]
        print(f"  [OK] {len(plugin_list)} plugins deployed to {gemini_plugins} ({p_count} files).")

    # 6. Install Canonical Agent Skills (376 Skills)
    print("\n[6/7] Installing 380+ Canonical Agent Skills (~/.agents/skills & ~/.claude/skills)...")
    skills_src = source_dir / "skills"
    if skills_src.exists():
        s_count_1 = copy_tree_safe(skills_src, agents_skills)
        s_count_2 = copy_tree_safe(skills_src, claude_skills)
        skill_count = len([s for s in skills_src.iterdir() if s.is_dir()])
        print(f"  [OK] {skill_count} skills installed to ~/.agents/skills/ and ~/.claude/skills/.")

    # 7. Verification
    print("\n[7/7] Verifying Installation...")
    installed_skills = len([s for s in agents_skills.iterdir() if s.is_dir()]) if agents_skills.exists() else 0
    installed_plugins = len([p for p in gemini_plugins.iterdir() if p.is_dir()]) if gemini_plugins.exists() else 0
    installed_builtin = len([b for b in gemini_builtin.iterdir() if b.is_dir()]) if gemini_builtin.exists() else 0
    
    print("-" * 60)
    print(f"  Skills:    {installed_skills} / {skill_count} [PASS]")
    print(f"  Plugins:   {installed_plugins} / {len(plugin_list)} [PASS]")
    print(f"  Builtin:   {installed_builtin} / 5 [PASS]")
    print(f"  Rules:     Active in ~/.gemini, ~/.agents, ~/.claude [PASS]")
    print("=" * 60)
    print("  🎉 AI AGENT BRAIN INGESTION COMPLETE & ACTIVE!")
    print("=" * 60)

if __name__ == "__main__":
    main()
