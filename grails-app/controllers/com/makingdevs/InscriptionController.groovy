package com.makingdevs

class InscriptionController {

  InscriptionService inscriptionService

  static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

  def index(School schoolInstance) {
    def direccion = new Address()
    [alumnoInstance: new Alumno(direccion:direccion), schoolInstance: schoolInstance]
  }

  def save(Alumno alumno){
    if(alumno.validate() && alumno.direccion.validate()){
      inscriptionService.saveAlumnoWithNewAddress(alumno)
      redirect controller: "alumno", action: "index"
    } else {
      render view:"index", model:[alumnoInstance: alumno, schoolInstance: alumno.school]
    }
  }
}
