
/* classe */
class Person {
    /* atributos */
    var name: String? 
    var age: String?

    /* metodos */
    func printName() {
        print(name)
    }

    func defPersonName(name: String) {
        self.name = name;
    }
}

var a = Person()
a.defPersonName(name: "Raony")
a.printName()

/* Estado, comportamento e mensagems */
/* Estado nos dias sobre as propriedades do objeto.
* Por exemplo, dado um Humano, o Humano tem peso, idade, altura, cor de pele, de cabelo...
*            , dado um Carro, o Carro tem rodas, cor, peso, ano de fabricacao...
* Ou seja, sao os atributos!
*
* Comportamentos sao as acoes que o objeto consegue executar.
* Por exemplo, dado um Humano, andar(), falar(), ouvir()...
*            , dado um Carro, acelerar(), frear(), buzinar()...
* Ou seja, sao os metodos!
*
* Mensagens sao a comunicacao entre o objeto e os metodos
* Mensagens enviadas as variaveis: msg que resgata ou altera o valor da variavel
* Mensagens enviadas aos metodos: msg que chama o metodo
*/

/* Exemplo */
class Carro {

    var ano: Int? // Estas são algumas das propriedades da classe Carro
    var marca: String?
    var modelo: String?
    var versao: String?
    var cor: String?
    
    func descricao(){
        print("O carro \(self.modelo!) da marca \(self.marca!), 
               versao \(self.versao!) e ano \(self.ano!), 
               é da cor \(self.cor!)")
    }
}

/* criando os carros */
var carro1 = Carro()

/* definindo os atributos/estados deles */
carro1.cor = "Laranja"
carro1.ano = 1980
carro1.modelo = "Fuxca"
carro1.versao = "Turbo Shift Auto"
carro1.marca = "WW"

print(carro1.descricao())

