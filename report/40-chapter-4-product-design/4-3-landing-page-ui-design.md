## 4.3. Landing Page UI Design

La Landing Page es la superficie pública de entrada al ecosistema Nexa. El website final articula las páginas **Home**, **Platform**, **Buyer Portal**, **Solutions**, **Importers & Wholesalers**, **Distributors**, **Cold Storage Operators**, **Company**, **Pricing**, **FAQ**, **About the Product**, **About the Team**, **Terms**, **Privacy** y **Cookies**. Su función es comunicar la propuesta de valor, explicar el problema operativo que resuelve Nexa y orientar a cada visitante hacia contenido, registro o acceso.

Esta sección traduce las decisiones definidas en **4.1 Style Guidelines** y **4.2 Information Architecture** hacia una propuesta visual concreta. La Landing Page no replica las pantallas internas de la Web Application ni del Buyer Portal; su objetivo es presentar el valor de Nexa mediante una narrativa clara, jerarquía visual consistente, CTAs visibles, lenguaje profesional, contacto identificable, canales de confianza y adaptación responsive.

La propuesta visual documentada mantiene correspondencia con la composición pública del producto y se concentra en sus decisiones de UI, wireframes y mockups. Los CTAs principales conectan **Register workspace / Registrar workspace** con la ruta funcional canónica `/tenant-management/register-organization` y **Login / Ingresar** con `/auth/login`.

El mensaje principal de la Landing Page resume la promesa de Nexa: **coordinar pedidos B2B refrigerados con mayor visibilidad entre compra, ventas, inventario y despacho**. A partir de ese pitch message, la interfaz organiza el contenido en una secuencia progresiva: problema operativo, propuesta de valor, capacidades de la plataforma, rutas por tipo de empresa, confianza institucional, preguntas frecuentes y puntos de conversión.

Cada elemento del sitio público mantiene continuidad narrativa con una capacidad del producto. Las páginas de **Solutions** organizan la comunicación por tipo de empresa interesada y no reemplazan los segmentos formales S1, S2 y S3. La Landing Page comunica propuesta, acceso y conversión; los procesos internos de Sales, Logistics y Buyer Portal ocurren después en la WebApp según perfil, tenant/workspace y alcance de permisos.

*Continuidad entre Landing Page y producto*

| Elemento de la Landing Page | Intención de diseño | Continuidad en el producto | Superficie relacionada |
|---|---|---|---|
| Home | Comunicar la propuesta central de visibilidad operativa para charcutería, lácteos y cadena de frío | Introduce problemas, beneficios y accesos principales | Website público |
| Platform | Explicar catálogo, solicitudes, inventario, órdenes, temperatura, despacho y trazabilidad | Anticipa las capacidades que se organizan posteriormente en la WebApp | Website público |
| Buyer Portal | Comunicar el valor del autoservicio para compradores B2B | Da continuidad conceptual a Product Catalog, Request Builder, My Requests y My Orders | Website / Buyer Portal |
| Solutions | Organizar la propuesta comercial por tipo de empresa | Conduce a Importers & Wholesalers, Distributors y Cold Storage Operators | Website público |
| Pricing | Presentar planes y capacidades de forma comparable | Orienta hacia contacto o registro sin representar cobro dentro del Website | Website público |
| Company / FAQ | Reforzar confianza y resolver dudas de decisión | Aporta contexto institucional, soporte y acceso al contacto | Website público |
| About the Product | Resumir alcance, problema y beneficios del producto | Explica la continuidad general entre Website y WebApp | Website público |
| About the Team | Presentar al equipo responsable | Refuerza confianza y transparencia | Website público |
| Terms / Privacy / Cookies | Proporcionar soporte legal y ético desde el footer | Informa condiciones, privacidad y uso del estado local | Footer legal |
| Contact / demo form | Facilitar el contacto comercial mediante datos y mensaje | Abre el cliente de correo con la información preparada | Company |
| Register workspace | Convertir interés en inicio de onboarding | Conecta con Tenant Management público | `/tenant-management/register-organization` |
| Login | Dar acceso a usuarios existentes | Conecta con autenticación y posterior navegación por rol | `/auth/login` |

> *Nota:* La tabla describe la relación y continuidad entre los elementos públicos y las pantallas del producto. Elaboración propia.

#### Decisiones UI aplicadas en la Landing Page

*Decisiones UI aplicadas en la Landing Page*

| Decisión de diseño | Aplicación en la Landing Page | Relación con arquitectura de información |
|---|---|---|
| Jerarquía visual | Hero con pitch message, subtítulo, CTAs y bloques de valor | Prioriza comprensión rápida antes de navegación profunda |
| Navegación global | Navbar y navegación complementaria con Platform, Buyer Portal, Solutions, Company, Pricing, FAQ, About the Product, About the Team, Register workspace y Login | Refuerza la jerarquía pública y las rutas canónicas definidas en 4.2 |
| Segmentación comercial | Solutions organiza rutas para importadores, distribuidores y operadores de cámaras frías | Permite explicar la propuesta por tipo de empresa interesada |
| Conversión | CTAs visibles y consistentes para Register workspace, Login y contacto comercial | Conecta navegación pública con registro, autenticación o conversación comercial |
| Cards y comparación | Cards para capacidades, beneficios, soluciones y comparación de planes | Facilita reconocimiento, agrupación temática y lectura escaneable |
| Contacto y confianza | Company, FAQ, About the Product, About the Team y footer legal concentran información institucional y soporte | Reduce incertidumbre antes de compartir datos comerciales |
| Consistencia visual | Tipografía, color primario, espaciado, cards, estados y botones definidos en 4.1 | Mantiene continuidad con el Design System de Nexa |
| Diseño inclusivo | Texto legible, contraste, CTAs identificables, labels claros y navegación simple | Reduce fricción para visitantes con distintos niveles de familiaridad tecnológica |
| Responsive design | Adaptación de hero, navegación, cards, CTAs y secciones a una lectura vertical en mobile | Permite que la experiencia pública funcione en desktop y mobile |
| Continuidad con producto | Navegación pública, rutas canónicas, páginas legales y CTAs conectan con registro y login | Mantiene continuidad con 4.2 sin presentar funciones internas como acciones del Website |

> *Nota:* La tabla detalla las decisiones de diseño aplicadas para estructurar y presentar el sitio público de Nexa. Elaboración propia.

*Criterios de wireframe y mockup*

| Criterio | Aplicación en wireframe | Aplicación en mockup | Relación con 4.1 / 4.2 |
|---|---|---|---|
| Jerarquía visual | Ordena hero, problema, solución y CTA antes de contenidos secundarios | Refuerza jerarquía con escala tipográfica, color, contraste y espaciado | Aplica la jerarquía visual definida en 4.1 y la navegación progresiva de 4.2 |
| Arquitectura de información | Distribuye navegación en Platform, Buyer Portal, Solutions, Company, Pricing, FAQ y soporte institucional/legal | Mantiene la misma estructura con señales visuales, secciones y CTAs consistentes | Alinea la Landing Page con los sistemas de organización y navegación de 4.2 |
| Diseño inclusivo | Define labels claros, lectura progresiva y bloques reconocibles | Aplica contraste, botones identificables y composición legible | Conecta con accesibilidad, tono y principios visuales de 4.1 |
| Responsive design | Plantea navegación colapsada, hero compacto y stack vertical | Valida adaptación mobile con menor densidad y continuidad visual | Responde a la orientación responsive descrita en 4.1 y 4.2 |
| Conversión | Ubica CTAs hacia registro, login o contacto dentro del recorrido | Hace visibles las acciones principales sin saturar la interfaz | Vincula la narrativa pública con `/tenant-management/register-organization` y `/auth/login` |
| Consistencia con Design System | Define estructura reutilizable para cards, secciones y CTA | Aplica colores, tipografía, botones, cards y espaciado definidos en 4.1 | Mantiene continuidad visual entre diseño, arquitectura de información y producto |

> *Nota:* La tabla resume la aplicación de criterios del Design System y arquitectura en wireframes y mockups. Elaboración propia.

### 4.3.1. Landing Page Wireframe

La Landing Page de Nexa se trabajó primero en **Figma** mediante wireframes de baja fidelidad. Estos artefactos definen la estructura base de navegación, jerarquía visual, ubicación de CTAs, páginas de solución y adaptación responsive; no constituyen capturas finales de implementación.

Los wireframes permiten validar la arquitectura de información sin distraer la revisión con colores, imágenes o estilos finales. La prioridad fue comprobar que el visitante pueda entender el problema, reconocer el tipo de operación al que pertenece, revisar la plataforma y encontrar una vía clara de contacto o acceso.

La revisión se divide en **Desktop Web Browser** y **Mobile Web Browser**, manteniendo la misma lógica de lectura: propuesta de valor, explicación de capacidades, rutas comerciales, confianza y conversión.

#### A. Desktop Web Browser

*Wireframes desktop de la Landing Page*

| Wireframe | Propósito de validación |
|---|---|
| Home | Validar la jerarquía inicial: problema, propuesta de valor, CTA y bloques principales |
| Platform | Validar la explicación funcional de la plataforma sin entrar a pantallas autenticadas |
| Solutions Hub | Validar la separación de rutas comerciales por tipo de operación |
| Company | Validar confianza, contexto del equipo y acceso al contacto |
| Distributors | Validar la comunicación del flujo principal B2B: pedido, inventario, despacho y evidencia |
| Importers & Wholesalers | Validar el mensaje para operaciones con abastecimiento, stock y lotes |
| FAQ | Validar agrupación de dudas frecuentes y reducción de fricción previa al contacto |

> *Nota:* La tabla detalla el propósito de validación de cada wireframe de escritorio. Elaboración propia.

La página **Cold Storage Operators** reutiliza la misma plantilla de solución validada en las rutas de **Distributors** e **Importers & Wholesalers**, por lo que comparte estructura de hero, problema, propuesta de valor, capacidades y CTA.

*Wireframe desktop de Home*

![Wireframe desktop de Home](../assets/images/chapter-4/landing/wireframes/desktop/home-wireframe.jpg)

> *Nota:* La portada organiza hero, propuesta principal, CTA y primeros bloques de valor para un visitante que llega por primera vez al sitio. Elaboración propia.

*Wireframe desktop de Platform*

![Wireframe desktop de Platform](../assets/images/chapter-4/landing/wireframes/desktop/platform-wireframe.jpg)

> *Nota:* La página Platform ordena módulos, beneficios funcionales y lectura general de la solución sin entrar todavía a pantallas autenticadas. Elaboración propia.

*Wireframe desktop de Solutions*

![Wireframe desktop de Solutions](../assets/images/chapter-4/landing/wireframes/desktop/solutions-wireframe.jpg)

> *Nota:* El hub de Solutions separa rutas públicas para visitantes interesados en distribución, importación, mayoristas y cámaras frías. Elaboración propia.

*Wireframe desktop de Company*

![Wireframe desktop de Company](../assets/images/chapter-4/landing/wireframes/desktop/company-wireframe.jpg)

> *Nota:* La página Company da contexto institucional al proyecto, presenta confianza y mantiene una vía clara hacia el contacto comercial. Elaboración propia.

*Wireframe desktop de Distribuidores*

![Wireframe desktop de Distribuidores](../assets/images/chapter-4/landing/wireframes/desktop/distributors-wireframe.jpg)

> *Nota:* La ruta para distribuidores enfatiza coordinación de pedidos, visibilidad operativa, despacho y continuidad de atención. Elaboración propia.

*Wireframe desktop de Importadores*

![Wireframe desktop de Importadores](../assets/images/chapter-4/landing/wireframes/desktop/importers-wireframe.jpg)

> *Nota:* La ruta para importadores y mayoristas prioriza abastecimiento, disponibilidad, lotes e inventario para operaciones B2B. Elaboración propia.

*Wireframe desktop de FAQ*

![Wireframe desktop de FAQ](../assets/images/chapter-4/landing/wireframes/desktop/faq-wireframe.jpg)

> *Nota:* La página FAQ organiza dudas frecuentes sobre acceso, uso, alcance del producto, seguridad, implementación y contacto comercial. Elaboración propia.

#### B. Mobile Web Browser

La versión móvil conserva la misma secuencia pública, pero reduce densidad visual y concentra navegación, lectura de propuesta y CTA en una estructura vertical más compacta. La prioridad mobile es que el visitante pueda comprender rápidamente qué hace Nexa, acceder al menú, revisar el mensaje principal y llegar al CTA sin depender de una pantalla amplia.

La vista mobile de Home funciona como muestra representativa del patrón responsive aplicado a la Landing Page. Este patrón considera navegación colapsada, hero compacto, CTAs visibles, secciones en stack vertical, lectura progresiva, menor densidad visual y continuidad con la arquitectura de información definida en 4.2.

*Criterios mobile del wireframe*

| Criterio mobile | Aplicación esperada |
|---|---|
| Navegación | Menú colapsado con acceso a rutas principales |
| Lectura | Secciones en stack vertical con títulos breves |
| CTA | Botones visibles y con área táctil suficiente |
| Jerarquía | Hero, problema, solución y contacto en orden progresivo |
| Accesibilidad | Contraste, labels claros y elementos interactivos reconocibles |

> *Nota:* La tabla resume los criterios aplicados para adaptar la interfaz pública a dispositivos móviles. Elaboración propia.

*Wireframe mobile de Home*

![Wireframe mobile de Home](../assets/images/chapter-4/landing/wireframes/mobile/home-wireframe.jpg)

> *Nota:* La versión móvil concentra hero, navegación compacta, bloques principales y cierre comercial en una lectura continua. Elaboración propia.

### 4.3.2. Landing Page Mock-up

Una vez definida la estructura, los mockups consolidan la composición visual de la Landing Page final: tratamiento visual, jerarquía de botones, ritmo de secciones, color, tipografía e identidad de marca. Aplican el Design System de 4.1 y respetan la arquitectura de información de 4.2.

La vista desktop agrupa las páginas públicas principales y la vista mobile evidencia la adaptación responsive del sistema visual. Ambas documentan color, tipografía, espaciado, contraste, cards, CTAs, bloques informativos y consistencia entre páginas.

#### A. Desktop Web Browser

*Mockups desktop de la Landing Page*

| Página / vista | Propósito UI | Criterio aplicado |
|---|---|---|
| Home | Presentar propuesta central y accesos | Hero jerárquico, bloques de valor y CTA visible |
| Platform / Buyer Portal | Explicar capacidades y valor para compradores | Cards funcionales y continuidad conceptual con la WebApp |
| Solutions Hub | Orientar por tipo de empresa | Jerarquía clara hacia páginas de solución |
| Importers & Wholesalers / Distributors / Cold Storage Operators | Adaptar el relato comercial a cada operación | Plantilla consistente de hero, beneficios, capacidades y CTA |
| Company / Contact | Generar confianza y facilitar conversación comercial | Información institucional, formulario y feedback contextual |
| Pricing | Comparar planes y capacidades | Cards comparables y orientación hacia registro o contacto |
| FAQ | Resolver dudas frecuentes | Agrupación temática y lectura progresiva |
| About the Product / About the Team | Explicar alcance y presentar al equipo | Narrativa editorial y refuerzo de confianza |
| Terms / Privacy / Cookies | Proporcionar soporte legal y ético | Lectura clara, navegación desde footer y consistencia tipográfica |

> *Nota:* La tabla describe los criterios visuales validados en cada mockup de escritorio. Elaboración propia.

*Mockups de Landing Page*

![Mockups de landing page](../assets/images/chapter-4/landing/mockups/desktop/landing-page.png)

> *Nota:* Mockups de la versión de escritorio de la Landing Page. Elaboración propia.

#### B. Mobile Web Browser

La adaptación móvil mantiene el mismo lenguaje visual del sitio público y prioriza navegación colapsada, hero compacto, CTA visible, lectura vertical, cards apiladas, menor densidad textual, acceso a las páginas públicas principales y footer legal accesible.

El mockup mobile funciona como muestra representativa del patrón responsive aplicado a las páginas públicas principales. Mantiene continuidad visual con desktop y con el sistema de navegación documentado en 4.2, sin atribuir a una sola imagen la cobertura de todas las páginas.

*Criterios UI mobile del mockup*

| Criterio UI mobile | Aplicación en el mockup |
|---|---|
| Hero compacto | Mensaje principal y CTA visibles al inicio |
| Secciones apiladas | Cards y bloques reordenados en una sola columna |
| Navegación táctil | Menú compacto y botones con mayor área de interacción |
| Continuidad visual | Mismos colores, tipografía y estilo de cards que desktop |
| Claridad | Menor densidad textual y mayor separación entre bloques |

> *Nota:* La tabla resume la aplicación visual responsive en el mockup móvil. Elaboración propia.

*Mockup mobile de Home*

![Mockup mobile de Home](../assets/images/chapter-4/landing/mockups/mobile/mobile-landing-mockups.png)

> *Nota:* La captura móvil valida hero, navegación compacta, secciones principales y cierre de contacto en una experiencia responsiva. Elaboración propia.
