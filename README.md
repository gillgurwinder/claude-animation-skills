# Claude Animation Skills for Claude Code

This repo contains the exact commands and steps to install high-quality Claude Code skills for creating animation videos (especially science and education content like spacecraft acceleration, relativity, math explainers, etc.).

## Recommended Skills

| Skill | Best for | Original Repo |
|-------|----------|---------------|
| **animate** | Short procedural videos, math style, storyboard check-ins | [cth9191/animate](https://github.com/cth9191/animate) |
| **manim** | Precise math & physics animations (Manim / 3Blue1Brown style) | [iart-ai/manim-skills](https://github.com/iart-ai/manim-skills) |

## Prerequisites

Install these once on your computer:

```bash
# Node.js 18+ (required)
node --version

# ffmpeg (required for video export)
ffmpeg -version

# For the animate skill (Playwright + Chromium)
npm i -g playwright
npx playwright install chromium

# For the Manim skill (Python)
pip install manim
# Optional for equations: install LaTeX (MacTeX or TeX Live)
```

## Install the Skills

### Method 1: One-line install (easiest)

```bash
npx skills add cth9191/animate -g -a claude-code
npx skills add iart-ai/manim-skills -g -a claude-code
```

### Method 2: Claude Code plugin marketplace

Inside Claude Code, run:

```
/plugin marketplace add cth9191/animate
/plugin install animate@animate

/plugin marketplace add iart-ai/manim-skills
/plugin install manim-skills@manim-skills
```

### Method 3: Manual copy (always works)

```bash
# Animate skill
git clone https://github.com/cth9191/animate.git /tmp/animate
mkdir -p ~/.claude/skills
cp -r /tmp/animate/plugins/animate/skills/animate ~/.claude/skills/

# Manim skill
git clone https://github.com/iart-ai/manim-skills.git /tmp/manim-skills
cp -r /tmp/manim-skills/skills/manim ~/.claude/skills/
```

## After Installing

1. Restart Claude Code (or start a new session).
2. Use the skills:

```
/animate a spacecraft accelerating from 0% to 99% of light speed with a progressive speed bar, planet and moon in background, math style
```

or

```
Create a Manim animation of a spacecraft accelerating to 99% light speed with a labeled speed bar.
```

## Notes

- These skills create **deterministic code-based animations** (canvas or Manim), not generative AI video.
- They are free and open source.
- You need a Claude Code / Anthropic account to run them.

---

Created for easy local installation of Claude Code animation skills.
