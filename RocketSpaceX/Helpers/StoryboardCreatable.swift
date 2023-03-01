//
//  StoryboardCreatable.swift
//  RocketSpaceX
//
//  Created by Hariharan on 28/02/23.
//

import UIKit

protocol StoryboardCreatable: AnyObject {
    static var storyboard: UIStoryboard { get }
    static var storyboardBundle: Bundle? { get }
    static var storyboardIdentifier: String { get }
    static var storyboardName: String { get }
    
    static func instanceFromStoryboard() -> Self
}
