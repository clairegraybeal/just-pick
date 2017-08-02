//
//  ViewController.swift
//  Justpick_v1
//
//  Created by Claire Graybeal on 7/29/17.
//  Copyright © 2017 Claire Graybeal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var postData = ["Message1, Message2, Message3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        guard let url = URL(string: "https://api.themoviedb.org/3/search/movie?api_key=f1775864341e965806022200bdc5beaa&query=Fight+Club")
        else {
            fatalError("We couldn't make a URL object")
        }
        
        let dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
            //code you want to perform....
            
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return postData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCell")
        
        cell?.textLabel?.text = postData[indexPath.row]
        
        return cell!
        
    }

}

