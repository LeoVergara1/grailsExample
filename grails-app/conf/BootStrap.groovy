import com.makingdevs.*

class BootStrap {

  def init = { servletContext ->
    def a = new Address(
      calle:"Calle de chihuahua",
      numeroExterior: "230",
      numeroIxterior: "s/n",
      colonia: "Roma norte")
    a.save()
    def s = new School(nombre: "MakingDevs", direccion: a, claveDeRegistro: "123456789012")
    s.save()
  }
  def destroy = {
  }
}
