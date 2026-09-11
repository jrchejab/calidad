# AGENTS.md — portal_calidad (calidad)

> Contexto para agentes IA. Leer antes de tocar código.
> Infra: `{gestor}/infraestructura/vps-01.md` (VPS-01)
> Reglas: `{gestor}/reglas/github-deploy.md`
> Ficha: perfil Docker-appliance Rukovoditel | esquema `solo-prod` | repo jrchejab/calidad | dominio pendiente
> Fina: `.opencode/context/project-intelligence/stack.md, patterns.md, deploy.md`
> Nota: las rutas `{gestor}` resuelven en el equipo del admin, no en el repo.

## 1. Qué es (estado actual)

Rukovoditel empaquetado en Docker para Coolify: gestión interna de calidad. Imagen base pública + entrypoint que inyecta config de DB. Sin código propio salvo empaque.

## 2. Stack (resumen, detalle en `stack.md`)

Imagen `kkmadhpuriya/rukovoditel`, MySQL 8.0 en volumen persistente, Traefik con TLS Coolify.

## 3. Configuración

Vars por env en Coolify con defaults en `compose`. `.env.example` con placeholders. Dump de migración fuera del repo en `Temp\opencode\`.

## 4. Deploy (detalle en `deploy.md`)

Repo `jrchejab/calidad`, `única: master`, `VPS-01`. Solo push y esperar aviso.

## 5. Convenciones (detalle en `patterns.md`)

No tocar la app, solo empaque. Redeploy no pierde datos por volumen.

## 6. Docs y punteros

- Sin `docs/` propio. Seed de migración en respaldo local, no versionado.
