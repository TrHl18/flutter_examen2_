# flutter_examen_2

A new Flutter project.
#   f l u t t e r _ e x a m e n 2 _ 
 
 

## Proyecto de Examen 
El proyecto se basa en el desarrollo de una aplicacion que consuma el API de Stephen King y muestra un listado de sus libros.

La esctructura del proyecto 
flutter_examen_2/
|-- lib/
| |-- models/
| | |-- modelos.dart - presenta los atributos de los libros
| | |-- villanos.dart -  representa un villano con sus atributos
| |-- providers/
| | |-- libro_detalles_provider.dart - maneja el estado del libro seleccionado 
| | |-- libro_provider.dart - Maneja el estado relacionado con la lista de libros
| |-- screens/
| | |-- detalles_libro.dart - Este archivo probablemente contiene la implementación de la pantalla que muestra los detalles de un libro específico, incluyendo información sobre los villanos asociados
| | |-- listado_libros.dart -Este archivo probablemente contiene la implementación de la pantalla que muestra la lista de libros obtenida de la API de Stephen King.
| |-- services/
| | |-- servicios.dart - maneja las solicitudes y respuestas a la API de Stephen King
|-- main.dart -  llama a ambas pantallas tanto la de detalles del libro como de los villanos asociados en los libros
|-- README.md
|-- pubspec.yaml contiene las dependencias de dio y providers para poder hacer uso del api

## Como ejecutar la aplicacion

- Tener VisualStudio Code y clonar el repositorio  https://github.com/TrHl18/flutter_examen2_
- Asegurarse de hacer un get de las las dependencias
- Abrir el simulador y ejecutar la aplicacion 

## Consideraciones Especiales

Asegurarse de agregar las dependencias en el pubspec.yalm y hacer un flutter pub get.