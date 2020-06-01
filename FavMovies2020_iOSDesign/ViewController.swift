//
//  ViewController.swift
//  FavMovies2020_iOSDesign
//
//  Created by marvin evins on 5/31/20.
//  Copyright © 2020 websavantmedia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    let cellId = "cellId"
    
    let FavRomComs = ["Rom Coms", "Love and BasketBall", "Poetic Justice", "Queen and Slim", "Fools Rush In", "A Knights Tale"]
    let FavActionFlicks = ["Action","Die Hard", "Siege of JadotsVille", "6 Underground", "Extraction", "Ip Man","Mission Impossible"]
    let FavSuperHeroFlicks = ["SuperHeroFilms", "Black Panther", "Capt America: The Winter Soldier", "The Matrix","Avengers"]
    
    let twoDimensionalArray = [
        ["Rom Coms", "Love and BasketBall", "Poetic Justice", "Queen and Slim", "Fools Rush In", "A Knights Tale"],
        ["Action","Die Hard", "Siege of JadotsVille", "6 Underground", "Extraction", "Ip Man","Mission Impossible"],
        ["SuperHeroFilms", "Black Panther", "Capt America: The Winter Soldier", "The Matrix","Avengers"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationItem.title = "Movie Favs"
        navigationController?.navigationBar.prefersLargeTitles  = true
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        
    }
   
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//               let label = UILabel()
//               label.text = "Header"
//               label.backgroundColor = UIColor.lightGray
//
//               return label
//    }
//
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return twoDimensionalArray[section][0]
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return twoDimensionalArray.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return twoDimensionalArray[section].count
        
//        if section == 0 {
//            return FavRomComs.count
//        }
//        else if section == 1{
//            return FavActionFlicks.count
//        }
//
//            return FavSuperHeroFlicks.count
      
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
//        let favRomComs = self.FavRomComs[indexPath.row]
//        let name = indexPath.section == 0 ? FavRomComs[indexPath.row] : FavActionFlicks[indexPath.row]
        
        let name = twoDimensionalArray[indexPath.section][indexPath.row]
        
        cell.textLabel?.text = name
        
//        cell.textLabel?.text = "\(name) Section:\(indexPath.section) Row:\(indexPath.row)"
        cell.textLabel?.text = "\(name)"
        return cell
    }
    


}

