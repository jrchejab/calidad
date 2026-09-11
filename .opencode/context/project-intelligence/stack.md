# Stack — portal_calidad

Inventario técnico. Versiones viven solo aquí (local-gana).

- App: Rukovoditel imagen `kkmadhpuriya/rukovoditel:latest` (sin código propio).
- DB: MySQL 8.0 (`mysql_native_password`, `sql-mode=""`) en volumen `mysql_data`.
- Entrypoint `scripts/entrypoint.sh`: genera `config/database.php` desde env, borra `/install`, arranca Apache.
- Proxy: Traefik vía `SERVICE_FQDN_APP`, TLS `websecure` con certresolver coolify.
- Seed de migración: `Temp\opencode\calidad-colv_calidad.sql.gz`, fuera del repo, ya importado.
