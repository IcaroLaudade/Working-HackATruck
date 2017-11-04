//
//  Categorias.swift
//  WorkingZCriarConta
//
//  Created by Student on 20/10/17.
//  Copyright © 2017 Student. All rights reserved.
//

import Foundation
class Categoria{
    var nome : String?
    var servicos : [String]
    init(nome:String,servicos : [String]){
    self.nome = nome
    self.servicos = servicos
    }

}

class CategoriaDAO{
    let categoria = [Categoria(nome: "Reformas",servicos: ["Pintura" , "Reboco" , "Encanamento" , "Construção" , "Azuleijos" , "Pisos"]),
                     Categoria(nome:"Elétrica",servicos:["Eletricista" , "Resistência" , "Lâmpadas"]),
                     Categoria(nome:"Consertos",servicos:["Eletrônico" , "Eletrodoméstico" , "Mecânico" , "Encanamento"]),
                     Categoria(nome:"Autos",servicos:["Conserto" , "Reparos" , "Funilaria" , "Lavagem"]),
                     Categoria(nome:"Design",servicos:["Pintura" , "Papel de Parede" , "Decoração" , "Layout"]),
                     Categoria(nome:"Informática",servicos:["Computadores" , "Notebooks" , "Celulares" , "Tablets" , "Impressoras" , "Roteadores"]),
                     Categoria(nome:"Culinária",servicos:["Buffet" , "Cozinheira" , "Churrasqueiro" , "Encomendas"]),
                     Categoria(nome:"Serviços Domésticos",servicos:["Diarista" , "Baba" , "Lavanderia"]),
                     Categoria(nome:"Beleza",servicos:["Cabelereiro" , "Manicure" , "Pedicure" , "Maquiadora"]),
                     Categoria(nome:"Saúde",servicos:["Enfermeiro(a)" , "Socorrista" , "Cuidador(a) de Idosos" , "Nutricionista" , "Dedetizadora" , "Consulta Médica"]),
                     Categoria(nome:"Compra de Materiais",servicos:["Depósito"])];
        func getCategorias()->[Categoria]{
        return categoria
        }
    func getServicosPorCategoria(categoria : String)->[String]{
        var servicos = [String]()
        for i in self.categoria{
            if i.nome == categoria {
                for j in i.servicos{
                servicos.append(j)
                }
                break
            }
        }
        return servicos
    }
}
