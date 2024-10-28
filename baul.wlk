import academia.*


class Baul inherits Mueble(){

	const property capacidadMaxVolumen

	override method guardar(cosa){
		self.validarPuedeGuardar(cosa) //se fija si hay volumen suficiente para guardar la cosa
		
		cosas.add(cosa)
	}

	method validarPuedeGuardar(cosa){
		if(not self.puedeGuardar(cosa)){
			self.error("No hay volumen necesario para guardarlo en el baúl")
		}
	}

	override method puedeGuardar(cosa){
		return self.hayVolumenNecesario(cosa.volumen())
	}

	method hayVolumenNecesario(volumen){
		return  self.volumenUsado() + volumen <= capacidadMaxVolumen
	}
	method volumenUsado(){
		return cosas.sum({cosa => cosa.volumen()})
	}
}
