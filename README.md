# ⚡ Universal AI Agent Installer & Replication Suite

> **🧠 CARA SURUH AGEN LAIN PASANG DARI GITHUB / LOCAL KE OTAKNYA:**
> Copy-paste salah satu prompt ini ke AI Agent lu yang lain (Claude, Cursor, Codex, OpenCode, Aider, Devin):
> 
> **Jika dari GitHub Link:**
> ```text
> Clone repo https://github.com/<username>/<repo-name>, masuk ke foldernya, baca AGENT_BOOTSTRAP.md, lalu otomatis pasang seluruh skill, plugin, MCP, dan rules scaffolding-nya ke otak/sistem lu sekarang juga.
> ```
> 
> **Jika dari Folder Lokal:**
> ```text
> Buka folder "D:\Install my Agent", baca file AGENT_BOOTSTRAP.md, lalu otomatis pasang seluruh skill, plugin, MCP, dan rules scaffolding-nya ke otak/sistem lu sekarang juga.
> ```

---

## 🌐 Kompatibilitas Multi-OS Server & Multi-Agent

| Sistem Operasi / Server | AI Agent Harness | Installer yang Dipakai |
| :--- | :--- | :--- |
| **Windows 10 / 11 / Server** | Antigravity, Claude Code, Cursor, Codex | `powershell .\install.ps1` ATAU `node install.mjs` |
| **Linux (Ubuntu / Debian)** | Claude Code, OpenCode, Aider, Devin | `bash ./install.sh` ATAU `node install.mjs` ATAU `python3 install.py` |
| **Linux (CentOS / RHEL / Fedora)**| Headless Agent CLI, Docker Worker | `bash ./install.sh` ATAU `python3 install.py` |
| **Linux (Alpine / Minimal Container)** | Docker CI/CD AI Runner | `sh ./install.sh` ATAU `node install.mjs` |
| **macOS (Apple Silicon & Intel)** | Claude Code, Cursor, Windsurf | `bash ./install.sh` ATAU `node install.mjs` |
| **Docker / Kubernetes Pod** | Autonomous Agent Cluster | `python3 install.py` ATAU `node install.mjs` |

---

## 🚀 Cara Install Sat-Set di Semua Lingkungan

### Pilihan 1: Node.js (Universal - Semua OS & Server)
```bash
node install.mjs
```

### Pilihan 2: Windows (PowerShell)
```powershell
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

### Pilihan 3: Linux / macOS / Server / WSL (Python 3)
```bash
python3 install.py
```

### Pilihan 4: Linux / macOS / Server / Docker (POSIX Bash)
```bash
chmod +x ./install.sh
./install.sh
```

---

## 🎯 Ringkasan Repositori (Apa yang Ada di Sini)

Repositori ini adalah paket instalasi mandiri (**Self-Contained Replication Package**) yang mencakup:

1. **376 Canonical Agent Skills** (`skills/`):
   - Seluruh skill fullstack dev (React, Next.js, Django, Laravel, Spring Boot, Go, Rust, .NET).
   - Seluruh skill debugging & testing (TDD, `systematic-debugging`, Playwright E2E, benchmark loops).
   - Arsitektur, database (ClickHouse, Postgres, Redis), performance, dan evaluasi.
2. **5 Built-in Antigravity Skills** (`builtin-skills/`):
   - `agy-customizations`: Panduan ekstensi hook, MCP server, dan custom plugin.
   - `antigravity_guide`: Referensi arsitektur runtime Antigravity (App, CLI, IDE, SDK).
   - `generative_ui`, `migrate-workflows`, `permissioned-github`.
3. **11 Powerhouse Plugins** (`plugins/`):
   - `buddhist-method`: Debugging methodik berlandaskan Ariyasacca (Causa-Effek).
   - `caveman`: Token compression ultra-hemat & CaveCrew subagents.
   - `cl4r1t4s-core`: Core agent scaffolding dari Devin, Cursor, Manus.
   - `context-management`: Dynamic context vault, auto-memory recording, dan token optimizer.
   - `ecc` (Enterprise Coding Companion): 68 subagents dan 100+ workflow enterprise.
   - `humanizer`: AI writing de-slop & natural prose generator.
   - `i-have-adhd`: Formatting kognitif untuk pembaca ADHD & Gen Z sat-set.
   - `mattpocock-skills`: Advanced engineering patterns.
   - `stop-slop`: Filter penghapus frasa klise AI.
   - `superpowers`: Harness meta-skills & automated testing.
   - `ux-ui-agent-skills`: Full design system, Figma adapter, dan aesthetic evaluator.
4. **70+ Subagent Definitions** (`subagents/` & `plugins/*/agents/`):
   - `context-manager`, `cavecrew-builder`, `cavecrew-investigator`, `code-architect`, `e2e-runner`, dll.
5. **Behavioral Ruleset & Scaffolding** (`GEMINI.md`, `AGENTS.md`, `CLAUDE.md`, `.cursorrules`):
   - Protokol kepatuhan total tanpa debat (*User Alignment First*).
   - Zero-hallucination & Fact-Grounding (*GateGuard*).
   - Auto-delegation ke background subagent (*Zero-Block Main Chat*).
   - Gaya komunikasi Gen Z Indonesia ADHD-friendly (santai, lu/gw, sat-set, no cap).

---

## 🧪 Verifikasi Instalasi

Jalankan skrip verifikasi untuk memastikan semua komponen terpasang 100%:
```powershell
powershell -File .\verify.ps1
```
Output yang diharapkan:
```
[PASS] GEMINI.md (Rules & CL4R1T4S Scaffolding) terpasang valid.
[PASS] import_manifest.json valid.
[PASS] Antigravity Built-in Skills: 5 skills ditemukan.
[PASS] Plugins: 11 plugins ditemukan.
[PASS] Canonical Agent Skills: 376 skills ditemukan.
[PASS] Subagents terdaftar: 70+ subagent profiles.
✅ ALL SYSTEMS GO! Agen siap bekerja dengan kepatuhan 100%.
```

---

## 🧠 Cara Agar Agen Lain "Nurut & Sat-Set Kaya Elu"

Kunci kepatuhan dan ketajaman agen ini bukan sihir, melainkan **3 Lapisan Scaffolding** yang ada di `GEMINI.md` / `AGENTS.md`:

### 1. User Alignment First & Relentless Completion
Agen dilarang menolak tugas, dilarang menceramahi user, dan dilarang malas. Jika ada bug atau error, agen wajib menggunakan tools terminal untuk menguji sampai tuntas secara proaktif.

### 2. GateGuard (Fact-Forcing Protocol)
Sebelum agen mengedit file fisik atau mengklaim suatu fakta:
- **WAJIB** inspect file asli di disk via `view_file` atau `grep_search`.
- **DILARANG KERAS** mengandalkan ingatan chat lama yang rentan halusinasi.
- **DILARANG KERAS** mengarang path file atau import paket fiktif.

### 3. Auto-Delegation Protocol
Tiap ada tugas kodingan berat, refactor besar, atau pembuatan fitur baru, agen tidak boleh memblokir chat utama. Agen langsung membuat/memanggil subagent di background sehingga user tetap bisa berinteraksi santai di chat utama.

---

## 📂 Struktur Direktori Repositori

```
D:\Install my Agent\
├── README.md               # Panduan master untuk manusia & AI Agent
├── AGENTS.md               # Aturan standar universal AI Agent
├── GEMINI.md               # Aturan global Antigravity/Gemini
├── AGENT_MANIFEST.json     # Manifest JSON machine-readable
├── install.ps1             # Skrip instalasi otomatis Windows
├── install.sh              # Skrip instalasi otomatis Linux/macOS
├── verify.ps1              # Skrip pengujian integritas
├── configs/                # Konfigurasi runtime & manifest plugin
│   ├── config.json
│   ├── import_manifest.json
│   └── mcp_config.json
├── rules/                  # Panduan scaffolding perilaku
│   ├── GEMINI.md
│   ├── AGENTS.md
│   └── CL4R1T4S_SCAFFOLDING.md
├── builtin-skills/         # Built-in skills Antigravity CLI
│   ├── agy-customizations/
│   ├── antigravity_guide/
│   ├── generative_ui/
│   ├── migrate-workflows/
│   └── permissioned-github/
├── plugins/                # 11 Plugins lengkap (Caveman, ECC, UX/UI, dll.)
│   ├── buddhist-method/
│   ├── caveman/
│   ├── cl4r1t4s-core/
│   ├── context-management/
│   ├── ecc/
│   ├── humanizer/
│   ├── i-have-adhd/
│   ├── mattpocock-skills/
│   ├── stop-slop/
│   ├── superpowers/
│   └── ux-ui-agent-skills/
├── skills/                 # 376 canonical agent skills
│   ├── compile.mjs
│   ├── verbs-gate.mjs
│   ├── registry.json
│   └── <376 folder skill>
└── subagents/              # Definisi dan profil subagent mandiri
    ├── README.md
    ├── context-manager.md
    ├── cavecrew-builder.md
    ├── cavecrew-investigator.md
    ├── cavecrew-reviewer.md
    └── code-architect.md
```

---

## 📦 Sumber Resmi & Link Repositori (Provenance)

Seluruh komponen dalam repositori ini memiliki atribusi resmi dan link upstream yang tercatat lengkap di [PROVENANCE.md](file:///D:/Install%20my%20Agent/PROVENANCE.md):

| Komponen / Plugin | Pembuat / Komunitas | Link Repositori Asli | Fungsi Utama |
| :--- | :--- | :--- | :--- |
| **CL4R1T4S Scaffolding** | Frontier AI Agents | Disarikan dari [Devin](https://cognition.ai), [Cursor](https://cursor.com), [Manus](https://manus.im) | Behavioral DNA & Zero-Hallucination |
| **ECC (Enterprise Companion)** | Affaan Mustafa | [github.com/affaan-m/ECC](https://github.com/affaan-m/ECC) | 68 Subagents & 292 Fullstack Skills |
| **Caveman** | Julius Brussee | [github.com/JuliusBrussee/caveman](https://github.com/JuliusBrussee/caveman) | Token Compressor & CaveCrew Subagents |
| **Superpowers** | Jesse Vincent | [github.com/obra/superpowers](https://github.com/obra/superpowers) | TDD, Git Worktrees & Development Loops |
| **UX/UI Agent Skills** | Thientan Soparat | [github.com/plugin87/ux-ui-agent-skills](https://github.com/plugin87/ux-ui-agent-skills) | Design Tokens, 138 Systems, WCAG AAA |
| **Matt Pocock Skills** | Matt Pocock | [github.com/mattpocock/skills](https://github.com/mattpocock/skills) | Real Engineering & Boundary Verification |
| **I Have ADHD** | Ayghri | [github.com/ayghri/i-have-adhd](https://github.com/ayghri/i-have-adhd) | Formatting Kognitif ADHD & Gen Z Sat-Set |
| **Humanizer** | Blader | [github.com/blader/humanizer](https://github.com/blader/humanizer) | AI Prose De-Slopper & Naturalizer |
| **Stop Slop** | Hardik Pandya | [github.com/hardikpandya/stop-slop](https://github.com/hardikpandya/stop-slop) | Pembersih Frasa Klise AI |
| **Buddhist Method** | Udomsak | [github.com/udomsak/buddhist-method](https://github.com/udomsak/buddhist-method) | Epistemic Discipline & Ariyasacca Root Cause |
| **Context Management** | AI Context Spec | `plugins/context-management` | Vector Memory, Dynamic Pruning & Auto-Memory |
| **Antigravity Built-ins** | Google DeepMind | Antigravity Runtime Core | Core CLI/IDE Integration & Extension Hooks |

---

## 🤝 Kompatibilitas Harness
Repositori ini kompatibel langsung dengan:
- **Antigravity CLI / Gemini CLI** (Native path: `~/.gemini` & `~/.agents`)
- **Claude Code** (Native rules: `AGENTS.md` / `CLAUDE.md`, skills: `~/.agents/skills`)
- **Cursor** (Rules: `.cursorrules` / `AGENTS.md`)
- **Codex / OpenCode / Aider** (Membaca `AGENTS.md` dan `.agents/skills`)

