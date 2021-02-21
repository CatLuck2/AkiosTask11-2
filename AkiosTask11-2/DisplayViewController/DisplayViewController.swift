//
//  DisplayViewController.swift
//  AkiosTask11-2
//
//  Created by Nekokichi on 2021/02/18.
//

import UIKit

class DisplayViewController: UIViewController {

    @IBOutlet private weak var prefectureNameLabel: UILabel!

    @IBAction func presentTableVIewController(_ sender: UIButton) {
        let tableVCXib = TableViewController(
            didSelectPrefecture: { [weak self] prefecture in
                self?.prefectureNameLabel.text = prefecture
                self?.dismiss(animated: true, completion: nil)
            },
            didCancel: { [weak self] in
                self?.dismiss(animated: true, completion: nil)
            }
        )
        let nav = UINavigationController(rootViewController: tableVCXib)
        self.present(nav, animated: true, completion: nil)
    }
}
