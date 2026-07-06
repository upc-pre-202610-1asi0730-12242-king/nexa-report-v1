# Capítulo V: Product Implementation, Validation & Deployment

## 5.1. Software Configuration Management

La gestión de configuración documenta el cierre técnico TB2 de Website, WebApp y Platform mediante evidencia verificable de repositorios, ramas, tags, convenciones, entornos y despliegue académico. Los releases base `v4.0.0`, `v3.0.0` y `v2.0.0` fueron seguidos por los hotfix de polish `v4.0.1`, `v3.0.1` y `v2.0.1`. La documentación evita equiparar estos artefactos con operación comercial y mantiene separados los datos sensibles.

### 5.1.1. Software Development Environment Configuration

*Entorno de desarrollo y gestión de Nexa.*

| Recurso | Tecnología o herramienta | Uso en el proyecto | Evidencia o acceso |
|---|---|---|---|
| Gestión ágil | Jira Software | Product Backlog, Sprint Backlog, issues y estados por sprint. | Evidencia documentada por sprint. |
| Control de versiones | Git y GitHub | Branches, tags, releases y trazabilidad independiente por repositorio. | Repositorios oficiales de la organización KING. |
| Documentación | Markdown / Docs-as-Code | Capítulos, evidencias y trazabilidad académica. | Repositorio `nexa-ecosystem-report`. |
| Diseño UX/UI | Figma y FigJam | Wireframes, mockups, user flows y wireflows. | Artefactos documentados en el Capítulo 4. |
| Landing Page | HTML5, CSS3, JavaScript | Website público multipágina. | https://cutt.ly/5yqqz5VP |
| Web Application | Vue 3, Vite, PrimeVue, PrimeFlex, PrimeIcons, Pinia, Vue Router, Vue I18n, Axios | Experiencias autenticadas de Buyer, Sales, Logistics y Account Owner. | https://cutt.ly/1yqqxr3J |
| Web Services | ASP.NET Core Web API, C#, .NET 10, EF Core, Npgsql, Swagger/OpenAPI | Servicios RESTful, seguridad, multi-tenancy y persistencia. | https://nexa-platform-20wt.onrender.com |
| Base de datos | PostgreSQL 16 / Render PostgreSQL | Persistencia relacional de Platform API. | Configuración protegida mediante variables de entorno. |
| Containerización local | Docker Compose y Caddy | Coordina PostgreSQL, API, WebApp y reverse proxy para validación local. | `docker-compose.yml` y configuración local redactada. |
| Deployment | GitHub Pages y Render | Publicación académica de Website, WebApp, API y PostgreSQL. | URLs públicas confirmadas en este capítulo. |
| Evidencia de servicios | Swagger/OpenAPI y health checks | Revisión de contratos y disponibilidad técnica. | Swagger y controles de salud documentados para TB2. |

> *Nota*: La tabla resume las herramientas, tecnologías y entornos utilizados durante el cierre TB2 sin exponer credenciales. Elaboración propia.

### 5.1.2. Source Code Management

Cada producto se versiona de forma independiente. La trazabilidad detallada del informe se presenta en Project Report Collaboration Insights; el repositorio documental se publica como artefacto Docs-as-Code y recibe releases SemVer asociados a tags del repositorio oficial.

*Repositorios oficiales del ecosistema Nexa.*

| Repositorio | Producto asociado | Release final defendible | Rama principal | Propósito | URL |
|---|---|---|---|---|---|
| `nexa-ecosystem-report` | Project Report / Docs-as-Code | `v4.0.1` | `main` | Informe académico, capítulos, evidencias, release notes y trazabilidad documental. | https://cutt.ly/YyqqccYa |
| `nexa-website` | Landing Page | `v4.0.1` | `main` | Website público y acceso hacia registro o login. | https://cutt.ly/TyqqcUn4 |
| `nexa-webapp` | Frontend Web Application | `v3.0.1` | `main` | SPA Vue para los flujos funcionales del producto. | https://cutt.ly/HyqqviBz |
| `nexa-platform` | Web Services / Platform API | `v2.0.1` | `main` | API modular, persistencia, seguridad y documentación de servicios. | https://cutt.ly/byqqvhqJ |

> *Nota*: La tabla utiliza los releases finales defendibles del cierre TB2, incluyendo el reporte como artefacto Docs-as-Code versionado. Elaboración propia.

*Ramas y tags por repositorio al cierre TB2.*

| Repositorio | Ramas remotas detectadas | Tags relevantes | Último commit verificado |
|---|---|---|---|
| `nexa-website` | `origin/main`, `origin/hotfix/v2.0.1-final-polish` | `v4.0.1`, `v4.0.0` | `e72d9c4` — `fix(website): refine final landing visuals` |
| `nexa-webapp` | `origin/main`, `origin/develop`, `origin/hotfix/v2.0.1-final-polish` | `v3.0.1`, `v3.0.0` | `1a48715` — `fix(webapp): keep workspace registration public` |
| `nexa-platform` | `origin/main`, `origin/develop`, `origin/hotfix/v2.0.1-final-polish` | `v2.0.1`, `v2.0.0` | `e3705d9` — `merge(release): finalize v2.0.1 polish` |
| `nexa-ecosystem-report` | `origin/main`, histórico `develop` | `v4.0.1`, `v4.0.0`, `v3.0.0` | `v4.0.1` — publicación oficial sincronizada desde la versión final validada del informe |

> *Nota*: La tabla prioriza git-evidence-final y evita incorporar ramas feature no detectadas en el corte final. Elaboración propia.

El equipo aplicó una adaptación de GitFlow según el repositorio y el hito: `feature/* → develop → release/* o hotfix/* → main`. El bloque final utilizó `hotfix/v2.0.1-final-polish` para correcciones de cierre. Esta descripción expresa el flujo observado sin afirmar que toda modificación haya seguido una única ruta.

El versionado adopta `vMAJOR.MINOR.PATCH`. Los releases finales defendibles son `nexa-website v4.0.1`, `nexa-webapp v3.0.1`, `nexa-platform v2.0.1` y `nexa-ecosystem-report v4.0.1`.

Los mensajes siguen Conventional Commits mediante `type(scope): description`. Ejemplos reales incluyen:

- `fix(website): refine final landing visuals`
- `fix(webapp): keep workspace registration public`
- `merge(release): finalize v2.0.1 polish`
- `fix(api): remove legacy route aliases from public contract`

Los historiales detallados de commits se reservan para Development Evidence de Sprint 4.

### 5.1.3. Source Code Style Guide & Conventions

*Convenciones de código y documentación de Nexa.*

| Alcance | Convenciones aplicadas |
|---|---|
| Docs-as-Code | Markdown por capítulos, rutas relativas estables, tablas legibles, captions y control de cambios mediante Git. |
| Website | HTML semántico, CSS organizado por assets y componentes visuales, JavaScript modular, estructura multipágina y rutas compatibles con GitHub Pages. |
| WebApp | Vue 3 con Vite; componentes y vistas en PascalCase; propiedades reactivas en camelCase; PrimeVue, PrimeFlex, PrimeIcons, Pinia, Vue Router, Vue I18n y Axios organizados por módulos. |
| Backend | C# con PascalCase para tipos y métodos, camelCase para variables locales, separación Domain/Application/Infrastructure/Interfaces y dependencias desacopladas. |
| REST | Rutas canónicas documentadas con Swagger/OpenAPI, contratos HTTP y compatibilidad revisada sin afirmar perfección absoluta. |
| Persistencia | EF Core, Npgsql, PostgreSQL y migraciones versionadas. |
| Seguridad y configuración | JWT, CORS y configuración sensible mediante variables de entorno; Stripe se trata como proveedor externo configurable para pagos referenciales. |
| Commits | Conventional Commits para `feat`, `fix`, `refactor`, `docs`, `chore` y `merge`. |

> *Nota*: La tabla sintetiza las convenciones observadas en los repositorios y en la evidencia técnica final. Elaboración propia.

La modularidad backend reconoce Identity and Access Management, Tenant Management, Catalog Management, Sales, Warehouse, Logistics, Invoicing y Shared Kernel/cross-cutting support.

La revisión final de Swagger registra **165 paths OpenAPI**, **281 operaciones**, **0 operaciones deprecated** y **0 operaciones visibles con patrones legacy**. Estas métricas describen el contrato expuesto en la evidencia final, sin convertirlas en una afirmación absoluta sobre toda la arquitectura.

### 5.1.4. Software Deployment Configuration

El despliegue académico separa Website, WebApp, Platform API y PostgreSQL. Docker Compose complementa estos servicios como entorno local de validación, no como operación comercial.

*Configuración de despliegue por artefacto.*

| Artefacto | Plataforma | Release | URL o referencia | Alcance |
|---|---|---|---|---|
| Landing Page `nexa-website` | GitHub Pages | `v4.0.1` | https://cutt.ly/byqqvhqJ | Website público del entorno de revisión académica. |
| Web Application `nexa-webapp` | Render Static Site | `v3.0.1` | https://cutt.ly/byqqvhqJ | Frontend desplegado para revisión de flujos. |
| Web Services `nexa-platform` | Render Web Service | `v2.0.1` | https://nexa-platform-20wt.onrender.com | Platform API y documentación de servicios. |
| PostgreSQL | Render PostgreSQL / PostgreSQL 16 | No aplica | Configuración protegida | Persistencia relacional de Platform API sin exponer host, usuario ni contraseña. |
| Docker local | Docker Compose | No aplica | PostgreSQL, API, WebApp y Caddy | Entorno local reproducible para validación técnica. |
| Swagger/OpenAPI | Platform API | Asociado a `v2.0.1` | Documentación ampliada en 5.2.4.6 | Consulta general de contratos RESTful. |

> *Nota*: La tabla resume los artefactos del despliegue académico y sus releases verificables para TB2. Elaboración propia.

*Repositorios asociados con los artefactos desplegados.*

| Artefacto | Repositorio visible |
|---|---|
| Landing Page | [https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-website](https://cutt.ly/byqqvhqJ) |
| Web Application | https://cutt.ly/HyqqviBz |
| Platform API | https://cutt.ly/byqqvhqJ |

> *Nota*: La tabla conserva las URLs directas de los repositorios de producto asociados con el despliegue académico. Elaboración propia.

*Variables de entorno y tratamiento documental.*

| Variable | Uso | Tratamiento en el reporte |
|---|---|---|
| `CONNECTIONSTRINGS__DEFAULTCONNECTION` | Conexión PostgreSQL de Platform API. | `[REDACTED]` |
| `NEXA_JWT_SECRET` | Firma de tokens JWT. | `[REDACTED]` |
| `STRIPE_SECRET_KEY` | Proveedor externo configurable para pagos referenciales. | `[REDACTED]` |
| `CORS_ALLOWED_ORIGINS` | Orígenes permitidos para WebApp. | Valor documentable sin secretos. |
| `VITE_NEXA_API_BASE_URL` | URL base consumida por WebApp. | https://nexa-platform-20wt.onrender.com |
| `ASPNETCORE_ENVIRONMENT` | Selección del entorno de ejecución. | Nombre del entorno, sin credenciales. |

> *Nota*: La tabla documenta el propósito de las variables sin publicar secretos, credenciales ni cadenas de conexión. Elaboración propia.

Los controles finales registran respuestas HTTP 200 para health, Swagger UI, OpenAPI JSON, login de WebApp, Website local, ruta simulada de GitHub Pages y una consulta autenticada de catálogo respaldada por base de datos. Esta evidencia corresponde a validación técnica y no implica operación comercial.
