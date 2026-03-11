---
name: using-skills
description: Use when starting any conversation - establishes how to find and use lyczos-skills
---

# Using lyczos-skills

This plugin provides personal skills for AI assistants. Skills cover any domain — coding, productivity, forms, documents, workflows, and more.

## Language Policy

- **Skill definitions:** Always written in English
- **User input:** Accepted in any language
- **Output language:** Match the user's language unless they specify otherwise

## How to Use

**In Claude Code:** Use the `Skill` tool to invoke skills by name (e.g., `lyczos-skills:skill-name`).

## Skill Priority

1. **User's explicit instructions** (CLAUDE.md, direct requests) — highest priority
2. **lyczos-skills** — override default behavior where applicable
3. **Default system prompt** — lowest priority

## Finding Skills

Skills are discovered by their `description` field in SKILL.md frontmatter. Descriptions start with "Use when..." and list triggering conditions. If a skill might apply to the current task, invoke it.
