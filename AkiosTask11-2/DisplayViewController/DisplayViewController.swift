//
//  DisplayViewController.swift
//  AkiosTask11-2
//
//  Created by Nekokichi on 2021/02/18.
//

import UIKit

class DisplayViewController: UIViewController {

    @IBOutlet private weak var prefectureNameLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        if let prefectureName = UserDefaults.standard.string(forKey: Prefecture.userDefaultKey) {
            prefectureNameLabel.text = prefectureName
        }
    }

    func setValueToPrefectureNameLabel(text: String) {
        self.prefectureNameLabel.text = text
    }
    
    @IBAction func presentTableVIewController(_ sender: UIButton) {
        let tableVCXib = TableViewController()
        let nav = UINavigationController(rootViewController: tableVCXib)
        nav.modalPresentationStyle = .fullScreen
        self.present(nav, animated: true, completion: nil)
    }
    
}
