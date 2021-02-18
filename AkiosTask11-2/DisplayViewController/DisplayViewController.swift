//
//  DisplayViewController.swift
//  AkiosTask11-2
//
//  Created by Nekokichi on 2021/02/18.
//

import UIKit

class DisplayViewController: UIViewController {

    @IBOutlet weak var prefectureNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewDidLayoutSubviews() {
        print(prefectureNameLabel.frame)
    }
    
    @IBAction func presentTableVIewController(_ sender: UIButton) {
        let tableVCXib = TableViewController()
        tableVCXib.modalPresentationStyle = .fullScreen
        present(tableVCXib, animated: true, completion: nil)
    }
    
}
