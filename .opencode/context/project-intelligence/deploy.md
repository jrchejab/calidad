# Deploy — portal_calidad

Particular del proyecto. Acceso y gates en `{gestor}/infraestructura/vps-01.md` y `{gestor}/reglas/github-deploy.md`.

- Repo `github.com/jrchejab/calidad`, esquema `solo-prod`, rama `única: master`, VPS asignado `VPS-01`.
- Auto-Deploy ON tras push. Solo push y esperar aviso del admin.
- Datos persisten en volumen `mysql_data`, redeploy no requiere seed.
