//
//  ViewController.swift
//  CustomHeaderView
//
//  Created by Antonis Vozikis on 19/05/2017.
//  Copyright © 2017 Antonis Vozikis. All rights reserved.
//

import UIKit

struct postStruct {
    var image : UIImage!
    var name : String!
}

var heightOfHeader : CGFloat = 44

class ViewController: UITableViewController {

    var arrayOfPosts = [postStruct]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayOfPosts = [postStruct.init(image: #imageLiteral(resourceName: "HeartOn"), name: "Antonis"),postStruct.init(image: #imageLiteral(resourceName: "HeartOn"), name: "Antonis"),postStruct.init(image: #imageLiteral(resourceName: "HeartOn"), name: "Antonis"),postStruct.init(image: #imageLiteral(resourceName: "HeartOn"), name: "Antonis"),postStruct.init(image: #imageLiteral(resourceName: "HeartOn"), name: "Antonis"),postStruct.init(image: #imageLiteral(resourceName: "HeartOn"), name: "Antonis")]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return arrayOfPosts.count
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return heightOfHeader
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)?.first as! HeaderView
        headerView.headerImageView.image = arrayOfPosts[section].image
        headerView.headerLabel.text = arrayOfPosts[section].name
        return headerView
    }

}

