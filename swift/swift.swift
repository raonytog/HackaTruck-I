//* strings *///////////////////////////////////////////////////////////////////////////
/* eh igual python */

/* array *//////////////////////////////////////////////////////////////////////////////
var num = [Int]() // array vazio
num.append(5)
num.append(1)

for i in num {
    print(i)
}

/* Dicionario *//////////////////////////////////////////////////////////////////////////
// tipo inferido de precosDosProdutos: Dictionary<String, Double>
// chaves String e valores Double, também pode ser escrito como 
// [String: Double] em Swift
var precosDosProdutosMutavel = ["Livro": 20.0, "Lapiseira": 2.0, "Caneta": 4.0] 
precosDosProdutosMutavel["Borracha"] = 0.5 
/* 
* precosDosProdutosMutavel agora vale: 
* ["Livro": 20.0, "Lapiseira": 2.0, "Caneta": 4.0, "Borracha": 0.5] 
*/

for (chave, valor) in precosDosProdutosMutavel {
    print("O preço de \(chave) é: \(valor)")
}

/* Enum *//////////////////////////////////////////////////////////////////////////
enum CaracterEspecial: Character {
    case Tab = "\t"
    case Linefeed = "\n"
    case CarriageReturn = "\r"
}

enum HorarioTrem {
    case NoHorario
    case Atrasado(Int) // atrasado por alguns minutos
}

func descricao(status: HorarioTrem) {
    switch status {
    case .NoHorario:
        print("O trem está no horário")
    case .Atrasado(let min):
        print("O trem está atrasado por \(min) minutos")
    }
}

var status = HorarioTrem.NoHorario
descricao(status: status)
// Será impresso: "O trem está no horário"

status = .Atrasado(5)
descricao(status: status)
// Será impresso: "O trem está atrasado por 5 minutos"

/* Funcoes *//////////////////////////////////////////////////////////////////////////
func buscarLatitudeLongitude() -> (String, Double, Double) {
    return ("Campinas", -22.002, -25.012)
}

let (cidade, lat, lng) = buscarLatitudeLongitude()
// Agora, temos: cidade = "Campinas, lat = -22.002 e lng = -25.012


print(cidade)
print(lat)
print(lng)

