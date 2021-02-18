//
//  DisplayView.swift
//  AkiosTask11-2
//
//  Created by Nekokichi on 2021/02/18.
//

import UIKit

class DisplayView: UIView {

    @IBOutlet weak var PrefectureNameLabel: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func loadNib() {

    }

    @IBAction func presentTableViewController(_ sender: UIButton) {
    }

}
