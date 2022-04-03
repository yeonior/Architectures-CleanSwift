//
//  AssemblyBuilder.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 03.04.2022.
//

import UIKit

protocol Builder {
    func createMainScene() -> UIViewController
}

final class AssemblyBuilder: Builder {
    
    static let shared = AssemblyBuilder()
    
    private init() {}
    
    func createMainScene() -> UIViewController {
        let viewController = MainViewController()
        let interactor = MainInteractor()
        let presenter = MainPresenter()
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
        
        return viewController
    }
}
