import 'package:flutter/material.dart';

class Course {
  Course({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.description,
    required this.teacher,
    required this.certificateUrl,
    required this.platform,
    required this.duration,
    required this.color,
    required this.inProgress,
  });

  String title;
  String subtitle;
  String image;
  List<String> description;
  String teacher;
  String certificateUrl;
  String platform;
  String duration;
  Color color;
  bool inProgress;
}

final courseList = [
  Course(
    title: 'Flutter',
    subtitle: 'Tu guía completa para IOS y Android',
    image: 'assets/images/languages/flutter.png',
    description: [
      'Aprenderemos Dart de cero para trabajar con Flutter',
      'Utilizar el SDK de Flutter para crear hermosas aplicaciones',
      'Comprender los conceptos fundamentales para realizar cualquier diseño de apps',
      'Dominar los Widget más comunes y no tan comunes para crear aplicaciones en Flutter',
      'Realizar despliegues en la Google PlayStore',
      'Realizar despliegues en la Apple AppStore',
    ],
    teacher: 'Fernando Herrera',
    certificateUrl:
        'https://www.udemy.com/certificate/UC-0fefc952-42b4-4c30-985b-c0788fba45a2/',
    platform: 'Udemy',
    duration: '37,5H',
    color: Colors.blue,
    inProgress: false,
  ),
  Course(
    title: 'Flutter',
    subtitle: 'Diseños profesionales y animaciones',
    image: 'assets/images/languages/flutter.png',
    description: [
      'Diseñar interfaces de usuario',
      'Recrear diseños',
      'Controlar a profundidad muchos widgets de Flutter',
      'Provider State Management',
      'Re-utilización de widgets personalizados',
      'Animar cualquier widget en Flutter',
      'Crear animaciones personalizadas',
      'Crear widgets animados',
    ],
    teacher: 'Fernando Herrera',
    certificateUrl:
        'https://www.udemy.com/certificate/UC-dbb55066-ab86-4984-8121-f514265f9d14/',
    platform: 'Udemy',
    duration: '15,5H',
    color: Colors.orange,
    inProgress: false,
  ),
  Course(
    title: 'Flutter',
    subtitle: 'The Complete Flutter Development Bootcamp Using Dart',
    image: 'assets/images/languages/flutter.png',
    description: [
      'Profundizar tu conocimiento de Flutter',
      'Realizar cobros en tu aplicación',
      'Hacer seguimiento y dibujar en mapas',
      'Marcadores personalizados tipo Uber',
      'Comunicación en tiempo real SIN Firebase',
      'Crear varios backend capaz de manejar y mantener nuestras aplicaciones',
      'Google Sign-in y Apple Sign-in contra nuestro propio backend',
      'Cumplir los requisitos de Apple para usar autenticación con redes sociales',
      'Mucho más',
    ],
    teacher: 'Fernando Herrera',
    certificateUrl:
        'https://www.udemy.com/certificate/UC-841795b6-f45a-4a7a-a8bb-acb02d664fb9/',
    platform: 'Udemy',
    duration: '34,5H',
    color: Colors.red,
    inProgress: false,
  ),
  Course(
    title: 'Diseño UX',
    subtitle: 'experiencia de usuario UX/UI + Figma 2023',
    image: 'assets/images/courses/ux-ui.png',
    description: [
      'Sea contratado como diseñador UX o conviértase en un profesional independiente',
      'Podrás añadir "Diseñador UX" a tu CV',
      'A planificar, hacer la estrategia y crear un producto analógico o digital',
      'Tendrás un proyecto para añadir a tu portfolio',
      'UX Research',
      'Usability Testing',
      'Construir y testear tus diseños',
      'A diseñar una propuesta de valor en base a las necesidades del cliente y el usuario',
      'Analizar el mercado y las áreas de oportunidad e innovación',
      'A realizar encuestas, entrevistas y distintas técnicas para entender el problema',
      'User flows y arquitectura de la información',
      'La importancia de la usabilidad por sobre la estética',
      'Prototipado en baja, media y alta fidelidad',
      'Prototipado rápido y creación de wireframes',
      'Patrones de diseño y de navegación',
      'Evaluación del prototipo y pruebas de usabilidad',
      'Herramientas de medición, Analytics y heatmaps',
      'Utilizar el software Figma desde cero',
      'Construir y testear una página web o aplicación móvil',
      'Todas las técnicas usadas en la industria del UX',
      'Diseño Visual',
      'Evaluación heurística',
    ],
    teacher: 'Javier Cañas',
    certificateUrl:
        'https://www.udemy.com/certificate/UC-0fefc952-42b4-4c30-985b-c0788fba45a2/',
    platform: 'Udemy',
    duration: '22H',
    color: Colors.purple,
    inProgress: true,
  ),
];
