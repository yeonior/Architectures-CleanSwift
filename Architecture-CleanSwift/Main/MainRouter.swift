//
//  MainRouter.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 21.04.2022.
//

import UIKit

protocol MainRoutingLogic {
    func routeToDetails(at indexPath: IndexPath)
}

protocol MainDataPassing {
    var dataStore: MainDataStore? { get }
}

final class MainRouter: MainRoutingLogic, MainDataPassing {
    
    weak var viewController: MainViewController?
    var dataStore: MainDataStore?
    
    func routeToDetails(at indexPath: IndexPath) {
        let destinationVC = DetailsViewController()
        var destinationDS = destinationVC.router!.dataStore!
        passDataToDetails(source: dataStore!, destination: &destinationDS, indexPath: indexPath)
        navigateToDetails(source: viewController!, destination: destinationVC)
    }
    
    func navigateToDetails(source: MainViewController, destination: DetailsViewController) {
        source.show(destination, sender: nil)
    }
    
    func passDataToDetails(source: MainDataStore, destination: inout DetailsDataStore, indexPath: IndexPath) {
        destination.photo = source.photos[indexPath.row]
    }
}
