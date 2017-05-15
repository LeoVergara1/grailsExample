package com.makingdevs

import grails.transaction.Transactional

@Transactional
class InscriptionService {

  def saveAlumnoWithNewAddress(Alumno alumno) {
    alumno.direccion.save()
    alumno.save()
    alumno
  }
}
