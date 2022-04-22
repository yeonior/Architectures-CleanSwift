//
//  DetailsRouter.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 21.04.2022.
//

import UIKit

protocol DetailsRoutingLogic {
}

protocol DetailsDataPassing {
    var dataStore: DetailsDataStore? { get }
}

final class DetailsRouter: DetailsRoutingLogic, DetailsDataPassing {
    
    weak var viewController: DetailsViewController?
    var dataStore: DetailsDataStore?
}
