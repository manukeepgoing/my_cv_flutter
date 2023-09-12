import 'package:flutter/material.dart';

class Study {
  Study({
    required this.name,
    required this.logo,
    required this.description,
    required this.website,
    required this.linkedin,
    required this.country,
    required this.city,
    this.startDate = "",
    this.endDate = "",
    required this.studyMainColor,
    required this.studyDescription,
    required this.studyTitle,
  });
  String name;
  String logo;
  String description;
  String website;
  String linkedin;
  String country;
  String city;
  String? startDate;
  String? endDate;
  Color studyMainColor;
  List<String> studyDescription;
  String studyTitle;
}

final studyList = [
  Study(
      name: "UPM",
      logo: "assets/images/logos/upm-logo.png",
      description:
          "Universidad Politécnica de Madrid (UPM) is the oldest and largest of all Technical Universities in Spain. It has more than 3,000 faculty members, around 35,000 undergraduate students, and over 8,000 graduate students.",
      website: "https://www.upm.es/",
      linkedin:
          "https://www.linkedin.com/school/universidad-politecnica-de-madrid/?originalSubdomain=es",
      country: "España",
      city: "Madrid",
      startDate: '9/15',
      endDate: '7/20',
      studyMainColor: Colors.blue,
      studyTitle: "Master desarrollo móvil",
      studyDescription: [
        "Dotar al alumno de la capacidad para proyectar, diseñar y desarrollar productos y servicios de computación móvil.",
        "Dotar al alumno de la capacidad para generar soluciones innovadoras en el ámbito de la computación móvil.",
        "Dotar al alumno de la capacidad para complementar las aplicaciones móviles con servicios en la nube.",
        "Dotar al alumno de la capacidad para integrar sistemas móviles con la Internet de las Cosas, con aplicaciones en Smart Home y Smart Cities.",
        "G1. Uso de la lengua inglesa (UPM).",
        "G2. Liderazgo de equipos (UPM).",
        "G3. Creatividad. (UPM)",
        "G4. Organización y planificación (UPM).",
        "G5. Gestión de la información (UPM).",
        "G6. Gestión económica y administrativa (UPM).",
        "G7. Trabajo en contextos internacionales (UPM).",
        "G8. Trabajo en equipo.",
        "G9. Capacidad de análisis y síntesis.",
        "G10. Resolución de problemas.",
        "G11. Razonamiento crítico.",
        "G12. Aprendizaje autónomo, adaptación a nuevas situaciones y motivación por el desarrollo profesional permanente.",
        "G13. Iniciativa y capacidad emprendedora.",
        "G14. Motivación por la calidad.",
        "G15. Responsabilidad social y medioambiental.",
        "CE1. Capacidad para desarrollar aplicaciones móviles utilizando los lenguajes de programación de cada plataforma.",
        "CE2. Capacidad para utilizar en las aplicaciones los frameworks más importantes proporcionados por los fabricantes de cada plataforma.",
        "CE3. Capacidad para desarrollar el Backend de aplicaciones móviles mediante metodologías de desarrollo de software ágil, patrones de diseño y técnicas de Ingeniería del Software.",
        "CE4. Capacidad para desarrollar el Backend de aplicaciones móviles haciendo uso de las plataformas Cloud.",
        "CE5. Capacidad para desarrollar sistemas aplicados a Internet de las Cosas que ofrezcan servicios ubicuos.",
        "CE6. Capacidad para desarrollar aplicaciones embebidas en plataformas hardware integradas en Internet de las Cosas.",
        "CE7. Capacidad de integración y síntesis de conocimientos y competencias adquiridas durante las enseñanzas, evidenciándolas mediante la realización de un proyecto fin de máster",
      ]),
  Study(
      name: "UPM",
      logo: "assets/images/logos/upm-logo.png",
      description:
          "Universidad Politécnica de Madrid (UPM) is the oldest and largest of all Technical Universities in Spain. It has more than 3,000 faculty members, around 35,000 undergraduate students, and over 8,000 graduate students.",
      website: "https://www.upm.es/",
      linkedin:
          "https://www.linkedin.com/school/universidad-politecnica-de-madrid/?originalSubdomain=es",
      country: "España",
      city: "Madrid",
      startDate: '9/15',
      endDate: '7/20',
      studyMainColor: Colors.blue,
      studyTitle: "Grado en Ingeniería Informática",
      studyDescription: [
        "Aprender de manera autónoma nuevos conocimientos y técnicas adecuados para la concepción, el desarrollo o la explotación de sistemas informáticos.",
        "Comunicar de forma efectiva, tanto por escrito como oral, conocimientos, procedimientos, resultados e ideas relacionadas con las TIC, y concretamente de la Informática, conociendo su impacto socioeconómico.",
        "Comprender la responsabilidad social, ética y profesional, y civil en su caso, de la actividad del Ingeniero en Informática y su papel en el ámbito de las TIC y de la Sociedad de la Información y el Conocimiento.",
        "Concebir y llevar a cabo proyectos informáticos utilizando los principios y metodologías propios de la Ingeniería.",
        "Diseñar, desarrollar, evaluar y asegurar la accesibilidad, ergonomía, usabilidad y seguridad de los sistemas, aplicaciones y servicios informáticos, así como de la información que proporcionan, conforme a la legislación y normativa vigentes.",
        "Definir, evaluar y seleccionar plataformas hardware y software para el desarrollo y la ejecución de aplicaciones y servicios informáticos de diversa complejidad.",
        "Disponer de los fundamentos matemáticos, físicos, económicos y sociológicos necesarios para interpretar, seleccionar, valorar y crear nuevos conceptos, teorías, usos y desarrollos tecnológicos relacionados con la informática y su aplicación.",
        "Concebir, desarrollar y mantener sistemas y aplicaciones software empleando diversos métodos de ingeniería del software y lenguajes de programación adecuados al tipo de aplicación a desarrollar manteniendo los niveles de calidad exigidos.",
        "Concebir y desarrollar sistemas o arquitecturas informáticas centralizadas o distribuidas integrando hardware y software y redes.",
        "Proponer, analizar, validar, interpretar, instalar y mantener soluciones informáticas en situaciones reales en diversas áreas de aplicación dentro de una organización.",
        "Concebir, desplegar, organizar y gestionar sistemas y servicios informáticos en contextos empresariales o institucionales para mejorar sus procesos de negocio, responsabilizándose y liderando su puesta en marcha y mejora continua, así como valorar su impacto económico y social.",
      ]),
  Study(
      name: "San José del Parque",
      logo: "assets/images/logos/maristas.png",
      description:
          "San José del Parque es un colegio privado Marista y Católico que la Iglesia ofrece a la sociedad para formar a la juventud según el carisma de Marcelino Champagnat.",
      website: "https://maristassanjosedelparque.com/",
      linkedin: "https://www.linkedin.com/company/san-jos%C3%A9-del-parque/",
      country: "España",
      city: "Madrid",
      startDate: '9/15',
      endDate: '7/20',
      studyMainColor: Colors.pink.shade200,
      studyTitle: "ESO y Bachillerato",
      studyDescription: [
        "Estudios de ESO y Bachillerato de ciencias",
      ])
];
