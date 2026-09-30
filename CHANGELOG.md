# CHANGELOG

## 1.1_RC1

- Imagen base actualizada a Alpine 3.24.2.
- Zona horaria configurada como `Europe/Madrid` mediante `tzdata`.
- Fish queda disponible con Starship y aliases para `ls`, `cat` y `find`.
- Zsh se mantiene como shell de entrada.
- La imagen de desarrollo se publica en Docker Hub con el hash corto del commit como tag.
- Se mantienen las imágenes con el tag `latest` en los flujos estable y de desarrollo.

## 1.0

- Imagen base Alpine.
- Herramientas instaladas: `bat`, `curl`, `fd`, Fish, Git, IPython, `jq`, `less`, `lsd`, Neovim, `pip`, `ripgrep`, `sd`, Starship, `virtualenv`, Yazi y Zsh.
- GitHub Actions para generar y publicar imágenes estables y de desarrollo.
