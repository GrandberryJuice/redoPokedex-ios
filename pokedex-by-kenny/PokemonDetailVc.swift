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
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokedexIdLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var baseattackLbl: UILabel!
    @IBOutlet weak var currentevoImg: UIImageView!
    @IBOutlet weak var nextevoImg: UIImageView!
    @IBOutlet weak var evoLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pokemonName.text = pokemon.name
        mainImg.image = UIImage(named:"\(pokemon.pokedexId)")
       pokemon.downloadPokemonDetails { () -> () in
        //this will be called after download is done
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true
            , completion: nil)
    
    }



}
