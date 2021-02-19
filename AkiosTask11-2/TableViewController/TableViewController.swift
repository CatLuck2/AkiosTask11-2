//
//  TableViewController.swift
//  AkiosTask11-2
//
//  Created by Nekokichi on 2021/02/18.
//

import UIKit

class TableViewController: UITableViewController, NavigationControllerProtocol {

    @IBOutlet weak var cancelButton: UIBarButtonItem!
    private let cellIdentifier: String = "cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNavigationController()
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

    func setUpNavigationController() {
        self.navigationItem.title = "都道府県を選択"
    }

}
