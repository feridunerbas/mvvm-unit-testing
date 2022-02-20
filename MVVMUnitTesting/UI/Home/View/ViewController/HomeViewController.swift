//
//  HomeViewController.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import UIKit

class HomeViewController: BaseViewController<HomeViewModelProtocol> {
    
    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    override func subscribeViewModel() {
        super.subscribeViewModel()
        viewModel.reloadNews = { [weak self] in
            self?.tableView.reloadData()
        }
    }
    
}

// MARK: - UITableView
extension HomeViewController {
    
    func setupTableView() {
        tableView.register(typeOfnib: NewsCell.self)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

// MARK: - UITableViewDelegate
extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.selectedItem(atIndexPath: indexPath)
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
    
}

// MARK: - UITableViewDataSource
extension HomeViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        viewModel.sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.sections[section].items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = viewModel.sections[indexPath.section]
        let item = section.items[indexPath.row]
        switch item {
        case .regular(let cellViewModel):
            let cell: NewsCell = tableView.dequeue(forIndexPath: indexPath)
            cell.bind(viewModel: cellViewModel)
            return cell
        }
    }
    
}
