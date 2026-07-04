# Nexa TB2 Rubric Gap Analysis for 20/20

Fecha de revision: 2026-07-04

Este archivo resume lo que falta para que el repositorio y el informe queden defendibles para una nota maxima en la entrega TB2 / Release Review. La revision uso como base `project-rubric.pdf`, el contenido actual de `report/`, los anexos, el front matter, las evidencias de releases y una inspeccion local de la carpeta `software architect /`. Esa carpeta se considera material de consulta local y no debe subirse al repositorio.

## Resumen ejecutivo

El informe tiene una base fuerte en Lean UX, requisitos, arquitectura DDD/C4, diseno orientado a objetos, diseno de base de datos y evidencia tecnica de Sprint 4. El mayor riesgo para 20/20 no esta en Lean UX, sino en la falta de evidencia final verificable para TB2 en validacion con usuarios, evaluacion heuristica, conclusiones finales, videos finales, front matter y anexos.

Los cambios mas urgentes son:

1. Completar `5.3. Validation Interviews` con entrevistas reales TB2 por segmento.
2. Completar evaluaciones heuristicas con el formato de la rubrica y evidencia por problema.
3. Actualizar conclusiones, videos, version history, collaboration insights y anexos a TB2 final.
4. Eliminar referencias AV2 como si fueran cierre final cuando el documento habla de TB2.
5. Revisar links internos y rutas de soporte antes de generar el PDF final.

## P0 - Bloquea 20/20 si no se completa

| Area | Evidencia actual | Faltante exacto | Accion requerida |
|---|---|---|---|
| Validation Interviews TB2 | `report/50-chapter-5-implementation-validation-deployment/5-3-validation-interviews.md` contiene buen diseno de entrevistas, pero el registro TB2 esta vacio y mantiene checkboxes pendientes. | La rubrica exige 3 a 5 entrevistas por cada segmento objetivo. Para Nexa eso implica S1, S2 y S3. Cada entrevista debe tener nombres y apellidos, edad, distrito, screenshot del video, URL Microsoft Stream, timing de inicio, duracion, fecha y resumen descriptivo. | Ejecutar y documentar las entrevistas TB2. Minimo defendible: 3 por segmento, 9 en total. Ideal: 4 o 5 por segmento si el tiempo alcanza. |
| Evidencia audiovisual de validacion | `report/annexes/annex-c-validation-evidence.md` registra una evidencia AV2 y `5.3` conserva solo el antecedente de Alonso Alcantara. | Falta video consolidado TB2 de Validation Interviews o enlaces por entrevista con timing. Falta screenshot por entrevista dentro del reporte. | Subir a Microsoft Stream/SharePoint, capturar cuadro de video por participante y registrar timings de hallazgos. |
| Evaluacion heuristica | `5.3.3` tiene escala, alcance y un hallazgo AV2, pero no contiene una evaluacion TB2 completa. | La rubrica exige aplicar el formato de evaluacion heuristica: auditor, cliente(s), sitio/app evaluada, tareas incluidas/no incluidas, escala, tabla resumen, problema, severidad, heuristica/principio violado, screenshot y recomendacion. | Crear matriz TB2 con problemas reales observados. Incluir Usability, Information Architecture e Inclusive Design. No usar hallazgos sin participante, tarea y timing. |
| Conclusiones finales | `report/90-conclusions.md` cierra AV1, TB1 y AV2; no tiene Sprint 4 / TB2 como cierre final real. | Faltan conclusiones y recomendaciones finales contra Problem Statements, assumptions, hypotheses y criterios de exito Lean UX, usando resultados de validacion TB2. | Agregar cierre Sprint 4 / TB2, resultados de validacion, recomendaciones de roadmap y limites reales. |
| Video About-The-Team final | `report/90-conclusions.md` y `report/annexes/annex-b-video-evidence.md` documentan About-The-Team AV2/Sprint 3. | Para TB2 debe reflejar proceso final, testimonios de integrantes, logro de Student Outcome 5 y cierre del proyecto. | Publicar o documentar video final TB2 en Stream y YouTube, con screenshot, duracion y pauta de secuencias. |
| Version History final | `report/front-matter/02-version-history.md` llega hasta `AV2 v3.0.0`. | La rubrica pide version actualizada del informe para TB2. Falta registrar cambios del cierre final, Sprint 4, releases finales, despliegues finales y validacion. | Agregar entradas TB2 con fecha, autores y descripcion acumulada de modificaciones finales. |
| Project Report Collaboration Insights final | `report/front-matter/04-project-report-collaboration-insights.md` conserva mucho contenido AV2 y solo una organizacion TB2 declarativa. | Falta evidencia final de collaboration insights TB2: commits recientes, GitHub Insights, ramas/tags/release del reporte final y coherencia con version history. | Actualizar con capturas y resumen final de actividad para el repositorio del informe y repositorios de producto. |
| Anexos finales | `report/annexes/annex-a-annexes.md`, `annex-b`, `annex-c`, `annex-d` y `annex-e` estan centrados en AV2. | La rubrica TB2 pide version final de anexos. Faltan anexos de videos TB2, releases finales, deployments finales y validaciones finales. | Actualizar anexos o crear anexos TB2 sin borrar evidencia historica AV2. |

## P1 - Alto riesgo de descuento

| Area | Evidencia actual | Riesgo | Accion recomendada |
|---|---|---|---|
| Release evidence final | `5.2.4.7` ya incorpora capturas de `nexa-platform v2.0.1`, `nexa-webapp v3.0.1` y `nexa-website v4.0.1`. | Anexos y front matter todavia hablan de releases AV2 (`v3.0.0`, `v2.0.0`, `v1.0.0`) como evidencia principal. | Actualizar Annex D y Annex E con releases finales TB2, manteniendo AV2 como historico. |
| URL final de Platform API | `5.1` y `5.2.4.7` ya deben apuntar a `https://nexa-platform-20wt.onrender.com` y Swagger a `/swagger/index.html`. | Aun existen referencias historicas `https://nexa-platform-api.onrender.com` en conclusiones, annexes y release notes. | Decidir si esas referencias son historicas AV2 o deben actualizarse. Para cierre TB2, usar solo `https://nexa-platform-20wt.onrender.com`. |
| Video About-the-Product | `5.4` conserva video AV2 de 18/06/2026. | Si el producto final cambio mucho en TB2, el video AV2 puede quedar desalineado con la version final. | Publicar video final o agregar nota explicita de vigencia y evidencia actualizada con capturas finales. |
| Landing Page embedding de videos | La rubrica pide que About-the-Product y About-the-Team se incrusten en una seccion adecuada del Landing Page. | El reporte no demuestra con captura final que ambos videos esten integrados en la Landing Page final. | Agregar captura y URL de la seccion de Website donde aparecen los videos finales. |
| Sprint 4 Jira evidence | `5.2.4` tiene backlog, commits, ejecucion, Swagger, deployment y colaboracion. | Si Jira Sprint 4 no queda cerrado con board/backlog final, puede parecer evidencia parcial. | Incluir capturas finales del board/backlog Sprint 4, estados Done y URL visible. |
| External third-party service | La rubrica exige acceso a algun servicio externo de terceros. El reporte menciona Stripe configurable, Google Maps referencial y Render/GitHub. | Si no hay evidencia clara de integracion externa funcional, puede observarse como incompleto. | Documentar explicitamente cual es el servicio externo de negocio: por ejemplo Google Maps en Request Builder o Stripe como proveedor configurado, con alcance real y captura. |
| Internationalization and accessibility | Hay menciones a i18n/a11y y evidencia tecnica final. | La rubrica pide enfoque inclusivo, i18n `en_US` y `es_419`, ARIA y accesibilidad en Landing Page y WebApp. | Agregar una tabla final con evidencias concretas: idioma por defecto, selector, capturas EN/ES, ARIA/focus/contrast y rutas revisadas. |
| PDF final | Existe workflow para construir PDF, pero no se verifico en esta revision. | La entrega final exige PDF. Si el build falla por rutas, tablas largas o imagenes grandes, baja el entregable. | Ejecutar `scripts/build-pdf.sh` o GitHub Actions, revisar `dist/nexa-report.pdf` y corregir cortes visuales. |

## P2 - Pulido para defensa perfecta

| Area | Observacion | Accion recomendada |
|---|---|---|
| Tabla de contenidos | `report/front-matter/03-table-of-contents.md` tiene un link a `5-2-landing-page-services-and-applications-implementation/5-2-landing-page-services-and-applications-implementation.md`, pero el archivo real esta un nivel arriba. Tambien apunta a `annex-f-av2-pending-controlled-evidence.md`, que no existe. | Corregir links antes de exportar PDF. |
| `.github/CONTRIBUTING.md` | Tiene un link local `./4-1-style-guidelines.md` que no existe desde `.github/`. | Cambiarlo por la ruta real dentro de `report/40-chapter-4-product-design/`. |
| Cover date | `report/front-matter/01-cover.md` indica Junio 2026. | Si la entrega TB2 se presenta en julio, actualizar a Julio 2026 o al mes formal indicado por el docente. |
| Terminologia | La revision rapida no encontro mutaciones graves como "deployar" o "comitear" dentro del informe. Si aparecen durante nuevas ediciones, deben cambiarse por "desplegar", "commit" o "registro de commits" segun contexto. | Hacer busqueda final por terminos prohibidos del Anexo E de la rubrica. |
| Bibliografia | `report/99-bibliography.md` tiene referencias tecnicas y de dominio, pero faltan fuentes especificas de UX heuristics, Information Architecture, accessibility/i18n, GitFlow/SemVer/Conventional Commits y deployment. | Agregar APA para Nielsen heuristics, Information Architecture, WCAG/WAI-ARIA, SemVer, Conventional Commits, GitFlow, Swagger/OpenAPI, Render o GitHub Pages si se citan. |
| Annex naming | Los anexos actuales mantienen nombres AV2. | Para TB2, agregar "Final / TB2" donde corresponda o separar evidencia historica y final. |
| Release notes del reporte | Hay `releases/` con notas AV2, pero no se reviso un release final del report v2. | Crear release notes del reporte final si se va a publicar tag/release del documento. |

## Checklist de cierre para completar el 100%

1. Ejecutar 9 a 15 Validation Interviews TB2:
   - S1 Commercial Coordination: 3 a 5 sesiones.
   - S2 Operations / Account Owner: 3 a 5 sesiones, combinando Owner y Logistics si aplica.
   - S3 B2B Buyer Portal: 3 a 5 sesiones.
2. Por cada entrevista, registrar:
   - Codigo unico.
   - Nombres y apellidos.
   - Edad.
   - Distrito.
   - Segmento.
   - Screenshot.
   - URL Microsoft Stream.
   - Timing de inicio.
   - Duracion.
   - Fecha.
   - Resumen verificable.
   - Hallazgos con tarea, timing y conducta.
3. Completar evaluacion heuristica TB2:
   - Datos generales.
   - Tareas incluidas/no incluidas.
   - Tabla resumen de problemas.
   - Descripcion de cada problema.
   - Screenshot por problema.
   - Recomendacion.
   - Severidad 1 a 4.
4. Actualizar conclusiones:
   - Sprint 4 / TB2.
   - Resultados contra Problem Statements.
   - Resultados contra assumptions e hypotheses.
   - Recomendaciones de roadmap.
   - Limites reales de producto y validacion.
5. Actualizar front matter:
   - Version History TB2.
   - Project Report Collaboration Insights TB2.
   - Student Outcome con acciones finalizadas, no solo planificadas.
   - Table of Contents con links reales.
6. Actualizar anexos:
   - Videos TB2.
   - Validation Interviews TB2.
   - Releases finales TB2.
   - Deployments finales TB2.
   - GitHub/Jira final.
7. Revisar evidencia de deployment:
   - Website GitHub Pages.
   - WebApp Render.
   - Platform API Render `https://nexa-platform-20wt.onrender.com`.
   - Swagger `https://nexa-platform-20wt.onrender.com/swagger/index.html`.
   - Render PostgreSQL sin secretos.
8. Asegurar servicio externo de terceros:
   - Declarar si el soporte final defendible es Google Maps, Stripe, Render/GitHub Pages u otro.
   - Incluir alcance real y evidencia.
9. Generar PDF final:
   - Ejecutar build.
   - Revisar imagenes grandes.
   - Revisar tablas largas.
   - Revisar links y rutas.
10. Preparar sustentacion:
   - Cada integrante debe poder explicar su parte sin decir que otra persona lo hizo por el.
   - Priorizar demo en entorno desplegado.
   - Cubrir al menos 40% del tiempo con productos funcionando y 20% con evidencia de colaboracion, tal como indica la rubrica.

## Referencias locales utiles en `software architect /`

No se debe subir la carpeta `software architect /`, pero puede usarse como apoyo para fortalecer explicaciones y bibliografia. Material local relevante observado:

| Tema | Referencias locales utiles |
|---|---|
| DDD y bounded contexts | `domain-driven-design-tackling-complexity-in-the-heart-of-software-eric-evans.pdf`, `domain-driven-design-distilled.pdf`, `implementing-ddd.epub` |
| Arquitectura limpia y capas | `clean-architecture-a-craftsman-s-guide-to-robert-c-martin.epub`, `patterns-of-enterprise-application-architecture.pdf`, `software-architecture-in-practice-4.pdf` |
| Diseno orientado a objetos | `object-oriented-analysis-and-design-with-applications-3rd-edition-by-booch.pdf`, `design-patterns-elements-of-reusable-object-oriented-software-erich-gamma-richard-helm.epub` |
| Requisitos y casos de uso | `writing-effective-use-cases.pdf`, `use-case-2-0-final-rev3.pdf` |
| Arquitectura de informacion y UX | `information-architecture-for-the-web-and-beyond.pdf` |
| Datos y persistencia | `designing-data-intensive-applications.pdf`, `postgresql-up-and-running.pdf`, `high-performance-mysql.pdf` |

## Estado despues de esta revision

Hecho en esta pasada:

- Agregadas capturas de releases finales al final de `5.2.4.7`.
- Normalizados assets de release en `report/assets/images/chapter-5/sprint-evidence/releases/`.
- Corregida la Platform API final a `https://nexa-platform-20wt.onrender.com` en evidencia de deployment vigente.
- Protegidos materiales locales de auditoria en `.gitignore`.

Pendiente para cerrar 20/20:

- Ejecutar y documentar validaciones TB2 reales.
- Completar heuristicas TB2.
- Actualizar front matter, conclusiones y anexos finales.
- Generar y revisar PDF final.
