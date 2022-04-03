//
//  DetailsViewController.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 03.04.2022.
//

import UIKit

protocol DetailsDisplayLogic: AnyObject {
    
}

final class DetailsViewController: UIViewController, DetailsDisplayLogic {
    
    var interactor: MainBusinessLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
