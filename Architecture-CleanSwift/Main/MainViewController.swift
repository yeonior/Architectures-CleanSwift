//
//  MainViewController.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 02.04.2022.
//

import UIKit

protocol MainDisplayLogic: AnyObject {
    func displayPhotos(viewModel: MainViewModel)
}

final class MainViewController: UIViewController, MainDisplayLogic {
    
    var interactor: MainBusinessLogic?
    
    private var tableView = UITableView()
    private var rows: [CellIdentifiable] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MainConfigurator.shared.configure(with: self)
        configureUI()
        getPhotos()
    }
    
    // MARK: - Private methods
    private func configureUI() {
        
        // view
        title = "Photos"
        
        // tableView
        tableView = UITableView(frame: view.bounds, style: .insetGrouped)
        tableView.register(MainTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        
        // subviews adding
        view.addSubview(tableView)
    }
    
    private func getPhotos() {
        interactor?.fetchPhotos()
    }
    
    // MARK: - Internal methods
    func displayPhotos(viewModel: MainViewModel) {
        rows = viewModel.rows
        self.tableView.reloadData()
    }
}

// MARK: - UITableViewDataSource
extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellViewModel = rows[indexPath.row]
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellViewModel.cellIdentifier, for: indexPath) as? MainTableViewCell {
            
            cell.viewModel = cellViewModel
            
            return cell
        }
        
        return UITableViewCell()
    }
}

// MARK: - UITableViewDelegate
extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        CGFloat(rows[indexPath.row].cellHeight)
    }
}

