//
//  MainInteractor.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 03.04.2022.
//

protocol MainBusinessLogic {
    func fetchPhotos()
}

protocol MainDataStore {
    var photos: [Photo] { get }
}

final class MainInteractor: MainBusinessLogic, MainDataStore {
    
    var presenter: MainPresentationLogic?
    var photos: [Photo] = []
    
    func fetchPhotos() {
        NetworkManager.shared.getPhotos { [weak self] result in
            switch result {
            case .success(let photos):
                let slice = photos?.prefix(upTo: 100)
                let photos = slice ?? []
                let photosArray = Array(photos)
                self?.photos = photosArray
                
                let response = MainResponse(photos: photosArray)
                self?.presenter?.presentPhotos(response: response)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
