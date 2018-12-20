//
//  SelectionSection.swift
//  choice
//
//  Created by Ling on 12/20/18.
//  Copyright © 2018 Ling. All rights reserved.
//

import UIKit

class SelectionSection: NSObject {
    var candidatatesList: [Candidate] = []
    var selectionInProgress: Bool
    var record: [(candi1: Int, candi2: Int, pairWinner: Int)]
    var sectionID: Int
    var date: Date
    
    init(candidatatesList: [Candidate], selectionInProgress: Bool, record: [(candi1: Int, candi2: Int, pairWinner: Int)], sectionID: Int, date: Date) {
        self.candidatatesList = candidatatesList
        self.selectionInProgress = selectionInProgress
        self.record = record
        self.sectionID = sectionID
        self.date = date
    }
    
    func selectionWinner() -> [Candidate] {
        return [Candidate]()
    }
    
    
}

