import 'package:flutter/material.dart';

class Company {
  Company({
    required this.name,
    required this.logo,
    required this.description,
    required this.website,
    required this.linkedin,
    required this.country,
    required this.city,
    this.dateOfEmployment = "",
    this.dateOfDisemployment = "",
    required this.companyMainColor,
    required this.jobDescription,
    required this.jobTitle,
    required this.languagesUsed,
  });
  String name;
  String logo;
  String description;
  String website;
  String linkedin;
  String country;
  String city;
  String? dateOfEmployment;
  String? dateOfDisemployment;
  Color companyMainColor;
  List<String> jobDescription;
  String jobTitle;
  List<String> languagesUsed;
}

final companyList = [
  Company(
      name: "Visiotech",
      logo: "assets/images/logos/visiotech-logo.png",
      description:
          "Mayoristas especializados en Soluciones de Seguridad y Redes, con más de 14 años de experiencia en el sector",
      website: "https://www.visiotechsecurity.com/es/",
      linkedin:
          "https://www.linkedin.com/company/visiotech-es/mycompany/verification/",
      country: "España",
      city: "Madrid",
      dateOfEmployment: '1/23',
      companyMainColor: Colors.red,
      jobTitle: "Mobile developer",
      jobDescription: [
        "Desarrollo de aplicaciones nativas para <b>Android</b> y para <b>iOS</b>, con <b>kotlin</b>, <b>swift</b> y <b>objective-c</b> respectivamente. Además usando <b>Firebase</b> como sistema para tomar datos y analíticas de los usuarios.",
        "Ayudando en algunas ocasiones al desarrollo en otros equipos de trabajo como el de web con <b>HTML</b>, <b>CSS</b> y <b>PHP</b>.",
        "Uso de <b>SKDs</b> de diferentes dispositivos como cámaras o grabadoras para las diferentes aplicaciones que se desarrollan en la empresa.",
        "Gestión y distribución de las diferentes aplicaciones móviles de la empresa tanto en la tienda <b>Google Play</b> como en la tienda <b>App Store</b>.",
        "Uso de herramientas de control de versiones como <b>Git</b> y <b>Gitlab</b>.",
        "Uso de herramientas de gestión de proyectos como <b>ClickUp</b>.",
      ],
      languagesUsed: [
        "Android",
        "Kotlin",
        "iOS",
        "Swift",
        "ObjectiveC",
        "Flutter",
        "Dart",
        "HTML",
        "CSS",
        "PHP",
      ]),
  Company(
      name: "Hello world school",
      logo: "assets/images/logos/hello-world-logo.png",
      description: """Un nuevo lenguage para encontrar empleo""",
      website: "https://www.helloworld-school.com/",
      linkedin: "https://www.linkedin.com/company/helloworld-tech-school/",
      country: "Spain",
      city: "Madrid",
      dateOfDisemployment: '1/23',
      dateOfEmployment: '10/22',
      companyMainColor: Colors.orange,
      jobTitle: "Profesor",
      jobDescription: [
        "He impartido <b>clases</b> de desarrollo web y maquetación en un centro educativo de formación profesional, donde he enseñado conceptos fundamentales utilizando <b>HTML</b> y <b>CSS</b>.",
        "Mi objetivo era transmitir a los estudiantes habilidades prácticas para construir sitios web y crear diseños atractivos.",
        "Tenía que desarrollar las diapositivas de las clases y preparar los ejercicios prácticos para los estudiantes además de los exámenes y las notas.",
        "Realice este trabajo a la vez que trabajaba en Dev&Del.",
      ],
      languagesUsed: [
        "HTML",
        "CSS",
      ]),
  Company(
      name: "Dev & Del",
      logo: "assets/images/logos/devanddel-logo.png",
      description:
          """Somos una empresa de tecnología y estrategia, sobresaliente en la gestión de equipos y personas de alto rendimiento.""",
      website: "https://www.devanddel.com/",
      linkedin:
          "https://www.linkedin.com/company/dev&del-tecnolog%C3%ADas-de-la-informaci%C3%B3n/",
      country: "Spain",
      city: "Madrid",
      dateOfDisemployment: '1/23',
      dateOfEmployment: '7/21',
      companyMainColor: Colors.green.shade100,
      jobTitle: "Ingeniero de Software",
      jobDescription: [
        "Desarrollo software de diversas herramientas y o herramientas ya existentes de diferentes clientes, orientados al mundo de la consultoría y los seguros.",
        "Gestión de tareas con diferentes compañeros del mismo equipo siguiendo una metodología <b>Agile</b>.",
        "Desarrollador <b>Fullstack</b> trabajando sobre todo con las siguientes tecnologías: <b>Angular</b>, <b>Spring</b>, <b>SQL</b>, <b>Angular</b> y <b>Wordpress</b>, .",
        "Desarrollos más específicos dependiendo de las necesidades del cliente y elaborando los respectivos <b>requisitos</b>, en tecnologías como por ejemplo: <b>Cobol</b> o <b>Bash</b>",
      ],
      languagesUsed: [
        "Angular",
        "Java",
        "JS",
        "Spring",
        "SQL",
        "Wordpress",
        "Bash",
        "Cobol",
      ]),
  Company(
      name: "Archibus",
      logo: "assets/images/logos/archibus-logo.png",
      description:
          "Desde hace más de 20 años, hemos estado comprometidos con la transformación digital de las empresas en el ámbito del RE, Asset & Facility Management. Nuestro empeño es mantener el miso nivel de excelencia y seguir proporcionando valor real tanto a las propias organizaciones como la sociedad en general.",
      website: "https://www.asc-spain.es/",
      linkedin: "https://www.linkedin.com/company/archibus-spain/about/",
      country: "Spain",
      city: "Madrid",
      dateOfDisemployment: '7/21',
      dateOfEmployment: '4/20',
      companyMainColor: Colors.blue.shade200,
      jobTitle: "Assistant project manager",
      jobDescription: [
        "Ampliación del software de la empresa para la distribución a diferentes clientes, orientado al mundo de la gestión de inmuebles y oficinas.",
        "Desarrollador fullstack con principalmente los siguientes lenguajes: <b>Java</b>, <b>JavaScript</b>, <b>HTML5</b>, <b>CSS</b>, <b>SQL</b>.",
        "Mientras trabajaba para esta empresa, comencé el máster en desarrollo de dispositivos móviles."
            "Continuación de las prácticas: Desarrollo de una herramienta desde 0, con una base de datos <b>SQL</b>, distribución de datos con <b>API/REST</b>, y una página web con ayuda de <b>Bootstrap</b>"
      ],
      languagesUsed: [
        "Java",
        "JS",
        "HTML",
        "CSS",
        "SQL",
      ]),
  Company(
      name:
          " Archibus ", // los espacio estan aposta para que el tag del hero no este repetido
      logo: "assets/images/logos/archibus-logo.png",
      description:
          "Desde hace más de 20 años, hemos estado comprometidos con la transformación digital de las empresas en el ámbito del RE, Asset & Facility Management. Nuestro empeño es mantener el miso nivel de excelencia y seguir proporcionando valor real tanto a las propias organizaciones como la sociedad en general.",
      website: "https://www.asc-spain.es/",
      linkedin: "https://www.linkedin.com/company/archibus-spain/about/",
      country: "Spain",
      city: "Madrid",
      dateOfDisemployment: '4/20',
      dateOfEmployment: '9/19',
      companyMainColor: Colors.blue.shade200,
      jobTitle: "Practicas",
      jobDescription: [
        "Desarrollo de una herramienta desde 0, con una base de datos <b>SQL</b>, distribución de datos con <b>API/REST</b>, y una página web con ayuda de <b>Bootstrap</b>",
        "Realicé estás prácticas mientras terminaba mi último curso de ingeniería informática en la UPM"
      ],
      languagesUsed: [
        "Java",
        "JS",
        "HTML",
        "CSS",
        "SQL",
      ]),
  Company(
      name: "UPM",
      logo: "assets/images/logos/upm-logo.png",
      description: "Prácticas en la universidad politécnica de Madrid",
      website: "https://www.upm.es/",
      linkedin:
          "https://www.linkedin.com/school/universidad-politecnica-de-madrid/?originalSubdomain=es",
      country: "Spain",
      city: "Madrid",
      dateOfDisemployment: '6/18',
      dateOfEmployment: '1/18',
      companyMainColor: Colors.blue,
      jobTitle: "Beca",
      jobDescription: [
        "Beca de desarrollo en un departamento educativo",
        "Ampliación de una plataforma de gamificación una asignatura de la universidad, para apoyar el estudio con juegos online, y dar las notas a los alumnos o diferentes comunicados."
      ],
      languagesUsed: [
        "PHP",
        "HTML",
        "CSS",
        "SQL"
      ]),
];
