//
//  TableViewController.swift
//  AkiosTask11-2
//
//  Created by Nekokichi on 2021/02/18.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet weak var cancelButton: UIBarButtonItem!
    private let cellIdentifier: String = "cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "都道府県を選択"
        let cancelBarButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(popNavigationController))
        self.navigationItem.rightBarButtonItem = cancelBarButton
        self.navigationItem.leftBarButtonItem = nil
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Prefecture.names.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: cellIdentifier)
        cell.textLabel?.text = Prefecture.names[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let navVC = self.navigationController else {
            return
        }
        let displayVC = navVC.viewControllers[navVC.viewControllers.count - 2] as! DisplayViewController
        displayVC.setValueToPrefectureNameLabel(text: Prefecture.names[indexPath.row])
        self.navigationController?.popViewController(animated: true)
    }

    @objc
    private func popNavigationController() {
        self.navigationController?.popViewController(animated: true)
    }

}
