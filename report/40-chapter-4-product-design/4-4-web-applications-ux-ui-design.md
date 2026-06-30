## 4.4. Web Applications UX/UI Design

Esta sección documenta el diseño UX/UI de las superficies autenticadas de Nexa: la **Web Application interna u Ops Portal** para **Segmento 1 — Valeria Sánchez — Commercial Coordination** y **Segmento 2 — Roberto García — Operations / Account Owner**, y el **Buyer Portal** para el **Segmento 3 — Elena Litano — B2B Buyer Portal**. Las tres experiencias comparten el sistema visual definido en 4.1 y la arquitectura de información descrita en 4.2, pero se diferencian por densidad, navegación, nivel de detalle y responsabilidad dentro del modelo multi-tenant SaaS B2B. El tenant/workspace proporciona el contexto de operación y la navegación se filtra según el rol autorizado.

La Web Application interna está orientada a la operación diaria de los segmentos Segmento 1 y Segmento 2. El recorrido de **Valeria Sánchez** integra Sales Dashboard, Purchase Requests, Purchase Orders, Manual Order Entry, Product Catalog, B2B Clients y Business Documents. El recorrido de **Roberto García** mantiene dos responsabilidades dentro de un mismo segmento: la operación logística y el account ownership. La primera comprende Operations Dashboard, Inventory Control, Inventory Lots, Dispatch Orders, Proof of Delivery, Operational Analytics y Business Documents; la segunda comprende Company Administration, Workspaces, Teammates, Company rules, Custom fields, Billing, Preferences y el alcance de acceso. Account Ownership es un subalcance administrativo de Segmento 2, no un segmento adicional.

El **Buyer Portal** está orientado al autoservicio de **Elena Litano** mediante Product Catalog, Product Detail, Request Builder, My Requests, My Orders, Order Detail con tracking y documentos visibles, Payments, Premium y Profile. Payments comunica métodos, crédito, saldo o estado referencial de pago según el alcance disponible, sin presentarse como procesamiento de pagos.

El diseño UX/UI se organiza por user goals y no únicamente por pantallas. Cada recorrido responde a una pregunta del dominio: qué solicitud debe validarse, qué pedido está bloqueado, qué lote requiere atención, qué despacho debe prepararse, qué evidencia falta y qué estado puede consultar el comprador. Por ello, esta sección presenta wireframes, wireflows, mockups y user flows como artefactos conectados.

Para el **Segmento 3 — B2B Buyer Portal**, esta sección articula wireframes documentales, mockups desktop y mobile, rutas canónicas, task flow, wireflow visual y user flow diagramático. Esta cobertura permite relacionar la estructura de las pantallas con la continuidad del recorrido del comprador B2B.

*Criterios UX/UI de Web Application y Buyer Portal*

| Criterio | Aplicación en Web Application / Buyer Portal | Relación con 4.1 / 4.2 |
|---|---|---|
| Jerarquía visual | Dashboards, tablas, drawers, modals y estados priorizan decisiones operativas por flujo | Aplica la jerarquía, color, tipografía y espaciado definidos en 4.1 |
| Arquitectura de información | Módulos y rutas siguen la organización por Segmento 1, Segmento 2 y Segmento 3, incluyendo account ownership dentro del Segmento 2 | Mantiene la estructura de superficies, rutas canónicas y navegación definida en 4.2 |
| Diseño inclusivo | Labels claros, estados textuales, contraste y mensajes de validación reducen ambigüedad | Conecta con los criterios de accesibilidad, tono y lenguaje de 4.1 |
| Design System | Cards, badges, botones, tablas, modals y espaciado se aplican de forma consistente | Usa los patrones visuales y componentes documentados en 4.1 |
| Flujo por user goal | Wireframes, wireflows y user flows se agrupan por objetivo de usuario | Relaciona las vistas con la organización por responsabilidades de negocio de 4.2 |
| Responsive y densidad operativa | Segmento 1 y Segmento 2 priorizan desktop/tablet; Segmento 3 prioriza autoservicio y lectura clara | Conserva la diferenciación de superficies indicada en 4.1 y 4.2 |

> *Nota:* La tabla resume los criterios aplicados al diseño UX/UI de las superficies autenticadas de Nexa. Elaboración propia.

### 4.4.1. Web Applications Wireframes

Los wireframes de la Web Application se organizan por segmento, responsabilidad y flujo de trabajo. Los artefactos visuales existentes cubren los recorridos comerciales y operativos internos; la representación documental del Buyer Portal consolida las pantallas esenciales del recorrido de Elena Litano. El account ownership se integra en Segmento 2 como subalcance administrativo asociado al tenant/workspace.

*Wireframes de la Web Application por segmento*

| Segmento / subalcance | Pantallas documentadas | Recorrido cubierto | Representación en esta sección |
|---|---|---|---|
| Segmento 1 — Commercial Coordination | Login, Sales Dashboard, Purchase Requests, Request Detail, Purchase Orders, Manual Order Entry, Product Catalog, B2B Clients y Business Documents | Ingreso, revisión de solicitudes, lectura de detalle, formalización y seguimiento de órdenes, registro manual, consulta de catálogo, clientes y documentos | Wireframes visuales y cobertura documental del recorrido final |
| Segmento 2 — Operations / Account Owner | Login, Operations Dashboard, Inventory Control, Inventory Lots, Dispatch Orders, Dispatch Detail, Proof of Delivery, Operational Analytics, Business Documents, Company Administration, Workspaces, Teammates, Company rules, Custom fields, Billing y Preferences | Operación logística y rama administrativa de gobierno del tenant/workspace dentro del mismo segmento | Wireframes visuales y cobertura documental de los subalcances operativo y administrativo |
| Segmento 3 — B2B Buyer Portal | Login, Portal Home, Product Catalog, Product Detail, Request Builder, My Requests, Request Detail, My Orders, Order Detail con tracking y documentos visibles, Payments, Premium y Profile | Ingreso, descubrimiento de productos, preparación de solicitud, seguimiento comercial y logístico, consulta referencial de pagos y gestión de cuenta | Representación documental de wireframes, mockups responsive, wireflow y user flow |

> *Nota:* La tabla detalla el alcance de los wireframes documentados en esta sección para cada segmento. Elaboración propia.

#### Segmento 1 — Commercial Coordination

El recorrido de **Valeria Sánchez** cubre el ingreso, Sales Dashboard, revisión de Purchase Requests, lectura del Request Detail, formalización o seguimiento mediante Purchase Orders, Manual Order Entry, consulta de Product Catalog, B2B Clients y Business Documents. Purchase Requests y Purchase Orders constituyen el eje del flujo comercial; el registro manual complementa la atención cuando la solicitud no se origina directamente en el Buyer Portal.

*Wireframe de login para el Segmento 1 — Commercial Coordination*

![Wireframe de login para el Segmento 1 — Commercial Coordination](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-login.jpg)

> *Nota:* La pantalla de ingreso separa el acceso autenticado del recorrido público de la Landing Page. Elaboración propia.

*Wireframe de dashboard comercial para el Segmento 1 — Commercial Coordination*

![Wireframe de dashboard comercial para el Segmento 1 — Commercial Coordination](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-dashboard.jpg)

> *Nota:* El dashboard reúne estado de pedidos, alertas comerciales y accesos a tareas frecuentes. Elaboración propia.

*Wireframe de lista de clientes para el Segmento 1 — Commercial Coordination*

![Wireframe de lista de clientes para el Segmento 1 — Commercial Coordination](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-clientes-lista.jpg)

> *Nota:* La lista permite ubicar clientes y revisar información comercial antes de iniciar o validar un pedido. Elaboración propia.

*Wireframe de detalle de cliente para el Segmento 1 — Commercial Coordination*

![Wireframe de detalle de cliente para el Segmento 1 — Commercial Coordination](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-detalle-cliente.jpg)

> *Nota:* El detalle concentra condiciones, datos relevantes y contexto necesario para decidir si el pedido puede avanzar. Elaboración propia.

*Wireframe de lista de pedidos para el Segmento 1 — Commercial Coordination*

![Wireframe de lista de pedidos para el Segmento 1 — Commercial Coordination](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-pedidos-lista.jpg)

> *Nota:* La bandeja de pedidos ordena estados, prioridades y acceso rápido al detalle. Elaboración propia.

*Wireframe de creación de pedido para el Segmento 1 — Commercial Coordination*

![Wireframe de creación de pedido para el Segmento 1 — Commercial Coordination](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-crear-pedido.jpg)

> *Nota:* La captura inicial del pedido separa cliente, condiciones y datos base para reducir ambigüedad. Elaboración propia.

*Wireframe de selección de productos para el Segmento 1 — Commercial Coordination*

![Wireframe de selección de productos para el Segmento 1 — Commercial Coordination](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-crear-pedido-productos.jpg)

> *Nota:* La selección de productos ayuda a revisar cantidades, disponibilidad y composición del pedido. Elaboración propia.

*Wireframe de resumen de pedido para el Segmento 1 — Commercial Coordination*

![Wireframe de resumen de pedido para el Segmento 1 — Commercial Coordination](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-crear-pedido-resumen.jpg)

> *Nota:* El resumen permite confirmar información antes de registrar o convertir el pedido. Elaboración propia.

*Wireframe de detalle de pedido para el Segmento 1 — Commercial Coordination*

![Wireframe de detalle de pedido para el Segmento 1 — Commercial Coordination](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-detalle-pedido.jpg)

> *Nota:* El detalle sostiene seguimiento comercial y lectura del historial de la orden. Elaboración propia.

*Wireframe de reportes para el Segmento 1 — Commercial Coordination*

![Wireframe de reportes para el Segmento 1 — Commercial Coordination](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-reportes.jpg)

> *Nota:* Los reportes comerciales consolidan información para revisar actividad, pedidos y desempeño del flujo. Elaboración propia.

#### Segmento 2 — Operations / Account Owner

El recorrido de **Roberto García** cubre Operations Dashboard, Inventory Control, Inventory Lots, Dispatch Orders, Dispatch Detail, Proof of Delivery, Operational Analytics y Business Documents. Como soporte del mismo segmento, Account Ownership incorpora Company Administration y las opciones administrativas visibles para gobernar tenant/workspace, usuarios, reglas, custom fields, billing y preferences. Estas opciones no implican persistencia completa cuando el flujo no ha sido comprobado de extremo a extremo.

*Wireframe de login para el Segmento 2 — Operations / Account Owner*

![Wireframe de login para el Segmento 2 — Operations / Account Owner](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-login.jpg)

> *Nota:* El acceso mantiene la separación por perfil antes de entrar a módulos operativos. Elaboración propia.

*Wireframe de dashboard logístico para el Segmento 2 — Operations / Account Owner*

![Wireframe de dashboard logístico para el Segmento 2 — Operations / Account Owner](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-dashboard-logistica.jpg)

> *Nota:* El dashboard logístico prioriza pedidos en riesgo, inventario, preparación y despacho. Elaboración propia.

*Wireframe de inventario general para el Segmento 2 — Operations / Account Owner*

![Wireframe de inventario general para el Segmento 2 — Operations / Account Owner](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-inventario-vista-general.jpg)

> *Nota:* La vista general muestra disponibilidad, clasificación y señales operativas de inventario. Elaboración propia.

*Wireframe de inventario por lote para el Segmento 2 — Operations / Account Owner*

![Wireframe de inventario por lote para el Segmento 2 — Operations / Account Owner](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-inventario-por-lote.jpg)

> *Nota:* La lectura por lote facilita priorización FEFO y revisión de riesgo. Elaboración propia.

*Wireframe de detalle de lote para el Segmento 2 — Operations / Account Owner*

![Wireframe de detalle de lote para el Segmento 2 — Operations / Account Owner](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-detalle-lote.jpg)

> *Nota:* El detalle permite revisar condiciones específicas del lote antes de tomar acción operativa. Elaboración propia.

*Wireframe de creación o revisión operativa de pedido para el Segmento 2 — Operations / Account Owner*

![Wireframe de creación o revisión operativa de pedido para el Segmento 2 — Operations / Account Owner](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-crear-pedido-v2.jpg)

> *Nota:* Esta pantalla conecta información de pedido con revisión operativa y disponibilidad. Elaboración propia.

*Wireframe de despacho con pedidos listos para salir*

![Wireframe de despacho con pedidos listos para salir](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-despacho-listos-para-salir.jpg)

> *Nota:* El tablero de despacho agrupa pedidos listos y facilita priorizar salida. Elaboración propia.

*Wireframe de registro de salida para el Segmento 2 — Operations / Account Owner*

![Wireframe de registro de salida para el Segmento 2 — Operations / Account Owner](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-despacho-modal-registro.jpg)

> *Nota:* El registro recoge datos necesarios para dejar constancia del despacho. Elaboración propia.

*Wireframe de notificación de despacho para el Segmento 2 — Operations / Account Owner*

![Wireframe de notificación de despacho para el Segmento 2 — Operations / Account Owner](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-despacho-notificacion.jpg)

> *Nota:* La notificación confirma que el cambio de estado fue comunicado dentro del flujo. Elaboración propia.

*Wireframe de confirmación de despacho para el Segmento 2 — Operations / Account Owner*

![Wireframe de confirmación de despacho para el Segmento 2 — Operations / Account Owner](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-despacho-confirmacion.jpg)

> *Nota:* La confirmación permite cerrar el paso operativo de salida y mantener trazabilidad. Elaboración propia.

*Wireframe de reportes operativos para el Segmento 2 — Operations / Account Owner*

![Wireframe de reportes operativos para el Segmento 2 — Operations / Account Owner](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-reportes-operativos-v2.jpg)

> *Nota:* Los reportes operativos consolidan indicadores de inventario, despacho y cierre. Elaboración propia.

##### Subalcance administrativo de Segmento 2 — Account Ownership

Account Ownership representa una responsabilidad administrativa dentro de **Segmento 2 — Operations / Account Owner** y no crea un cuarto segmento. Su experiencia se relaciona con Company Administration, Workspaces, Teammates, Company rules, Custom fields, Billing, Preferences y alcance de acceso. A nivel UX/UI, estas vistas distinguen la configuración del tenant/workspace de las tareas operativas y presentan las opciones visibles de administración de acuerdo con los permisos del perfil.

La representación visual del subalcance mantiene los patrones internos definidos en 4.1 y 4.2: formularios de configuración, tablas de usuarios, estados de plan, mensajes de restricción y navegación autenticada con contexto de empresa activa.

#### Segmento 3 — B2B Buyer Portal

El recorrido del Segmento 3 — B2B Buyer Portal corresponde a Elena Litano como compradora B2B. Dentro del ecosistema Nexa, este segmento se materializa mediante el Buyer Portal, cuyo propósito es reducir dependencia de WhatsApp, llamadas o coordinación manual para consultar catálogo, enviar solicitudes y revisar pedidos.

Los wireframes del Segmento 3 se presentan como una secuencia visual directa, siguiendo el mismo criterio usado en los segmentos anteriores: subtítulo del wireframe, imagen correspondiente y nota explicativa. El orden responde al flujo principal del comprador dentro del portal: inicio, consulta de catálogo, construcción de solicitud, revisión de solicitudes, seguimiento de órdenes, consulta referencial de pagos, beneficios premium y gestión de perfil.

*Wireframe de Home para el Segmento 3 — B2B Buyer Portal*

![Wireframe de Home para el Segmento 3 — B2B Buyer Portal](../assets/images/chapter-4/webapp/wireframes/s3-b2b-buyer-portal/home-s3.png)

> *Nota:* La pantalla Home, ubicada en la ruta `/portal/home`, funciona como punto de orientación del comprador B2B, mostrando accesos rápidos a catálogo, solicitudes, órdenes recientes y acciones principales del portal. Elaboración propia.

*Wireframe de Catalog para el Segmento 3 — B2B Buyer Portal*

![Wireframe de Catalog para el Segmento 3 — B2B Buyer Portal](../assets/images/chapter-4/webapp/wireframes/s3-b2b-buyer-portal/catalog-s3.png)

> *Nota:* La pantalla Catalog, ubicada en la ruta `/portal/product-catalog`, permite explorar productos disponibles, revisar información básica y avanzar hacia la selección de productos para una solicitud. Elaboración propia.

*Wireframe de Request Builder para el Segmento 3 — B2B Buyer Portal*

![Wireframe de Request Builder para el Segmento 3 — B2B Buyer Portal](../assets/images/chapter-4/webapp/wireframes/s3-b2b-buyer-portal/request-builder-s3.png)

> *Nota:* La pantalla Request Builder, ubicada en la ruta `/portal/request-builder`, concentra la selección de productos, cantidades, datos de entrega y confirmación previa al envío, reduciendo la dependencia de coordinación manual. Elaboración propia.

*Wireframe de My Requests para el Segmento 3 — B2B Buyer Portal*

![Wireframe de My Requests para el Segmento 3 — B2B Buyer Portal](../assets/images/chapter-4/webapp/wireframes/s3-b2b-buyer-portal/my-requests-s3.png)

> *Nota:* La pantalla My Requests, ubicada en la ruta `/portal/purchase-requests`, permite consultar solicitudes enviadas, revisar su estado y acceder al detalle cuando se requiere mayor trazabilidad comercial. Elaboración propia.

*Wireframe de Orders para el Segmento 3 — B2B Buyer Portal*

![Wireframe de Orders para el Segmento 3 — B2B Buyer Portal](../assets/images/chapter-4/webapp/wireframes/s3-b2b-buyer-portal/orders-s3.png)

> *Nota:* La pantalla Orders, ubicada en la ruta `/portal/purchase-orders`, presenta las órdenes confirmadas y permite al comprador seguir el avance de atención, preparación, despacho o entrega según el estado disponible. Elaboración propia.

*Wireframe de Payments para el Segmento 3 — B2B Buyer Portal*

![Wireframe de Payments para el Segmento 3 — B2B Buyer Portal](../assets/images/chapter-4/webapp/wireframes/s3-b2b-buyer-portal/payments-s3.png)

> *Nota:* La pantalla Payments, ubicada en la ruta `/portal/payment-methods`, comunica información referencial de métodos, crédito, saldo o estado de pago según el alcance del portal, sin representarse como procesamiento directo de pagos. Elaboración propia.

*Wireframe de Premium para el Segmento 3 — B2B Buyer Portal*

![Wireframe de Premium para el Segmento 3 — B2B Buyer Portal](../assets/images/chapter-4/webapp/wireframes/s3-b2b-buyer-portal/premium-s3.png)

> *Nota:* La pantalla Premium, ubicada en la ruta `/portal/premium`, expone beneficios comerciales, promociones o condiciones destacadas para reforzar la propuesta de valor del portal dentro de la experiencia del comprador. Elaboración propia.

*Wireframe de Profile para el Segmento 3 — B2B Buyer Portal*

![Wireframe de Profile para el Segmento 3 — B2B Buyer Portal](../assets/images/chapter-4/webapp/wireframes/s3-b2b-buyer-portal/profile-s3.png)

> *Nota:* La pantalla Profile, ubicada en la ruta `/portal/profile`, permite revisar datos de cuenta, información del comprador y configuración básica asociada al acceso autenticado del portal. Elaboración propia.

### 4.4.2. Web Applications Wireflow Diagrams

Los wireflows conectan pantallas, decisiones y estados de interfaz. En Nexa se organizan por user goal para mantener trazabilidad entre el needfinding, la arquitectura de información, los mockups y la solución diseñada.

*Wireflows por user goal*

| User goal | Segmento y persona | Task flow resumido | Tipo de artefacto documentado | Explicación |
|---|---|---|---|---|
| Validar solicitudes, formalizar órdenes y registrar pedidos comerciales | Segmento 1 — Valeria Sánchez | Login → Sales Dashboard → Purchase Requests → Request Detail → Purchase Orders → Order Detail → Manual Order Entry → Product Catalog → B2B Clients → Business Documents | Lucidchart del Segmento 1 | El recorrido conecta la validación comercial con la formalización, el registro manual y la consulta de información de soporte |
| Supervisar la operación logística y el gobierno administrativo del workspace | Segmento 2 — Roberto García | Login → Operations Dashboard → Inventory Control → Inventory Lots → Dispatch Orders → Dispatch Detail → Proof of Delivery → Operational Analytics → Business Documents → Company Administration / Workspaces / Teammates / Rules / Custom fields / Billing / Preferences | Lucidchart del Segmento 2 | El recorrido integra una rama operativa y una rama administrativa dentro del mismo segmento Segmento 2 |
| Consultar catálogo, enviar una solicitud y seguir su atención | Segmento 3 — Elena Litano | Login → Portal Home → Product Catalog → Product Detail → Request Builder → My Requests → Request Detail → My Orders → Order Detail / Tracking / visible documents → Payments → Profile | Wireflow visual del Segmento 3 | El recorrido representa la experiencia de autoservicio del comprador B2B y mantiene los documentos dentro del detalle de la orden |

> *Nota:* La tabla describe los flujos secuenciales y objetivos de usuario cubiertos por cada wireflow. Elaboración propia.

Los wireflows visuales se mantienen por segmento. En Segmento 2, el account ownership se entiende como una rama administrativa dentro del mismo flujo del segmento, no como un segmento adicional.

*Wireflow principal para el Segmento 1 — Commercial Coordination*

![Wireflow principal del Segmento 1 — Commercial Coordination](../assets/images/chapter-4/webapp/wireflows/wireflow-s1.jpeg)

> *Nota:* El wireflow muestra la continuidad visual del flujo comercial de Valeria y se interpreta junto con la cobertura final de Purchase Requests, Purchase Orders, Manual Order Entry, catálogo, clientes y documentos. Elaboración propia.

*Wireflow principal para el Segmento 2 — Operations / Account Owner*

![Wireflow principal del Segmento 2 — Operations / Account Owner](../assets/images/chapter-4/webapp/wireflows/wireflow-s2-jefatura-logistica-coordinacion-operativa.png)

> *Nota:* El wireflow muestra la continuidad visual de la rama operativa de Roberto; la rama administrativa de account ownership pertenece al mismo Segmento 2. Elaboración propia.

*Wireflow principal para el Segmento 3 — B2B Buyer Portal*

![Wireflow principal del Segmento 3 — B2B Buyer Portal](../assets/images/chapter-4/webapp/wireflows/wireflow-s3-b2b-buyer-portal.png)

> *Nota:* El wireflow muestra la continuidad visual del Segmento 3 desde el login de Elena hasta catálogo, detalle de producto, Request Builder, solicitudes, órdenes, tracking, documentos visibles dentro del detalle y Payments. Elaboración propia.

### 4.4.3. Web Applications Mock-ups

Los mockups consolidan las pantallas representativas del flujo final de la Web Application interna y el Buyer Portal. Se agrupan por segmento y user goal para evidenciar jerarquía, navegación, componentes y estados sin convertir el capítulo en una galería extensa.

*Grupos de mockups por segmento*

| Grupo de mockups | Segmento / subalcance | User goal | Pantallas incluidas | Propósito |
|---|---|---|---|---|
| Segmento 1 | Segmento 1 — Commercial Coordination | Validar solicitudes, formalizar órdenes y atender pedidos | Login, Sales Dashboard, Purchase Requests, Request Detail, Purchase Orders, Manual Order Entry, Product Catalog, B2B Clients y Business Documents | Evidenciar decisiones comerciales, trazabilidad y acciones principales del flujo de Valeria |
| Segmento 2 | Segmento 2 — Operations / Account Owner | Supervisar operación logística y configuración del workspace | Operations Dashboard, Inventory Control, Inventory Lots, Dispatch Orders, Dispatch Detail, Proof of Delivery, Operational Analytics, Business Documents, Company Administration, Workspaces, Teammates, Company rules, Custom fields, Billing y Preferences | Evidenciar las ramas operativa y administrativa de Roberto dentro de un único segmento |
| Segmento 3 | Segmento 3 — B2B Buyer Portal | Preparar solicitudes y consultar su seguimiento | Portal Home, Product Catalog, Product Detail, Request Builder, My Requests, My Orders, Order Detail con tracking y documentos visibles, Payments, Premium y Profile | Evidenciar el autoservicio del comprador B2B y la continuidad entre catálogo, solicitud y orden |

> *Nota:* La tabla resume las pantallas de alta fidelidad mostradas para cada segmento. Elaboración propia.

#### Segmento 1 — Commercial Coordination: mockups de pedido asistido

*Mockups de pedido asistido para el Segmento 1 — Commercial Coordination*

![Mockups del Segmento 1 — Commercial Coordination](../assets/images/chapter-4/webapp/mockups/sales.png)

> *Nota:* Este grupo consolida las pantallas representativas del flujo comercial final: acceso, dashboard, solicitudes, órdenes, registro manual, catálogo, clientes y documentos. Elaboración propia.

#### Segmento 2 — Operations / Account Owner: mockups de operación logística

*Mockups de operación logística para el Segmento 2 — Operations / Account Owner*

![Mockups del Segmento 2 — Operations / Account Owner](../assets/images/chapter-4/webapp/mockups/operations.png)

> *Nota:* Este grupo consolida la rama operativa de inventario, despacho, evidencia de entrega registrada o referencial según alcance y analítica, junto con el subalcance administrativo del workspace dentro de Segmento 2. Elaboración propia.

#### Segmento 3 — B2B Buyer Portal: mockups de autoservicio B2B

*Mockups de autoservicio para el Segmento 3 — B2B Buyer Portal*

![Mockups del Segmento 3 — B2B Buyer Portal](../assets/images/chapter-4/webapp/mockups/b2b.png)

> *Nota:* Este grupo consolida las pantallas representativas del flujo final de Elena: home, catálogo, detalle, Request Builder, solicitudes, órdenes, tracking con documentos visibles, Payments, Premium y Profile. Elaboración propia.

**Vistas de Dispositivo Móvil (Mobile Mockups)**:

La cobertura responsive valida navegación compacta, lectura vertical, cards apiladas, tablas con desplazamiento horizontal cuando corresponde, acciones principales visibles, menor densidad textual y continuidad visual con desktop. Los Segmentos 1 y 2 priorizan desktop/tablet por la densidad de sus tareas; en mobile se favorecen consulta, revisión y acciones acotadas. El Segmento 3 recibe mayor prioridad mobile por su carácter de autoservicio para compradores B2B.

#### Segmento 1 — Commercial Coordination: mockups de pedido asistido

*Mockups mobile del Segmento 1 — Commercial Coordination*

![Mockups mobile del Segmento 1 — Commercial Coordination](../assets/images/chapter-4/webapp/mockups/sales-mobile.png)

> *Nota:* La imagen evidencia navegación compacta y consulta comercial en pantallas pequeñas, manteniendo desktop/tablet como superficie principal para tareas complejas de Segmento 1. Elaboración propia.

#### Segmento 2 — Operations / Account Owner: mockups de operación logística

*Mockups mobile del Segmento 2 — Operations / Account Owner*

![Mockups mobile del Segmento 2 — Operations / Account Owner](../assets/images/chapter-4/webapp/mockups/operations-mobile.png)

> *Nota:* La imagen evidencia consulta y revisión operativa en pantallas pequeñas, mientras las tareas de mayor densidad de Segmento 2 priorizan desktop/tablet. Elaboración propia.

#### Segmento 3 — B2B Buyer Portal: mockups de autoservicio B2B

*Mockups mobile del Segmento 3 — B2B Buyer Portal*

![Mockups mobile del Segmento 3 — B2B Buyer Portal](../assets/images/chapter-4/webapp/mockups/b2b-mobile.png)

> *Nota:* La imagen evidencia la adaptación responsive del autoservicio B2B, con lectura vertical, acciones visibles y continuidad con la experiencia desktop. Elaboración propia.

### 4.4.4. Web Applications User Flow Diagrams

#### Criterios de resolución de flujo

Para mantener trazabilidad entre investigación, diseño y solución, los recorridos de la Web Application se documentan en cuatro niveles: User Goal, Task Flow, Wireflow y User Flow. La lectura se mantiene por segmento para no mezclar responsabilidades entre Segmento 1, Segmento 2 y Segmento 3, considerando el account ownership como subalcance administrativo del Segmento 2.

*Niveles de resolución de flujo aplicados en Nexa*

| Nivel | Aplicación en Nexa | Representación en esta sección |
|---|---|---|
| **User Goal** | Objetivo operativo de cada persona dentro del flujo B2B refrigerado | Objetivos del Segmento 1, Segmento 2 y Segmento 3 derivados del needfinding, con alcance administrativo del Segmento 2 (account ownership) asociado al tenant/workspace |
| **Task Flow** | Secuencia de acciones necesarias para completar solicitud, validación, despacho o seguimiento | Tabla por segmento |
| **Wireflow** | Continuidad visual entre pantallas de la Web Application | Lucidchart del Segmento 1, Segmento 2 y Segmento 3 |
| **User Flow** | Decisiones, rutas alternativas y estados del recorrido | Diagramas visuales Lucidchart para los flujos principales de Web Application y Buyer Portal |

> *Nota:* La tabla resume la correspondencia entre los niveles de flujo e investigación. Elaboración propia.

*User Goals, Task Flows y referencias de flujo por segmento*

| Segmento / subalcance | Persona | User Goal | Resumen de task flow | Wireflow | User Flow |
|---|---|---|---|---|---|
| Segmento 1 | Valeria Sánchez | Validar solicitudes, formalizar órdenes y atender pedidos comerciales | Login → Sales Dashboard → Purchase Requests → Request Detail → decisión: approve / observe / reject → Purchase Orders → Order Detail → Manual Order Entry → Product Catalog → B2B Clients → Business Documents | https://cutt.ly/9t61yC5n | User flow del Segmento 1 en Lucidchart |
| Segmento 2 | Roberto García | Supervisar operación logística y gobierno del workspace | Rama operativa: Operations Dashboard → Inventory Control → Inventory Lots → Dispatch Orders → Dispatch Detail → Proof of Delivery → Operational Analytics → Business Documents.<br>Rama administrativa: Company Administration → Workspaces → Teammates → Company rules → Custom fields → Billing → Preferences | https://cutt.ly/et61yzL4 | User flow del Segmento 2 en Lucidchart |
| Segmento 3 | Elena Litano | Preparar una solicitud y consultar el avance de su atención | Login → Portal Home → Product Catalog → Product Detail → Request Builder → Submit Request → My Requests → Request Detail → My Orders → Order Detail / Tracking / visible documents → Payments → Profile | https://cutt.ly/Qt61t8oH | User flow del Segmento 3 en Lucidchart |

> *Nota:* La tabla detalla los enlaces Lucidchart y flujos conceptuales para cada segmento. Elaboración propia.

El User Flow de Segmento 2 se interpreta como un único flujo con dos ramas complementarias: una operativa y otra administrativa. Ambas pertenecen a **Segmento 2 — Operations / Account Owner**; Account Ownership no constituye un segmento adicional.

#### User Flow Segmento 1 — Commercial Coordination: validación y pedido asistido

El user flow del Segmento 1 representa el recorrido de Valeria desde el acceso al sistema hasta la atención comercial. La secuencia conecta Sales Dashboard, Purchase Requests y Request Detail con el punto de decisión de aprobar, observar o rechazar; luego continúa hacia Purchase Orders, Order Detail, Manual Order Entry, Product Catalog, B2B Clients y Business Documents.

https://cutt.ly/At61uc58

*User flow visual para el Segmento 1 — Commercial Coordination*

![User flow del Segmento 1 — Commercial Coordination](../assets/images/chapter-4/webapp/user-flows/s1-userflow.png)

> *Nota:* El diagrama representa el user flow del Segmento 1 para validación y pedidos. Elaboración propia.

#### User Flow Segmento 2 — Operations / Account Owner: inventario, despacho y gobierno del workspace

El user flow del Segmento 2 representa el recorrido de Roberto mediante dos ramas del mismo segmento. La rama operativa conecta Operations Dashboard, Inventory Control, Inventory Lots, Dispatch Orders, Dispatch Detail, Proof of Delivery, Operational Analytics y Business Documents. La rama administrativa conecta Company Administration, Workspaces, Teammates, Company rules, Custom fields, Billing y Preferences como opciones visibles de gobierno del tenant/workspace.

https://cutt.ly/Et61u1Sj

*User flow visual para el Segmento 2 — Operations / Account Owner*

![User flow del Segmento 2 — Operations / Account Owner](../assets/images/chapter-4/webapp/user-flows/s2-userflow.png)

> *Nota:* El diagrama representa el user flow del Segmento 2 para control de inventario y despacho. Elaboración propia.

#### User Flow Segmento 3 — B2B Buyer Portal: solicitud, pedido y seguimiento

El user flow del Segmento 3 representa el recorrido de Elena como compradora B2B: Login, Portal Home, Product Catalog, Product Detail, Request Builder, envío de solicitud, My Requests, Request Detail, My Orders, Order Detail con tracking y documentos visibles, Payments y Profile. Los documentos se consultan dentro del detalle de orden, mientras Payments presenta métodos, crédito, saldo o estado referencial de pago según el alcance disponible.

[https://cutt.ly/ft40ZCeu](https://cutt.ly/ft40ZCeu)

*User flow documentado para el Segmento 3 — B2B Buyer Portal*

![User flow del Segmento 3 — B2B Buyer Portal](../assets/images/chapter-4/webapp/user-flows/s3-userflow.png)

> *Nota:* El diagrama representa el user flow del Segmento 3 para navegación y compra en el portal. Elaboración propia.
