//
//  Mentor.swift
//  Class
//
//  Created by Emily Nozaki on 2022/01/30.
//

import UIKit

class Mentor {
    
    var name: String //メンター名
    var course: String //コース名
    var imageName: String //顔写真(画像名)
    
    init(name: String, course:String, imageName: String) {
        self.name = name
        self.course = course
        self.imageName = imageName
    }
    
    func getImage() -> UIImage {
        return UIImage(named: imageName)!
    }
    
}











