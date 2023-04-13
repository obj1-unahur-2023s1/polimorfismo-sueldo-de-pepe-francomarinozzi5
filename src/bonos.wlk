
object bonoPorcentaje{
	method bono(empleado){
		return empleado.getCategoria().neto() * 10 / 100 
	}
}

object bonoFijo{
	method bono(empleado){
		return 80
	}
}

object bonoNulo{
	method bono(empleado){
		return 0
	}
}

object bonoDependeFaltas{
	method bono(empleado){
		
		const faltas = empleado.faltas()
		
		if (faltas == 0 ){
			return 100
		}
		else if (faltas == 1){
			return 50
		}
		else {
			return 0
		}
	}
}

