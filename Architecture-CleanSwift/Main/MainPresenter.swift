//
//  MainPresenter.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 03.04.2022.
//

protocol MainPresentationLogic {
    func presentPhotos(response: MainResponse)
}

final class MainPresenter: MainPresentationLogic {
    
    weak var viewController: MainDisplayLogic?
    
    func presentPhotos(response: MainResponse) {
        
        // preparing data
        var rows: [CellIdentifiable] = []
        response.photos.forEach { photo in
            let cellViewModel = MainCellViewModel(photo: photo)
            rows.append(cellViewModel)
        }
        
        let viewModel = MainViewModel(rows: rows)
        viewController?.displayPhotos(viewModel: viewModel)
    }
}
