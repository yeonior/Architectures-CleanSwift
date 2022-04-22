//
//  MainConfigurator.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 04.04.2022.
//

final class MainConfigurator {
    
    static let shared = MainConfigurator()
    
    private init() {}
    
    func configure(with viewController: MainViewController) {
        let interactor = MainInteractor()
        let presenter = MainPresenter()
        let router = MainRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
}
