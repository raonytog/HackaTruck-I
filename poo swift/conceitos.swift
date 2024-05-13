/*********** classes e objetos ***********/
/*
Basicamente, classes são as categorias e os objetos oq se encaixam nas categorias
Como a classe Carro, os objetos dela podem ser 'gol', 'porche', 'bmw'...
*/

class Carro {
    // propriedades sao os atributos comuns as classe
    // o '?' pós as variaveis significa ser opicional
    var ano: Int?
    var marca: String?
    var modelo: String?
    var versao: String?
    var cor: String?

    // ja os metodos, sao as funcoes que o objeto da classe pode comportar, neste caso:
    // andar, dar re, buzinar...
    func andar() {
        print("Andando para frente")
    }

    func darRe() {
        print("Andando para tras")
    }

    func buzina() {
        print("BIMMMMMMMMMM BIMMMMMMMMMM")
    }

}

// em algumas ocasioes, eh mais seguro reservar algumas informacoes que nem todos devem ter acesso
class Correntista {
    var nome: String = "Raony"
    private var saldo: Double
}

var pessoa = Correntista() // criando um objeto da classe
pessoa.saldo = 2.50        // este acesso da erro por causa do 'private'


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
}

/*********** polimorfismo ***********/
/* sao as caracteristicas em comum (heranca), mas com algumas diferencas */
class Triangulo {
    var base, altura: Float?

    func calcArea() -> Float {
        return (self.base * self.altura)/2
    }
}

class Quadrado {
    var lado: Float?

    func calcArea() -> Float {
        return self.lado * self.lado
    }
}
/* Note que, ambas classes possuem metodos com a mesma assinatura, poŕem, internamente,
* fazem coisas diferentes. Tambem eh possivel reescrever um metodo de uma classe filha */
class Veiculo {
    func buzinar() -> void {
        print("Biii biiii")
    }
}

class Bicicleta: Veiculo {
    overriide  func buzinar() -> void {
        print("trimmm trimmm")
    }
}

/*********** encapsulamento ***********/
/* sao ferramentas que limitam o acesso de alguns objetos
   em swift, tem 3:
   * public: qlqr um pode acessar
   * internal: apenas acesso na propria classe e nas hereditarias (padrao)
   * private: apenas a propria classe pode acessar os atributos do objeto
*/
class Carro {
    var modelo: String = "Gool"
    
    //Criamos a propriedade privada
    private var qtdeCombustivel: Float = 25
    
    func quantidadeCombustivel()->Void{
        print(qtdeCombustivel)
    }
}

//Criamos o objeto da classe
var carro1 = Carro()

//Tenta fazer a alteração da qtdeCombustivel, atribuindo diretamente no atributo qtdeCombustivel       
carro1.qtdeCombustivel = 35
//Resultado: erro, pois o atributo 'qtdeCombustivel' é privado