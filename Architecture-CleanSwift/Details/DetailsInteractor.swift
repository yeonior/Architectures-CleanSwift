//
//  DetailsInteractor.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 03.04.2022.
//

protocol DetailsBusinessLogic {
    func providePhotoDetails(request: DetailsRequest)
}

protocol DetailDataStore {
    var photo: Photo? { get set }
}

final class DetailsInteractor: DetailsBusinessLogic, DetailDataStore {
    
    var presenter: DetailsPresentationLogic?
    var photo: Photo?
    
    func providePhotoDetails(request: DetailsRequest) {
        
        // TEMPORARILY
        photo = request.photo
        
        let title = photo?.title
        let response = DetailsResponse(photoTitle: title)
        presenter?.presentPhotoDetails(response: response)
    }
}
