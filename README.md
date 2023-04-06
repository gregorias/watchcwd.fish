# ⌚ watchcwd.fish 🐟

A [Fish] plugin that watches the current directory and runs a command on any
changes.

## ✔️  Prerequisites

This plugin requires [Fswatch][fswatch].

## 📦 Installation

Install this plugin with [Fisher][fisher]:

```fish
fisher install gregorias/watchcwd.fish
```

## 🚀 Usage

For example, run `run-unit-tests` every time you modify a file:

```fish
my_project $ watchcwd run-unit-tests
```

[Fish]: https://fishshell.com/
[fisher]: https://github.com/jorgebucaran/fisher
[fswatch]: https://github.com/emcrisostomo/fswatch
