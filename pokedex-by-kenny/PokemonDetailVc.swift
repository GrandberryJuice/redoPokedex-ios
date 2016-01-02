//
//  PokemonDetailVc.swift
//  pokedex-by-kenny
//
//  Created by KENNETH GRANDBERRY on 12/26/15.
//  Copyright © 2015 KENNETH GRANDBERRY. All rights reserved.
//

import UIKit

class PokemonDetailVc: UIViewController {
    
    var pokemon:Pokemon!
    
    @IBOutlet weak var pokemonName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pokemonName.text = pokemon.name

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
