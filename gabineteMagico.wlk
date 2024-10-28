import academia.*

class GabineteMagico inherits Mueble(){
	override method guardar(cosa){
		self.validarEsMagico(cosa) //se fija si es mágica la cosa
		cosas.add(cosa)
	}

	override method puedeGuardar(cosa){
		return cosa.esElemntoMagico()
	}

	method validarEsMagico(cosa){
		if(not self.puedeGuardar(cosa)){
			self.error("No es cosa mágica. No lo puego guardar en el gabinete magico.")
		}
	}
}