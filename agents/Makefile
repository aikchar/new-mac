.PHONY: init
init: | ~/.agents/skills ~/.claude/skills

~/.agents/skills:
	mkdir -p ~/.agents/skills

~/.claude/skills: | ~/.claude ~/.agents/skills
	ln -s ~/.claude/skills ~/.agent/skills

~/.claude:
	mkdir -p ~/.claude
