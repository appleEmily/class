//
//  ViewController.swift
//  Class
//
//  Created by Emily Nozaki on 2022/01/28.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorAray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mentorAray.append(Mentor(name: "ながた", course: "iPhone", imageName: "nagata"))
        mentorAray.append(Mentor(name: "りょう", course: "Unity", imageName: "ryo"))
        mentorAray.append(Mentor(name: "ながた", course: "映像", imageName: "taithi"))
        
        setUI()
    }
    
    
    func setUI() {
        imageView.image = mentorAray[index].getImage()
        nameLabel.text = mentorAray[index].name
        courseLabel.text = mentorAray[index].course
    }

    @IBAction func mae() {
        if index == 0 {
            index = 2
        } else {
            index -= 1
        }
        setUI()
    }
    
    @IBAction func tugi() {
        if index == 2 {
            index = 0
        } else {
            index += 1
        }
        setUI()
    }

}


