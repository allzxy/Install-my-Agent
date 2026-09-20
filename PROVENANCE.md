# 📜 Provenance & Sumber Resmi Komponen (Skills, Plugins, Rules)

Dokumen ini memuat catatan lengkap asal-usul, link repositori upstream, lisensi, dan pembuat dari setiap plugin, skill, serta aturan scaffolding (termasuk CL4R1T4S, Obsidian BrainVault, dan Anti-Lag delegation) yang terpasang di dalam paket ini.

---

## 1. Core Scaffolding, Rules & Protocols

### CL4R1T4S Core Scaffolding
- **Nama:** `cl4r1t4s-core`
- **Sumber / Asal:** Disarikan dari protokol agen frontier:
  - **Devin:** [Cognition AI Principles](https://cognition.ai) (Relentless completion, background execution)
  - **Cursor:** [Cursor System Prompts & Rules](https://cursor.com) (Surgical edits, zero-hallucination)
  - **Manus:** [Manus AI Scaffolding](https://manus.im) (Multi-tool autonomous loop)
  - **Claude Code:** [Anthropic Agent Guidelines](https://docs.anthropic.com/claude/docs) (Tool discipline, gate verification)
- **Fungsi:** DNA kepatuhan total (*User Alignment First*), GateGuard anti-halusinasi, dan gaya komunikasi sat-set ADHD-friendly.

### Autonomous Obsidian BrainVault Protocol
- **Sumber / Spesifikasi:** Obsidian PKM & Memory Graph Architecture (`C:\Users\Axioo\BrainVault`)
- **Fungsi:** Menyediakan penyimpanan pengetahuan persisten lintas sesi berbasis Map of Content (`[[00_INDEX]]`), bidirectional wikilinks (`[[Node]]`), serta siklus otonom *Pre-Task Retrieval* dan *Post-Task Brain Sync*.

### Auto-Delegation & Anti-Lag Protocol
- **Sumber / Spesifikasi:** Subagent Autonomous Multitasking Specification
- **Fungsi:** Delegasi non-blocking otonom ke worker spesifik (`fast-investigator`, `code-worker`) di latar belakang, memanfaatkan fresh memory context window, serta eliminasi polling (`zero tool polling`) melalui Reactive Wakeup.

### Autonomous Permissions & Deletion Safety Gate
- **Sumber / Spesifikasi:** Antigravity Autonomous Security Architecture
- **Fungsi:** Memberikan persetujuan otomatis (pre-approved execution) untuk read/write/terminal/web guna kelancaran sat-set, dengan gerbang verifikasi wajib izin eksplisit user untuk semua operasi destruktif (`rm`, `del`, `git reset --hard`, `git push --force`, `drop database`).

---

## 2. Powerhouse Plugins (11 Plugins)

### 1. ECC (Enterprise Coding Companion)
- **Pembuat:** Affaan Mustafa ([@affaanmustafa](https://x.com/affaanmustafa))
- **Link Repositori:** [https://github.com/affaan-m/ECC](https://github.com/affaan-m/ECC)
- **Website:** [https://ecc.tools](https://ecc.tools)
- **Lisensi:** MIT
- **Isi:** 68 subagents, 292+ canonical skills, TDD workflows, enterprise code reviews, dan automated testing.

### 2. Caveman
- **Pembuat:** Julius Brussee ([@JuliusBrussee](https://github.com/JuliusBrussee))
- **Link Repositori:** [https://github.com/JuliusBrussee/caveman](https://github.com/JuliusBrussee/caveman)
- **Lisensi:** MIT
- **Isi:** Ultra-compressed output token mode (hemat 65% token), CaveCrew subagents (`cavecrew-builder`, `cavecrew-investigator`, `cavecrew-reviewer`).

### 3. Superpowers
- **Pembuat:** Jesse Vincent ([@obra](https://github.com/obra))
- **Link Repositori:** [https://github.com/obra/superpowers](https://github.com/obra/superpowers)
- **Lisensi:** MIT
- **Isi:** Metodologi koding agen frontier: git-worktrees, subagent-driven development, tdd-workflow, systematic-debugging, writing-plans.

### 4. UX/UI Agent Skills
- **Pembuat:** Thientan Soparat ([@plugin87](https://github.com/plugin87))
- **Link Repositori:** [https://github.com/plugin87/ux-ui-agent-skills](https://github.com/plugin87/ux-ui-agent-skills)
- **Lisensi:** MIT
- **Isi:** DTCG design tokens, 50 komponen UI, aksesibilitas WCAG 2.2 AA→AAA, 138 design systems (Tailwind, Supabase, Apple, Vercel, dll).

### 5. Skills For Real Engineers (Matt Pocock Skills)
- **Pembuat:** Matt Pocock ([@mattpocock](https://github.com/mattpocock)) / Total TypeScript
- **Link Repositori:** [https://github.com/mattpocock/skills](https://github.com/mattpocock/skills)
- **Website:** [https://www.aihero.dev](https://www.aihero.dev)
- **Lisensi:** MIT
- **Isi:** Lean-build, surgical-patch, verify-and-stop, gateguard fact-checking, writing-for-agents.

### 6. I Have ADHD (ADHD-Friendly Output)
- **Pembuat:** Ayghri ([@ayghri](https://github.com/ayghri))
- **Link Repositori:** [https://github.com/ayghri/i-have-adhd](https://github.com/ayghri/i-have-adhd)
- **Lisensi:** MIT
- **Isi:** Formatting respon kognitif untuk pembaca ADHD: lead with command/path, bounded numbered steps, concrete time units, no fluff.

### 7. Humanizer
- **Pembuat:** Blader ([@blader](https://github.com/blader))
- **Link Repositori:** [https://github.com/blader/humanizer](https://github.com/blader/humanizer)
- **Skills Directory:** [https://skills.sh/blader/humanizer](https://skills.sh/blader/humanizer)
- **Lisensi:** MIT
- **Isi:** Menghilangkan gaya bahasa kaku khas AI, menghasilkan tulisan natural layaknya manusia.

### 8. Stop Slop
- **Pembuat:** Hardik Pandya ([@hardikpandya](https://github.com/hardikpandya))
- **Link Repositori:** [https://github.com/hardikpandya/stop-slop](https://github.com/hardikpandya/stop-slop)
- **Lisensi:** MIT
- **Isi:** Filter pembersih kata-kata klise AI (throat-clearing openers, empty corporate buzzwords).

### 9. Buddhist Method
- **Pembuat:** Udomsak ([@udomsak](https://github.com/udomsak))
- **Link Repositori:** [https://github.com/udomsak/buddhist-method](https://github.com/udomsak/buddhist-method)
- **Skills Directory:** [https://skills.sh/udomsak/buddhist-method](https://skills.sh/udomsak/buddhist-method)
- **Lisensi:** MIT
- **Isi:** Disiplin epistemik anti-halusinasi berdasarkan Ariyasacca (Causa-Effek root-cause diagnosis).

### 10. Context Management
- **Sumber:** AI Context Engineering Standard Specification
- **Komponen:** `context-manager.md`, `auto-memory`, dynamic context pruning, token budget saver.
- **Lisensi:** MIT

### 11. Antigravity Built-in Core Skills
- **Pengembang:** Google DeepMind / Antigravity Agent Runtime
- **Path Asal:** `builtin/skills` di runtime Antigravity
- **Isi:**
  - `agy-customizations`: Panduan ekstensi hook, custom plugin, dan MCP.
  - `antigravity_guide`: Dokumentasi lengkap architecture runtime CLI, IDE, dan SDK.
  - `generative_ui`, `migrate-workflows`, `permissioned-github`.

---

## 3. Production Engineering Skills & Meta-Skills (Canonical Suite)

### 1. Addy Osmani Agent Skills
- **Pembuat:** Addy Osmani ([@addyosmani](https://github.com/addyosmani))
- **Link Repositori:** [https://github.com/addyosmani/agent-skills](https://github.com/addyosmani/agent-skills)
- **Lisensi:** Apache-2.0 / MIT
- **Isi Komponen yang Diintegrasikan:**
  - `context-engineering`: Optimasi susunan hierarki konteks (rules files, specs, relevant source, test results) demi output deterministik tanpa token bloat.
  - `interview-me`: Ekstraksi intent mendalam via wawancara satu per satu pertanyaan (one-question-at-a-time) hingga mencapai ≥95% keyakinan sebelum mulai menulis kode atau spek.
  - `doubt-driven-development`: Review adversial in-flight dengan konteks segar (CLAIM → EXTRACT → DOUBT → RECONCILE → STOP) untuk menguji setiap keputusan non-trivial.
  - `planning-and-task-breakdown`: Dekomposisi tugas terspesifikasi menjadi unit implementasi kecil terurut dan dapat diverifikasi (`tasks/plan.md`, `tasks/todo.md`).
  - `spec-driven-development`: Perancangan spesifikasi terstruktur bertahap (Phase 0 scope check, Specify, Plan, Tasks, Implement) dengan approval human gate.
  - `code-review-and-quality`: Tinjauan multi-aksis 5 dimensi (Correctness, Readability, Architecture, Security, Performance) sebelum merge ke branch utama.

### 2. Task Observer ("One Skill to Rule Them All")
- **Pembuat:** Eoghan Henn ([@rebelytics](https://github.com/rebelytics)) / [rebelytics.com](https://rebelytics.com)
- **Link Repositori:** [https://github.com/rebelytics/one-skill-to-rule-them-all](https://github.com/rebelytics/one-skill-to-rule-them-all)
- **Lisensi:** CC BY 4.0
- **Isi Komponen yang Diintegrasikan:**
  - `task-observer`: Pemantauan otonom jalannya eksekusi task untuk menemukan peluang peningkatan skill, merekam pola keberhasilan, feedback koreksi user, dan metodologi kerja nyata menjadi skill modular baru yang reusable.

---

## 4. Ringkasan Tabel Provenance

| Komponen | Pembuat / Proyek | Link Upstream Repositori | Kategori Utama |
| :--- | :--- | :--- | :--- |
| **CL4R1T4S** | Frontier Agents Distillation | Devin, Cursor, Manus, Claude Specs | Behavioral Scaffolding |
| **Obsidian BrainVault** | Antigravity Architecture | `C:\Users\Axioo\BrainVault` | PKM & Autonomous Memory Graph |
| **Anti-Lag Delegation** | Subagent Multitasking Spec | Core Scaffolding | Fast-Investigator & Code-Worker |
| **Deletion Safety Gate** | Security Architecture | Pre-Approved & Mandatory Confirmation | Permissions & Data Protection |
| **Addy Osmani Skills** | Addy Osmani | `https://github.com/addyosmani/agent-skills` | Context, Interview, Doubt, Spec, Plan, Review |
| **Task Observer** | Eoghan Henn (Rebelytics) | `https://github.com/rebelytics/one-skill-to-rule-them-all` | Meta-Skill Discovery & Evolution |
| **ECC** | Affaan Mustafa | `https://github.com/affaan-m/ECC` | 68 Subagents & 292 Skills |
| **Caveman** | Julius Brussee | `https://github.com/JuliusBrussee/caveman` | Token Optimizer & CaveCrew |
| **Superpowers** | Jesse Vincent | `https://github.com/obra/superpowers` | Agent TDD & Worktrees |
| **UX/UI Skills**| Thientan Soparat | `https://github.com/plugin87/ux-ui-agent-skills` | Design Tokens & 138 Systems |
| **Matt Pocock** | Matt Pocock | `https://github.com/mattpocock/skills` | Real Engineering Skills |
| **I Have ADHD** | Ayghri | `https://github.com/ayghri/i-have-adhd` | ADHD Cognitive Formatting |
| **Humanizer** | Blader | `https://github.com/blader/humanizer` | AI Prose Humanizer |
| **Stop Slop** | Hardik Pandya | `https://github.com/hardikpandya/stop-slop` | Anti-AI Slop Filter |
| **Buddhist** | Udomsak | `https://github.com/udomsak/buddhist-method` | Ariyasacca Root Cause |
| **Context Mgr**| Open Agent Spec | `plugins/context-management` | Dynamic Memory & Vector |
| **Antigravity**| Google DeepMind | Antigravity CLI Runtime Core | Built-in CLI & IDE Skills |
| **Context7 MCP**| Upstash | `https://github.com/upstash/context7` | Up-to-date Docs Search MCP |
| **Memory MCP**| Anthropic / MCP Core | `https://github.com/modelcontextprotocol/servers` | Persistent Graph Memory MCP |
| **Sequential MCP**| Anthropic / MCP Core | `https://github.com/modelcontextprotocol/servers` | Dynamic Multi-step Reasoning MCP |
| **Fetch MCP**| Anthropic / MCP Core | `https://github.com/modelcontextprotocol/servers` | Web Fetch & Text Conversion MCP |
| **Puppeteer MCP**| Anthropic / MCP Core | `https://github.com/modelcontextprotocol/servers` | Headless Browser Automation MCP |

---

## 5. MCP Servers Suite (`mcp_config.json`)

Paket ini menyediakan 5 server MCP resmi siap pakai untuk memperluas toolset agen:

1. **`context7` (@upstash/context7-mcp):**
   - **Repositori:** [https://github.com/upstash/context7](https://github.com/upstash/context7)
   - **Fungsi:** Mengambil dokumentasi framework dan library terbaru (React, Next.js, Vite, Tailwind, Prisma) tanpa bergantung pada training data lama.
2. **`memory` (@modelcontextprotocol/server-memory):**
   - **Repositori:** [https://github.com/modelcontextprotocol/servers/tree/main/src/memory](https://github.com/modelcontextprotocol/servers/tree/main/src/memory)
   - **Fungsi:** Knowledge graph berbasis memori persisten lintas sesi obrolan.
3. **`sequential-thinking` (@modelcontextprotocol/server-sequential-thinking):**
   - **Repositori:** [https://github.com/modelcontextprotocol/servers/tree/main/src/sequentialthinking](https://github.com/modelcontextprotocol/servers/tree/main/src/sequentialthinking)
   - **Fungsi:** Dynamic problem-solving dan penalaran bertahap untuk arsitektur dan debugging rumit.
4. **`fetch` (@modelcontextprotocol/server-fetch):**
   - **Repositori:** [https://github.com/modelcontextprotocol/servers/tree/main/src/fetch](https://github.com/modelcontextprotocol/servers/tree/main/src/fetch)
   - **Fungsi:** Mengambil isi halaman web dan mengubahnya menjadi format markdown bersih.
5. **`puppeteer` (@modelcontextprotocol/server-puppeteer):**
   - **Repositori:** [https://github.com/modelcontextprotocol/servers/tree/main/src/puppeteer](https://github.com/modelcontextprotocol/servers/tree/main/src/puppeteer)
   - **Fungsi:** Otomasi browser headless untuk scraping, visual regression testing, dan web screenshots.
