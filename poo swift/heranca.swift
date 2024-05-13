/*********** heranca ***********/
/* sao as caracteristicas em comuns, como, por exemplo, a classe carro, moto e aviao possuem,
    em comum, a classe 'motor' nelas'
*/ 

class Veiculo {
    var motor: String?
    var numRodas: String?
}

/** Assim, o carro tera seus atributos + os atributos da classe veiculo */
class Carro: Veiculo {
    var automatico: String?

    func imprimeCarro() -> void {
        print("Numero de rodas \(self.numRodas), motor \(self.motor), eh automatico? \(self.automatico)")
    }
}

var c = Carro()
c.motor = "BM"
c.numRodas = "4"
c.automatico = "Sim"
c.imprimeCarro()


/* Exemplo de overloading */
/** Isto é, a mesma funcao n vezes, só que com demais parametros */

class Soma{
 
    func calcula( a : Int, b : Int) -> Int {
       return a+b;
    }
    
    func calcula(a : Double, b: Double) -> Double {
        return a+b;
    }
    
    func calcula(a: String, b: String) -> String {
        return a+b;
    }
}

var calc = Soma();

print( calc.calcula( a:1 , b:1 ));          // 2
print( calc.calcula( a:2.0 , b:2.1 ));      // 4.1
print( calc.calcula( a:"vi" , b:"ram?" ));  // viram