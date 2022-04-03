//
//  DetailsModels.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 03.04.2022.
//

import Foundation

typealias DetailsRequest = PhotoDetails.ShowDetails.Request
typealias DetailsResponse = PhotoDetails.ShowDetails.Response
typealias DetailsViewModel = PhotoDetails.ShowDetails.ViewModel

enum PhotoDetails {
    
    // use cases for main scene
    enum ShowDetails {
        
        // viewController -> interactor
        struct Request {
            // TEMPORARILY
            let photo: Photo
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
}
