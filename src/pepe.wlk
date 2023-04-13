import categorias.*
import bonos.*


object pepe{
	var categoria
	var bonoPresentismo
	var bonoResultado
	var cantFaltas 
	
	method getCategoria(){
		return categoria
	}
	
	method faltas(){
		return cantFaltas
	}
	
	method setCategoria(cat){
		categoria = cat
	}
	
	method setBonoResultado(bonoRes){
		bonoResultado = bonoRes.bono(self)
	}
	
	method setFaltas(faltas){
		cantFaltas = faltas
	}
	
	method setBonoPresentismo(){
		bonoPresentismo = bonoDependeFaltas.bono(self)
	}
	
	method sueldoNeto(){
		return categoria.neto()
	}
	
	method sueldo(){
		return (self.sueldoNeto() + bonoPresentismo + bonoResultado) 
	}
}