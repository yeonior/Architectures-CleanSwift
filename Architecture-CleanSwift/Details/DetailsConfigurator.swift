//
//  DetailsConfigurator.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 04.04.2022.
//

final class DetailsConfigurator {
    
    static let shared = DetailsConfigurator()
    
    private init() {}
    
    func configure(with viewController: DetailsViewController) {
        let interactor = DetailsInteractor()
        let presenter = DetailsPresenter()
        let router = DetailsRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
}
