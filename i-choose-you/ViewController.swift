//
//  ViewController.swift
//  i-choose-you
//
//  Created by Émerson M Luz on 20/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbChoose: UILabel!
    @IBOutlet weak var imgPokemon: UIImageView!
    @IBOutlet weak var sgPokemons: UISegmentedControl!
    @IBOutlet weak var lbHp: UILabel!
    @IBOutlet weak var lbHpValue: UILabel!
    @IBOutlet weak var lbAtq: UILabel!
    @IBOutlet weak var lbDef: UILabel!
    @IBOutlet weak var lbAtqValue: UILabel!
    @IBOutlet weak var lbDefValue: UILabel!
    @IBOutlet weak var lbTechniquePrimary: UILabel!
    @IBOutlet weak var lbTechniqueSecondary: UILabel!
    @IBOutlet weak var lbTechNamePrimary: UILabel!
    @IBOutlet weak var lbTechNameSecondary: UILabel!
    @IBOutlet weak var lbTechDamagePrimary: UILabel!
    @IBOutlet weak var lbTechDamageSecondary: UILabel!
    @IBOutlet weak var lbStatus: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad() 
        // Do any additional setup after loading the view.
        
        
        
        layoutSetup()
    }
    
    
    let pikachu = Pokemon(name: .Pikachu, Hp: 50, atk: 15, def: 50, techniquePrimary: "Choque do Trovão", techniqueSecondary: "Raio do Trovão", techPrimaryDamage: 25, techSecondaryDamage: 50)
    
    let bulbassauro = Pokemon(name: .Bulbassauro, Hp: 60, atk: 5, def: 60, techniquePrimary: "Chicote de Vinhas", techniqueSecondary: "Folha Navalha", techPrimaryDamage: 30, techSecondaryDamage: 45)
    
    let charmander = Pokemon(name: .Charmander, Hp: 50, atk: 10, def: 40, techniquePrimary: "Lança Chamas", techniqueSecondary: "Chama Espiral", techPrimaryDamage: 35, techSecondaryDamage: 70)
    
    let squirtle = Pokemon(name: .Squirtle, Hp: 50, atk: 10, def: 70, techniquePrimary: "Rajadas de Bolhas", techniqueSecondary: "Hidro-Bomba", techPrimaryDamage: 20, techSecondaryDamage: 45)
    

    @IBAction func sgPokemonClick(_ sender: Any) {
        
        switch sgPokemons.selectedSegmentIndex {
            case 1:
                imgPokemon.image = UIImage(named: "bulbassauro")
                view.backgroundColor = UIColor.green
                pokemonValues(pokemon: bulbassauro)
            case 2:
                imgPokemon.image = UIImage(named: "charmander")
                view.backgroundColor = UIColor.orange
                pokemonValues(pokemon: charmander)
            case 3:
                imgPokemon.image = UIImage(named: "squirt")
                view.backgroundColor = UIColor.cyan
                pokemonValues(pokemon: squirtle)
            default:
                imgPokemon.image = UIImage(named: "pikachu")
                view.backgroundColor = UIColor.yellow
                pokemonValues(pokemon: pikachu)
        }
    }
    
    func layoutSetup() {
        lbChoose.text = "Qual Pokemon você escolhe?"
        lbChoose.font = UIFont(name: "Arial-BoldMT", size: 20)
        lbChoose.textColor = UIColor.black
        lbChoose.textAlignment = NSTextAlignment.center
        
        lbStatus.text = ""
        lbStatus.backgroundColor = UIColor.lightText
        lbStatus.layer.cornerRadius = 100
        
        view.backgroundColor = UIColor.yellow
        imgPokemon.image = UIImage(named: "pikachu")
        pokemonValues(pokemon: pikachu)
    }
    
    func pokemonValues (pokemon: Pokemon) {
        
        lbHp.text = "HP:"
        lbHp.font = UIFont(name: "Arial-BoldMT", size: 18)
        
        lbHpValue.text = String(pokemon.Hp)
        lbHpValue.font = UIFont(name: "Arial", size: 18)
        
        lbAtq.text = "ATQ:"
        lbAtq.font = UIFont(name: "Arial-BoldMT", size: 18)
        
        lbAtqValue.text = String(pokemon.atk)
        lbAtqValue.font = UIFont(name: "Arial", size: 18)
        
        lbDef.text = "Def:"
        lbDef.font = UIFont(name: "Arial-BoldMT", size: 18)
        
        lbDefValue.text = String(pokemon.def)
        lbDefValue.font = UIFont(name: "Arial", size: 18)
        
        lbTechniquePrimary.text = "Técnica Primária"
        lbTechniquePrimary.font = UIFont(name: "Arial-BoldMT", size: 20)
        
        lbTechNamePrimary.text = pokemon.techniquePrimary
        lbTechNamePrimary.font = UIFont(name: "Arial", size: 18)
        
        lbTechniqueSecondary.text = "Técnica Secundária"
        lbTechniqueSecondary.font = UIFont(name: "Arial-BoldMT", size: 20)
        
        lbTechNameSecondary.text = pokemon.techniqueSecondary
        lbTechNameSecondary.font = UIFont(name: "Arial", size: 18)
        
        lbTechDamagePrimary.text = String(pokemon.techPrimaryDamage)
        lbTechDamagePrimary.font = UIFont(name: "Arial", size: 18)
        
        lbTechDamageSecondary.text = String(pokemon.techSecondaryDamage)
        lbTechDamageSecondary.font = UIFont(name: "Arial", size: 18)
        
    }
}

class Pokemon {
    let name: PokemonName
    let Hp: Int
    let atk: Int
    let def: Int
    let techniquePrimary: String
    let techniqueSecondary: String
    let techPrimaryDamage: Int
    let techSecondaryDamage: Int
    
    init(name: PokemonName, Hp: Int, atk: Int, def: Int, techniquePrimary: String, techniqueSecondary: String, techPrimaryDamage: Int, techSecondaryDamage: Int) {
        self.name = name
        self.Hp = Hp
        self.atk = atk
        self.def = def
        self.techniquePrimary = techniquePrimary
        self.techniqueSecondary = techniqueSecondary
        self.techPrimaryDamage = techPrimaryDamage
        self.techSecondaryDamage = techSecondaryDamage
    }
    
}

enum PokemonName: String {
    case Pikachu = "Pikachu"
    case Bulbassauro = "Bulbassauro"
    case Charmander = "Charmander"
    case Squirtle = "Squirt"
}
