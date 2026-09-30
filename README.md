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

Las versiones se definen en `release.json`. Para una beta se usa una versión con el sufijo `_RC<n>`, por ejemplo `1.1_RC1`.

Al fusionar una PR en `develop`, GitHub Actions publica una imagen beta en Docker Hub con la versión indicada en `release.json` y crea una pre-release en GitHub. Las betas no modifican el tag `latest`.

Al fusionar una PR de `develop` a `main`, GitHub Actions publica la versión estable en Docker Hub, crea la release de GitHub y actualiza `osmollo/my_alpine:latest`.

## Flujo de ramas

- `main`: versiones estables publicadas y único origen del tag `latest`.
- `develop`: rama de integración para la siguiente beta.
- `feature/<descripcion>`: cambios aislados que se integran mediante una PR hacia `develop`.
- Las correcciones urgentes se preparan en una rama `hotfix/<descripcion>` y se integran mediante una PR hacia `develop`; después se promocionan de `develop` a `main`.

Antes de abrir una PR, actualiza `README.md`, `CHANGELOG.md` y `release.json` cuando el cambio lo requiera.

## Versiones

Consulta los cambios por versión en [CHANGELOG.md](./CHANGELOG.md).
