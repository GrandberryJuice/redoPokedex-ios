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
        let img = UIImage(named: "\(pokemon.pokedexId)")
        mainImg.image = img
        currentevoImg.image = img
        
       
        
        pokemon.downloadPokemonDetails { () -> () in
        //this will be called after download is done
            self.updateUI()
        }
    }
    
    func updateUI() {
        descriptionLbl.text = pokemon.descripton
        typeLbl.text = pokemon.type
        defenseLbl.text = pokemon.defense
        heightLbl.text = pokemon.height
        pokedexIdLbl.text = "\(pokemon.pokedexId)"
        nextevoImg.image = UIImage(named:pokemon.nextEvolutionId)
        weightLbl.text = pokemon.weight
        baseattackLbl.text = pokemon.attack
        
    
        if pokemon.nextEvolutionId == "" {
            evoLbl.text = "No Evolutions"
            nextevoImg.hidden = true
        } else {
            nextevoImg.hidden = false
            nextevoImg.image = UIImage(named: pokemon.nextEvolutionId)
            var str = "Next Evolution: \(pokemon.nextEvolutionTxt)"
            evoLbl.text = str
            
            if pokemon.nextEvolutionLvl != "" {
                str += " -LVL \(pokemon.nextEvolutionLvl)"
            }
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
