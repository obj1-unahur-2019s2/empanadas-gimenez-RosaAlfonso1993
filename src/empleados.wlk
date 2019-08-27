object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000
	var resultado = 0
	var sueldo = 15000
	
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){
		resultado += sueldo
	}
	method gastar(cuanto){
		resultado -= cuanto
	}
	method totalDeuda(){
		return resultado.min(0) 
	}
	method totalDinero(){
		return resultado.max(0)
	}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var sueldoAcumulado = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo_cheto() = cantidadEmpanadasVendidas * montoPorEmpanada
	method sueldo(){
		return cantidadEmpanadasVendidas * montoPorEmpanada
	}
	method cobrarSueldo(){
		sueldoAcumulado += self.sueldo()
	}
	
	method totalCobrado(){
		return sueldoAcumulado
	}
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo()
    	empleado.cobrarSueldo() 
	}
}
