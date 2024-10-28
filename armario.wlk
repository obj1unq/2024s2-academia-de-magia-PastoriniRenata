import academia.*

class Armario inherits Mueble(){
	var property capacidadMax

	override method guardar(cosa){
		self.validarPeudeGuardar(cosa)
		cosas.add(cosa)
	}

	override method puedeGuardar(cosa){ //pongo la variable por polimorgfismo
		return cosas.size() < capacidadMax
	}

	method validarPeudeGuardar(cosa){
		if(not self.puedeGuardar(cosa)){
			self.error("No hay espacio en el armario.")
		}
	}

}