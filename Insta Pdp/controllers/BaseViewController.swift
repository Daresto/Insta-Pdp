//
//  BaseViewController.swift
//  Insta Pdp
//
//  Created by  Abdurahmon on 12/02/22.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func appDelegate() -> AppDelegate{
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    func sceneDelegate() -> SceneDelegate{
        return ((UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)!)
    }
    
    
}
