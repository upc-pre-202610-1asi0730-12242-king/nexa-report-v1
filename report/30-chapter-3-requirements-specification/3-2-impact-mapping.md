## 3.2. Impact Mapping

El Impact Mapping de Nexa conecta los **Business Goals SMART** con los **User Personas y segmentos de negocio**, los impactos esperados, los entregables funcionales y las User Stories que materializan la solución. Su estructura permite mantener trazabilidad entre los resultados medibles del negocio y las capacidades priorizadas, respondiendo a la secuencia **Business Goal → User Persona / Segmento → Impact → Deliverables → User Stories**.

El mapa visual se elabora en UXPressia a partir de los segmentos de negocio identificados para Nexa. Las Technical Stories se documentan en una sección secundaria como habilitadores de integración entre la WebApp, el RESTful API y la persistencia de datos, sin presentarlas como ramas principales del mapa de impacto.

### Business Goals SMART de Nexa

| Business Goal ID | Business Goal SMART | Métrica de evaluación |
|---|---|---|
| BG01 | **Activar la captación y onboarding de distribuidoras.** Lograr que al menos el 70% de los participantes de validación comprendan la propuesta de valor de Nexa y puedan identificar el flujo de contacto, registro de organización o configuración inicial del workspace durante el ciclo de validación final TB2. | Porcentaje de participantes de validación que identifican correctamente la propuesta de valor, el contacto comercial, el registro de organización o la configuración inicial del workspace. |
| BG02 | **Digitalizar el flujo de solicitud de compra B2B.** Lograr que al menos el 70% de los participantes asociados al comprador B2B puedan consultar catálogo, preparar una solicitud y ubicar el seguimiento de una orden desde el Buyer Portal durante el ciclo de validación final TB2. | Porcentaje de participantes del perfil comprador B2B que completan o identifican correctamente el flujo catálogo → solicitud → seguimiento desde el Buyer Portal. |
| BG03 | **Reducir errores comerciales y re-digitación en ventas.** Lograr que al menos el 70% de los participantes asociados al área comercial puedan revisar solicitudes, validar datos comerciales, formalizar órdenes o registrar pedidos manuales sin depender de re-digitación externa durante el ciclo de validación final TB2. | Porcentaje de participantes del perfil comercial que completan o identifican correctamente los flujos de validación comercial, formalización de órdenes o registro manual de pedidos. |
| BG04 | **Asegurar inventario, FEFO, despacho y prueba de entrega.** Lograr que al menos el 70% de los participantes asociados a operaciones puedan identificar el flujo de inventario, lotes FEFO, despacho, POD o trazabilidad logística durante el ciclo de validación final TB2. | Porcentaje de participantes del perfil operativo que completan o identifican correctamente los flujos de inventario, lotes, despacho, POD o trazabilidad logística. |
| BG05 | **Centralizar documentos, cobros, perfiles y control administrativo.** Lograr que al menos el 70% de los participantes de validación puedan ubicar documentos, cobros referenciales, perfiles, preferencias o métricas operativas desde Nexa durante el ciclo de validación final TB2. | Porcentaje de participantes de validación que ubican correctamente documentos, cobros referenciales, perfiles, preferencias o métricas operativas dentro de Nexa. |

### User Personas y segmentos considerados en el Impact Mapping

- **S1 — Commercial Coordination:** representa al equipo comercial que atiende solicitudes, valida clientes, gestiona catálogo, formaliza órdenes y administra documentos comerciales.
- **S2 — Operations / Account Owner:** representa a los responsables de operación, almacén, logística y administración del workspace, incluyendo account ownership.
- **S3 — B2B Buyer Portal:** representa al comprador B2B que consulta catálogo, prepara solicitudes, hace seguimiento, revisa documentos y gestiona pagos referenciales.

El rol **Developer** no se representa como User Persona principal en el Impact Mapping visual porque no corresponde a un segmento objetivo de negocio. Sus Technical Stories se documentan en una sección secundaria como habilitadores técnicos del RESTful API.

### Evidencia visual del Impact Mapping

![Impact Mapping de Nexa](../assets/images/chapter-3/impact-mapping/impact-map-updated.png)

> *Nota*: La imagen corresponde al Impact Mapping elaborado en UXPressia y sigue la estructura **Business Goal → User Persona / Segmento → Impact → Deliverables → User Stories**. Elaboración propia.

### Habilitadores técnicos del RESTful API

Las Technical Stories se mantienen como parte de la trazabilidad del Capítulo 3 porque habilitan la integración entre la WebApp, el RESTful API y la persistencia de datos. Sin embargo, no se representan como ramas principales del Impact Mapping visual en UXPressia, ya que el rol Developer no corresponde a un segmento objetivo ni a un User Persona de negocio.

| Business Goal relacionado | Habilitador técnico | Technical Stories |
|---|---|---|
| BG01 | Autenticación, usuarios, registro de organización, tenants, auditoría y datos de referencia. | TS01–TS04, TS16–TS17 |
| BG02 | Catálogo, categorías, marcas, órdenes, facturas y pagos. | TS06–TS09, TS11–TS12 |
| BG03 | Clientes B2B, solicitudes de crédito y órdenes comerciales. | TS05, TS09–TS10 |
| BG04 | Envíos, almacenes e inventario. | TS13–TS15 |
| BG05 | Facturas, pagos, auditoría y datos de referencia. | TS11–TS12, TS16–TS17 |

> *Nota:* Las Technical Stories no se representan como ramas principales del Impact Mapping visual porque el rol Developer actúa como habilitador técnico del RESTful API, no como User Persona de negocio. Sin embargo, se incluyen en la trazabilidad documental porque soportan los entregables funcionales priorizados. Elaboración propia.
