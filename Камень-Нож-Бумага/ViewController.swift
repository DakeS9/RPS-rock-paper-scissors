//
//  ViewController.swift
//  Камень-Нож-Бумага
//
//  Created by Dauren Sunnatulla on 01.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var RPSImageView1: UIImageView!
    @IBOutlet weak var RPSImageView2: UIImageView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var RPSImageView3: UIImageView!
    
    let images = [
        UIImage(named: "камень"),
        UIImage(named: "ножница"),
        UIImage(named: "бумага")
    ]
    
    let comparision = [
        UIImage(named: "<"),
        UIImage(named: "="),
        UIImage(named: ">")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedStart(_ sender: Any) {
        print("tapped start RPS")
        
        RPSImageView1.image = images[randomImageIndex()]
        RPSImageView2.image = images[randomImageIndex()]
        
        if RPSImageView1.image == images[0] && RPSImageView2.image == images[0] {
            RPSImageView3.image = comparision[1]
        } else if RPSImageView1.image == images[1] && RPSImageView2.image == images[1] {
            RPSImageView3.image = comparision[1]
        } else if RPSImageView1.image == images[2] && RPSImageView2.image == images[2] {
            RPSImageView3.image = comparision[1]
        } else if RPSImageView1.image == images[0] && RPSImageView2.image == images[1] {
            RPSImageView3.image = comparision[2]
        } else if RPSImageView1.image == images[1] && RPSImageView2.image == images[2] {
            RPSImageView3.image = comparision[2]
        } else if RPSImageView1.image == images[2] && RPSImageView2.image == images[0] {
            RPSImageView3.image = comparision[2]
        } else if RPSImageView1.image == images[0] && RPSImageView2.image == images[2] {
            RPSImageView3.image = comparision[0]
        } else if RPSImageView1.image == images[1] && RPSImageView2.image == images[0] {
            RPSImageView3.image = comparision[0]
        } else if RPSImageView1.image == images[2] && RPSImageView2.image == images[1] {
            RPSImageView3.image = comparision[0]
        }
    }

    func randomImageIndex() -> Int {
        return Int.random(in: 0..<images.count)
        
    }
}

