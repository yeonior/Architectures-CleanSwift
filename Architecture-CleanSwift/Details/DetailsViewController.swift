//
//  DetailsViewController.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 03.04.2022.
//

import UIKit

protocol DetailsDisplayLogic: AnyObject {
    func displayPhotoDetails(viewModel: DetailsViewModel)
}

final class DetailsViewController: UIViewController {
    
    let photoImageView = UIImageView()
    let photoTextView = UITextView()
    let photoIdLabel = UILabel()
    let favouriteButton = UIButton()
    var interactor: DetailsBusinessLogic?
    
    // TEMPORARILY
    var photo: Photo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        passRequest()
    }
    
    // MARK: - Private methods
    private func configureUI() {
        
        // view
        view.backgroundColor = .systemBackground
                
        // photoImageView
        let image = UIImage(systemName: "nosign")
        photoImageView.image = image
        photoImageView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        photoImageView.center = view.center
        photoImageView.contentMode = .scaleAspectFit
        
        // photoTextView
        photoTextView.isEditable = false
        photoTextView.isScrollEnabled = false
        photoTextView.isSelectable = false
        photoTextView.textAlignment = .center
        photoTextView.font = .systemFont(ofSize: 17)
        
        // photoIdLabel
        photoIdLabel.font = .systemFont(ofSize: 30)
        photoIdLabel.textAlignment = .center
        photoIdLabel.sizeToFit()
        
        // favouriteButton
        favouriteButton.tintColor = .systemPink
        favouriteButton.addTarget(self, action: #selector(favoriteButtonTouched), for: .touchUpInside)
        
        // subviews adding
        view.addSubview(photoImageView)
        view.addSubview(photoTextView)
        view.addSubview(photoIdLabel)
        view.addSubview(favouriteButton)
        
        // constraints
        photoTextView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            photoTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            photoTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            photoTextView.topAnchor.constraint(equalTo: photoImageView.bottomAnchor, constant: 20),
            photoTextView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0)
        ])
        
        photoIdLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            photoIdLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            photoIdLabel.bottomAnchor.constraint(equalTo: photoImageView.topAnchor, constant: -20)
        ])
        
        favouriteButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            favouriteButton.topAnchor.constraint(equalTo: photoImageView.topAnchor, constant: 5),
            favouriteButton.trailingAnchor.constraint(equalTo: photoImageView.trailingAnchor, constant: -5)
        ])
    }
    
    @objc
    private func favoriteButtonTouched() {
        
    }
    
    private func passRequest() {
        let request = DetailsRequest(photo: photo)
        interactor?.providePhotoDetails(request: request)
    }
}

extension DetailsViewController: DetailsDisplayLogic {
    func displayPhotoDetails(viewModel: DetailsViewModel) {
        photoTextView.text = viewModel.photoTitle
    }
}
