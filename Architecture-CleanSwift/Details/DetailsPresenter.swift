//
//  DetailsPresenter.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 03.04.2022.
//

protocol DetailsPresentationLogic {
    func presentPhotoDetails(response: DetailsResponse)
}

final class DetailsPresenter: DetailsPresentationLogic {
    
    weak var viewController: DetailsDisplayLogic?
    
    func presentPhotoDetails(response: DetailsResponse) {
        let photoTitle = response.photoTitle ?? ""
        let viewModel = DetailsViewModel(photoTitle: photoTitle)
        viewController?.displayPhotoDetails(viewModel: viewModel)
    }
}
