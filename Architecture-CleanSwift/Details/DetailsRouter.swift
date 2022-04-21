//
//  DetailsRouter.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 21.04.2022.
//

import UIKit

protocol DetailsRoutingLogic {
    func routeToMain()
}

protocol DetailsDataPassing {
    var dataStore: DetailDataStore? { get }
}

final class DetailsRouter: NSObject, DetailsRoutingLogic, DetailsDataPassing {
    
    weak var viewController: DetailsViewController?
    var dataStore: DetailDataStore?
    
    func routeToMain() {
        
    }
    
    func navigateToMain(source: DetailsViewController, destination: MainViewController) {
        
    }
}
