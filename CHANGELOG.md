# CHANGELOG

## 1.1_RC1

- Imagen base actualizada a Alpine 3.24.2.
- Zona horaria configurada como `Europe/Madrid` mediante `tzdata`.
- Fish pasa a ser el shell de entrada y se configura con Starship.
- Añadidos aliases de Fish: `ls` usa `lsd`, `cat` usa `bat -p` y `find` usa `fd`.
- La imagen de desarrollo se publica en Docker Hub con el hash corto del commit como tag.
- Se mantienen las imágenes con el tag `latest` en los flujos estable y de desarrollo.

## 1.0

- Imagen base Alpine.
- Herramientas instaladas: `bat`, `curl`, `fd`, Fish, Git, IPython, `jq`, `less`, `lsd`, Neovim, `pip`, `ripgrep`, `sd`, Starship, `virtualenv`, Yazi y Zsh.
- GitHub Actions para generar y publicar imágenes estables y de desarrollo.
