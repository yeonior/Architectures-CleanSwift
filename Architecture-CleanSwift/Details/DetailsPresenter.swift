//
//  DetailsPresenter.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 03.04.2022.
//

import Foundation

protocol DetailsPresentationLogic {
    func presentPhotoDetails(response: DetailsResponse)
}

final class DetailsPresenter: DetailsPresentationLogic {
    
    weak var viewController: DetailsDisplayLogic?
    
    func presentPhotoDetails(response: DetailsResponse) {
        let photoTitle = response.photoTitle ?? ""
        let photoId = "#" + String(response.photoId ?? 0)
        let photoImageData = response.photoImageData ?? Data()
        let viewModel = DetailsViewModel(photoTitle: photoTitle,
                                         photoId: photoId,
                                         photoImageData: photoImageData)
        
        viewController?.displayPhotoDetails(viewModel: viewModel)
    }
}
