/*
 * Atleta:
 * El método entrenar pedía que cada 5 días de entrenamiento, se sumara 1 kg, y la forma en que
 * lo implementaste, requería que sean múltiplos de 5, lo que provoca que si por ejemplo entrena 14 días
 * no sume 2kg de masa muscular. Te dejo en el código la forma de resolverlo.
 * Armas del soldado:
 * Se debían implementar como clases, ya que en el enunciado se refiere a que de cada pistolete
 * o espadón, se conoce su largo y su peso respectivamente. Al no especificar valores únicos para
 * cada arma, se debe contemplar su definición como clases, y de esa forma poder instanciar distintos
 * pistoletes y espadones con diferentes valores de atributos. 
 */

import planeta.*

class Persona{
	var property edad

	method potencia(){return 20}
	method inteligencia(){return if(edad>20 and edad<40){12}else{8}}
	method esDestacada(){return edad==25 or edad==35}
	method darTributo(planeta){}
	method valor(){return self.potencia()+ self.inteligencia()}

}


class Atleta inherits Persona{
	var property masaMuscular = 4
	var property tecnicas = 2

	
	override method potencia(){return super() + (masaMuscular * tecnicas)}
	override method esDestacada(){return super() or tecnicas>5}
	
	method entrenar(cantDias) { masaMuscular += cantDias.div(5) }
	
	method aprenderTecnica(){tecnicas+=1}
	override method darTributo(planeta){planeta.construirMurrallas(2)}


}

class Docente inherits Persona{
	var property cursos = 0

	
	override method inteligencia(){return super() + (cursos*2)}
	override method esDestacada(){return cursos>3}
	override method darTributo(planeta){planeta.fundarMuseo()}
	override method valor(){return super()+5}
}


class Soldados inherits Persona{
	var property armas = #{}
	
	method darArma(unArma){armas.add(unArma)}
	override method potencia(){return super() + armas.sum{a=>a.potencia(self)}}
	override method darTributo(planeta){planeta.construirMurrallas(5)}	
}


object pistolete{
	var property largo
	
	method potencia(unSoldado){return if(unSoldado.edad()>30){largo*3}else{largo*2}}
}

object espadon{
	var property peso
	
	method potencia(unSoldado){return if(unSoldado.edad()<40){peso/2}else{6}}
}








