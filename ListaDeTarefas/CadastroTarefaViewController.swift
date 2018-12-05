//
//  CadastroTarefaViewController.swift
//  ListaDeTarefas
//
//  Created by Victor on 03/12/2018.
//  Copyright © 2018 Rinver. All rights reserved.
//

import UIKit

class CadastroTarefaViewController: UIViewController {
    
    @IBOutlet weak var campoTexto: UITextField!
    
    @IBAction func adicionarTarefa(_ sender: Any){
       
        if let textoDigitado = campoTexto.text {
            
            let tarefa = TarefaUserDefaults()
            tarefa.salvar(tarefa: textoDigitado)
            campoTexto.text = ""
            let dados = tarefa.listar()
            print(dados)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
