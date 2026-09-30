# my_alpine

Imagen Docker basada en Alpine para tareas interactivas de administración de sistemas y desarrollo desde terminal.

## Uso

Ejecuta la imagen de Docker Hub con una terminal interactiva:

```sh
docker run --rm -it osmollo/my_alpine:latest
```

Zsh es el shell de entrada. Fish sigue disponible con Starship y aliases para `ls`, `cat` y `find`. La imagen configura la zona horaria `Europe/Madrid`.

## Herramientas incluidas

- Navegación y búsqueda: `fd`, `lsd`, `ripgrep`, `sd`, Yazi y `less`.
- Edición y terminal: Neovim, Fish, Zsh, Starship y `bat`.
- Desarrollo: Python, `pip`, `virtualenv` e IPython.
- Administración y utilidades: `curl`, Git y `jq`.

## Publicación

El workflow de `main` publica versiones estables en Docker Hub con el valor de `release.json` y actualiza el tag `latest`.

El workflow de `develop` publica imágenes de desarrollo en Docker Hub con el hash corto del commit y también actualiza `latest`.

## Versiones

Consulta los cambios por versión en [CHANGELOG.md](./CHANGELOG.md).
