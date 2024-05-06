<a name="readme-top"></a>

<div align="center">

<a href="https://github.com/AlejandroSuero/colorscheme-installer.nvim/actions/workflows/default.yml">
    <img
        alt="CI status badge"
        align="center"
        src="https://github.com/AlejandroSuero/colorscheme-installer.nvim/actions/workflows/default.yml/badge.svg"
    />
</a>
<a href="https://github.com/AlejandroSuero/colorscheme-installer.nvim/issues">
    <img
        align="center" src="https://img.shields.io/github/issues/alejandrosuero/colorscheme-installer.nvim"
        alt="issues badge"
        title="Issues"
    />
</a>

# NeoVim colorscheme installer

Install colorschemes into your [NeoVim](https://neovim.io) configuration from
itself.

[Report an issue](https://github.com/AlejandroSuero/colorscheme-installer.nvim/issues)
· [Suggest a feature](https://github.com/AlejandroSuero/colorscheme-installer.nvim/issues)

</div>

---

## Installation

This plugin supports [lazy.nvim](https://github.com/folke/lazy.nvim) installation.

- Default installation:

```lua
return {
    "AlejandroSuero/colorscheme-installer.nvim",
    config = function()
        require("colorscheme-installer").setup()
    end,
}
```

- Customizable installation:

```lua
return {
    "AlejandroSuero/colorscheme-installer.nvim",
    config = function()
        require("colorscheme-installer.nvim").setup({
            -- your configuration goes here
        })
    end,
}
```

> [!note]
>
> See default configuration.

## Default configuration

```lua
local opts = {
    -- path where the colorschemes will be configured
    colorschemes_path = os.getenv("HOME") .. "/.config/nvim/lua/colorschemes"
}
```

## Contributing

Thank you to everyone that is contributing and to those who want to contribute.
Any contribution is welcomed!

**Quick guide**:

1. [Fork](https://github.com/AlejandroSuero/colorscheme-installer.nvim/fork) this
   project.
2. Clone your fork (`git clone <fork-URL>`).
3. Add main repo as remote (`git remote add upstream <main-repo-URL>`).
4. Create a branch for your changes (`git switch -c feature/your-feature` or
   `git switch -c fix/your-fix`).
5. Commit your changes (`git commit -m "feat(...): ..."`).
6. Push to your fork (`git push origin <branch-name>`).
7. Open a [PR](https://github.com/AlejandroSuero/colorscheme-installer.nvim/pulls).

For more information, check [CONTRIBUTING.md](https://github.com/AlejandroSuero/colorscheme-installer.nvim/blob/main/CONTRIBUTING.md)
