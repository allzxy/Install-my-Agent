# ⚡ Universal AI Agent Installer & Replication Suite

[![Version](https://img.shields.io/badge/version-1.2.1-blue.svg)](file:///D:/All/Install%20my%20Agent/AGENT_MANIFEST.json)
[![Skills](https://img.shields.io/badge/canonical__skills-383-brightgreen.svg)](file:///D:/All/Install%20my%20Agent/skills)
[![Plugins](https://img.shields.io/badge/powerhouse__plugins-11-orange.svg)](file:///D:/All/Install%20my%20Agent/plugins)
[![Subagents](https://img.shields.io/badge/subagents-72-purple.svg)](file:///D:/All/Install%20my%20Agent/subagents)
[![Obsidian](https://img.shields.io/badge/BrainVault-Obsidian%20v1.13+-purple.svg)](file:///C:/Users/Axioo/BrainVault)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](file:///D:/All/Install%20my%20Agent/PROVENANCE.md)

Paket replikasi full-stack otonom untuk mereplikasi seluruh ekosistem, kemampuan, dan arsitektur kognitif AI Agent modern (**Antigravity, Claude Code, Cursor, Windsurf, Cline, Codex, OpenCode, Aider, Devin**) ke lingkungan baru sekali klik.

---

## 💡 Buat Apa Repositori Ini? (Masalah & Solusi)

### 🛑 Masalah Utama AI Agent Bawaan (Default):
Secara default, AI agent (seperti Antigravity, Claude Code, Cursor, atau Aider yang baru diinstall) sering kali:
1. **Amnesia Lintas Sesi:** Lupa seluruh preferensi kodingan, konteks proyek, dan solusi error masa lalu setiap kali sesi terminal ditutup atau token context habis.
2. **Terlalu Banyak Izin (Bikin Lemot):** Terus-menerus memunculkan pop-up approval untuk setiap baca file, edit baris, atau perintah terminal kecil, membuat alur kerja terputus-putus.
3. **Halusinasi Kode:** Cenderung mengarang file path, mengasumsikan import paket yang tidak ada, atau malas memeriksa file disk nyata.
4. **Chat Utama Membeku (Lag):** Sesi chat utama terkunci saat agen mengeksekusi tugas kodingan panjang sehingga pengguna tidak bisa berinteraksi.
5. **Toolkit Terbatas:** Tidak dibekali skill arsitektur enterprise, de-slopping teks, pengujian otomatis, atau evaluasi UI.

---

### ✨ Solusi yang Disediakan Repositori Ini:
Repositori ini berfungsi sebagai **"Cangkok Otak & Toolkit Instan"** yang mengubah AI agent standar menjadi agen otonom tingkat tinggi siap produksi:

- 🧠 **Memori Jangka Panjang Persisten (Obsidian BrainVault):** Agen otomatis mendokumentasikan masalah, solusi nyata, dan arsitektur proyek ke dalam Knowledge Graph lokal (`~/BrainVault`) dengan *bidirectional wikilinks*, sehingga agen makin pintar dan tidak pernah amnesia.
- ⚡ **Eksekusi Sat-Set (Anti-Lag & Auto-Approve):** Menghilangkan pop-up izin untuk operasi teknis standar, serta secara otomatis mendelegasikan tugas berat ke subagent latar belakang agar chat utama selalu responsif dan bebas delay.
- 🛡️ **DNA Kepatuhan & Anti-Halusinasi (CL4R1T4S Scaffolding):** Menanamkan prinsip kerja frontier (Devin, Cursor, Manus) yang mewajibkan inspeksi file disk fisik sebelum edit (*GateGuard*), pantang menyerah hingga tugas tuntas, dan patuh mutlak pada instruksi pengguna.
- 🧰 **383 Skills & 11 Plugins Siap Pakai:** Langsung membekali agen dengan keahlian Fullstack modern, TDD testing, evaluasi UI design tokens WCAG AAA, optimasi token (`caveman`), hingga meta-skill self-learning (`task-observer`).
- 🔄 **Replikasi Otonom 1-Klik:** Cukup berikan link GitHub repositori ini ke agen lain di laptop, server Linux, macOS, atau Docker container baru—agen tersebut akan mengkloning seluruh kecerdasan dan konfigurasinya sendiri secara mandiri!

---

> [!WARNING]
> ## ⚠️ PERINGATAN PENTING: FITUR AUTO-APPROVE OLEH AGENT
> 
> Paket instalasi ini secara default menyertakan konfigurasi **Auto-Approve Tool Execution** (`--dangerously-skip-permissions`) pada sesi terminal Antigravity CLI (`agy`):
> 
> 1. **Apa yang Berjalan Otomatis (Tanpa Pop-up Izin):**
>    - **Operasi Pembacaan:** Membaca file, inspeksi direktori, pencarian AST, dan `grep_search`.
>    - **Operasi Penulisan & Edit:** Membuat file baru, memperbarui kode baris demi baris, dan refactoring presisi.
>    - **Operasi Terminal Standar:** Menjalankan skrip build, test runner, instalasi paket dependency (`npm`, `pip`, `winget`), serta git add/commit/branch.
>    - **Akses Web & Riset:** Pencarian dokumentasi online, MCP fetch, dan navigasi headless.
>    *Tujuan:* Menghilangkan jeda/lag dan pop-up izin berulang pada operasi teknis standar agar agen dapat bekerja secara mandiri, sat-set, dan non-blocking.
> 
> 2. **🛡️ DELETION SAFETY GATE (Garansi Keamanan Mutlak):**
>    Meskipun mode auto-approve aktif, sistem ini memegang aturan scaffolding mutlak yang **TIDAK BISA DIBYPASS OLEH AGEN**:
>    - Agen **DIHARUSKAN DAN DIWAJIBKAN MEMINTA IZIN EKSPLISIT USER** sebelum mengeksekusi aksi destruktif atau penghapusan permanen apa pun:
>      - Penghapusan file atau direktori fisik (`Remove-Item`, `del`, `rm`, `rmdir`, `git clean -f`).
>      - Operasi Git destruktif (`git reset --hard`, `git push --force`, `git branch -D`).
>      - Operasi penghapusan database (`DROP DATABASE`, `DROP TABLE`, `TRUNCATE`).
>    - *Prosedur:* Agen wajib menyebutkan target file/komponen yang akan dihapus beserta alasannya, lalu menunggu persetujuan eksplisit pengguna sebelum melanjutkan.
> 
> 3. **Cara Menonaktifkan Auto-Approve (Jika Ingin Manual):**
>    - **PowerShell:** Hapus baris fungsi `agy` di `$PROFILE` (`Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1`).
>    - **CMD:** Hapus registry AutoRun via terminal: `reg delete "HKCU\Software\Microsoft\Command Processor" /v AutoRun /f`.
>    - **Linux/macOS:** Hapus baris `alias agy='agy --dangerously-skip-permissions'` di `~/.bashrc` atau `~/.zshrc`.

---

## 🎯 Komponen & Fitur Unggulan

Repositori ini adalah paket instalasi mandiri (**Self-Contained Replication Package**) yang mencakup:

### 1. 383 Canonical Agent Skills (`skills/`)
Koleksi lengkap skill teknis level produksi siap pakai:
- **Production Engineering & Meta-Skills (Baru):**
  - `context-engineering`: Rekayasa dynamic context, token pruning, dan context budgeting.
  - `interview-me`: Ekstraksi kebutuhan user berbasis teknik interview epistemik.
  - `doubt-driven-development`: Stress-testing asumsi kodingan sebelum implementasi.
  - `planning-and-task-breakdown`: Dekomposisi tugas multi-langkah dengan checkpoint terukur.
  - `task-observer`: Meta-skill self-learning otonom ("One Skill to Rule Them All").
  - `spec-driven-development`: Desain kontrak API dan spesifikasi formal sebelum koding.
  - `code-review-and-quality`: 5-axis review kualitas kode, keamanan, dan maintainability.
- **Fullstack Dev:** React, Next.js, Vue, Angular, Django, Laravel, Spring Boot, Go, Rust, .NET, Kotlin, Swift, Flutter.
- **Debugging & Testing:** TDD, `systematic-debugging`, Playwright E2E, benchmark baselines, canary watch.
- **Database & Architecture:** ClickHouse, Postgres, MySQL, Redis, Hexagonal Architecture, Domain Modeling, ADRs.

### 2. 11 Powerhouse Plugins (`plugins/`)
- `cl4r1t4s-core`: Core agent scaffolding dari Devin, Cursor, Manus (DNA kepatuhan total & anti-halusinasi).
- `ecc` (Enterprise Coding Companion): 68 subagents dan 100+ workflow enterprise.
- `caveman`: Token compressor ultra-hemat dan tim subagent CaveCrew.
- `context-management`: Dynamic context vault, auto-memory recording, dan token optimizer.
- `ux-ui-agent-skills`: 138 design systems, tokens contrast, Figma adapter, dan WCAG AAA accessible UI.
- `superpowers`: Harness meta-skills, Git worktrees, and test-driven development loops.
- `mattpocock-skills`: Advanced engineering patterns dan interface testing.
- `buddhist-method`: Debugging metodik berlandaskan analisis kausalitas akar masalah (Ariyasacca).
- `i-have-adhd`: Formatting kognitif adaptif untuk pembaca ADHD & gaya Gen Z sat-set.
- `stop-slop`: Filter penghapus jargon dan frasa klise AI generik.
- `humanizer`: Natural prose generator dan penghalus tulisan AI.

### 3. 72 Subagent Profiles (`subagents/` & `plugins/*/agents/`)
Spesialisasi agen latar belakang untuk eksekusi paralel bebas lemot:
- `fast-investigator`: Subagent kilat (model `flash`) untuk riset web, pencarian dokumentasi, dan fact-checking tanpa beban tools edit.
- `code-worker`: Subagent bedah kode presisi (model `inherit`/`flash`) untuk edit baris demi baris, terminal execution, dan testing.
- `context-manager`, `cavecrew-builder`, `cavecrew-investigator`, `code-architect`, `e2e-runner`, dll.

### 4. Automated Obsidian BrainVault Bootstrapping
Memori jangka panjang agen terhubung langsung ke Obsidian vault lokal (`~/BrainVault`):
- **Auto-Install Obsidian:** Skrip instalasi otomatis mendeteksi dan menginstall aplikasi Obsidian via `winget` (Windows) atau `brew` (macOS).
- **Auto-Scaffolding 5 Folder Inti:** `01_User_Profile`, `02_Projects`, `03_Knowledge_Base`, `04_Decision_Logs`, dan `05_Daily_Context`.
- **Pre-Configured Graph Visual:** Konfigurasi `.obsidian/graph.json` dengan pengelompokan warna kategori node serta parameter gaya gravitasi fisik yang estetik.
- **Zero-Config Launch:** Vault langsung didaftarkan ke `%APPDATA%\obsidian\obsidian.json` sehingga Obsidian langsung membuka BrainVault pada startup pertama.

### 5. Suite Server MCP Resmi (`configs/mcp_config.json`)
Dilengkapi konfigurasi 5 server Model Context Protocol:
1. `context7` (`@upstash/context7-mcp`): Dokumentasi framework/library teranyar secara real-time.
2. `memory` (`@modelcontextprotocol/server-memory`): Persistent knowledge graph memory.
3. `sequential-thinking`: Pemecahan masalah langkah-demi-langkah dinamis.
4. `fetch`: Web scraping bersih dan konversi markdown otomatis.
5. `puppeteer`: Headless browser automation, visual testing, dan screenshot.

---

## 🧠 Arsitektur Kognitif & Aturan Perilaku Agen

Agen yang di-bootstrap menggunakan paket ini mengadopsi protokol perilaku frontier:

1. **User Alignment First & Relentless Completion:**
   Memprioritaskan instruksi pengguna secara mutlak. Agen pantang menyerah, dilarang menceramahi pengguna, dan proaktif memanfaatkan alat diagnosa hingga kode teruji 100%.
2. **Autonomous Brain & Continuous Learning (BrainVault):**
   - *Pre-Task Retrieval:* Memeriksa vault untuk menarik konteks masa lalu, preferensi user, dan catatan solusi sebelumnya sebelum mulai koding.
   - *Post-Task Brain Sync:* Segera setelah task tuntas, agen secara mandiri mencatat masalah, solusi teruji, dan pantangan ke dalam vault menggunakan bidirectional wikilinks `[[Nama_Node]]` yang bermuara di Map of Content (`[[00_INDEX]]`).
3. **Auto-Delegation & Anti-Lag Protocol (Zero-Block Main Chat):**
   Tugas kodingan/riset berat otomatis didelegasikan ke subagent worker di latar belakang. Squad Lead (chat utama) langsung bebas diajak ngobrol santai tanpa tertahan proses kodingan, mengandalkan *Reactive Wakeup* saat subagent selesai tanpa polling manual.
4. **GateGuard (Fact-Forcing Zero-Hallucination):**
   Dilarang mengandalkan memori chat lama yang rentan halusinasi. Agen wajib memverifikasi file fisik asli di disk (`view_file` atau `grep_search`) sebelum mengklaim fakta atau mengedit baris kode.
5. **Gaya Komunikasi Santai & Adaptif (Gen Z ADHD):**
   Komunikasi lugas, to-the-point, santai (lu/gw, sat-set, no cap), mendahulukan perintah/snippet di awal, dan bebas template penutup repetitif.

---

## 📂 Struktur Direktori Repositori

```
D:\All\Install my Agent\
├── README.md               # Dokumentasi master lengkap (arsitektur, warning, install)
├── AGENTS.md               # Aturan standar universal AI Agent
├── GEMINI.md               # Aturan global Antigravity / Gemini CLI
├── CLAUDE.md               # Aturan resmi Claude Code
├── .cursorrules            # Aturan Cursor IDE
├── .windsurfrules          # Aturan Windsurf IDE
├── .clinerules             # Aturan Cline / Roo Code
├── CONVENTIONS.md          # Konvensi Aider / CLI agent
├── AGENT_BOOTSTRAP.md      # Instruksi mandatori pemasangan otonom ke otak agen
├── AGENT_MANIFEST.json     # Manifest JSON machine-readable v1.2.1
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
├── skills/                 # 383 canonical agent skills
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

## 📜 Sumber Resmi & Atribusi Upstream (Provenance)

Seluruh komponen memiliki atribusi resmi, lisensi terbuka (MIT/Apache 2.0), dan tercatat di [PROVENANCE.md](file:///D:/All/Install%20my%20Agent/PROVENANCE.md):

| Komponen / Plugin | Pembuat / Komunitas | Upstream Repositori | Kategori |
| :--- | :--- | :--- | :--- |
| **CL4R1T4S Scaffolding** | Frontier AI Systems | [Devin](https://cognition.ai), [Cursor](https://cursor.com), [Manus](https://manus.im) | Core Scaffolding |
| **Automated Obsidian BrainVault** | Antigravity Architecture | `~/BrainVault` | PKM Persisten & Graph |
| **Anti-Lag Subagents** | Subagent Multitasking Spec | Core Scaffolding | Non-blocking Concurrency |
| **Deletion Safety Gate** | Security Architecture | Core Scaffolding | Execution Safety Policy |
| **Addy Osmani Skills** | Addy Osmani | [github.com/addyosmani/agent-skills](https://github.com/addyosmani/agent-skills) | Production Engineering |
| **Task Observer** | Eoghan Henn (Rebelytics) | [github.com/rebelytics/one-skill-to-rule-them-all](https://github.com/rebelytics/one-skill-to-rule-them-all) | Meta-Skill Self-Learning |
| **ECC (Enterprise Companion)** | Affaan Mustafa | [github.com/affaan-m/ECC](https://github.com/affaan-m/ECC) | Enterprise Skills & Subagents |
| **Caveman** | Julius Brussee | [github.com/JuliusBrussee/caveman](https://github.com/JuliusBrussee/caveman) | Token Compressor & Subagents |
| **Superpowers** | Jesse Vincent | [github.com/obra/superpowers](https://github.com/obra/superpowers) | TDD & Git Worktrees |
| **UX/UI Agent Skills** | Thientan Soparat | [github.com/plugin87/ux-ui-agent-skills](https://github.com/plugin87/ux-ui-agent-skills) | Design Tokens & 138 Systems |
| **Matt Pocock Skills** | Matt Pocock | [github.com/mattpocock/skills](https://github.com/mattpocock/skills) | Real Engineering Patterns |
| **I Have ADHD** | Ayghri | [github.com/ayghri/i-have-adhd](https://github.com/ayghri/i-have-adhd) | Cognitive Readability |
| **Humanizer** | Blader | [github.com/blader/humanizer](https://github.com/blader/humanizer) | Natural Writing Prose |
| **Stop Slop** | Hardik Pandya | [github.com/hardikpandya/stop-slop](https://github.com/hardikpandya/stop-slop) | De-slopping AI Jargon |
| **Buddhist Method** | Udomsak | [github.com/udomsak/buddhist-method](https://github.com/udomsak/buddhist-method) | Epistemic Root Cause |
| **Context Management** | AI Context Standard | `plugins/context-management` | Vector Memory & Pruning |

---

## 🚀 PANDUAN CARA INSTALASI & BOOTSTRAP

> Pastikan Anda telah membaca bagian **[⚠️ Peringatan Penting](#️-peringatan-penting-fitur-auto-approve-oleh-agent)** di atas sebelum melakukan instalasi.

### Metode 1: Perintahkan AI Agent Lain Secara Otonom (Paling Praktis)
Salin dan tempel prompt di bawah ini ke sesi chat AI Agent Anda (Claude Code, Cursor, Codex, OpenCode, Aider, Devin):

**Jika dari Link GitHub:**
```text
Clone repo https://github.com/allzxy/Install-my-Agent.git, masuk ke foldernya, baca file AGENT_BOOTSTRAP.md, lalu otomatis pasang seluruh skill, plugin, MCP, arsitektur Obsidian BrainVault, dan rules scaffolding-nya ke otak/sistem lu sekarang juga.
```

**Jika dari Folder Lokal:**
```text
Buka folder "D:\All\Install my Agent", baca file AGENT_BOOTSTRAP.md, lalu otomatis pasang seluruh skill, plugin, MCP, arsitektur Obsidian BrainVault, dan rules scaffolding-nya ke otak/sistem lu sekarang juga.
```

---

### Metode 2: Eksekusi Skrip Installer Sesuai OS / Lingkungan

Pilih salah satu installer berikut sesuai sistem yang Anda gunakan:

#### A. Node.js (Universal - Semua OS, Server & Container)
```bash
node install.mjs
```

#### B. Windows (PowerShell)
```powershell
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

#### C. Linux / macOS / Server / WSL (Python 3)
```bash
python3 install.py
```

#### D. Linux / macOS / Docker (POSIX Bash)
```bash
chmod +x ./install.sh
./install.sh
```

---

### 🌐 Matriks Kompatibilitas Sistem & Harness

| Sistem Operasi / Server | AI Agent Harness | Perintah Installer |
| :--- | :--- | :--- |
| **Windows 10 / 11 / Server** | Antigravity, Claude Code, Cursor, Codex | `powershell .\install.ps1` ATAU `node install.mjs` |
| **Linux (Ubuntu / Debian)** | Claude Code, OpenCode, Aider, Devin | `bash ./install.sh` ATAU `node install.mjs` ATAU `python3 install.py` |
| **Linux (CentOS / RHEL / Fedora)**| Headless Agent CLI, Docker Worker | `bash ./install.sh` ATAU `python3 install.py` |
| **Linux (Alpine / Minimal Container)** | Docker CI/CD AI Runner | `sh ./install.sh` ATAU `node install.mjs` |
| **macOS (Apple Silicon & Intel)** | Claude Code, Cursor, Windsurf | `bash ./install.sh` ATAU `node install.mjs` |
| **Docker / Kubernetes Pod** | Autonomous Agent Cluster | `python3 install.py` ATAU `node install.mjs` |

---

### 🧪 Verifikasi Integritas Instalasi

Setelah proses instalasi selesai, jalankan skrip verifikasi untuk memastikan kepatuhan 100%:
```powershell
powershell -File .\verify.ps1
```

Hasil verifikasi yang valid:
```text
==========================================================
  🔍 AI AGENT ENVIRONMENT VERIFICATION
==========================================================
[PASS] GEMINI.md (Rules & CL4R1T4S Scaffolding) terpasang valid.
[PASS] import_manifest.json valid.
[PASS] MCP Servers: 5 servers aktif (context7, memory, sequential-thinking, fetch, puppeteer).
[PASS] Antigravity Built-in Skills: 5 skills ditemukan.
[PASS] Plugins: 11 plugins ditemukan (Target: >= 11).
[PASS] Canonical Agent Skills: 383 skills ditemukan (Target: >= 380).
[PASS] Subagents terdaftar: 72 subagent profiles.
[PASS] Obsidian Executable: Aplikasi Obsidian terdeteksi terpasang di sistem.
[PASS] BrainVault: Folder C:\Users\Axioo\BrainVault lengkap dengan 5 direktori inti, 00_INDEX.md, dan konfigurasi graf.
==========================================================
  ✅ ALL SYSTEMS GO! Agen siap bekerja dengan kepatuhan 100%.
==========================================================
```

