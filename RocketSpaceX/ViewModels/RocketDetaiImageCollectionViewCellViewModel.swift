//
//  RocketDetaiImageCollectionViewCellViewModel.swift
//  RocketSpaceX
//
//  Created by Hariharan on 28/02/23.
//

import Foundation
import RxCocoa

protocol RocketDetailImageCollectionViewCellViewModelType {
    var imageURL: BehaviorRelay<URL?> { get }
}

class RocketDetailImageCollectionViewCellViewModel: RocketDetailImageCollectionViewCellViewModelType {
    let imageURL = BehaviorRelay<URL?>(value: nil)
    
    init() {}
    
    init(imageURL: URL?) {
        self.imageURL.accept(imageURL)
    }
    
    public func configure(_ cell: RocketDetailImageCollectionViewCell) {
        cell.viewModel = self
        cell.setupListeners()
    }
}
