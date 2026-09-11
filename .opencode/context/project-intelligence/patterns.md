# Patterns — portal_calidad

Solo lo propio de este proyecto. Lo genérico vive en Nivel 1.

- No se modifica la app Rukovoditel, solo `Dockerfile`, `compose` y `entrypoint`.
- Credenciales solo por env con defaults en `compose`. `.env.example` con placeholders.
- Dumps `*.sql.gz` nunca en repo, van a respaldo local con `*.sql*` en ignore.
- Salud MySQL por `mysqladmin ping` con root antes de arrancar app.
