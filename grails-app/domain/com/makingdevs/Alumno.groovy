package com.makingdevs

class Alumno {

  String nombre
  String apellidoPaterno
  String apellidoMaterno
  Date fechaDeNacimiento
  String boleta
  Integer creditos
  Address direccion

  static belongsTo = [school:School]

  static constraints = {
    nombre size:2..40
    apellidoPaterno size:2..40
    apellidoMaterno size:2..40
    boleta size:10..12, regex: /\d{4}\d{4}\d{4}/

  }
}
