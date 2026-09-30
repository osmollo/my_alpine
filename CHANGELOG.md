# CHANGELOG

## 1.1_RC1

- Imagen base actualizada a Alpine 3.24.2.
- Zona horaria configurada como `Europe/Madrid` mediante `tzdata`.
- Fish queda disponible con Starship y aliases para `ls`, `cat` y `find`.
- Zsh se mantiene como shell de entrada.
- Zsh carga una configuración de Starship específica que identifica visualmente el contenedor Docker.
- Las PR fusionadas en `develop` publican una beta numerada según `release.json` y crean una pre-release en GitHub.
- Las betas no actualizan el tag `latest`.
- Solo una PR fusionada de `develop` a `main` publica una versión estable y actualiza el tag `latest`.
- La creación de una rama `feature/*` desde `develop` incrementa automáticamente la versión minor y reinicia el sufijo a `RC1`.
- La creación de una rama `fix/*` desde `develop` incrementa automáticamente la versión patch y reinicia el sufijo a `RC1`.
- Se documenta el flujo de ramas `main`, `develop`, `feature/*` y `fix/*`.

## 1.0

- Imagen base Alpine.
- Herramientas instaladas: `bat`, `curl`, `fd`, Fish, Git, IPython, `jq`, `less`, `lsd`, Neovim, `pip`, `ripgrep`, `sd`, Starship, `virtualenv`, Yazi y Zsh.
- GitHub Actions para generar y publicar imágenes estables y de desarrollo.
