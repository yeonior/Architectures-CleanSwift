//
//  MainRouter.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 21.04.2022.
//

import UIKit

protocol MainRoutingLogic {
    func routeToDetails()
}

protocol MainDataPassing {
    var dataStore: MainDataStore? { get }
}

final class MainRouter: NSObject, MainRoutingLogic, MainDataPassing {
    
    weak var viewController: MainViewController?
    var dataStore: MainDataStore?
    
    func routeToDetails() {
        
    }
    
    func navigateToDetails(source: MainViewController, destination: DetailsViewController) {
        source.show(destination, sender: nil)
    }
    
    func passDataToDetails(source: MainDataStore, destination: inout DetailDataStore) {
        
    }
}
