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
        let photo = Photo(id: 1,
                          title: "accusamus beatae ad facilis cum similique qui sunt",
                          stringURL: "https://via.placeholder.com/600/92c952")
        let interactor = DetailsInteractor()
        let presenter = DetailsPresenter()
        viewController.photo = photo
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
    }
}
