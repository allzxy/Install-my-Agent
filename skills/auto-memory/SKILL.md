---
name: auto-memory
description: Automatically record and retrieve persistent project memory, architectural decisions, and context to save tokens and prevent context repetition. Activates automatically when learning project conventions, completing milestones, or resuming work.
---

# Auto-Memory & Context Persistence

Save tokens and eliminate context repetition across turns and sessions.

## Core Rules

1. **Auto-Persist Key State:** Whenever the user explains a tech stack, coding rule, database schema, or project objective, automatically append it to `.agents/memory/PROJECT_MEMORY.md`.
2. **Auto-Recall Before Asking:** Always inspect `.agents/memory/PROJECT_MEMORY.md` before asking the user to re-explain their stack or preferences.
3. **Token Compression:** Do not bloat chat context with repeated boilerplate. Store decisions in the memory file and reference them concisely.
4. **Milestone Snapshots:** When a feature or bugfix is completed, record the delta to `.agents/memory/PROJECT_MEMORY.md` so future subagents can read it with zero token waste.