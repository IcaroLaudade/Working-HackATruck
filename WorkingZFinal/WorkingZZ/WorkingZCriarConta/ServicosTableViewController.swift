//
//  ServicosTableViewController.swift
//  WorkingZCriarConta
//
//  Created by Icaro Alcantara Laudade on 25/10/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class ServicosTableViewController: UITableViewController {
    var categoriaDAO = CategoriaDAO()
    var categoriaFiltro = ""
    var servicos = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        servicos = categoriaDAO.getServicosPorCategoria(categoria: categoriaFiltro)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
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
        return servicos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "servicoIdentifier", for: indexPath) as! ServicosTableViewCell
        cell.servico.text = servicos[indexPath.row]
        // Configure the cell...

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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "mapaSegue" {
            
            // obtendo uma instância da nova viewController que será exibida
            if let mapa = segue.destination as? MapViewController {
                let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
                let linha = tableView.cellForRow(at: (indexPath)!) as! ServicosTableViewCell
                mapa.categoria = categoriaFiltro
                if let labelLinha = linha.servico.text{
                mapa.servico = labelLinha
                }
                // mapa.nomeAnima = linha.nomeAnimal.text!
                // mapa.familiaAni = linha.familiaAnimal.text!
            }
    }
    }

}
