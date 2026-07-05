## 4.5. Web Applications Prototyping

El prototipado de las aplicaciones web de Nexa permite revisar navegación, interacción y continuidad visual de las superficies autenticadas antes de analizar su implementación. Esta sección documenta el **Ops Portal o Web Application interna** para **Segmento 1 - Valeria Sánchez - Commercial Coordination** y **Segmento 2 - Roberto García - Operations / Account Owner**, además del **Buyer Portal** para **Segmento 3 - Elena Litano - B2B Buyer Portal**. El tenant/workspace proporciona el contexto de operación y la navegación se filtra según el rol y alcance autorizado.

El prototipo se relaciona directamente con la arquitectura de información definida en 4.2 y con los user flows documentados en 4.4. Segmento 2 mantiene dos responsabilidades dentro del mismo segmento: una rama operativa para inventario, lotes, despacho, Proof of Delivery, analítica y documentos; y una rama de account ownership para Company Administration, Workspaces, Teammates, Company rules, Custom fields, Billing, Preferences y alcance de acceso. Esta segunda rama representa opciones administrativas visibles y configuración del workspace, sin constituir un cuarto segmento ni afirmar persistencia completa de todos sus controles.

En el Buyer Portal, Elena recorre Portal Home, Product Catalog, Product Detail, Request Builder, My Requests, My Orders, Order Detail con tracking y documentos visibles, Payments, Premium y Profile. Los documentos se consultan dentro de My Orders y Order Detail, mientras Payments presenta métodos de pago, crédito, saldo o estado referencial de pago según el alcance disponible.

El prototipado constituye **evidencia de diseño interactivo**. La evidencia de implementación, ejecución, despliegue y servicios se documenta en el Capítulo V.

La evidencia visual y audiovisual incluida conserva los recorridos registrados de las superficies autenticadas. Su alcance se interpreta junto con la cobertura final de 4.4: Segmento 1 y Segmento 2 comparten el Ops Portal; Account Ownership es una rama administrativa de Segmento 2; y Segmento 3 utiliza el Buyer Portal, cuya adaptación desktop y mobile se documenta mediante mockups y flujos. La grabación respalda la interacción observada en el prototipo, pero no se utiliza para afirmar cobertura de módulos que el video no muestre explícitamente.

*Criterios aplicados para las decisiones de interacción del prototipo*

| Criterio | Aplicación en Nexa | Relación con arquitectura de información |
|---|---|---|
| Navegación por responsabilidad | Segmento 1, Segmento 2 y Segmento 3 acceden a módulos distintos según su segmento, alcance operativo y account ownership | Refuerza la separación de módulos de negocio y el portal definidos en 4.2 |
| Continuidad de flujo | Los recorridos conectan login, dashboard, entidades de negocio, detalle y confirmación | Evita que las pantallas funcionen como vistas aisladas |
| Progressive disclosure | Los detalles se muestran mediante drawers, modales, pasos guiados o vistas de detalle | Reduce carga cognitiva y mantiene contexto operativo |
| Feedback de estado | Badges, confirmaciones y mensajes permiten entender el avance de solicitudes, pedidos y despachos | Comunica trazabilidad sin depender solo del color |
| Densidad adaptada | La Web Application interna prioriza desktop/tablet por volumen operativo; el Buyer Portal prioriza claridad y autoservicio en desktop y mobile | Responde a diferencias de uso entre usuarios internos y compradores B2B |
| Consistencia visual | Se mantienen colores, tipografía, botones, tablas, cards y estados definidos en 4.1 | Asegura continuidad entre diseño visual y prototipo interactivo |

> *Nota:* La tabla resume los criterios aplicados para validar navegación, interacción y continuidad visual en el prototipo de Nexa. Elaboración propia.

*Cobertura de prototipado por flujo y segmento*

| Flujo | Segmento / subalcance | Cobertura en prototipo | Representación en esta sección |
|---|---|---|---|
| Validación comercial y atención de pedidos | Segmento 1 - Valeria Sánchez - Commercial Coordination | Sales Dashboard, Purchase Requests, Request Detail, Purchase Orders, Order Detail, Manual Order Entry, Product Catalog, B2B Clients y Business Documents | Prototipo navegable, captura audiovisual y user flow de Segmento 1 |
| Operación logística y account ownership | Segmento 2 - Roberto García - Operations / Account Owner | Rama operativa: Operations Dashboard, Inventory Control, Inventory Lots, Dispatch Orders, Dispatch Detail, Proof of Delivery, Operational Analytics y Business Documents.<br>Rama administrativa: Company Administration, Workspaces, Teammates, Company rules, Custom fields, Billing y Preferences | Prototipo navegable, wireflow, captura audiovisual y user flow de Segmento 2 como un único segmento |
| Catálogo, solicitud, pedido y seguimiento | Segmento 3 - Elena Litano - B2B Buyer Portal | Portal Home, Product Catalog, Product Detail, Request Builder, My Requests, Request Detail, My Orders, Order Detail con tracking y documentos visibles, Payments, Premium y Profile | Recorrido del Buyer Portal, mockups desktop/mobile y user flow definido en 4.4 |

> *Nota:* La tabla presenta el nivel de cobertura del prototipado interactivo para cada segmento dentro del ecosistema Nexa. Elaboración propia.

*Captura referencial del prototipo de la Web Application interna*

![Captura del prototipo de la web application](../assets/images/chapter-4/webapp/prototyping/prototyping.jpeg)

> *Nota:* La imagen muestra una captura referencial del prototipo navegable de la Web Application interna. Elaboración propia.

### Video de prototyping de la Web Application

El video conserva un recorrido registrado por las experiencias de Segmento 1, Segmento 2 y Segmento 3. Se presenta como evidencia audiovisual del prototipo navegable y complementa la captura referencial, las tablas de cobertura y los artefactos de 4.4.

*Captura del video de prototipado de la Web Application*

![Video de prototyping de la Web Application](../assets/images/chapter-4/webapp/prototyping/prototyping-webapp-sprint-3-video.png)

> *Nota:* La captura muestra la evidencia audiovisual disponible del prototipo navegable. Su cobertura corresponde a los recorridos observables en la grabación. Elaboración propia.

*Detalle audiovisual del prototipo de la Web Application*

| Elemento | Detalle |
|---|---|
| Archivo / nombre del video | `upc-pre-202610-1asi0730-12242-nexa-webapp-prototype-sprint-3` |
| Plataforma | Microsoft Stream / SharePoint |
| URL | **Microsoft Stream / SharePoint:** bit.ly/3SYaoMP |
| Duración | `6:46` |
| Recorrido de Segmento 1 - Commercial Coordination | Inicio del recorrido |
| Cambio al recorrido de Segmento 2 - Operations / Account Owner | `1:44` |
| Cambio al recorrido de Segmento 3 - B2B Buyer Portal | `3:49` |
| Evidencia visual | `prototyping-webapp-sprint-3-video.png` |

> *Nota:* La tabla resume la evidencia audiovisual disponible para el prototipo navegable de Nexa. Elaboración propia.

Esta evidencia se registra como prototyping porque documenta navegación, interacción y transición entre recorridos. La URL, duración y marcas de tiempo se conservan como datos del video existente. La cobertura responsive se interpreta junto con los mockups documentados en 4.4 y no como evidencia de implementación o despliegue.

### 4.5.1. Sistema de navegación aplicado al prototipo

El prototipo aplica un sistema de navegación diferenciado por superficie y responsabilidad de negocio. El **Ops Portal** utiliza navegación lateral, topbar y vistas de detalle para que Segmento 1 y Segmento 2 trabajen sin perder el contexto del workspace. El **Buyer Portal** utiliza una navegación más lineal, orientada a catálogo, solicitudes, órdenes y cuenta del comprador.

*Navegación aplicada en el prototipo por segmento*

| Superficie | Segmento / subalcance | Navegación principal | Propósito |
|---|---|---|---|
| Ops Portal | Segmento 1 - Commercial Coordination | Sales Dashboard, Product Catalog, Purchase Requests, Purchase Orders, Manual Order Entry, B2B Clients, Business Documents y My Profile | Validar solicitudes, formalizar órdenes, registrar pedidos y consultar información comercial |
| Ops Portal | Segmento 2 - Operations | Operations Dashboard, Inventory Control, Inventory Lots, Dispatch Orders, Dispatch Detail, Proof of Delivery, Operational Analytics, Business Documents y My Profile | Controlar inventario, lotes, despacho, evidencia de entrega y analítica operativa |
| Ops Portal | Segmento 2 - Account Ownership | Company Administration, Workspaces, Teammates, Company rules, Custom fields, Billing, Preferences, Promotions según alcance o permisos y My Profile | Visualizar opciones administrativas y configuración del workspace dentro del mismo Segmento 2 |
| Buyer Portal | Segmento 3 - B2B Buyer Portal | Portal Home, Product Catalog, Product Detail, Request Builder, My Requests, My Orders, Order Detail con tracking y documentos visibles, Payments, Premium y Profile | Permitir autoservicio para preparar solicitudes, revisar órdenes y consultar información referencial de pago |

> *Nota:* La tabla presenta los componentes del sistema de navegación implementados en el prototipo interactivo para cada segmento. Elaboración propia.

La navegación es **role-aware**: el usuario autenticado accede a una experiencia según su perfil y alcance operativo. Segmento 1 y Segmento 2 comparten la Web Application interna, mientras Account Ownership permanece como rama administrativa de Segmento 2. Segmento 3 utiliza el Buyer Portal como superficie separada para evitar exposición innecesaria de información operativa interna.

### 4.5.2. Interacciones principales del prototipo

El prototipo utiliza patrones de interacción consistentes con la arquitectura de información y los user flows finales. Las interacciones responden a decisiones del negocio: validar solicitudes, formalizar órdenes, revisar inventario, preparar despachos, configurar el workspace o consultar el estado de una compra.

*Interacciones principales del prototipo*

| Patrón de interacción | Uso en el prototipo | Segmento / subalcance |
|---|---|---|
| Login y navegación role-aware | Dirigen al usuario hacia la experiencia y módulos autorizados | Segmento 1, Segmento 2 y Segmento 3 |
| Dashboard inicial por experiencia | Resume actividad relevante y accesos frecuentes según responsabilidad | Segmento 1, Segmento 2 y Segmento 3 |
| Tablas con filtros | Permiten revisar solicitudes, órdenes, inventario, lotes, despachos y documentos | Segmento 1 y Segmento 2 |
| Vistas de detalle | Presentan solicitudes, órdenes, despachos y tracking con contexto suficiente | Segmento 1, Segmento 2 y Segmento 3 |
| Flujos guiados | Estructuran Manual Order Entry y Request Builder antes de confirmar | Segmento 1 y Segmento 3 |
| Estados visuales y badges | Comunican estados de solicitudes, órdenes, inventario, despacho y pagos referenciales | Segmento 1, Segmento 2 y Segmento 3 |
| Confirmaciones | Reducen errores antes de acciones relevantes del recorrido | Segmento 1, Segmento 2 y Segmento 3 |
| Company Administration | Presenta opciones administrativas visibles y configuración del workspace | Segmento 2 - Account Ownership |
| Tracking y documentos visibles | Integra el seguimiento y los documentos dentro de Order Detail | Segmento 3 |
| Payments | Permite consultar métodos de pago, crédito, saldo o estado referencial según alcance | Segmento 3 |

> *Nota:* La tabla clasifica las interacciones y patrones UX probados en el prototipo navegable. Elaboración propia.

### 4.5.3. Paths de prototipo por user goal

Los paths del prototipo siguen los user flows definidos en 4.4. Cada recorrido cubre un objetivo de usuario y una secuencia de interacción esperada.

*Paths de prototipo por user goal*

| Segmento / subalcance | User goal | Path de prototipo | Cobertura documentada |
|---|---|---|---|
| Segmento 1 - Valeria Sánchez | Validar solicitudes, formalizar órdenes y atender pedidos comerciales | Login → Sales Dashboard → Purchase Requests → Request Detail → decisión: approve / observe / reject → Purchase Orders → Order Detail → Manual Order Entry → Product Catalog → B2B Clients → Business Documents | Recorrido de Segmento 1 alineado con el user flow de 4.4 |
| Segmento 2 - Roberto García | Supervisar la operación logística y el gobierno del workspace | Login → Operations Dashboard → Inventory Control → Inventory Lots → Dispatch Orders → Dispatch Detail → Proof of Delivery → Operational Analytics → Business Documents → Company Administration → Workspaces / Teammates / Company rules / Custom fields / Billing / Preferences | Un único segmento con rama operativa y rama administrativa |
| Segmento 3 - Elena Litano | Preparar una solicitud y consultar el avance de su atención | Login → Portal Home → Product Catalog → Product Detail → Request Builder → Submit Request → My Requests → Request Detail → My Orders → Order Detail / Tracking / visible documents → Payments → Profile | Recorrido del Buyer Portal alineado con el user flow de 4.4 |

> *Nota:* La tabla describe la secuencia exacta de pantallas recorridas en el prototipo interactivo para cada objetivo de usuario. Elaboración propia.

En Segmento 2, Company Administration y sus secciones forman una rama administrativa del mismo path del segmento; no constituyen un segmento ni una experiencia independiente.

### 4.5.4. Evidencia audiovisual del prototipo por aplicación

La evidencia de prototipado se presenta diferenciando la experiencia en pantallas grandes y dispositivos móviles. Esta organización documenta la cobertura de diseño e interacción sin sustituir la evidencia de ejecución o despliegue del Capítulo V.

*   **Desktop Web Browser**:
    *   **Segmento 1 y Segmento 2 - Ops Portal / Web Application interna**: prototipo navegable de la consola interna, complementado con captura referencial y evidencia audiovisual. Las tareas densas priorizan desktop/tablet.
    *   **Segmento 2 - Account Ownership**: rama administrativa dentro del mismo prototipo de Web Application, asociada con Company Administration y la configuración visible del workspace.
    *   **Segmento 3 - Buyer Portal**: recorrido del comprador documentado mediante prototipo, mockups y user flow, sin atribuir al video cobertura que no sea observable.
*   **Mobile Web Browser**:
    *   **Segmento 1 y Segmento 2 - Ops Portal**: cobertura responsive orientada a consulta, revisión y acciones acotadas; desktop/tablet permanece como superficie principal para tareas de alta densidad.
    *   **Segmento 3 - Buyer Portal**: mayor prioridad mobile por su carácter de autoservicio, con mockups responsive y recorrido mobile documentados en 4.4.

**Diferenciación de Fases de Diseño**:
Las capturas de wireframes de 4.4.1 y los mockups de alta fidelidad representan niveles metodológicos distintos. Los wireframes definen distribución e interacción básica; los mockups y el prototipo navegable consolidan la dirección visual y la continuidad entre pantallas.

*Evidencia audiovisual del prototipo por superficie*

| Aplicación / superficie | Desktop Web Browser | Mobile Web Browser | Tipo de artefacto | Enlace audiovisual / representación |
|---|---|---|---|---|
| Ops Portal - Segmento 1 y Segmento 2 | Prototipo navegable de la Web Application interna; Account Ownership se integra como rama de Segmento 2 | Consulta, revisión y acciones acotadas | Captura referencial y video complementario | **URL complementaria de evidencia audiovisual:** bit.ly/4ffsmTL |
| Buyer Portal - Segmento 3 | Prototipo y recorrido del autoservicio B2B | Mockups responsive y recorrido mobile documentados en 4.4 | Mockups, wireflow y user flow | Cobertura de diseño documentada en 4.4 |

> *Nota:* La tabla detalla los accesos a los prototipos navegables y recursos visuales asociados. Elaboración propia.

### 4.5.5. Relación entre prototipo, user flows e implementación

El prototipo se usa como puente entre diseño e implementación. Su función es demostrar que las rutas de navegación, módulos y decisiones de interacción son coherentes con los user goals definidos para cada segmento; no reemplaza la validación con usuarios ni la evidencia de implementación.

*Relación entre prototipo, user flows e implementación*

| Relación | Aplicación en Nexa |
|---|---|
| Design System → Prototyping | Los componentes, colores, tipografía, estados y espaciado siguen los lineamientos de 4.1 |
| Information Architecture → Prototyping | Las rutas canónicas y la navegación por Segmento 1, Segmento 2 y Segmento 3 siguen la organización definida en 4.2; Account Ownership permanece dentro de Segmento 2 |
| User Flow → Prototyping | Los recorridos interactivos siguen los flujos finales documentados en 4.4 |
| Prototyping → Implementation | El prototipo orienta navegación, estados y tareas; la implementación, ejecución y despliegue se evidencian en el Capítulo V |
| Prototyping → Validation | Los recorridos permiten preparar evaluaciones de claridad e interacción, sin sustituir la validación con evidencia real |

> *Nota:* La tabla detalla la correspondencia conceptual y metodológica entre las fases de diseño y desarrollo en Nexa. Elaboración propia.

La evidencia de implementación, ejecución, despliegue y servicios se documenta en el Capítulo V. En esta sección, el énfasis permanece en demostrar navegación, interacción, trazabilidad con los user flows y continuidad del diseño entre la Web Application interna y el Buyer Portal.
