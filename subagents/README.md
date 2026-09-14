# Subagent Ecosystem & Delegation Architecture

Folder ini berisi profil subagent spesialis yang digunakan untuk auto-delegasi pekerjaan berat di background tanpa membebani chat utama.

---

## 1. Mekanisme Subagent di Antigravity / Gemini CLI / ECC

Setiap plugin yang memiliki folder `agents/*.md` secara otomatis didaftarkan ke sistem agent runtime sebagai subagent yang dapat dipanggil via tool `invoke_subagent`.

Struktur YAML Frontmatter pada definisi subagent:
```markdown
---
name: nama-subagent
description: Deskripsi kapan dan bagaimana subagent ini digunakan.
model: inherit # atau flash, flash_lite, pro
---

[Instruksi dan System Prompt Spesifik Subagent]
```

---

## 2. Profil Subagent Utama yang Tersedia

1. **`context-manager.md`**
   - **Peran:** Elite AI context engineering specialist.
   - **Fungsi:** Mengelola dynamic context, memory vault, vector state, dan pemulihan konteks token hemat.
2. **`cavecrew-builder.md`**
   - **Peran:** Surgical 1-2 file editor.
   - **Fungsi:** Menyelesaikan bug fix terisolasi, refactor kecil, typo fix tanpa memakan konteks besar di chat utama.
3. **`cavecrew-investigator.md`**
   - **Peran:** Code locator & diagnostic researcher.
   - **Fungsi:** Mencari lokasi bug atau implementasi simbol di codebase besar secara read-only.
4. **`cavecrew-reviewer.md`**
   - **Peran:** Compressed code reviewer.
   - **Fungsi:** Melakukan audit diff kode baris per baris sebelum commit/merge.
5. **`code-architect.md`** (ECC)
   - **Peran:** System design & architectural planner.
   - **Fungsi:** Merancang struktur modul, boundary domain, dan skema data.
6. **`code-reviewer.md` & `e2e-runner.md`** (ECC)
   - **Peran:** QA & verification worker.
   - **Fungsi:** Menjalankan test suite, Playwright E2E, dan pengecekan regresi secara mandiri.

---

## 3. Dynamic Subagent Definition

Jika subagent spesifik belum tersedia, harness Antigravity memiliki tool bawaan:
- `define_subagent`: Mendefinisikan subagent baru secara on-the-fly dengan role, description, toolset, dan system prompt khusus.
- `invoke_subagent`: Menjalankan subagent di background secara non-blocking.
- `manage_subagents`: Memantau status, log, atau menghentikan subagent.
