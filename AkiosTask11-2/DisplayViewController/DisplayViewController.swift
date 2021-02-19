//
//  DisplayViewController.swift
//  AkiosTask11-2
//
//  Created by Nekokichi on 2021/02/18.
//

import UIKit

class DisplayViewController: UIViewController {

    @IBOutlet private weak var prefectureNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNavigationController()
    }

    func setValueToPrefectureNameLabel(text: String) {
        self.prefectureNameLabel.text = text
    }

    private func setUpNavigationController() {
        guard let _ = self.navigationController else {
            return
        }
        self.navigationItem.title = "都道府県"
    }
    
    @IBAction func presentTableVIewController(_ sender: UIButton) {
        let tableVCXib = TableViewController()
        tableVCXib.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(tableVCXib, animated: true)
    }
    
}
