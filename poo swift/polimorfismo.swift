/** Podemos reescrever funcoes presentes na classe base */

class Animal {
    var nome: String?
    var raca: String?
    
    func emitirSom() {
        print("...")
    }
    
    func comer(comida: String) {
        print("Tudo!")
    }
    
    func escalar() {
        print("Estou escalando!")
    }
    
    func babar() {
        print("Sou babao!")
    }
}

class Gato: Animal {
    override func emitirSom() {
        print("Miauuu")
    }
}

class Cao: Animal {
    override func emitirSom() {
        print("Au au au")
    }
}

var cachorro = Cao()
cachorro.emitirSom()

var gato = Gato()
gato.emitirSom()
