### Como instalar as ferramentas
```bash
curl https://mise.run/bash | sh
mise use -g java lua node npm python
```

### Como instalar o neovim na máquina do laboratório (Se tiver desatualizado)
```bash
mise use -g neovim
```

### Como instalar o setup
```bash
git clone https://github.com/guifersv/nvim-p2.git ~/.config/nvim
rm -rf ~/.config/nvim/.git
```

### Instalando os pacotes necessários
No neovim
```nvim
:Lazy sync
```

> [!TIP]
> `<leader>d` para o debugger.
> `<leader>cn` para o neogen.
> `<leader>j` para o test runner do jdtls.
> `gs` para o surround.

<details>
<summary>Como remover</summary>

```bash
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.cache/nvim
```
</details>

<details>
<summary>Fix no jsonc</summary>
Vá em ~/.local/share/nvim/lazy/nvim-treesitter/lua/nvim-treesitter/parsers.lua e mude o bloco jsonc para:

```lua
jsonc = {
  install_info = {
    revision = '02b01653c8a1c198ae7287d566efa86a135b30d5',
    url = 'https://github.com/sunilunnithan/tree-sitter-jsonc.git',
  },
  maintainers = { '@WhyNotHugo' },
  requires = { 'json' },
  tier = 2,
},
```
</details>

