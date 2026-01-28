### Como instalar as ferramentas (Pode deixar o terminal lento)
```bash
curl https://mise.run/bash | sh
mise use -g java node
```

**O [mise en place](https://github.com/jdx/mise) tem uma quantidade absurda de [ferramentas](https://mise.jdx.dev/registry.html#tools) que você pode instalar na máquina sem precisar de permissões sudo**

### Como instalar o setup
```bash
git clone https://github.com/guifersv/nvim-p2.git ~/.config/nvim
rm -rf ~/.config/nvim/.git
```

### Quando entrar no neovim pela primeira vez é recomendado atualizar os plugins
```
:Lazy sync
```

> [!TIP]
> Se quiser usar melhor os plugins pesquise sobre eles

<details>
<summary>Como remover</summary>

```bash
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.cache/nvim
```
</details>
