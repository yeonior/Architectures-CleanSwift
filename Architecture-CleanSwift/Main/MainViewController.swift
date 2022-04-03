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
    
    var interactor: MainBusinessLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

