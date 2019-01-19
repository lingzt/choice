//
//  SectionSetupVC.swift
//  choice
//
//  Created by Ling on 12/20/18.
//  Copyright © 2018 Ling. All rights reserved.
//

import UIKit

class SectionSetupVC: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var testTextView: UITextField!
    
    var candidateList = [Candidate]()
    var candidateListWithPlaceHolder = [Candidate]()
    var candiatePlaceHolder = Candidate(candidateID: 0, title: "somename", image: UIImage(named: "addPhotoIcon"))
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        let nib = UINib(nibName: "CandidateCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "CandidateCollectionViewCell")
        candidateListWithPlaceHolder = [candiatePlaceHolder] + candidateList
    }
}


extension SectionSetupVC: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
//        return candidateListWithPlaceHolder.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: "CandidateCollectionViewCell"), for: indexPath) as? CandidateCollectionViewCell else {return UICollectionViewCell()}
        cell.setupCell(candidate: candidateListWithPlaceHolder[0])
//        cell.Delegte = self
        
        return cell
    }
    
}

extension SectionSetupVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }

}

extension SectionSetupVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.frame.width/3.5, height: self.collectionView.frame.height/2.9)
    }
}
