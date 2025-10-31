### Como instalar os pacotes
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
> Use o comando `:SetToken` para setar o seu token
> e o comando `:SetId` para setar o id da questão.
> Alguns comandos úteis `<leader>j`

<details>

<summary>Como remover</summary>

```bash
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.cache/nvim
```

</details>
