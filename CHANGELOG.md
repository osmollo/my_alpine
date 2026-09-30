# CHANGELOG

## 1.1_RC1

- Imagen base actualizada a Alpine 3.24.2.
- Zona horaria configurada como `Europe/Madrid` mediante `tzdata`.
- Fish queda disponible con Starship y aliases para `ls`, `cat` y `find`.
- Zsh se mantiene como shell de entrada.
- Las PR fusionadas en `develop` publican una beta numerada según `release.json` y crean una pre-release en GitHub.
- Las betas no actualizan el tag `latest`.
- Solo una PR fusionada de `develop` a `main` publica una versión estable y actualiza el tag `latest`.
- Se documenta el flujo de ramas `main`, `develop`, `feature/*` y `hotfix/*`.

## 1.0

- Imagen base Alpine.
- Herramientas instaladas: `bat`, `curl`, `fd`, Fish, Git, IPython, `jq`, `less`, `lsd`, Neovim, `pip`, `ripgrep`, `sd`, Starship, `virtualenv`, Yazi y Zsh.
- GitHub Actions para generar y publicar imágenes estables y de desarrollo.
