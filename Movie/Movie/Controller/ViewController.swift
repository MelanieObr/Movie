//
//  ViewController.swift
//  Movie
//
//  Created by Mélanie Obringer on 02/11/2019.
//  Copyright © 2019 Mélanie Obringer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
       super.viewDidLoad()
    }
    
    // convert the year in type Int to String
    func convertToString(value: Int) -> String {
        return String(value)
    }

}
extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Movie.list.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        let movie = Movie.list[indexPath.row]
        
        // add in textlabel classment and movie's title
        cell.textLabel?.text = ("\(indexPath.row + 1). \(movie.title)")
        // add in detail movie's year
        cell.detailTextLabel?.text = convertToString(value: movie.year)
        return cell
    }
    
}
