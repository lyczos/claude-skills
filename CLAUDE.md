# lyczos-skills — Personal AI Skills Library

A Claude Code plugin containing reusable skills for AI assistants. Skills are not limited to coding — they cover any domain: filling out forms, writing documents, productivity workflows, coding patterns, and more.

## Repository Structure

```
claude-skills/
├── .claude-plugin/
│   └── plugin.json           # Plugin metadata (name, version, author)
├── hooks/
│   ├── hooks.json            # Event-based triggers (SessionStart, etc.)
│   ├── run-hook.cmd          # Hook runner script
│   └── session-start         # Injects using-skills into every session
├── skills/                   # All skills live here (flat namespace)
│   ├── using-skills/         # Meta skill: how to discover and use skills
│   │   └── SKILL.md
│   └── <skill-name>/         # Each skill in its own directory
│       ├── SKILL.md          # Main skill file (required)
│       └── supporting-file.* # Optional: heavy reference, templates, scripts
├── agents/                   # Agent profiles (e.g., reviewer agents)
│   └── <agent-name>.md
├── docs/                     # Documentation, specs, guides
├── CLAUDE.md                 # This file
└── LICENSE
```

## Skill Anatomy

### SKILL.md Format

```yaml
---
name: kebab-case-skill-name
description: Use when [specific triggering conditions]
---
```

**Frontmatter rules:**
- Only `name` and `description` fields (max 1024 chars total)
- `name`: letters, numbers, hyphens only
- `description`: Start with "Use when...", describe ONLY triggering conditions (not workflow)
- Written in third person

**Body:** Follow this general structure (adapt as needed):

```markdown
# Skill Name

## Overview
Core principle in 1-2 sentences.

## When to Use
Bullet list of symptoms/use cases. When NOT to use.

## Process / Quick Reference
Steps, tables, or patterns for scanning.

## Common Mistakes
What goes wrong + fixes.
```

### Skill Categories

Skills fall into these types — any domain is valid:

| Type | Description | Examples |
|------|-------------|---------|
| **Technique** | Concrete method with steps | Form filling, code review, migration |
| **Pattern** | Way of thinking about problems | Decision frameworks, analysis methods |
| **Reference** | API docs, syntax guides, templates | Document templates, API cheatsheets |
| **Workflow** | End-to-end process | Application submission, deploy pipeline |

### Directory Layout per Skill

```
# Simple skill — everything inline
skill-name/
  SKILL.md

# Skill with supporting files
skill-name/
  SKILL.md              # Overview + core content
  template.md           # Document template
  reference.md          # Heavy reference material (100+ lines)
  scripts/              # Executable tools if needed
```

**Keep inline:** Principles, short code patterns (<50 lines), instructions.
**Separate file:** Heavy reference (100+ lines), reusable templates, scripts.

## Language Policy

- **All skill files:** Written in English
- **User input:** Accepted in any language
- **AI output:** Matches the user's language unless specified otherwise

## Creating a New Skill

1. Create directory: `skills/<kebab-case-name>/`
2. Create `SKILL.md` with proper frontmatter
3. Write clear, concise content — optimize for AI scanning
4. Use verb-first naming: `filling-forms` not `form-filler`
5. Include keywords that AI would search for (error messages, symptoms, synonyms)

### Naming Conventions

- **Directories:** kebab-case (`filling-tax-forms`, `writing-cover-letters`)
- **Main file:** Always `SKILL.md` (uppercase)
- **Supporting files:** Descriptive names (`template.md`, `reference-api.md`)
- **Verb-first, active voice:** `creating-X` not `X-creation`

### Search Optimization

Future AI instances find skills by searching descriptions and content. Include:
- Concrete triggers and symptoms
- Synonyms (timeout/hang/freeze)
- Domain-specific terminology
- Error messages if applicable

## Installing This Plugin

```bash
# From local path
claude plugin add /path/to/claude-skills

# Or via git URL (once published)
claude plugin add github:lyczos/claude-skills
```

## Contributing Skills

When adding a new skill:
1. Follow the SKILL.md format above
2. Keep skills concise — <500 words for most, <200 for frequently-loaded
3. One excellent example beats many mediocre ones
4. Test that the skill is discoverable by its description
5. Commit with a clear message describing the skill's purpose
