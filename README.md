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
:call doge#install()
```

> [!TIP]
> `<leader>d` para o debugger.

<details>

<summary>Como remover</summary>

```bash
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.cache/nvim
```

</details>
