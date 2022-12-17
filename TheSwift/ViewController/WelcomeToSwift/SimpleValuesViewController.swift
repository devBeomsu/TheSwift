//
//  SimpleValuesViewController.swift
//  TheSwift
//
//  Created by Steve on 2022/12/18.
//

import UIKit

class SimpleValuesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Simple Values"
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.navigationBar.topItem?.backButtonTitle = ""
    }
}
