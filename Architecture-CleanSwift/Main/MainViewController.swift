//
//  MainViewController.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 02.04.2022.
//

import UIKit

protocol MainDisplayLogic: AnyObject {
    
}

final class MainViewController: UIViewController, MainDisplayLogic {
    
    private var tableView = UITableView()
    var interactor: MainBusinessLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MainConfigurator.shared.configure(with: self)
        configureUI()
    }
    
    // MARK: - Private methods
    private func configureUI() {
        
        // view
        title = "Photos"
        
        // tableView
        tableView = UITableView(frame: view.bounds, style: .insetGrouped)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        
        // subviews adding
        view.addSubview(tableView)
    }
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        UITableViewCell()
    }
}

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

