package com.makingdevs

class School {

  String nombre
  String claveDeRegistro
  Address direccion

  static hasMany = [students:Alumno]

  static constraints = {
  }
}
