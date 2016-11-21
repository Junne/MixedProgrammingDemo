//
//  TwoViewController.swift
//  MixedProgrammingDemo
//
//  Created by baijf on 21/11/2016.
//  Copyright © 2016 Junne. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        let viewController = ViewController()
        viewController.helloOC()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: UITableViewDelegate
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TwoCell", for: indexPath) as! TwoTableViewCell
        cell.numbeLabel.text = String(format:"number %i", indexPath.row)
        cell.contentLabel.text = String(format: "Hello No.%i", indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    

}

//extension TwoViewController:UITableViewDataSource, UITableViewDelegate {
//    
//    // MARK:
//    
//}
