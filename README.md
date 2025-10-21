### Como instalar os pacotes
```bash
curl https://mise.run | sh
echo 'eval "$(~/.local/bin/mise activate bash)"' >> ~/.bashrc
mise use -g java lua node npm
```

### Como instalar o neovim na máquina do laboratório
```bash
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
chmod u+x nvim-linux-x86_64.appimage
```
> [!TIP]
> É bom criar um alias para executar o appimage

### Como instalar o setup
```bash
git clone https://github.com/guifersv/nvim-p2.git ~/.config/nvim
rm -rf ~/.config/nvim/.git
```

### Instalando os pacotes necessários
No neovim
```nvim
:Lazy sync
:MasonInstall typescript-language-server lua-language-server prettier stylua jdtls java-debug-adapter google-java-format html-lsp css-lsp
```

> [!TIP]
> O comando `:NvCheatsheet` permite ver todos os mappings

<details>

<summary>Como remover</summary>

```bash
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.cache/nvim
```

</details>
