//
//  TableViewController.swift
//  AkiosTask11-2
//
//  Created by Nekokichi on 2021/02/18.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet private weak var cancelButton: UIBarButtonItem!
    private let cellIdentifier: String = "cell"
    private let navigationTitle: String = "都道府県"

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
        UserDefaults.standard.setValue(Prefecture.names[indexPath.row], forKey: Prefecture.userDefaultKey)
        self.dismiss(animated: true, completion: nil)
    }

    private func setUpNavigationController() {
        guard let _ = self.navigationController else {
            return
        }
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancel))
        self.navigationItem.rightBarButtonItem = cancelButton
        self.navigationItem.title = navigationTitle
    }

    @objc
    private func cancel() {
        self.dismiss(animated: true, completion: nil)
    }

}
