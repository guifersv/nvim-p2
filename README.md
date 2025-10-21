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
:MasonInstall jdtls stylua lua-language-server java-debug-adapter google-java-format
```

> [!TIP]
> O comando `:NvCheatsheet` permite ver todos os mappings

<details>

<summary>Como remover</summary>

```bash
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.cache/nvim
```

</details>
