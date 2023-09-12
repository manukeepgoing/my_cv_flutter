import 'package:flutter/material.dart';

class Project {
  Project(
      {required this.name,
      this.url,
      this.github,
      this.icon,
      required this.inProgress,
      this.color = Colors.blue,
      this.images,
      required this.description,
      required this.tags,
      required this.technologies});

  final String name;
  final String? url;
  final String? github;
  final String? icon;
  final Color color;
  final bool inProgress;
  final List<String> description;
  final List<String>? images;
  final List<String> tags;
  final List<String> technologies;
}

final projectList = <Project>[
  Project(
    name: "My cv",
    url: "https://flutter.dev/",
    github: "",
    inProgress: true,
    description: [
      'Desarrollé un proyecto innovador para presentar mi currículum de manera interactiva, explorando diversas formas creativas de mostrar la información.',
      'Diseñé y programé un proyecto móvil que incorpora animaciones dinámicas y widgets altamente reutilizables para realzar la experiencia del usuario.',
      'Implementé estratégicamente librerías externas con el fin de optimizar el tiempo de desarrollo y mejorar la funcionalidad del proyecto.',
      'Logré un enfoque visualmente atractivo y funcional al fusionar elementos de diseño y programación en el proyecto de presentación de CV.',
    ],
    tags: [
      "Flutter",
      "Dart",
      "Android",
      "iOS",
      "Linux",
      "Mac",
      "Windows",
      "Google Fuchsia",
      "Web",
      "UI",
      "SDK",
      "Open Source",
      "Google",
      "Ambient Computing",
    ],
    technologies: [
      "Flutter",
      "Dart",
      "Android",
      "iOS",
      "Linux",
      "Mac",
      "Windows",
      "Google Fuchsia",
      "Web",
      "UI",
      "SDK",
      "Open Source",
      "Google",
      "Ambient Computing",
    ],
  ),
  Project(
    name: "Click\'it",
    url: "https://flutter.dev/",
    github: "",
    icon: "assets/images/projects/clickit.png",
    inProgress: true,
    description: [
      'Concebí y desarrollé un juego utilizando Flutter, que destaca por su enfoque en la exploración de elementos de diseño únicos y una interacción ágil con los usuarios.',
      'Experimenté con innovadoras estrategias de diseño en el juego, priorizando la eficiencia y rapidez en la interacción con el usuario, lo que contribuyó a una experiencia de usuario más atractiva.',
      'Implementé sistemas de puntuación en el juego, permitiendo a los usuarios competir y comparar sus logros, lo que enriquece la experiencia de juego.',
      'Utilicé la arquitectura de "provider" y elementos asíncronos para habilitar la modificación instantánea del diseño de la aplicación, brindando una personalización adaptable a las preferencias del usuario.',
      'Integre Firebase para establecer una infraestructura sólida de gestión de puntuaciones, posibilitando la distribución y comparación de puntuaciones entre los jugadores.',
      'Implementé la autenticación a través de Google e iOS, permitiendo a los usuarios conectarse directamente a sus cuentas y visualizar sus puntuaciones desde estas plataformas.',
      'Estoy en proceso de incorporar estrategias de monetización como publicidad y opciones de pago para potenciar el juego y ofrecer a los usuarios la posibilidad de mejorar la experiencia o personalizar los diseños del juego.',
    ],
    tags: [
      "Flutter",
      "Dart",
      "Android",
      "iOS",
      "Linux",
      "Mac",
      "Windows",
      "Google Fuchsia",
      "Web",
      "UI",
      "SDK",
      "Open Source",
      "Google",
      "Ambient Computing",
    ],
    technologies: [
      "Flutter",
      "Dart",
      "Android",
      "iOS",
      "Linux",
      "Mac",
      "Windows",
      "Google Fuchsia",
      "Web",
      "UI",
      "SDK",
      "Open Source",
      "Google",
      "Ambient Computing",
    ],
  ),
  Project(
    name: "Adoradoras Presenciales",
    url: "https://dart.dev/",
    github: "",
    icon: "assets/images/projects/adoradoras-presenciales.png",
    inProgress: true,
    description: [
      'Participando en un proyecto confidencial, estoy liderando el desarrollo de la base de datos y su gestor asociado.',
      'Utilizando tecnologías clave como Angular, Node.js y Electron, estoy construyendo una solución robusta que se integra con una base de datos SQL.',
      'Diseñando y programando la arquitectura de la base de datos, asegurando su eficiencia y escalabilidad para satisfacer los requisitos del proyecto.',
      'Desarrollando un sistema de gestión que permite la manipulación y administración efectiva de la base de datos, garantizando un flujo de trabajo sin problemas.',
      'Implementando medidas de seguridad sólidas para salvaguardar la integridad de los datos almacenados en la base de datos.',
      'Colaborando con el equipo para garantizar una integración armoniosa entre la interfaz de usuario construida en Angular y el gestor de base de datos desarrollado con Node.js y Electron.',
      'Contribuyendo al logro de los objetivos del proyecto al crear una base de datos y un gestor que cumplen con los estándares de calidad y rendimiento requeridos.',
    ],
    tags: [
      "Dart",
      "Android",
      "iOS",
      "Linux",
      "Mac",
      "Windows",
      "Google Fuchsia",
      "Web",
      "SDK",
      "Open Source",
      "Google",
    ],
    technologies: [
      "Dart",
      "Android",
      "iOS",
      "Linux",
      "Mac",
      "Windows",
      "Google Fuchsia",
      "Web",
      "SDK",
      "Open Source",
      "Google",
    ],
  ),
];
