//
//  AssemblyBuilder.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 03.04.2022.
//

import UIKit

protocol Builder {
    func createMainScene() -> UIViewController
    func createDetailsScene() -> UIViewController
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
    
    func createDetailsScene() -> UIViewController {
        let photo = Photo(id: 1,
                          title: "accusamus beatae ad facilis cum similique qui sunt",
                          stringURL: "https://via.placeholder.com/600/92c952")
        let viewController = DetailsViewController()
        let interactor = DetailsInteractor()
        let presenter = DetailsPresenter()
        viewController.photo = photo
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
        
        return viewController
    }
}
