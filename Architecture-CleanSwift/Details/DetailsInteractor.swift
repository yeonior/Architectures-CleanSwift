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
    var worker: DetailsWorker?
    var photo: Photo?
    
    func providePhotoDetails(request: DetailsRequest) {
        
        // TEMPORARILY
        photo = request.photo
        
        worker = DetailsWorker()
        
        let title = photo?.title
        let id = photo?.id
        let stringURL = photo?.stringURL
        let imageData = worker?.getImage(from: stringURL)
        let response = DetailsResponse(photoTitle: title,
                                       photoId: id,
                                       photoImageData: imageData)
        
        presenter?.presentPhotoDetails(response: response)
    }
}
