//
//  HomeViewController.swift
//  Insta Pdp
//
//  Created by  Abdurahmon on 10/02/22.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    
    // MARK: - Method
    
    func callSignUpController(){
        let vc = SignInViewController(nibName: "SignInViewController", bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }
    

    
    // MARK: - Actions
    
    @IBAction func onSignedIn(_ sender: Any) {
        sceneDelegate().callSignController()
    }
    
    
    
    @IBAction func onSignedUp(_ sender: Any) {
        callSignUpController()
    }
    
}
