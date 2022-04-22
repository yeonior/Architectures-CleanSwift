//
//  DetailsModels.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 03.04.2022.
//

import Foundation

typealias ShowDetailsRequest = PhotoDetails.ShowDetails.Request
typealias ShowDetailsResponse = PhotoDetails.ShowDetails.Response
typealias ShowDetailsViewModel = PhotoDetails.ShowDetails.ViewModel
typealias SetFavouriteStatusResponse = PhotoDetails.SetFavouriteStatus.Response
typealias SetFavouriteStatusViewModel = PhotoDetails.SetFavouriteStatus.ViewModel

enum PhotoDetails {
    
    // use cases for main scene
    enum ShowDetails {
        
        // viewController -> interactor
        struct Request {
            
        }
        
        // interactor -> presenter
        struct Response {
            let photoTitle: String?
            let photoId: Int?
            let photoImageData: Data?
            let isFavourite: Bool
        }
        
        // presenter -> viewController
        struct ViewModel {
            let photoTitle: String
            let photoId: String
            let photoImageData: Data
            let isFavourite: Bool
        }
    }
    
    enum SetFavouriteStatus {
        
        struct Response {
            let isFavourite: Bool
        }
        
        struct ViewModel {
            let isFavourite: Bool
        }
    }
}
