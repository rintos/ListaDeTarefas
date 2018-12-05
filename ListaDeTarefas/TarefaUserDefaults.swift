//
//  TarefaUserDefaults.swift
//  ListaDeTarefas
//
//  Created by Victor on 03/12/2018.
//  Copyright © 2018 Rinver. All rights reserved.
//

import UIKit

class TarefaUserDefaults {
    
    let chave = "listaTarefas"
    var tarefas: [String] = []
    
    func salvar(tarefa:String){
        
        tarefas = listar()
        tarefas.append(tarefa)
        UserDefaults.standard.set( tarefas, forKey: chave)
        
    }
    
    
    func listar() -> Array<String> {
        
        let dados = UserDefaults.standard.object(forKey: chave)
        
        if dados != nil {
            return dados as! Array<String>
        }else {
            return []
        }
        
    }
    
    func remover(indice: Int) {
        
        //recuperar tarefas ja salvas
        tarefas = listar()
        
        tarefas.remove(at: indice)
        UserDefaults.standard.set(tarefas, forKey: chave)
        
    }
    
    
    
    
    
}
















