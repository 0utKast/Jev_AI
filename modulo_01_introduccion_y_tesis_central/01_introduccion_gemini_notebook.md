# Introducción: De la Revolución Generativa al Paradigma de Decisión de Jev

Aprender en el mundo digital actual es estar viendo caer manzanas y pasar estrellas fugaces a enorme velocidad, la mayoría de las cuales nadie recordará mañana. La clave del aprendizaje actual es desarrollar la habilidad de decidir en un instante a qué manzanas o a qué estrellas prestar atención. Es una habilidad nueva pero imprescindible, y el que no lo entienda, peor para él.

Estos días ha empezado a pasar muy a menudo una de esas estrellas fugaces a la que merece la pena prestar atención. Se trata de **Jev**, una herramienta lanzada hace unas semanas y que ha generado ya una gran expectación en la comunidad de IA generativa.

IA generativa, porque hablar de inteligencia artificial a secas es un término muy impreciso. La informática lleva décadas usando algoritmos inteligentes, desde los sistemas de búsqueda clásicos hasta la lógica básica de videojuegos como *Pong*.

La verdadera revolución que estamos viviendo es la de la **IA generativa**. Con la llegada de los modelos basados en Transformers, las máquinas dejaron de limitarse a clasificar datos para empezar a crear información totalmente nueva, generando texto complejo, código informático e imágenes fotorrealistas con una comprensión del contexto sin precedentes. Por eso, también, seguir hablando de la IA como si fuera un único ente omnipresente es otro sinsentido: hablamos de cientos, de miles de herramientas con usos cada vez más especializados, de los que Jev es un ejemplo más, aunque un buen ejemplo, una estrella que puede que no sea tan fugaz y de la que sigamos hablando durante años.

Porque esta capacidad creadora de la IA generativa trajo consigo un problema imprevisto en el mundo del software, para el que Jev intenta ser ahora una solución. Durante los últimos años se ha intentado usar modelos conversacionales para todo, descubriendo que poner a un redactor de texto a tomar decisiones dentro de un programa informático es muy ineficiente. Esperar varios segundos a que un modelo redacte una frase palabra por palabra solo para saber si un dato es correcto o qué camino debe tomar el código, genera retrasos inasumibles, costes excesivos y riesgo de errores de formato.

Aquí es exactamente donde encaja Jev, desarrollado por **TypeSafe AI**, introduciendo un giro fascinante en esta historia. Aunque Jev nace de los mismos avances que hicieron posible la inteligencia artificial generativa, su gran innovación consiste, precisamente, en renunciar a generar texto.

La industria ha descubierto que para automatizar el software no necesitamos que la máquina redacte respuestas libres continuamente. Jev aprovecha toda la comprensión del contexto que trajeron los Transformers, pero la transforma en un motor de decisiones de tipo **System One**: un componente ultrarrápido y seguro que no genera párrafos ni código nuevo, sino que analiza la información y devuelve decisiones tipadas, estructuradas y calibradas en pocos milisegundos, listas para ser ejecutadas directamente por el software sin intermediarios ni alucinaciones.

---

## El Origen: Diogo Almeida y la Fundación de TypeSafe AI

Para entender por qué el lanzamiento de Jev está generando tanta expectación en la comunidad de inteligencia artificial, es necesario viajar al origen de su empresa creadora, TypeSafe AI, y a la trayectoria de su fundador principal, **Diogo Almeida**.

A comienzos de esta década, dentro de los laboratorios de OpenAI, Diogo Almeida formó parte del equipo de investigadores que resolvió uno de los mayores desafíos del aprendizaje profundo. Modelos como GPT-3 eran extraordinarios prediciendo palabras en internet, pero resultaban impredecibles, caóticos y muy difíciles de controlar en aplicaciones reales. Almeida fue uno de los autores del trabajo sobre **InstructGPT**, que introdujo a gran escala el aprendizaje por refuerzo a partir de retroalimentación humana, conocido como **RLHF** (*Reinforcement Learning from Human Feedback*). Aquella investigación fue el núcleo científico que dio vida a ChatGPT y desató la revolución que hoy todos conocemos.

Sin embargo, tras el entusiasmo inicial, Almeida observó un problema estructural muy grave. Aunque los modelos mostraban una elocuencia asombrosa al conversar y la industria invertía cifras astronómicas, la verdadera automatización del software seguía estancada. Las empresas tenían asistentes muy amables, pero sus sistemas informáticos de fondo seguían funcionando exactamente igual que antes.

Para resolver este obstáculo, en 2024 Diogo Almeida fundó TypeSafe AI junto a Erik Gafni y Sasha Sheng. La compañía trabajó durante dos años en sigilo con el respaldo de 40 millones de dólares de capital riesgo. Su objetivo no era crear otro modelo de conversación para competir con ChatGPT, sino diseñar una forma de inteligencia totalmente distinta, pensada desde la raíz para integrarse en la arquitectura del código.

La pregunta que impulsó este trabajo fue muy clara: si los modelos llevan años siendo sobrehumanos al conversar, ¿por qué la automatización real del software sigue sin llegar? El software empresarial no funciona leyendo párrafos de texto. Los sistemas informáticos que gestionan transacciones, bases de datos y servicios en la nube necesitan respuestas en menos de 100 milisegundos, datos estrictamente estructurados y caminos lógicos completamente predecibles. Intentar meter un modelo lingüístico convencional dentro de esos bucles provoca retrasos de muchos segundos, fallos continuos de formato y alucinaciones imposibles de auditar.

---

## La Base Teórica: «The Bitterest Lesson»

El fundamento teórico de TypeSafe AI se apoya en una idea muy potente conocida como la lección más amarga del aprendizaje automático (*The Bitterest Lesson*). En 2019, el pionero Rich Sutton demostró que en inteligencia artificial, el cómputo a gran escala siempre supera a los algoritmos diseñados a mano. Diogo Almeida amplió este principio señalando que existe algo todavía más determinante que el cómputo: acertar en la tarea matemática que se le pide al modelo.

$$\text{Tarea Correcta} \gg \text{Datos} \gg \text{Cómputo} \gg \text{Algoritmos}$$

Cuando Almeida trabajaba en OpenAI, comprobaron que un modelo 100 veces más pequeño que GPT-3, pero entrenado para la tarea correcta de seguir instrucciones, superaba con creces al modelo gigante. La conclusión para el software actual fue inmediata: durante años se ha intentado automatizar sistemas pidiéndole a modelos gigantes que redacten texto palabra por palabra, cuando en realidad, en el 90% de los programas, la tarea adecuada no es escribir prosa, sino tomar una decisión lógica inmediata y con un nivel de certeza comprobable.

De esta convicción nace Jev, el primer modelo de la familia **System One**, un motor de decisiones no generativo que renuncia por completo al texto libre para ofrecer respuestas tipadas, seguras y ultrarrápidas directamente utilizables por el código.
