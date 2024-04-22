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

/*********** polimorfismo ***********/
/* sao as caracteristicas em comum (heranca), mas com algumas diferencas */