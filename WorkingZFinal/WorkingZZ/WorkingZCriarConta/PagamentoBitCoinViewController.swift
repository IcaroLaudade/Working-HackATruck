//
//  PagamentoBitCoinViewController.swift
//  WorkingZCriarConta
//
//  Created by Student on 26/10/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class PagamentoBitCoinViewController: UIViewController {

    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBAction func pagarBitCoin(_ sender: Any) {
        indicator.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
            self.performSegue(withIdentifier: "bitcoinSegue", sender: self)
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
