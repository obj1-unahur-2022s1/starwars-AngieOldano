import personas.*

class Planeta{
	var property habitantes = #{}
	var property museos = 0
	var property longitudMurralas = 0
	
	
	method agregarHabitantes(unHabitante){habitantes.add(unHabitante)}
	method delegacionDiplomatica(){return habitantes.filter{h=>h.esDestacada()}}
	method valorInicialDeDefensa(){return habitantes.count{h=>h.potencia()>=30}}
	method esCulto(){return museos>2 and self.alMenos10Inteligencia()}
	method alMenos10Inteligencia(){return habitantes.all{h=>h.inteligencia()>10}}
	method potenciaReal(){return habitantes.sum{h=>h.potencia()}}
	
	method construirMurrallas(cantidad){longitudMurralas+=1}
	method fundarMuseo(){museos+=1}
	method potenciaAparente(){return self.potenciaHabitantes() * self.cantidadDeHabitantes()}///////
	method potenciaHabitantes(){return habitantes.map{h=>h.potencia()}}
	method maxPotencia(){return self.potenciaHabitantes().max()}
	method cantidadDeHabitantes(){return habitantes.size()}
	method necesitaForzarse(){return self.potenciaAparente()>=2*self.potenciaReal()}
	method recibirTributos(){habitantes.forEach{h=>h.darTributo()}}
	method habitantesValiosos(){return habitantes.filter{h=>h.valor()>=40}}
	method apaciguarPlaneta(unPlaneta){self.habitantesValiosos().forEach{h=>h.darTributo(unPlaneta)}}
	
	
}


