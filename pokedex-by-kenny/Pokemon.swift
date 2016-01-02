//
//  Pokemon.swift
//  pokedex-by-kenny
//
//  Created by KENNETH GRANDBERRY on 12/14/15.
//  Copyright © 2015 KENNETH GRANDBERRY. All rights reserved.
//

import Foundation

class Pokemon {
    private var _name: String!
    private var _pokedexId: Int!
    private var _description:String!
    private var _type:String!
    private var _defense:String!
    private var _height:String!
    private var _weight:String!
    private var _attack:String!
    private var _nextEvolutionTxt:String!
    
    
    var name: String {
        return _name
    }
    
    var pokedexId: Int {
        return _pokedexId
    }
    
    init(name: String, pokedexId: Int){
        self._name = name
        self._pokedexId = pokedexId
    }

}