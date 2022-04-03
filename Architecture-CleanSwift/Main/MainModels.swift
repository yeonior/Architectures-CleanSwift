//
//  MainModels.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 03.04.2022.
//

typealias MainRequest = Main.ShowPhotoInfo.Request
typealias MainResponse = Main.ShowPhotoInfo.Response
typealias MainViewModel = Main.ShowPhotoInfo.ViewModel

enum Main {
    
    // use cases for main scene
    enum ShowPhotoInfo {
        
        // viewController -> interactor
        struct Request {
            
        }
        
        // interactor -> presenter
        struct Response {
            
        }
        
        // presenter -> viewController
        struct ViewModel {
            
        }
    }
}
