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
    
}


extension HomeViewController {
    
    func setupTableView() {
        
    }
    
}
