import UIKit

class Persona{

    var saludo = ""
    var camino  = 0

    func caminar(pasos:Int){
        self.camino = pasos
    }

    func mensaje(palabra:String){
        self.saludo = palabra
    }
}

var jean = Persona()
jean.caminar(pasos: 51)
jean.mensaje(palabra: "mucho gusto")

print("jean a dado \(jean.camino) pasos y dice \(jean.saludo)")

struct pantalla
{
    var alto:Int
    var ancho:Int

    init (alto:Int, ancho:Int)
    {
        self.alto = alto
        self.ancho = ancho
    }

    func QueResolucionEs() -> (Int,Int)
    {
        return (self.alto, self.ancho)
    }
}

var hd = pantalla(alto: 1080, ancho: 800)

print(hd.QueResolucionEs())


extension Int{
    func horas() -> Int{
        return self*3600
    }
}

print(3.horas())

extension String{
    func diasSemanas() -> Int{
        var numeroMes = 0
        if(self == "domingo"){
            numeroMes = 1
        }
        else if(self == "lunes"){
            numeroMes = 2
        }
         else if(self == "martes"){
            numeroMes = 3
        }
         else if(self == "miercoles"){
            numeroMes = 4
        }
         else if(self == "jueves"){
            numeroMes = 5
        }
         else if(self == "viernes"){
            numeroMes = 6
        }
         else if(self == "sabado"){
            numeroMes = 7
        }
        return numeroMes
    }
}

print("sabado".diasSemanas())

//optional 1
var numero = ["lunes":1,"martes":2]
var existe:Int?

existe = numero["miercoles"]

if let temp = numero["miercoles"]{
    print("si existe")
}else{
    print("no existe")
}

//optional 2
let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]
var existe2:Int?

existe2 = dias["GDL"]

if let temp = dias["GDL"]{
    print("si existe")
}else{
    print("no existe")
}
