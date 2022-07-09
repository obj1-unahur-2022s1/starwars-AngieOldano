/*
 * Planeta:
 * El método auxiliar que retorna el booleano alMenos10Inteligencia() debería considerar también
 * los que tienen 10 de inteligencia. Un detalle, lo corregí en el código.
 */

import personas.*

class Planeta{
	var property habitantes = #{}
	var property museos = 0
	var property longitudMurrallas = 0
	
	
	method agregarHabitantes(unHabitante){habitantes.add(unHabitante)}
	method delegacionDiplomatica(){return habitantes.filter{h=>h.esDestacada()}}
	method valorInicialDeDefensa(){return habitantes.count{h=>h.potencia()>=30}}
	method esCulto(){return museos>2 and self.alMenos10Inteligencia()}
	method alMenos10Inteligencia(){return habitantes.all{h=>h.inteligencia()>=10}}
	method potenciaReal(){return habitantes.sum{h=>h.potencia()}}
	
	method construirMurrallas(cantidad){longitudMurrallas+=cantidad}
	method fundarMuseo(){museos+=1}
	method potenciaAparente(){return self.maxPotencia() * self.cantidadDeHabitantes()}///////
	method potenciaHabitantes(){return habitantes.map{h=>h.potencia()}}
	method maxPotencia(){return self.potenciaHabitantes().max()}
	method cantidadDeHabitantes(){return habitantes.size()}
	method necesitaForzarse(){return self.potenciaAparente()>=2*self.potenciaReal()}
	method recibirTributos(){habitantes.forEach{h=>h.darTributo(self)}}
	method habitantesValiosos(){return habitantes.filter{h=>h.valor()>=40}}
	method apaciguarPlaneta(unPlaneta){self.habitantesValiosos().forEach{h=>h.darTributo(unPlaneta)}}
	
	
}


