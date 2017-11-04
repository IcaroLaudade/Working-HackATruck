//
//  CategoriasTableViewController.swift
//  WorkingZCriarConta
//
//  Created by Student on 20/10/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class CategoriasTableViewController: UITableViewController {
    var categorias = [Categoria]()
    var isLojaFisica : Bool?
    var isAtendimentoCasa : Bool?
    let categoriaDAO =  CategoriaDAO()
    override func viewDidLoad() {
        super.viewDidLoad()
        categorias = categoriaDAO.getCategorias()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return categorias.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoriaIdentifier", for: indexPath) as! CategoriasTableViewCell
        print(categorias[indexPath.row].nome!)
        cell.categoria.text = categorias[indexPath.row].nome

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "servicoSegue" {
            
            // obtendo uma instância da nova viewController que será exibida
            if let servico = segue.destination as? ServicosTableViewController {
                let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
                let linha = tableView.cellForRow(at: (indexPath)!) as! CategoriasTableViewCell
                if let ser = linha.categoria.text{
                    servico.categoriaFiltro = ser
                    
                }
               // mapa.nomeAnima = linha.nomeAnimal.text!
               // mapa.familiaAni = linha.familiaAnimal.text!
            }
    }
    
    }
}
