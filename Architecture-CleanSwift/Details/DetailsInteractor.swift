//
//  DetailsInteractor.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 03.04.2022.
//

protocol DetailsBusinessLogic {
    var isFavourite: Bool { get }
    func providePhotoDetails(request: ShowDetailsRequest)
    func setFavouriteStatus()
}

protocol DetailsDataStore {
    var photo: Photo? { get set }
}

final class DetailsInteractor: DetailsBusinessLogic, DetailsDataStore {
    
    var presenter: DetailsPresentationLogic?
    var worker: DetailsWorker?
    var photo: Photo?
    var isFavourite: Bool = false
    
    func providePhotoDetails(request: ShowDetailsRequest) {
        
        worker = DetailsWorker()
        isFavourite = worker?.getFavouriteStatus(for: photo?.title ?? "") ?? false
        
        let title = photo?.title
        let id = photo?.id
        let stringURL = photo?.stringURL
        let imageData = worker?.getImage(from: stringURL)
        
        let response = ShowDetailsResponse(photoTitle: title,
                                           photoId: id,
                                           photoImageData: imageData,
                                           isFavourite: isFavourite)
        
        presenter?.presentPhotoDetails(response: response)
    }
    
    func setFavouriteStatus() {
        isFavourite.toggle()
        worker?.setFavouriteStatus(for: photo?.title ?? "", with: isFavourite)
        
        let response = SetFavouriteStatusResponse(isFavourite: isFavourite)
        presenter?.presentFavouriteStatus(response: response)
    }
}
