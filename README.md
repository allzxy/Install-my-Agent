# ⚡ Universal AI Agent Installer & Replication Suite

> **🧠 CARA SURUH AGEN LAIN PASANG DARI GITHUB / LOCAL KE OTAKNYA:**
> Copy-paste salah satu prompt ini ke AI Agent lu yang lain (Claude, Cursor, Codex, OpenCode, Aider, Devin):
> 
> **Jika dari GitHub Link:**
> ```text
> Clone repo https://github.com/allzxy/Install-my-Agent.git, masuk ke foldernya, baca AGENT_BOOTSTRAP.md, lalu otomatis pasang seluruh skill, plugin, MCP, dan rules scaffolding-nya ke otak/sistem lu sekarang juga.
> ```
> 
> **Jika dari Folder Lokal:**
> ```text
> Buka folder "D:\All\Install my Agent", baca file AGENT_BOOTSTRAP.md, lalu otomatis pasang seluruh skill, plugin, MCP, dan rules scaffolding-nya ke otak/sistem lu sekarang juga.
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

1. **383 Canonical Agent Skills** (`skills/`):
   - **Production Engineering & Meta-Skills (Baru):** `context-engineering`, `interview-me`, `doubt-driven-development`, `planning-and-task-breakdown`, `task-observer` ("One Skill to Rule Them All"), `spec-driven-development`, `code-review-and-quality`.
   - **Fullstack Dev:** React, Next.js, Django, Laravel, Spring Boot, Go, Rust, .NET, Kotlin, Swift.
   - **Debugging & Testing:** TDD, `systematic-debugging`, Playwright E2E, benchmark loops, canary watch.
   - **Database & Architecture:** ClickHouse, Postgres, Redis, Hexagonal Architecture, ADRs.
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
   - `fast-investigator`, `code-worker`, `context-manager`, `cavecrew-builder`, `cavecrew-investigator`, `code-architect`, `e2e-runner`, dll.
5. **Behavioral Ruleset & Arsitektur Otonom Modern** (`GEMINI.md`, `AGENTS.md`, `CLAUDE.md`, `.cursorrules`, `.windsurfrules`, `.clinerules`, `CONVENTIONS.md`):
   - **User Alignment First & Relentless Completion:** Kepatuhan total tanpa debat, pantang menyerah hingga tugas tuntas dan teruji.
   - **Autonomous Obsidian BrainVault Protocol:** Integrasi PKM persisten lokal (`C:\Users\Axioo\BrainVault`), Map of Content (`[[00_INDEX]]`), bidirectional wikilinks, serta siklus *Pre-Task Retrieval* & *Post-Task Brain Sync* otomatis.
   - **Auto-Delegation & Anti-Lag Protocol:** Eksekusi non-blocking ke worker background (`fast-investigator`, `code-worker`), isolasi context window bersih, dan *Zero Tool Polling* via Reactive Wakeup.
   - **Autonomous Permissions & Deletion Safety Gate:** Eksekusi pre-approved otomatis untuk aksi read, write, terminal, dan web; wajib konfirmasi izin khusus sebelum eksekusi destruktif (`rm`, `del`, `reset --hard`, `push --force`, database drop).
   - **Gaya Komunikasi Gen Z Indonesia ADHD-friendly:** Santai, lu/gw, sat-set, no cap, anti-kaku, lead with answer/snippet.

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
[PASS] MCP Servers: 5 servers aktif (context7, memory, sequential-thinking, fetch, puppeteer).
[PASS] Antigravity Built-in Skills: 5 skills ditemukan.
[PASS] Plugins: 11 plugins ditemukan (Target: >= 11).
[PASS] Canonical Agent Skills: 383 skills ditemukan (Target: >= 380).
[PASS] Subagents terdaftar: 70+ subagent profiles.
✅ ALL SYSTEMS GO! Agen siap bekerja dengan kepatuhan 100%.
```

---

## 🧠 Cara Agar Agen Lain "Nurut & Sat-Set Kaya Elu"

Kunci kepatuhan, persistensi memori, dan ketajaman agen ini tersusun dalam **Arsitektur Scaffolding Otonom**:

### 1. User Alignment First & Relentless Completion
Agen dilarang menolak tugas, dilarang menceramahi user, dan dilarang malas. Jika ada bug atau error, agen wajib menggunakan tools terminal untuk menguji sampai tuntas secara proaktif.

### 2. Autonomous Obsidian BrainVault (Persistent PKM Graph)
Memori jangka panjang agen terhubung langsung ke vault Obsidian lokal di `C:\Users\Axioo\BrainVault`:
- **Pre-Task Retrieval:** Sebelum koding, agen memeriksa vault untuk melihat pola solusi masa lalu dan preferensi user.
- **Post-Task Brain Sync:** Segera setelah task tuntas, agen secara mandiri mencatat temuan baru, solusi, dan batasan teknis ke dalam vault dengan format bidirectional wikilinks `[[Nama_Node]]` yang bermuara di Map of Content (`[[00_INDEX]]`).

### 3. Auto-Delegation & Anti-Lag Protocol (Zero-Block & Zero-Polling)
Tiap ada tugas kodingan berat, refactor besar, atau pembuatan fitur baru:
- Agen utama langsung mendelegasikan ke subagent worker (`code-worker` atau `fast-investigator`) di background.
- Chat utama langsung dibebaskan dalam 1 kalimat sat-set tanpa menunggu proses selesai.
- Dilarang keras polling status di chat santai; sistem otomatis mengandalkan *Reactive Wakeup* saat subagent selesai.

### 4. Autonomous Permissions & Deletion Safety Gate
- Semua operasi harian (baca file, tulis kode, edit baris, install package, terminal test, git branch/commit) berjalan **100% otomatis tanpa minta izin manual per-langkah**.
- Khusus operasi yang berpotensi menghapus data permanen (`rm`, `del`, `Remove-Item`, `git reset --hard`, `git push --force`, `drop database`), agen **WAJIB meminta izin konfirmasi eksplisit** dari user terlebih dahulu.

### 5. GateGuard (Fact-Forcing Protocol)
Sebelum agen mengedit file fisik atau mengklaim suatu fakta:
- **WAJIB** inspect file asli di disk via `view_file` atau `grep_search`.
- **DILARANG KERAS** mengandalkan ingatan chat lama yang rentan halusinasi.
- **DILARANG KERAS** mengarang path file atau import paket fiktif.

---

## 📂 Struktur Direktori Repositori

```
D:\All\Install my Agent\
├── README.md               # Panduan master untuk manusia & AI Agent
├── AGENTS.md               # Aturan standar universal AI Agent
├── GEMINI.md               # Aturan global Antigravity/Gemini
├── CLAUDE.md               # Aturan resmi Claude Code
├── .cursorrules            # Aturan Cursor IDE
├── .windsurfrules          # Aturan Windsurf IDE
├── .clinerules             # Aturan Cline / Roo Code
├── CONVENTIONS.md          # Konvensi Aider / CLI agent
├── AGENT_BOOTSTRAP.md      # Instruksi mandatori pemasangan otonom ke otak agen
├── AGENT_MANIFEST.json     # Manifest JSON machine-readable v1.1.0
├── PROVENANCE.md           # Catatan resmi asal-usul, link GitHub, dan lisensi
├── install.mjs             # Installer universal Node.js (semua OS & Docker)
├── install.ps1             # Skrip instalasi otomatis Windows PowerShell
├── install.py              # Installer mandiri Python 3 (Linux/macOS/Server)
├── install.sh              # Skrip instalasi otomatis POSIX Bash
├── verify.ps1              # Skrip pengujian integritas instalasi
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
├── skills/                 # 383 canonical agent skills (Addy Osmani, Task Observer, dll.)
│   ├── compile.mjs
│   ├── verbs-gate.mjs
│   ├── registry.json
│   └── <383 folder skill>
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

Seluruh komponen dalam repositori ini memiliki atribusi resmi dan link upstream yang tercatat lengkap di [PROVENANCE.md](file:///D:/All/Install%20my%20Agent/PROVENANCE.md):

| Komponen / Plugin | Pembuat / Komunitas | Link Repositori Asli | Fungsi Utama |
| :--- | :--- | :--- | :--- |
| **CL4R1T4S Scaffolding** | Frontier AI Agents | Disarikan dari [Devin](https://cognition.ai), [Cursor](https://cursor.com), [Manus](https://manus.im) | Behavioral DNA & Zero-Hallucination |
| **Obsidian BrainVault** | Antigravity Architecture | `C:\Users\Axioo\BrainVault` | PKM Persisten, MOC `[[00_INDEX]]`, Wikilinks |
| **Anti-Lag Protocol** | Subagent Multitasking Spec | Core Scaffolding | Fast-Investigator, Code-Worker & Zero-Polling |
| **Deletion Safety Gate** | Security Architecture | Core Scaffolding | Pre-Approved Tools & Gerbang Konfirmasi Hapus |
| **Addy Osmani Agent Skills** | Addy Osmani | [github.com/addyosmani/agent-skills](https://github.com/addyosmani/agent-skills) | Context, Interview, Doubt, Spec, Plan, Review |
| **Task Observer** | Eoghan Henn (Rebelytics) | [github.com/rebelytics/one-skill-to-rule-them-all](https://github.com/rebelytics/one-skill-to-rule-them-all) | Meta-Skill Discovery & Evolution Berkelanjutan |
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
- **Claude Code** (Native rules: `AGENTS.md` / `CLAUDE.md`, skills: `~/.agents/skills` / `~/.claude/skills`)
- **Cursor** (Rules: `.cursorrules` / `AGENTS.md`)
- **Windsurf** (Rules: `.windsurfrules`)
- **Cline / Roo Code** (Rules: `.clinerules`)
- **Codex / OpenCode / Aider** (Membaca `AGENTS.md`, `CONVENTIONS.md`, dan `.agents/skills`)
