package com.makingdevs

class Address {

  String calle
  String numeroExterior
  String numeroIxterior
  String colonia

  static belongsTo = [School, Alumno]

  static constraints = {
  }
}
