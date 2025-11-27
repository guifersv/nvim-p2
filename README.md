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
> `<leader>a` para o neogen.
> `<leader>T` para o test runner do jdtls.
> `gz` para o surround.

<details>

<summary>Como remover</summary>

```bash
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.cache/nvim
```

</details>
