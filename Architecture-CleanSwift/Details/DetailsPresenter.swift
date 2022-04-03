//
//  DetailsPresenter.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 03.04.2022.
//

import Foundation

protocol DetailsPresentationLogic {
    func presentPhotoDetails(response: ShowDetailsResponse)
    func presentFavouriteStatus(response: SetFavouriteStatusResponse)
}

final class DetailsPresenter: DetailsPresentationLogic {
    
    weak var viewController: DetailsDisplayLogic?
    
    func presentPhotoDetails(response: ShowDetailsResponse) {
        let photoTitle = response.photoTitle ?? ""
        let photoId = "#" + String(response.photoId ?? 0)
        let photoImageData = response.photoImageData ?? Data()
        let isFavourite = response.isFavourite
        let viewModel = ShowDetailsViewModel(photoTitle: photoTitle,
                                         photoId: photoId,
                                         photoImageData: photoImageData,
                                         isFavourite: isFavourite)
        
        viewController?.displayPhotoDetails(viewModel: viewModel)
    }
    
    func presentFavouriteStatus(response: SetFavouriteStatusResponse) {
        let isFavourite = response.isFavourite
        let viewModel = SetFavouriteStatusViewModel(isFavourite: isFavourite)
        
        viewController?.displayFavouriteButtonStatus(viewModel: viewModel)
    }
}
