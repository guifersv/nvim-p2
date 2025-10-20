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
Dentro o nvchad, após a primeira execução:
```nvim
:Lazy sync
:MasonInstallAll
```
