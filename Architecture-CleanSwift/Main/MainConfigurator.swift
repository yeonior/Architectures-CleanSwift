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
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
    }
}
