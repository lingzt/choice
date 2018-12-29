//
//  Candidate.swift
//  choice
//
//  Created by Ling on 12/9/18.
//  Copyright © 2018 Ling. All rights reserved.
//

import UIKit

class Candidate: NSObject {
    var image: UIImage
    var title: String
    let candidateID: Int
    
    init(candidateID: Int, title: String, image: UIImage) {
        self.candidateID = candidateID
        self.title = title
        self.image = image
    }
    
    

}
