import armario.*
import baul.*
import gabineteMagico.*

class Academia{
	var property muebles = #{}


	method guardar(cosa){
		self.validarSiYaEstaGuardado(cosa)
		self.validarHayMuebleParaGuardar(cosa)
		self.muebleParaGuardar(cosa).guardar(cosa)

	}

	method validarSiYaEstaGuardado(cosa){ //punto 3)
		if( self.estaGuardada(cosa)){
			self.error("Ya se encuentra guardado/a en la academia.")
		}
	}
	method validarHayMuebleParaGuardar(cosa){ //punto 3)
		if(not self.existeMuebleParaGuardar(cosa)){
			self.error("No se puede guardar la cosa")
		}
	}
	method existeMuebleParaGuardar(cosa){
		return muebles.any({mueble => mueble.puedeGuardar(cosa)})
	}
	method muebleParaGuardar(cosa){ 
		//ya se que alguno de los muebles cumple con que puede guardar la cosa.
		return self.mueblesParaGuardar(cosa).anyOne()
	}

	method mueblesParaGuardar(cosa){ //punto 4)
		//ya se que alguno de los muebles cumple con que puede guardar la cosa.
		return muebles.filter({mueble => mueble.puedeGuardar(cosa)})
	}

	method estaGuardada(cosa){ //punto 1)
			return muebles.any({mueble => mueble.estaGuardada(cosa)})
	}
	method muebleEnElqueEstaGuardada(cosa){ //punto 2)
		//precondicion: la cosa esta guardada
		return muebles.find({mueble => mueble.estaGuardada(cosa)})

	}

}

class Cosa {
	const property marca
	const property volumen

	const property esElemntoMagico
	const property esUnaReliquia

}


class Mueble { //armarios convencionales, gabinetes mágicos y baúles
	var property cosas = #{}

	method estaGuardada(cosa){
		return cosas.contains(cosa)
	}

	method guardar(cosa)

	method puedeGuardar(cosa)

}
