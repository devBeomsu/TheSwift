//
//  WelcomeViewController.swift
//  TheSwift
//
//  Created by Steve on 2022/12/18.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var aboutSwiftButton: UIButton!
    @IBOutlet weak var versionCompatibilityButton: UIButton!
    @IBOutlet weak var swiftTourButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Welcome to Swift"
        navigationController?.navigationBar.topItem?.backButtonTitle = ""
        navigationController?.navigationBar.tintColor = .label
        
        aboutSwiftButton.layer.cornerRadius = 10
        versionCompatibilityButton.layer.cornerRadius = 10
        swiftTourButton.layer.cornerRadius = 10
    }
    
    @IBAction func aboutSwiftButtonTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "AboutSwift", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "AboutSwiftViewController") as! AboutSwiftViewController
        
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func versionCompatibilityButtonTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "VersionCompatibility", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "VersionCompatibilityViewController") as! VersionCompatibilityViewController
        
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func swiftTourButtonTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "SwiftTour", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "SwiftTourViewController") as! SwiftTourViewController
        
        navigationController?.pushViewController(viewController, animated: true)
    }
}
