//
//  ViewController.swift
//  Quotes-Maker
//
//  Created by mac on 2022/03/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var textLabel: UILabel!

    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var textBox: UIView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    let quotes = [
    
        Quotes(contents: "너 자신을 알라", name: "소크라테스"),
        Quotes(contents: "때가 오면 결말이 난다", name: "일랜시아"),
        Quotes(contents: "편견이란 실효성이 없는 의견이다", name: "암브로스 빌"),
        Quotes(contents: "분노는 바보들의 가슴속에서만 살아간다", name: "아인슈타인")
        
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setting()
        
        
    }

    
    func setting(){
        
        textBox.backgroundColor = .systemGray6
        
        textLabel.text = "때가 오면 결말이 난다."
        nameLabel.text = "일랜시아"
        textLabel.font = UIFont(name: "Arial", size: 12)
        textLabel.textAlignment = .center
        textLabel.sizeToFit()
        
    }
    
    @IBAction func clickedButton(_ sender: UIButton) {
        
        let random = Int(arc4random_uniform(4))
        let quote = quotes[random]
        
        self.textLabel.text = quote.contents
        self.nameLabel.text = quote.name
        
    }
    
}

