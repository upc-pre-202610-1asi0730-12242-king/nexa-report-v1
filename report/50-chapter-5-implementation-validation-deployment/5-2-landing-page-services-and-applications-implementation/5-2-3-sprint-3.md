### 5.2.3. Sprint 3

El Sprint 3 corresponde al incremento **Backend Foundation Sprint** y al corte AV2 frontend/backend de Nexa. La evidencia de cierre técnico disponible registra `nexa-platform v1.0.0` como release de cierre AV2 de Web Services, `nexa-website v3.0.0` como release de cierre AV2 de Landing Page y `nexa-webapp v2.0.0` como release de cierre AV2 de Web Application. Este alcance marca una transición controlada desde servicios simulados hacia backend real, despliegue en Render y configuración/migración de persistencia hacia PostgreSQL, sin declarar todavía el cierre completo de evidencias no técnicas.

La versión de referencia disponible del backend para esta evidencia parcial es `v1.0.0`, construida con ASP.NET Core Web API, C#, .NET 10, Domain-Driven Design, modular monolith, bounded contexts, Shared Kernel, EF Core, PostgreSQL, controladores REST, commands, queries, infrastructure y ajustes de autenticación IAM alineados con la Web Application. Este incremento prioriza los flujos core de Catalog Management, Warehouse y Sales como base para revisión académica y validación controlada, sin declarar todavía operación productiva, integración total con toda la Web Application, reemplazo completo de todos los mocks ni cobertura total del roadmap backend.

#### 5.2.3.1. Sprint Planning 3
La planificación del Sprint 3 organizó el avance AV2 por segmento, integrando la nueva versión de Landing Page, la nueva versión de Web Application y la primera versión de Web Services de Nexa Platform. El sprint priorizó una foundation backend defendible, organizada por bounded contexts, junto con evidencias de navegación, despliegue controlado en Render, PostgreSQL y documentación Swagger/OpenAPI para los flujos principales de Segmento 1, Segmento 2 y Segmentos 3, sin declarar todavía operación productiva.

| Campo | Registro |
|---|---|
| Sprint # | Sprint 3 |
| **Sprint Planning Background** | Tercer incremento del proyecto orientado a consolidar la foundation backend de Nexa Platform con ASP.NET Core Web API, arquitectura modular por bounded contexts y recursos REST iniciales para Catalog Management, Sales y Warehouse, manteniendo trazabilidad con el cierre AV2 de Landing Page y Web Application. |
| Date | 2026-05-20 |
| Time | 08:00 PM |
| Location | Reunión virtual del equipo |
| Prepared By | Yucra Sandoval, Diego Sebastian |
| Attendees (to planning meeting) | Yucra Sandoval, Diego Sebastian / Verde Bueno, Joaquín / Marín Cueva, César / Rojas Mancilla, Gerard / Torrejón, Gino |
| Sprint 2 Review Summary | Sprint 2 dejó como base la Web Application TB1, los flujos internos Segmento 1/Segmento 2, el alcance parcial de S3 y el soporte de servicios simulados para validar recorridos frontend. |
| Sprint 2 Retrospective Summary | El equipo identificó la necesidad de separar con mayor claridad la simulación frontend de la API interna objetivo, reforzando la foundation backend y la trazabilidad técnica del repositorio `nexa-platform`. |
| **Sprint Goal & User Stories** | Sprint 3 planning summary |
| Sprint 3 Goal |<div align="justify">**Nuestro foco está en** consolidar la base transaccional de Nexa mediante el despliegue de la API backend en entorno cloud y la integración funcional de sus recursos REST con la Web Application, permitiendo una experiencia de usuario real sobre servicios operativos. **Creemos que esto entrega** una comprensión clara de la propuesta de valor a nuevos visitantes, autonomía comercial a los compradores B2B, mayor trazabilidad operativa al personal de distribución y, fundamentalmente, nuevas capacidades de desarrollo a nuestros ingenieros frontend al permitirles transicionar de mocks a servicios reales (/api/v1/catalog-items, /api/v1/orders y /api/v1/inventory-items). **Esto sera confirmado cuando** los visitantes identifiquen los beneficios en el Landing Page; los compradores B2B gestionen órdenes y consulten estados sin coordinación manual; el personal operativo administre el catálogo e inventario con trazabilidad total; y, finalmente, los desarrolladores frontend implementen con éxito los flujos core consumiendo los 25 endpoints REST expuestos, logrando la eliminación de servicios simulados en la Web Application sin requerir intervención constante del equipo de backend.</div>|
| Sprint 3 Velocity | 241 horas completadas |
| Sum of Hours | 241 horas |

> *Nota:* La planificación muestra una referencia de `241 horas`, mientras la captura de Jira registra `213 de 213`. Al no existir una única fuente coincidente, la métrica debe validarse contra Jira antes de presentarse como valor definitivo. Elaboración propia.

Para evitar ambigüedad de alcance, se distingue entre endpoint HTTP, REST resource y core endpoint group o core flow. Un endpoint HTTP corresponde a una operación concreta expuesta por la API, por ejemplo una ruta con un método específico. Un REST resource agrupa operaciones asociadas a una entidad o aggregate, como `/api/v1/orders`. Un core endpoint group representa una capacidad funcional priorizada para validar conexión frontend/backend. Por ello, Catalog, Inventory/Warehouse y Orders/Sales se documentan como tres flujos core agrupados, mientras que el backend actual registra 25 operaciones HTTP estructuradas.

![Reunión virtual de planificación del Sprint 3](../../assets/images/front-matter/collaboration/team-collaboration-meeting-3.jpeg)

> *Nota:* Captura de reunión virtual del equipo para coordinación de Sprint 3.

#### 5.2.3.2. Aspect Leaders and Collaborators

La ejecución del Sprint 3 se organizó por bounded contexts, porque el incremento AV2 priorizó la primera versión de Web Services de `nexa-platform` y su separación modular. Por ello, la matriz de liderazgo y colaboración usa como columnas los contextos trabajados durante el sprint, en lugar de frentes genéricos como project management, architecture o documentation. La marca `L` identifica al responsable principal del contexto y la marca `C` identifica participación de soporte, integración o revisión técnica.

*Distribución de liderazgos y colaboradores por bounded context en el Sprint 3*

| Team Member | GitHub Username | Catalog Management | Sales | Warehouse | IAM | Invoicing | Logistics | Shared Kernel |
|---|---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| Yucra Sandoval, Diego Sebastian | DiegoS284 | C | L | C | L | C | C | C |
| Verde Bueno, Joaquín Francisco | JoaquinVerde115 | C | C | L | - | C | C | C |
| Marín Cueva, César Fernando | Cmarin2802 | - | C | - | C | C | L | L |
| Torrejón De Los Santos, Gino Rodrigo | R0obxdnt-bit | L | C | C | - | - | - | C |
| Rojas Mancilla, Gerard Gianpier | GerardRojasMancilla | - | - | C | C | L | C | C |

La matriz refleja que el avance del sprint no se distribuyó por tareas aisladas, sino por módulos del dominio. `Catalog Management` concentra el catálogo de productos refrigerados, `Sales` soporta solicitudes y órdenes B2B, `Warehouse` cubre disponibilidad e inventario, `IAM` permite la base de autenticación, `Invoicing` prepara la trazabilidad documental y de pagos, `Logistics` organiza el soporte para despacho, y `Shared Kernel` agrupa elementos comunes requeridos por los bounded contexts.

#### 5.2.3.3. Sprint Backlog 3

El Sprint Backlog 3 concentra el trabajo asociado al primer corte AV2 frontend/backend y a la consolidación de la base backend de Nexa Platform. Su objetivo principal fue establecer una base técnica coherente para la primera Web Services API, organizada por bounded contexts, con controladores iniciales, Shared Kernel, patrones de repositorio, Unit of Work, persistencia mediante EF Core/PostgreSQL para el despliegue controlado y trazabilidad de release para revisar la transición desde mocks hacia backend real.

**Sprint Backlog 3 en Jira**

La imagen presenta el backlog del Sprint 3 registrado en Jira. Su función dentro del informe es sustentar la planificación del incremento AV2, la estimación total del sprint, la distribución de actividades y el cierre de work-items vinculados con WebApp, Web Services, Swagger/OpenAPI, PostgreSQL y release.

![Sprint Backlog 3 en Jira](../../assets/images/chapter-5/sprint-evidence/jira/sprint-3-backlog-jira.png)

> *Nota:* La captura evidencia la planificación actualizada del Sprint 3, con actividades visibles, estimación total del sprint, responsables, estados y work-items orientados al cierre AV2 de WebApp, Web Services, Swagger/OpenAPI, PostgreSQL y release. Elaboración propia.

**URL del board/backlog:** [https://team-nexa.atlassian.net/jira/software/projects/NX/boards/1/backlog](https://team-nexa.atlassian.net/jira/software/projects/NX/boards/1/backlog)

La siguiente tabla presenta todas las historias y tareas registradas en Jira para el Sprint 3. Los identificadores, responsables y estimaciones se mantienen como trazabilidad documental del cierre AV2.

| Sprint # | User Story Id | User Story Title | Work-Item / Task Id | Task Title | Description | Estimation (Hours) | Assigned To | Status |
|---|---|---|---|---|---|---:|---|---|
| Sprint 3 | US13 | Actualizar información comercial del producto | NX-776 | Actualizar información comercial del producto | Actualizar precio, presentación, unidad de venta y visibilidad de productos activos, conservando la coherencia comercial del catálogo. | 5.0 | César Marín | Finalizado |
| Sprint 3 | US14 | Agregar producto gourmet al catálogo | NX-777 | Agregar producto gourmet al catálogo | Registrar productos gourmet refrigerados con nombre, categoría, presentación, unidad de venta, conservación y visibilidad comercial. | 5.0 | Gerard Gianpier Rojas Mancilla | Finalizado |
| Sprint 3 | US15 | Desactivar producto preservando trazabilidad comercial | NX-778 | Desactivar producto preservando trazabilidad comercial | Retirar productos de nuevas solicitudes sin eliminar su presencia en órdenes y registros históricos. | 5.0 | Diego Yucra Sandoval | Finalizado |
| Sprint 3 | US38 | Convertir solicitud validada en orden | NX-801 | Convertir solicitud validada en orden | Generar una orden de compra confirmada cuando la solicitud cuenta con cliente validado e inventario reservado. | 8.0 | César Marín | Finalizado |
| Sprint 3 | US39 | Comunicar confirmación al comprador | NX-802 | Comunicar confirmación al comprador | Reflejar en el portal del comprador la confirmación y la orden asociada a la solicitud original. | 5.0 | César Marín | Finalizado |
| Sprint 3 | US56 | Identificar lotes próximos a vencer | NX-819 | Identificar lotes próximos a vencer | Mostrar alertas con producto, lote y fecha de vencimiento para priorizar la rotación y reducir merma. | 1.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US58 | Actualizar inventario referencial | NX-821 | Actualizar inventario referencial | Actualizar la disponibilidad referencial y conservar el valor anterior cuando la operación no pueda confirmarse. | 5.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US59 | Registrar movimiento de stock | NX-822 | Registrar movimiento de stock | Registrar ingresos, salidas, reservas y ajustes por producto y lote, validando cantidad, motivo y disponibilidad. | 5.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US60 | Justificar ajuste de disponibilidad | NX-823 | Justificar ajuste de disponibilidad | Asociar cada ajuste manual de disponibilidad con producto, lote, motivo y responsable. | 5.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US62 | Ver disponibilidad comercial sin inventario interno | NX-825 | Ver disponibilidad comercial sin inventario interno | Exponer al comprador la disponibilidad comercial general sin revelar lotes ni información interna de almacén. | 1.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US63 | Reservar inventario para solicitud validada | NX-826 | Reservar inventario para solicitud validada | Crear una reserva asociada a una solicitud validada y controlar los casos de stock insuficiente o reserva parcial. | 8.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US64 | Liberar reserva no confirmada | NX-827 | Liberar reserva no confirmada | Devolver al inventario operativo el stock reservado de solicitudes rechazadas o canceladas. | 2.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US65 | Aplicar criterio FEFO en reserva | NX-828 | Aplicar criterio FEFO en reserva | Priorizar lotes con vencimiento más próximo y excluir lotes vencidos o bloqueados durante la reserva. | 8.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US67 | Bloquear confirmación sin reserva | NX-830 | Bloquear confirmación sin reserva | Impedir el avance operativo de una orden que no cuente con reserva suficiente e informar el motivo del bloqueo. | 8.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US68 | Crear orden de despacho | NX-831 | Crear orden de despacho | Generar un despacho con productos, cliente y dirección a partir de una orden confirmada. | 5.0 | César Marín | Finalizado |
| Sprint 3 | US69 | Consultar tablero de despachos | NX-832 | Consultar tablero de despachos | Consultar despachos pendientes, programados, en ruta, entregados e incidentados con su detalle operativo. | 5.0 | César Marín | Finalizado |
| Sprint 3 | Task | Navegación transaccional de la Web Application | NX-97 | TS-NX-003-001 - Implementar enrutamiento SPA nativo | Implementar navegación SPA nativa para soportar el portal transaccional y sus recorridos internos. | 13.0 | Diego Yucra Sandoval | Finalizado |
| Sprint 3 | Task | Foundation backend con DDD | NX-116 | TS-NX-003-002 - Scaffold ASP.NET Core y DDD | Preparar la estructura inicial ASP.NET Core y la organización Domain-Driven Design del backend. | 8.0 | Gerard Gianpier Rojas Mancilla | Finalizado |
| Sprint 3 | Task | Persistencia y dominio backend | NX-122 | TS-NX-003-003 - Implementar EF Core y entidades de dominio | Incorporar EF Core y las entidades de dominio necesarias para la persistencia de la Platform API. | 13.0 | César Marín | Finalizado |
| Sprint 3 | Task | Autenticación backend | NX-128 | TS-NX-003-004 - Implementar JWT y autenticación backend | Implementar la base de autenticación mediante JWT para los accesos de la Web Application y la API. | 8.0 | Diego Yucra Sandoval | Finalizado |
| Sprint 3 | Task | Servicios operativos de cadena de frío | NX-133 | TS-NX-003-005 - Implementar servicios de cadena de frío | Implementar servicios backend vinculados con conservación, inventario y operación de productos refrigerados. | 8.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | Task | Documentación y manejo de errores de la API | NX-138 | TS-NX-003-006 - Documentar Swagger y manejo global de errores | Configurar documentación Swagger/OpenAPI y un mecanismo común para el manejo de errores del backend. | 5.0 | Gerard Gianpier Rojas Mancilla | Finalizado |
| Sprint 3 | Task | Documentación de endpoints REST | NX-261 | TS-NX-003-007 - Documentar endpoints REST con OpenAPI 3.0 / Swagger | Documentar endpoints de autenticación, catálogo, pedidos y usuarios con esquemas y ejemplos de solicitud y respuesta. | 6.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | Task | Pruebas unitarias de catálogo | NX-262 | TS-NX-003-008 - Configurar Jest y escribir pruebas unitarias del módulo de catálogo | Configurar Jest y cubrir búsqueda, filtros, paginación y acceso por cuenta del módulo de catálogo. | 8.0 | Diego Yucra Sandoval | Finalizado |
| Sprint 3 | Task | Pruebas end-to-end | NX-265 | TS-NX-003-009 - Configurar pruebas E2E con Playwright para flujos críticos | Configurar pruebas E2E para login, catálogo, creación de pedidos y descarga de órdenes, integradas al flujo de CI. | 10.0 | Diego Yucra Sandoval | Finalizado |
| Sprint 3 | Task | Historial de versiones | NX-268 | TS-NX-003-010 - Redactar CHANGELOG.md con historial de versiones del sprint | Registrar cambios por versión y categoría siguiendo una estructura de changelog mantenible. | 4.0 | Diego Yucra Sandoval | Finalizado |
| Sprint 3 | Task | Backend foundation de Nexa Platform | NX-856 | TS-NX-003-001 - Configurar ASP.NET Core Web API foundation | Preparar C#, .NET 10, `Program.cs`, controladores REST, Swagger/OpenAPI y configuración base para ejecución local. | 8.0 | Diego Yucra Sandoval | Finalizado |
| Sprint 3 | Task | Arquitectura modular backend | NX-857 | TS-NX-003-002 - Organizar bounded contexts y modular monolito | Separar Catalog Management, Sales, Warehouse y Shared Kernel dentro de una arquitectura modular monolítica. | 8.0 | Diego Yucra Sandoval | Finalizado |
| Sprint 3 | Task | Catalog Management REST resource | NX-858 | TS-NX-003-003 - Implementar recurso `/api/v1/catalog-items` | Implementar el aggregate `CatalogItem`, su controlador REST y los contratos iniciales del catálogo. | 8.0 | Gino Torrejón | Finalizado |
| Sprint 3 | Task | Sales REST resource | NX-859 | TS-NX-003-004 - Implementar recurso `/api/v1/orders` | Implementar el aggregate `Order`, su controlador REST y contratos para órdenes comerciales B2B. | 8.0 | Diego Yucra Sandoval | Finalizado |
| Sprint 3 | Task | Warehouse REST resource | NX-860 | TS-NX-003-005 - Implementar recurso `/api/v1/inventory-items` | Implementar el aggregate `InventoryItem`, su controlador REST y contratos de disponibilidad e inventario. | 8.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | Task | Shared Kernel y patrones de persistencia | NX-861 | TS-NX-003-006 - Configurar Shared Kernel, repositories y Unit of Work | Registrar contratos compartidos, interfaces de repositorio y Unit of Work para los bounded contexts. | 5.0 | Gerard Gianpier Rojas Mancilla | Finalizado |
| Sprint 3 | Task | Persistencia relacional AV2 | NX-862 | TS-NX-003-007 - Preparar foundation de persistencia relacional | Configurar EF Core y la base de persistencia relacional requerida por el despliegue controlado de AV2. | 5.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | Task | Evidencia Swagger/OpenAPI | NX-863 | TS-NX-003-008 - Registrar evidencia de OpenAPI local | Documentar la exposición local de Swagger/OpenAPI para los recursos REST priorizados. | 3.0 | Diego Yucra Sandoval | Finalizado |
| Sprint 3 | Task | Release técnico backend | NX-864 | TS-NX-003-009 - Documentar release técnico backend | Registrar el alcance, los límites técnicos y la trazabilidad del release backend del incremento. | 3.0 | Diego Yucra Sandoval | Finalizado |
| Sprint 3 | Task | GitFlow y colaboración backend | NX-865 | TS-NX-003-010 - Registrar ramas feature/release | Documentar las ramas feature, integración y release utilizadas durante el desarrollo backend. | 2.0 | Diego Yucra Sandoval | Finalizado |
| Sprint 3 | Task | Release AV2 frontend/backend | NX-866 | TS-NX-003-011 - Prepare frontend/backend release version for AV2 | Preparar las versiones de Web Application y Web Services API usadas en el corte AV2. | 3.0 | Diego Yucra Sandoval | Finalizado |
| Sprint 3 | Task | Validación de build backend | NX-867 | TS-NX-003-012 - Validate backend build and local execution | Validar la compilación y ejecución local del backend antes de cerrar la evidencia técnica. | 5.0 | César Marín | Finalizado |
| Sprint 3 | Task | Guía de ejecución y release | NX-868 | TS-NX-003-013 - Document README/release execution guide | Documentar instrucciones de ejecución, alcance del release y límites técnicos del corte frontend/backend. | 3.0 | César Marín | Finalizado |
| Sprint 3 | Task | Validación de endpoints Swagger | NX-869 | TS-NX-003-014 - Validate 25 structured backend endpoints in Swagger | Validar en Swagger/OpenAPI los 25 endpoints HTTP estructurados de la Platform API. | 5.0 | César Marín | Finalizado |
| Sprint 3 | Task | Flujos core frontend/backend | NX-870 | TS-NX-003-015 - Preserve core frontend-backend flows for Catalog, Inventory and Orders | Mantener la trazabilidad de Catalog, Inventory/Warehouse y Orders/Sales como flujos prioritarios de integración. | 3.0 | Gerard Gianpier Rojas Mancilla | Finalizado |

> *Nota:* Las estimaciones se expresan en horas para conservar el formato solicitado por el statement. Para las tareas que no contaban con horas registradas se realizó una estimación técnica según su alcance, complejidad y trabajo descrito, sin convertir ni utilizar Story Points como referencia. Elaboración propia.

**Seguimiento de tareas Sprint 3 en Jira**

La imagen presenta una vista de seguimiento de tareas del Sprint 3. Esta evidencia permite revisar responsables, prioridades, estados, resolución y fechas de actualización para reforzar la trazabilidad del Sprint Backlog.

![Seguimiento de tareas Sprint 3 en Jira](../../assets/images/chapter-5/sprint-evidence/jira/sprint-3-task-status-jira.png)

> *Nota:* La vista de seguimiento de tareas muestra responsables, informadores, prioridad, estado, resolución y fechas de actualización durante el Sprint 3. Elaboración propia.

La siguiente tabla documenta únicamente las incidencias de tipo `Subtask` asociadas a las tareas padre del Sprint 3. Debido a que las sub-tasks no heredan directamente el campo `Sprint` en Jira, su pertenencia se determinó mediante la relación con los work-items `NX-856` a `NX-870`.

| Sprint # | Belongs To (US / Task) | Parent Id | Parent Title | Subtask Id | Subtask Title | Description | Estimation (Hours) | Assigned To | Status |
|---|---|---|---|---|---|---|---:|---|---|
| Sprint 3 | US13 (NX-776) | NX-776 | Actualizar información comercial del producto | NX-896 | Desarrollo de la interfaz de edición y validación de entrada | Implementar el formulario de edición y validar los campos comerciales obligatorios. | 6.0 | César Marín | Finalizado |
| Sprint 3 | US13 (NX-776) | NX-776 | Actualizar información comercial del producto | NX-897 | Implementación de la persistencia de datos y sincronización de visibilidad | Guardar los cambios del producto y reflejar su visibilidad en el catálogo del comprador. | 6.0 | César Marín | Finalizado |
| Sprint 3 | US14 (NX-777) | NX-777 | Agregar producto gourmet al catálogo | NX-898 | Desarrollo del formulario de alta y validación de datos | Implementar el alta de productos y validar los datos comerciales y de conservación requeridos. | 6.0 | Gerard Gianpier Rojas Mancilla | Finalizado |
| Sprint 3 | US14 (NX-777) | NX-777 | Agregar producto gourmet al catálogo | NX-899 | Implementación del motor de creación y visibilidad en catálogo | Crear el producto y publicarlo automáticamente para los compradores autorizados. | 6.0 | Gerard Gianpier Rojas Mancilla | Finalizado |
| Sprint 3 | US15 (NX-778) | NX-778 | Desactivar producto preservando trazabilidad comercial | NX-900 | Implementación del estado de desactivación lógica y visibilidad | Desactivar lógicamente el producto y retirarlo de nuevas solicitudes comerciales. | 6.0 | Diego | Finalizado |
| Sprint 3 | US15 (NX-778) | NX-778 | Desactivar producto preservando trazabilidad comercial | NX-901 | Blindaje de integridad y persistencia histórica | Impedir la eliminación definitiva y conservar las referencias históricas del producto. | 6.0 | Diego | Finalizado |
| Sprint 3 | US38 (NX-801) | NX-801 | Convertir solicitud validada en orden | NX-946 | Motor de conversión atómica y prevención de duplicidad | Convertir la solicitud validada en orden y evitar conversiones duplicadas. | 6.0 | César Marín | Finalizado |
| Sprint 3 | US38 (NX-801) | NX-801 | Convertir solicitud validada en orden | NX-947 | Sincronización de estados y visor de órdenes confirmadas | Actualizar los estados posteriores a la conversión y mostrar la orden confirmada. | 4.0 | César Marín | Finalizado |
| Sprint 3 | US39 (NX-802) | NX-802 | Comunicar confirmación al comprador | NX-948 | Disparador de notificación y actualización de estado en portal | Actualizar la solicitud como confirmada en el portal del comprador. | 4.0 | César Marín | Finalizado |
| Sprint 3 | US39 (NX-802) | NX-802 | Comunicar confirmación al comprador | NX-949 | Enlace relacional entre solicitud y orden | Vincular la solicitud original con la orden de compra generada. | 4.0 | César Marín | Finalizado |
| Sprint 3 | US56 (NX-819) | NX-819 | Identificar lotes próximos a vencer | NX-985 | Panel de alertas de vencimiento | Mostrar y ordenar los lotes próximos a vencer en una vista consolidada. | 4.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US56 (NX-819) | NX-819 | Identificar lotes próximos a vencer | NX-986 | Lógica de cálculo de días para vencimiento | Calcular los días restantes y asignar una etiqueta de urgencia a cada lote. | 6.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US58 (NX-821) | NX-821 | Actualizar inventario referencial | NX-989 | Motor de ajuste de stock | Permitir ajustes manuales de stock con motivo y registro de auditoría. | 6.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US58 (NX-821) | NX-821 | Actualizar inventario referencial | NX-990 | Lógica de validación de integridad | Validar el ajuste y ejecutar rollback si la actualización no puede confirmarse. | 6.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US59 (NX-822) | NX-822 | Registrar movimiento de stock | NX-991 | Motor de transacciones de inventario | Registrar ingresos, salidas y ajustes por producto y lote con trazabilidad. | 6.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US59 (NX-822) | NX-822 | Registrar movimiento de stock | NX-992 | Validador de integridad y control de acceso | Validar datos, disponibilidad y permisos antes de registrar el movimiento. | — | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US60 (NX-823) | NX-823 | Justificar ajuste de disponibilidad | NX-993 | Módulo de registro con motivo obligatorio | Exigir y registrar el motivo, producto, lote, cantidad y responsable del ajuste. | 6.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US60 (NX-823) | NX-823 | Justificar ajuste de disponibilidad | NX-994 | Sincronización de saldos en tiempo real | Actualizar inmediatamente el saldo disponible después de confirmar el ajuste. | 4.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US62 (NX-825) | NX-825 | Ver disponibilidad comercial sin inventario interno | NX-997 | Catálogo público B2B | Mostrar estados comerciales de disponibilidad sin exponer cantidades internas. | 5.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US62 (NX-825) | NX-825 | Ver disponibilidad comercial sin inventario interno | NX-998 | Separación de información | Excluir lotes, vencimientos y cantidades internas de la respuesta para compradores. | 6.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US63 (NX-826) | NX-826 | Reservar inventario para solicitud validada | NX-999 | Módulo de reserva activa | Reservar stock disponible para una solicitud validada y registrar al responsable. | 6.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US63 (NX-826) | NX-826 | Reservar inventario para solicitud validada | NX-1000 | Control de reservas | Validar stock, reservas parciales y permisos antes de habilitar la conversión. | 6.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US64 (NX-827) | NX-827 | Liberar reserva no confirmada | NX-1001 | Módulo de liberación de stock | Liberar el stock de solicitudes canceladas o rechazadas y devolverlo al disponible. | 6.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US64 (NX-827) | NX-827 | Liberar reserva no confirmada | NX-1002 | Validador de estados y protección de integridad | Bloquear la liberación cuando la solicitud ya se convirtió en una orden. | 4.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US65 (NX-828) | NX-828 | Aplicar criterio FEFO en reserva | NX-1003 | Motor de selección FEFO | Seleccionar primero los lotes con vencimiento más próximo hasta completar la reserva. | 6.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US65 (NX-828) | NX-828 | Aplicar criterio FEFO en reserva | NX-1004 | Validador de calidad y exclusión de lotes | Excluir lotes vencidos o bloqueados antes de aplicar la selección FEFO. | 4.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US67 (NX-830) | NX-830 | Bloquear confirmación sin reserva | NX-1007 | Validador de flujo operativo | Bloquear el avance cuando la cantidad reservada sea menor que la solicitada. | — | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US67 (NX-830) | NX-830 | Bloquear confirmación sin reserva | NX-1008 | Panel de transparencia comercial | Mostrar el motivo del bloqueo para facilitar el seguimiento comercial. | 5.0 | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | US68 (NX-831) | NX-831 | Crear orden de despacho | NX-1009 | Motor de generación de despachos | Crear el despacho desde una orden confirmada con productos, lotes, cliente y dirección. | 6.0 | César Marín | Finalizado |
| Sprint 3 | US68 (NX-831) | NX-831 | Crear orden de despacho | NX-1010 | Tablero de control de logística | Mostrar los despachos creados y un estado vacío cuando no existan registros. | 4.0 | César Marín | Finalizado |
| Sprint 3 | US69 (NX-832) | NX-832 | Consultar tablero de despachos | NX-1011 | Tablero de control | Organizar y filtrar despachos por estado operativo y fecha. | 6.0 | César Marín | Finalizado |
| Sprint 3 | US69 (NX-832) | NX-832 | Consultar tablero de despachos | NX-1012 | Vista de detalle de despacho | Mostrar cliente, productos y acciones disponibles para cada despacho. | 4.0 | César Marín | Finalizado |
| Sprint 3 | Task NX-97 | NX-97 | Implementar enrutamiento SPA nativo | NX-98 | Crear clase Router en JS | Implementar la clase responsable del enrutamiento SPA. | — | Diego | Finalizado |
| Sprint 3 | Task NX-97 | NX-97 | Implementar enrutamiento SPA nativo | NX-99 | Mapear rutas del Dashboard a funciones de renderizado | Asociar cada ruta del dashboard con su función de renderizado. | — | Diego | Finalizado |
| Sprint 3 | Task NX-116 | NX-116 | Scaffold ASP.NET Core y DDD | NX-120 | Crear proyectos .NET y referencias | Crear los proyectos de la solución y configurar sus referencias. | — | Gerard Gianpier Rojas Mancilla | Finalizado |
| Sprint 3 | Task NX-116 | NX-116 | Scaffold ASP.NET Core y DDD | NX-121 | Configurar inyección de dependencias (IoC) | Registrar las dependencias y servicios requeridos por la solución. | — | Gerard Gianpier Rojas Mancilla | Finalizado |
| Sprint 3 | Task NX-122 | NX-122 | Implementar EF Core y entidades de dominio | NX-123 | Codificar entidades Company, User y Order | Implementar las entidades de dominio principales para la persistencia. | — | César Marín | Finalizado |
| Sprint 3 | Task NX-122 | NX-122 | Implementar EF Core y entidades de dominio | NX-124 | Configurar NexaDbContext y Fluent API | Configurar el contexto de EF Core y el mapeo relacional. | — | César Marín | Finalizado |
| Sprint 3 | Task NX-122 | NX-122 | Implementar EF Core y entidades de dominio | NX-125 | Ejecutar migración InitialCreate | Crear y ejecutar la migración inicial de la base de datos. | — | César Marín | Finalizado |
| Sprint 3 | Task NX-128 | NX-128 | Implementar JWT y autenticación backend | NX-129 | Configurar JWT Bearer options en Program.cs | Configurar la validación y autenticación mediante JWT Bearer. | — | Diego | Finalizado |
| Sprint 3 | Task NX-128 | NX-128 | Implementar JWT y autenticación backend | NX-130 | Desarrollar AuthController (Login/Register) | Implementar los endpoints de inicio de sesión y registro. | — | Diego | Finalizado |
| Sprint 3 | Task NX-133 | NX-133 | Implementar servicios de cadena de frío | NX-134 | Crear interfaz y clase IOrderService | Definir el contrato y la implementación inicial del servicio de órdenes. | — | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | Task NX-133 | NX-133 | Implementar servicios de cadena de frío | NX-135 | Desarrollar OrdersController (GET/POST) | Implementar endpoints para consultar y crear órdenes. | — | Joaquín Francisco Verde Bueno | Finalizado |
| Sprint 3 | Task NX-138 | NX-138 | Documentar Swagger y manejo global de errores | NX-140 | Implementar Middleware de Excepciones | Centralizar el manejo de errores y respuestas de excepción. | — | Gerard Gianpier Rojas Mancilla | Finalizado |
| Sprint 3 | Task NX-138 | NX-138 | Documentar Swagger y manejo global de errores | NX-141 | Configurar XML Comments en Swagger | Incorporar los comentarios XML en la documentación OpenAPI. | — | Gerard Gianpier Rojas Mancilla | Finalizado |
| Sprint 3 | Task NX-856 | NX-856 | Configurar ASP.NET Core Web API foundation | NX-1060 | Inicialización de la Solución | Crear la jerarquía de directorios con DDD y configurar la solución para separar responsabilidades. | 6.0 | Diego | Por hacer |
| Sprint 3 | Task NX-856 | NX-856 | Configurar ASP.NET Core Web API foundation | NX-1061 | Implementación de Swagger | Habilitar Swagger para visualizar y probar endpoints, manteniendo actualizado el contrato de API. | 6.0 | Diego | Por hacer |
| Sprint 3 | Task NX-857 | NX-857 | Organizar bounded contexts y modular monolito | NX-1062 | Creación de carpetas de módulos | Crear directorios raíz autónomos para los módulos de dominio y sus entidades, casos de uso y lógica. | 6.0 | Diego | Por hacer |
| Sprint 3 | Task NX-857 | NX-857 | Organizar bounded contexts y modular monolito | NX-1063 | Configuración del Shared Kernel | Centralizar componentes compartidos y evitar dependencias circulares entre módulos. | 6.0 | Diego | Por hacer |
| Sprint 3 | Task NX-858 | NX-858 | Implementar recurso `/api/v1/catalog-items` | NX-1064 | Creación de DTOs para el recurso | Implementar DTOs de entrada y salida con las validaciones requeridas por el recurso de catálogo. | 4.0 | Gino Torrejon | Por hacer |
| Sprint 3 | Task NX-858 | NX-858 | Implementar recurso `/api/v1/catalog-items` | NX-1065 | Implementación del Controller REST | Implementar métodos REST, manejo de excepciones de dominio y documentación del controlador. | 6.0 | Gino Torrejon | Por hacer |
| Sprint 3 | Task NX-859 | NX-859 | Implementar recurso `/api/v1/orders` | NX-1066 | Creación de DTOs para solicitudes y respuestas de órdenes | Diseñar DTOs para crear órdenes y devolver su detalle, incluido el desglose de costos. | 6.0 | Diego | Por hacer |
| Sprint 3 | Task NX-859 | NX-859 | Implementar recurso `/api/v1/orders` | NX-1067 | Implementación de endpoints REST para órdenes | Desarrollar endpoints POST y GET e implementar el manejo de estados de la orden. | 6.0 | Diego | Por hacer |
| Sprint 3 | Task NX-860 | NX-860 | Implementar recurso `/api/v1/inventory-items` | NX-1068 | Creación de DTOs para consultas de disponibilidad | Definir DTOs para consultar stock y realizar ajustes sin exponer la lógica interna de almacén. | 6.0 | Joaquín Francisco Verde Bueno | Por hacer |
| Sprint 3 | Task NX-860 | NX-860 | Implementar recurso `/api/v1/inventory-items` | NX-1069 | Desarrollo de endpoints REST para el Warehouse | Implementar consultas de disponibilidad y ajustes operativos con validación de permisos. | 6.0 | Joaquín Francisco Verde Bueno | Por hacer |
| Sprint 3 | Task NX-861 | NX-861 | Configurar Shared Kernel, repositories y Unit of Work | NX-1070 | Definición del Shared Kernel | Implementar clases base e interfaces transversales para Catalog, Sales y Warehouse. | 6.0 | Gerard Gianpier Rojas Mancilla | Por hacer |
| Sprint 3 | Task NX-861 | NX-861 | Configurar Shared Kernel, repositories y Unit of Work | NX-1071 | Contratos genéricos para la persistencia | Definir contratos genéricos de persistencia y mantener las reglas específicas dentro de cada módulo. | 6.0 | Gerard Gianpier Rojas Mancilla | Por hacer |
| Sprint 3 | Task NX-862 | NX-862 | Preparar foundation de persistencia relacional | NX-1072 | Validaciones de conectividad | Verificar la conectividad con el servidor PostgreSQL durante el arranque de la aplicación. | 4.0 | Joaquín Francisco Verde Bueno | Por hacer |
| Sprint 3 | Task NX-862 | NX-862 | Preparar foundation de persistencia relacional | NX-1073 | Configuración del driver de conexión | Configurar el proveedor de datos y los parámetros de conexión entre ASP.NET Core y PostgreSQL. | 6.0 | Joaquín Francisco Verde Bueno | Por hacer |
| Sprint 3 | Task NX-863 | NX-863 | Registrar evidencia de OpenAPI local | NX-1074 | Ajuste de visualización de Swagger UI | Organizar las secciones de Swagger según los bounded contexts para mejorar su legibilidad. | 6.0 | Diego | Por hacer |
| Sprint 3 | Task NX-863 | NX-863 | Registrar evidencia de OpenAPI local | NX-1075 | Validación de integridad del contrato | Revisar DTOs, campos, tipos y nombres expuestos en Swagger y eliminar referencias problemáticas. | 6.0 | Diego | Por hacer |
| Sprint 3 | Task NX-864 | NX-864 | Documentar release técnico backend | NX-1076 | Elaboración del registro de cambios | Consolidar las funcionalidades técnicas añadidas en la configuración, arquitectura y recursos backend. | 6.0 | Diego | Por hacer |
| Sprint 3 | Task NX-864 | NX-864 | Documentar release técnico backend | NX-1077 | Documentación de alcance y limitaciones | Registrar explícitamente los elementos fuera del alcance de la versión. | 4.0 | Joaquín Francisco Verde Bueno | Por hacer |
| Sprint 3 | Task NX-865 | NX-865 | Registrar ramas feature/release | NX-1078 | Documentación de Gitflow | Documentar el estándar de nombres y uso de ramas feature y release. | 4.0 | Diego | Por hacer |
| Sprint 3 | Task NX-865 | NX-865 | Registrar ramas feature/release | NX-1079 | Proceso de integración | Revisar pull requests e integrar las ramas feature en la rama de release. | 6.0 | Diego | Por hacer |
| Sprint 3 | Task NX-866 | NX-866 | Prepare frontend/backend release version for AV2 | NX-1080 | Verificación de consistencia de contratos | Validar que los DTOs del frontend Vue 3 coincidan con las definiciones del backend. | 6.0 | Diego | Finalizado |
| Sprint 3 | Task NX-866 | NX-866 | Prepare frontend/backend release version for AV2 | NX-1081 | Preparación de perfiles de configuración | Crear perfiles de configuración para Vue 3 y .NET sin valores hardcoded. | 6.0 | César Marín | Finalizado |
| Sprint 3 | Task NX-867 | NX-867 | Validate backend build and local execution | NX-1082 | Pruebas funcionales en Swagger UI | Probar controladores de Catalog, Orders e Inventory y verificar respuestas exitosas. | 4.0 | César Marín | Por hacer |
| Sprint 3 | Task NX-867 | NX-867 | Validate backend build and local execution | NX-1083 | Verificación de archivos residuales y logs | Eliminar archivos temporales y logs innecesarios y completar las exclusiones del repositorio. | 4.0 | César Marín | Por hacer |
| Sprint 3 | Task NX-868 | NX-868 | Document README/release execution guide | NX-1084 | Creación de la documentación de entrada | Redactar el README con infraestructura, prerrequisitos y configuración local de la base de datos. | 6.0 | César Marín | Por hacer |
| Sprint 3 | Task NX-868 | NX-868 | Document README/release execution guide | NX-1085 | Registro de fronteras del release | Declarar los componentes implementados y los elementos fuera del alcance de la versión. | 4.0 | César Marín | Por hacer |
| Sprint 3 | Task NX-869 | NX-869 | Validate 25 structured backend endpoints in Swagger | NX-1086 | Mapeo y validación de cobertura de endpoints | Verificar que los 25 endpoints estén registrados en Swagger con rutas estandarizadas. | 4.0 | César Marín | Por hacer |
| Sprint 3 | Task NX-869 | NX-869 | Validate 25 structured backend endpoints in Swagger | NX-1087 | Auditoría de DTOs | Validar esquemas, tipos de datos y restricciones de los objetos de entrada y salida. | 6.0 | César Marín | Por hacer |
| Sprint 3 | Task NX-870 | NX-870 | Preserve core frontend-backend flows for Catalog, Inventory and Orders | NX-1088 | Sincronización de estado entre contextos | Documentar la consistencia de identificadores y entidades entre bounded contexts durante el flujo de una orden. | 6.0 | Gerard Gianpier Rojas Mancilla | Por hacer |
| Sprint 3 | Task NX-870 | NX-870 | Preserve core frontend-backend flows for Catalog, Inventory and Orders | NX-1089 | Verificación estricta de interfaces | Asegurar que los cambios de DTOs C# se reflejen inmediatamente en las interfaces frontend. | 6.0 | Gerard Gianpier Rojas Mancilla | Por hacer |

> *Nota:* Las estimaciones, responsables y estados corresponden a los valores registrados en Jira para las sub-tasks consultadas. Las incidencias se vinculan con el Sprint 3 mediante sus tareas padre. Elaboración propia.

#### 5.2.3.4. Development Evidence for Sprint Review

La evidencia de desarrollo del Sprint 3 se organiza según el alcance AV2: `nexa-platform`, `nexa-webapp` y `nexa-website`. Los commits seleccionados corresponden al incremento técnico y no a la evolución del informe académico.

Los commits incluidos son una selección representativa del incremento Sprint 3. No reemplazan el historial completo de GitHub; su propósito es evidenciar trazabilidad entre implementación, integración frontend/backend, documentación de release y actualización del informe académico.

*Commits del repositorio `nexa-platform`*

Release de cierre AV2 disponible para revisión. Este repositorio concentra la base backend con ASP.NET Core Web API, bounded contexts, Shared Kernel, EF Core/PostgreSQL, IAM, commands, queries, infrastructure, documentación técnica y release `v1.0.0` con título visible `Nexa Platform - Production Release v1.0.0`. Historial de commits: [https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-platform/commits/main/](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-platform/commits/main/).

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Commited on (Date) |
|---|---|---|---|---|---|
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `main` | `ec26b31` | `merge: release version v1.0.0` | Release merge for the AV2 review cut. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `develop` | `12d4be9` | `chore(release): prepare release v1.0.0` | Release metadata and version preparation for `v1.0.0`. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `main` | `c6f1c47` | `docs(readme): improve README.md structure and repository mapping` | Repository documentation and mapping alignment. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `main` | `1d03f18` | `feat(community): add CODE_OF_CONDUCT.md and CONTRIBUTING.md` | Community and contribution guidelines for repository governance. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `main` | `eaa6f4c` | `feat(security): add SECURITY.md and isolate production connection strings` | Security policy and connection string isolation for the deployment evidence. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `main` | `7ebe523` | `merge: release version v0.7.0` | Intermediate release merge before the `v1.0.0` closeout. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `main` | `ea9bbc0` | `docs(cleanup): remove obsolete guide files and local database configs` | Cleanup of obsolete local guides and database configuration files. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `develop` | `63af8e7` | `merge: integrate feature/mejoras-pre-release into develop` | Integration of pre-release improvements into the development branch. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `develop` | `02e423a` | `fix(persistence): resolve startup DB migration concurrency and verifications` | Startup migration concurrency and verification fix. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `develop` | `4c117c9` | `refactor(code): clean up old unused persistence files and bounded contexts` | Cleanup of unused persistence files and bounded context structure. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `develop` | `d6b123f` | `feat(persistence): generate InitialCreate EF Core migrations for PostgreSQL` | Initial persistence migration for PostgreSQL. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `develop` | `fb3eeb7` | `fix(persistence): make SeedDataService support idempotent Postgres executions` | Idempotent seed execution support. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `develop` | `274e1d8` | `feat(persistence): add local postgresql database seed seed-local.sql` | Local PostgreSQL seed script for review support. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `develop` | `5cb5962` | `feat(persistence): add local appsettings template appsettings.Local.example.json` | Local application settings template. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `develop` | `5ac6f2d` | `refactor(shared): configure snake_case naming conventions for PostgreSQL tables` | Naming convention alignment for PostgreSQL tables. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `develop` | `461ccba` | `refactor(persistence): update DbContext to use PostgreSQL UseNpgsql` | DbContext provider update for PostgreSQL. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `develop` | `3216150` | `feat(persistence): add Npgsql.EntityFrameworkCore.PostgreSQL dependency` | PostgreSQL provider dependency for EF Core. | 2026-06-15 |

*Commits del repositorio `nexa-webapp`*

Release de cierre AV2 disponible para revisión de la Web Application. Estos commits se incluyen porque corresponden al corte `nexa-webapp v2.0.0`: eliminación de dependencia de Mock API / JSON-server, consolidación de estado local/in-memory para flujos no dependientes de API real, documentación de patrones DDD/frontend architecture, ajustes de layout/responsividad y preparación del release `v2.0.0`.

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Commited on (Date) |
|---|---|---|---|---|---|
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `4f1701c` | `Merge branch 'release/v2.0.0' into main` | Consolidation of the WebApp release branch for the AV2 review cut. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `release/v2.0.0` | `88b4172` | `chore(release): bump package version to 2.0.0 and add release notes` | Version metadata and release notes for `v2.0.0`. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `c1305dc` | `Merge branch 'feature/cleanup' into develop` | Integration of cleanup changes before the release branch. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `4f5b959` | `config(git): minimize gitignore and remove history items` | Repository hygiene for the WebApp release trail. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `afff8e7` | `build(cleanup): delete obsolete local verification logs` | Cleanup of obsolete local verification artifacts. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `5f1f4ee` | `build(cleanup): delete deprecated firebase routing configuration` | Removal of deprecated routing configuration. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `bae804c` | `Merge branch 'feature/documentation-compliance' into develop` | Integration of documentation compliance work. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `daafae5` | `docs(architecture): document clean architecture and frontend DDD patterns` | Documentation of frontend architecture and DDD alignment. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `ef22c5a` | `docs(wiki): create engineering wiki pages and navigation index` | Engineering wiki pages and navigation index. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `8b7fa35` | `docs(contrib): enforce structured multiline commit messages` | Contribution documentation for structured commit messages. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `2db3c82` | `docs(security): update security policy and reporting channels` | Security policy and reporting channel update. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `143e5c2` | `docs(readme): rewrite main readme with premium layout` | README structure and execution guidance alignment. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `8299be1` | `Merge branch 'release/v1.8.0' into main` | Intermediate cleanup/layout release before `v2.0.0`. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `release/v1.8.0` | `08f8170` | `chore(release): bump package version to 1.8.0 and add release notes` | Release metadata for the cleanup/layout polish cut. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `75fb950` | `style(ops): apply fluid auto-fit columns to quick-actions grid` | Responsive quick-actions layout adjustment. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `f8a1b8a` | `style(sales): improve create order catalog grid responsiveness` | Responsive catalog grid adjustment for order creation. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `2f1eb35` | `build(cleanup): delete server directory` | Removal of the obsolete local mock server directory. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `48914dc` | `refactor(api): remove useMockApi from context APIs` | Removal of mock API switching from context APIs. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `8cb8ab7` | `feat(store): configure in-memory data store for local resources` | In-memory store for local resource flows not dependent on a live API. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `3282b57` | `feat(shared): configure base API http clients for production` | Base API HTTP clients aligned with the deployed API endpoint strategy. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `7568f26` | `build(deps): remove json-server dependency and mock scripts` | Removal of JSON-server dependency and mock scripts. | 2026-06-15 |

*Commits del repositorio `nexa-website`*

Release de cierre AV2 disponible para revisión. `nexa-website v3.0.0` se registra con el título visible `v3.0.0 - Nexa Landing Website Production Release` e incorpora el cierre de Landing Page, navegación, páginas de detalle, correcciones visuales y documentación de repositorio. Historial de commits: https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-website/commits/main/

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Commited on (Date) |
|---|---|---|---|---|---|
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `2fce6a1` | `docs(github): configure repository security policies and guides` | Repository governance documents for the AV2 closeout. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `9b5e285` | `docs(readme): rewrite readme format and modernize badges` | README structure and badge modernization. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `a401b76` | `fix(pages): clean content banners and link redirections` | Content banner cleanup and link redirection fixes. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `6fc2bfb` | `feat(navigation): configure dedicated detail views for product and team` | Dedicated detail views for product and team pages. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `7ee4a8e` | `fix(i18n): finalize team roles translation mappings` | Team role translation mapping adjustments. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `d621862` | `feat(platform): introduce product showcase details to platform page` | Product showcase details for the platform page. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `1954001` | `style(company): format team showcase grids and card hover actions` | Team showcase grid formatting and card hover interactions. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `26da256` | `feat(company): integrate pixel-perfect team showcase section` | Team showcase section integration. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `c2596a0` | `fix(legal): update legal pages lang attributes and remove demo tags` | Legal page language attributes and demo tag cleanup. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `b2c8833` | `fix(faq): resolve FAQ list toggles and contrast issues` | FAQ toggle and contrast fixes. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `8d503fa` | `fix(style): register missing status color tokens in design system` | Missing status color tokens for the design system. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `e01c6e9` | `fix(core): update login redirect paths to render production backend` | Login redirect paths aligned with the deployed backend endpoint. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `a25dff1` | `feat(website): add about content for AV2 release` | Adds About the Product and About the Team pages for the AV2 release path. | 2026-06-11 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `df83d0e` | `docs(readme): fix report repository links and name` | Corrects report repository references. | 2026-06-05 |


La evidencia técnica de cierre AV2 se conserva en los repositorios `nexa-platform`, `nexa-webapp` y `nexa-website`. La trazabilidad GitHub del informe académico se consolida en Project Report Collaboration Insights. Jira, ejecución, Swagger/OpenAPI y releases permanecen en las subsecciones siguientes.

#### 5.2.3.5. Execution Evidence for Sprint Review

El Sprint 3 presenta evidencia de ejecución para el corte AV2 frontend/backend. La revisión del incremento considera `nexa-platform v1.0.0`, `nexa-website v3.0.0` y `nexa-webapp v2.0.0` como versiones disponibles para evaluación académica. Esta ejecución se documenta como despliegue controlado y evidencia técnica del incremento, no como operación productiva final.

La versión frontend queda respaldada por el release `nexa-webapp v2.0.0`, mientras que la versión backend queda respaldada por el release `nexa-platform v1.0.0`. El README y las release notes del repositorio `nexa-webapp` documentan la guía de ejecución, alcance y notas del corte `v2.0.0`. Para la revisión de navegación, el equipo incorporó el video `upc-pre-202610-1asi0730-12242-nexa-webapp-prototype-sprint-3`, publicado en Microsoft Stream https://cutt.ly/Vt5dNMnu. Su duración es `6:46`, con transición hacia Segmento 2 en `1:44` y transición hacia S3 en `3:49`.

La ejecución también incluye evidencia de WebApp desplegada en Render, Platform API desplegada en Render, Swagger/OpenAPI publicado para revisión de endpoints y flujos core preparados para validación. Estos flujos se consideran parcialmente incorporados porque las capturas de login, catálogo, video de navegación, Swagger/OpenAPI y despliegues Render sustentan el avance, pero todavía no declaran cobertura total del roadmap, reemplazo completo de servicios simulados ni integración productiva con todos los módulos de la Web Application.

**Estructura del proyecto backend `nexa-platform`** Como evidencia complementaria de implementación, se presenta la estructura del proyecto backend desarrollada para AV2. La solución se encuentra organizada por bounded contexts y capas, mostrando los módulos `CatalogManagement`, `Iam`, `Invoicing`, `Logistics`, `Sales`, `Shared` y `Warehouse`, cada uno con `Application`, `Domain`, `Infrastructure` e `Interfaces`. Además, incorpora `Migrations`, `Resources`, archivos `appsettings` y `Program.cs`, confirmando la adopción de DDD y Layered Architecture en la solución.

**Estructura backend de `nexa-platform` — parte 1**

La imagen muestra la primera parte de la estructura del proyecto backend. Permite evidenciar que la Platform API fue organizada con separación modular y por capas, manteniendo carpetas relacionadas con application, domain, infrastructure e interfaces para sostener una arquitectura basada en DDD.

![Nexa Platform backend project structure - part 1](../../assets/images/chapter-5/sprint-evidence/nexa-platform-project-structure-1.png)

> *Nota:* La captura muestra la organización inicial del proyecto `nexa-platform`, incluyendo bounded contexts y capas técnicas utilizadas para la primera versión de Web Services. Elaboración propia.

**Estructura backend de `nexa-platform` — parte 2**

La imagen complementa la vista anterior de la solución backend. En conjunto, ambas capturas permiten comprobar la presencia de bounded contexts como Catalog Management, IAM, Invoicing, Logistics, Sales, Warehouse y módulos compartidos requeridos para persistencia, configuración y ejecución de la API.

![Nexa Platform backend project structure - part 2](../../assets/images/chapter-5/sprint-evidence/nexa-platform-project-structure-2.png)

> *Nota:* La captura complementa la evidencia de organización backend y permite observar módulos, archivos de configuración, migraciones y elementos de soporte de la Platform API. Elaboración propia.

**Video de navegación Sprint 3 / AV2**

La imagen registra una captura del video usado para demostrar la navegación alcanzada en Sprint 3. Esta evidencia respalda la revisión del incremento porque muestra el recorrido de la WebApp por los flujos principales de los segmentos Segmento 1, Segmento 2 y Segmentos 3, incluyendo la transición hacia el Buyer Portal.

![Video de navegación Sprint 3 / AV2](../../assets/images/chapter-5/sprint-evidence/video/sprint-3-navigation-video-screenshot.png)

> *Nota:* El mismo video registrado como evidencia de prototyping en la sección 4.5 se reutiliza como evidencia de navegación del Sprint 3, debido a que muestra el recorrido de la WebApp por los segmentos Segmento 1, Segmento 2 y Segmentos 3. Elaboración propia.


**Sign-in de la WebApp desplegada**

La imagen evidencia la pantalla de inicio de sesión de la Web Application ejecutándose desde el entorno desplegado. Esta captura permite verificar que la experiencia frontend del corte AV2 se encuentra disponible para revisión académica y conectada al flujo inicial de acceso.

![Sign-in de WebApp desplegada](../../assets/images/chapter-5/sprint-evidence/execution/webapp-login-render.png)

> *Nota:* La captura muestra la vista de sign-in de la Web Application desplegada en Render para el corte AV2. Elaboración propia.


**Catálogo de productos de la WebApp desplegada**

La imagen muestra la vista de catálogo dentro de la Web Application desplegada. Esta evidencia se relaciona con el flujo de consulta de productos refrigerados y con el avance de conexión funcional entre la experiencia del usuario y el bounded context de Catalog Management.

![Catálogo de productos de WebApp desplegada](../../assets/images/chapter-5/sprint-evidence/execution/webapp-catalog-render.png)

> *Nota:* La captura muestra el catálogo de productos de la Web Application desplegada en Render. Elaboración propia.

#### 5.2.3.6. Services Documentation Evidence for Sprint Review

La documentación de servicios del Sprint 3 se alinea con el alcance AV2: registrar la primera versión de Web Services y su evidencia OpenAPI/Swagger. Los recursos REST principales se interpretan como flujos core agrupados para conexión frontend/backend; por ello, no deben confundirse con el total de operaciones HTTP disponibles en el backend.

El bounded context `Catalog Management` trabaja sobre el aggregate `CatalogItem` y expone el recurso REST `/api/v1/catalog-items`, cuya responsabilidad principal es gestionar el catálogo de productos refrigerados. Su ownership técnico se asocia a `R0obxdnt-bit`. El bounded context `Sales` trabaja sobre el aggregate `Order` y expone el recurso REST `/api/v1/orders`, orientado a gestionar órdenes comerciales B2B, con ownership principal de `DiegoS284`. El bounded context `Warehouse` trabaja sobre el aggregate `InventoryItem` y expone el recurso REST `/api/v1/inventory-items`, encargado de disponibilidad e inventario, con ownership principal de `JoaquinVerde115`.

Para el corte AV2 se documentan tres grupos core de conexión frontend/backend: Catalog Management, Warehouse y Sales. En conjunto, el backend registra 25 endpoints HTTP estructurados todavía marcados como `To Validate`, porque deben ser confirmados mediante build, ejecución local y Swagger/OpenAPI antes de declararse como alcance cerrado. De esos endpoints, 15 corresponden a operaciones core de negocio en Catalog Management, Warehouse y Sales; y 17 corresponden a endpoints core más acceso IAM, al incluir las operaciones de sign-in y sign-up.

La distribución actual de endpoints backend queda organizada así: Catalog Management incorpora 3 operaciones HTTP para catalog item management; Warehouse incorpora 6 operaciones para disponibilidad, reserva y liberación de inventario; Sales incorpora 6 operaciones para órdenes, confirmación, rechazo y cancelación; IAM incorpora 2 operaciones para sign-in y sign-up foundation; Invoicing incorpora 4 operaciones para creación de invoice y estado de pago; y Logistics incorpora 4 operaciones para programación de shipment y estado de delivery. En total, la Platform API registra 25 endpoints HTTP estructurados para validación del Sprint 3.

Esta cobertura diferencia operaciones HTTP individuales de capacidades core agrupadas. El reporte de Sprint 3 documenta la backend foundation actual y no declara todavía cobertura completa del roadmap, operación productiva, integración total con la Web Application ni reemplazo completo de servicios simulados del frontend.

**Swagger/OpenAPI general de Platform API**

La imagen muestra la documentación general de la Platform API expuesta mediante Swagger/OpenAPI. Esta evidencia permite revisar que los controladores REST del backend fueron publicados con documentación navegable para la validación de endpoints durante Sprint Review.

![Swagger/OpenAPI general de Platform API](../../assets/images/chapter-5/sprint-evidence/backend/swagger-openapi-platform-api.png)

> *Nota:* La captura muestra la documentación Swagger/OpenAPI general de la Platform API correspondiente al corte AV2. Elaboración propia.

**Endpoints de autenticación en Swagger/OpenAPI**

La imagen presenta los endpoints asociados a autenticación. Esta evidencia respalda la base IAM del Sprint 3, necesaria para preparar sign-in/sign-up y controlar el acceso inicial a la Web Application y a los servicios backend.

![Endpoints de autenticación en Swagger/OpenAPI](../../assets/images/chapter-5/sprint-evidence/backend/swagger-authentication.png)

> *Nota:* La captura muestra los endpoints de autenticación documentados en Swagger/OpenAPI como parte de la base IAM del backend. Elaboración propia.

**Endpoints de Catalog Items en Swagger/OpenAPI**

La imagen presenta los endpoints del recurso `Catalog Items`. Esta evidencia se vincula con el bounded context Catalog Management, encargado de exponer operaciones para consultar y gestionar productos refrigerados dentro de la Platform API.

![Endpoints de Catalog Items en Swagger/OpenAPI](../../assets/images/chapter-5/sprint-evidence/backend/swagger-catalog-items.png)

> *Nota:* La captura muestra los endpoints de Catalog Items documentados en Swagger/OpenAPI para el bounded context Catalog Management. Elaboración propia.

**Endpoints de Inventory Items en Swagger/OpenAPI**

La imagen muestra los endpoints del recurso `Inventory Items`. Esta evidencia se relaciona con el bounded context Warehouse, encargado de gestionar disponibilidad, inventario, reservas y liberaciones de stock para los flujos operativos del Sprint 3.

![Endpoints de Inventory Items en Swagger/OpenAPI](../../assets/images/chapter-5/sprint-evidence/backend/swagger-inventory-items.png)

> *Nota:* La captura muestra los endpoints de Inventory Items documentados en Swagger/OpenAPI para el bounded context Warehouse. Elaboración propia.

**Endpoints de Orders en Swagger/OpenAPI**

La imagen presenta los endpoints del recurso `Orders`. Esta evidencia se relaciona con el bounded context Sales, responsable de soportar solicitudes, confirmaciones, rechazos, cancelaciones y seguimiento de órdenes comerciales B2B.

![Endpoints de Orders en Swagger/OpenAPI](../../assets/images/chapter-5/sprint-evidence/backend/swagger-orders.png)

> *Nota:* La captura muestra los endpoints de Orders documentados en Swagger/OpenAPI para el bounded context Sales. Elaboración propia.

#### 5.2.3.7. Software Deployment Evidence for Sprint Review

El Sprint 3 documenta evidencia de despliegue y preparación de release para AV2, incluyendo `nexa-platform v1.0.0`, `nexa-website v3.0.0` y `nexa-webapp v2.0.0` como evidencia técnica disponible para revisión. Esta sección no declara operación productiva; registra los artefactos que respaldan la revisión académica del corte frontend/backend.

El backend se sustenta con la captura real del release `nexa-platform v1.0.0`, que registra la versión de Web Services disponible para revisión AV2. La Web Application se sustenta con el release `nexa-webapp v2.0.0`, asociado al corte frontend. La Landing Page se sustenta con el release `nexa-website v3.0.0`, utilizado como versión pública de cierre AV2. La guía README y las release notes complementan el despliegue porque explican cómo ejecutar y revisar los productos sin asumir operación productiva final.

El despliegue controlado incluye la Web Application publicada en Render, la Platform API publicada en Render y la base PostgreSQL preparada para el backend. Como referencias de revisión se mantienen los entornos `https://nexa-webapp.onrender.com` para la WebApp y `https://nexa-platform-20wt.onrender.com` para la Platform API. La evidencia de Swagger/OpenAPI se considera parte del despliegue porque permite validar documentación de endpoints desde la API preparada para revisión.

La evidencia distingue entre versión preparada, ejecución controlada y validación pendiente. No se declara integración total con toda la Web Application, reemplazo completo de servicios simulados, autenticación productiva completa, base de datos de operación final ni cobertura completa del roadmap backend.

**Vista general del dashboard de Render**

La imagen muestra el dashboard general de Render usado para revisar los servicios desplegados durante el Sprint 3. Esta evidencia permite sustentar que el equipo configuró un entorno cloud para la revisión académica del corte AV2.

![Vista general del dashboard Render](../../assets/images/chapter-5/sprint-evidence/deployment/render-dashboard-overview.png)

> *Nota:* La captura muestra la vista general del dashboard de Render utilizado para revisar los servicios desplegados de Nexa durante AV2. Elaboración propia.

**Servicios Nexa visibles en Render**

La imagen presenta los servicios de Nexa registrados en Render. Esta evidencia permite identificar los componentes desplegados para WebApp, Platform API y base de datos, separando la ejecución controlada de la operación productiva final.

![Servicios Nexa en Render](../../assets/images/chapter-5/sprint-evidence/deployment/render-nexa-services-overview.png)

> *Nota:* La captura muestra los servicios Nexa visibles en Render para el despliegue académico del Sprint 3. Elaboración propia.

**Servicio Render de la Web Application**

La imagen evidencia el servicio de Render asociado a la Web Application. Esta captura permite verificar el despliegue controlado de `nexa-webapp` como parte del cierre AV2 y su disponibilidad para revisión de navegación.

![Render WebApp service](../../assets/images/chapter-5/sprint-evidence/deployment/render-webapp-service.png)

> *Nota:* La captura muestra el servicio Render de la Web Application desplegada para revisión académica AV2. Elaboración propia.

**Configuración de entorno de la WebApp en Render**

La imagen muestra la configuración de entorno asociada al servicio WebApp en Render. Esta evidencia sustenta la preparación de variables y parámetros de ejecución requeridos para mantener el despliegue controlado del frontend.

![Render WebApp environment](../../assets/images/chapter-5/sprint-evidence/deployment/render-webapp-environment.png)

> *Nota:* La captura muestra la configuración de entorno del servicio WebApp en Render. Elaboración propia.

**Servicio Render de la Platform API**

La imagen evidencia el servicio de Render asociado a la Platform API. Esta captura respalda que la primera versión de Web Services fue preparada para revisión académica desde un entorno cloud.

![Render Platform API service](../../assets/images/chapter-5/sprint-evidence/deployment/render-platform-api-service.png)

> *Nota:* La captura muestra el servicio Render de la Platform API desplegada para el corte AV2. Elaboración propia.

**Configuración de entorno de la Platform API en Render**

La imagen muestra la configuración de entorno del servicio Platform API en Render. Esta evidencia se relaciona con la preparación de variables, conexión y parámetros necesarios para ejecutar la API backend.

![Render Platform API environment](../../assets/images/chapter-5/sprint-evidence/deployment/render-platform-api-environment.png)

> *Nota:* La captura muestra variables o configuración de entorno de la Platform API en Render. Elaboración propia.

**Servicio PostgreSQL en Render**

La imagen presenta el servicio PostgreSQL configurado en Render. Esta evidencia sustenta la preparación de persistencia relacional para el Sprint 3, alineada con EF Core y el despliegue controlado del backend.

![Render PostgreSQL service](../../assets/images/chapter-5/sprint-evidence/deployment/render-postgresql-service.png)

> *Nota:* La captura muestra el servicio PostgreSQL en Render asociado al despliegue académico AV2. Elaboración propia.

**Landing Page desplegada en GitHub Pages**

La imagen evidencia el despliegue de la Landing Page mediante GitHub Pages. Esta captura respalda la nueva versión de `nexa-website` disponible para revisión AV2 y su continuidad con la experiencia de Web Application.

![Landing Page desplegada en GitHub Pages](../../assets/images/chapter-5/sprint-evidence/deployment/github-pages-website-deployment.png)

> *Nota:* La captura muestra el despliegue de la Landing Page en GitHub Pages para el corte AV2. Elaboración propia.

**GitHub Release `nexa-webapp v2.0.0`**

La imagen muestra el release de cierre AV2 de la Web Application. Esta evidencia permite sustentar que el frontend cuenta con una versión identificable, etiquetada y disponible para revisión del incremento.

![GitHub Release nexa-webapp v2.0.0](../../assets/images/chapter-5/sprint-evidence/releases/nexa-webapp-v2-0-0-release.png)

> *Nota:* La captura muestra el release `nexa-webapp v2.0.0`, utilizado como evidencia de cierre AV2 de la Web Application. Elaboración propia.

**GitHub Release `nexa-website v3.0.0`**

La imagen muestra el release de cierre AV2 de la Landing Page. Esta evidencia sustenta que el sitio público cuenta con una versión etiquetada y disponible para revisión.

![GitHub Release nexa-website v3.0.0](../../assets/images/chapter-5/sprint-evidence/releases/nexa-website-v3-0-0-release.png)

> *Nota:* La captura muestra el release de cierre AV2 disponible para revisión de `nexa-website v3.0.0`. Elaboración propia.

**GitHub Release `nexa-platform v1.0.0`**

La imagen muestra el release de cierre AV2 de la Platform API. Esta evidencia permite sustentar que la primera versión de Web Services cuenta con una versión identificable y preparada para revisión académica.

![GitHub Release nexa-platform v1.0.0](../../assets/images/chapter-5/sprint-evidence/releases/nexa-platform-v1-0-0-release.png)

> *Nota:* La captura muestra el release de cierre AV2 disponible para revisión de `nexa-platform v1.0.0`. Elaboración propia.

#### 5.2.3.8. Team Collaboration Insights during Sprint

La colaboración del Sprint 3 se estructuró por bounded context, preparación de release y responsabilidades transversales de frontend/backend. Esta distribución permitió separar el avance de Catalog Management, Sales, Warehouse, IAM, Invoicing, Logistics y Shared Kernel, manteniendo una base común para configuración de API, documentación, repositorios, Unit of Work, guía de ejecución y preparación de la primera Web Services API.

El flujo de trabajo permitió organizar responsabilidades backend alrededor de ramas por bounded context y capa, incluyendo `main`, `develop`, commits de persistencia/PostgreSQL, documentación de repositorio, seguridad, comunidad y el tag `v1.0.0` como release disponible para revisión AV2.

En Catalog Management, el ownership principal de `R0obxdnt-bit` se concentró en `CatalogItem` y el recurso `/api/v1/catalog-items`, con el resultado esperado de habilitar un recurso inicial para el catálogo de productos refrigerados. En Sales, el liderazgo de `DiegoS284` se orientó al aggregate `Order`, el recurso `/api/v1/orders`, el bootstrapping de la API, la documentación backend y la higiene de release, con el resultado de sostener órdenes comerciales B2B y coordinación técnica transversal. En Warehouse, el ownership de `JoaquinVerde115` se vinculó con `InventoryItem` y `/api/v1/inventory-items`, produciendo un recurso inicial para disponibilidad e inventario.

La foundation compartida integró Shared Kernel, repositories, Unit of Work, EF Core/PostgreSQL y Swagger/OpenAPI como base técnica común para la evolución backend. La higiene de GitFlow y release permitió separar ramas, consolidar `nexa-platform v1.0.0`, `nexa-website v3.0.0` y `nexa-webapp v2.0.0`, y mantener trazabilidad del incremento sin declarar operación productiva.

**Tablero Sprint 3 en Jira**

La imagen muestra el tablero de trabajo del Sprint 3 en Jira. Esta evidencia permite observar la distribución de actividades por estado y facilita el seguimiento del avance operativo durante el incremento AV2.

![Tablero Sprint 3 en Jira](../../assets/images/chapter-5/sprint-evidence/jira/sprint-3-board-jira.png)

> *Nota:* El tablero de Jira muestra la distribución del trabajo del Sprint 3 por estados del flujo de trabajo, permitiendo observar el seguimiento operativo de las actividades del incremento AV2. Elaboración propia.

**Branches de `nexa-webapp` durante AV2**

La imagen presenta las ramas visibles del repositorio `nexa-webapp`. Esta evidencia respalda la gestión de versiones del frontend y la preparación del release `v2.0.0`.

![Branches de nexa-webapp](../../assets/images/chapter-5/sprint-evidence/gitflow/nexa-webapp-branches.png)

> *Nota:* La captura muestra las branches de `nexa-webapp` utilizadas durante el corte AV2. Elaboración propia.

**Commits recientes de `nexa-webapp` — parte 1**

La imagen muestra una primera vista de commits recientes del repositorio `nexa-webapp`. Esta evidencia permite relacionar cambios de frontend, ajustes de navegación y preparación de release con el corte AV2.

![Commits recientes nexa-webapp AV2 - parte 1](../../assets/images/chapter-5/sprint-evidence/collaboration/nexa-webapp-commits-av2-recent-1.png)

> *Nota:* La captura muestra commits recientes de `nexa-webapp` asociados al release `v2.0.0`, parte 1. Elaboración propia.

**Commits recientes de `nexa-webapp` — parte 2**

La imagen complementa la evidencia de commits recientes de `nexa-webapp`. Permite observar continuidad en los cambios realizados para estabilizar la Web Application durante el Sprint 3.

![Commits recientes nexa-webapp AV2 - parte 2](../../assets/images/chapter-5/sprint-evidence/collaboration/nexa-webapp-commits-av2-recent-2.png)

> *Nota:* La captura muestra commits recientes de `nexa-webapp` asociados al release `v2.0.0`, parte 2. Elaboración propia.

El rastro de releases de WebApp se interpreta de forma incremental: `v1.7.1` queda como patch AV2 previo, `v1.8.0` registra cleanup y layout polish, y `v2.0.0` queda como release de cierre actual de WebApp para el corte AV2.

**Branches de `nexa-website` durante AV2**

La imagen presenta las ramas visibles del repositorio `nexa-website`. Esta evidencia respalda la gestión de versiones y la evolución controlada del Landing Page durante el corte AV2.

![Branches de nexa-website](../../assets/images/chapter-5/sprint-evidence/gitflow/nexa-website-branches.png)

> *Nota:* La captura muestra las branches de `nexa-website` utilizadas durante el corte AV2. Elaboración propia.

**Commits recientes de `nexa-website`**

La imagen muestra commits recientes del repositorio `nexa-website`. Esta evidencia permite relacionar ajustes de contenido, navegación, accesibilidad o experiencia pública con la entrega AV2.

![Commits recientes AV2 de nexa-website](../../assets/images/chapter-5/sprint-evidence/collaboration/nexa-website-commits-av2-recent.png)

> *Nota:* La captura muestra commits recientes de `nexa-website` asociados al corte AV2. Elaboración propia.

**Commits históricos de cierre AV2 de `nexa-website`**

La imagen complementa la evidencia de colaboración en el repositorio `nexa-website`. Su propósito es mostrar continuidad histórica del trabajo realizado sobre la Landing Page antes del cierre AV2.

![Commits históricos de cierre AV2 de nexa-website](../../assets/images/chapter-5/sprint-evidence/collaboration/nexa-website-commits-av2-history.png)

> *Nota:* La captura muestra commits históricos de cierre AV2 de `nexa-website`. Elaboración propia.

**Branches de `nexa-platform` durante AV2**

La imagen presenta las ramas visibles del repositorio `nexa-platform`. Esta evidencia respalda la separación de trabajo backend, incluyendo ramas principales y de integración usadas durante Sprint 3.

![Branches de nexa-platform](../../assets/images/chapter-5/sprint-evidence/gitflow/nexa-platform-branches.png)

> *Nota:* La captura muestra las branches de `nexa-platform` utilizadas durante el corte AV2. Elaboración propia.

**Commits recientes de `nexa-platform`**

La imagen muestra commits recientes del repositorio `nexa-platform`. Esta evidencia permite relacionar la implementación de Web Services, persistencia, documentación y release del backend con el trabajo del Sprint 3.

![Commits recientes AV2 de nexa-platform](../../assets/images/chapter-5/sprint-evidence/collaboration/nexa-platform-commits-av2-recent.png)

> *Nota:* La captura muestra commits recientes de `nexa-platform` asociados al corte AV2. Elaboración propia.

**Commits por bounded context de `nexa-platform`**

La imagen evidencia commits organizados por bounded context o ramas de integración del backend. Esta captura se relaciona directamente con la matriz de Aspect Leaders and Collaborators, porque muestra la colaboración por Catalog Management, Sales, Warehouse, IAM, Invoicing, Logistics y Shared Kernel.

![Commits por bounded context de nexa-platform](../../assets/images/chapter-5/sprint-evidence/collaboration/nexa-platform-commits-av2-contexts.png)

> *Nota:* La captura muestra commits por bounded context de `nexa-platform`, reforzando la trazabilidad de colaboración modular del Sprint 3. Elaboración propia.

La conclusión del Sprint 3 es que Nexa establece su primer corte AV2 frontend/backend, documenta endpoints HTTP estructurados en C# y prioriza tres flujos core de integración asociados a Catalog Management, Warehouse y Sales. El incremento reduce la dependencia conceptual de servicios simulados, registra WebApp y Platform API en Render, y documenta la evolución hacia PostgreSQL para el despliegue controlado. El alcance conserva límites explícitos: no declara operación productiva, integración total con toda la Web Application, reemplazo total de servicios simulados, autenticación productiva completa ni validación cerrada con usuarios.
