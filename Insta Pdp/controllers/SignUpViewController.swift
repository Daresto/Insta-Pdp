//
//  SignUpViewController.swift
//  Insta Pdp
//
//  Created by  Abdurahmon on 10/02/22.
//

import UIKit

class SignUpViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    var items: Array<Post> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initViews()
        
    }


    
    // MARK: - Methods
    
    func initViews(){
        tableView.delegate = self
        tableView.dataSource = self
        setNavBar()
        
        
        items.append(Post(post2_img: "im_post2", user_img: "im_person1", post_img: "im_post1"))
        items.append(Post(post2_img: "im_post2", user_img: "im_person1", post_img: "im_post1"))
        items.append(Post(post2_img: "im_post2", user_img: "im_person1", post_img: "im_post1"))
        
        
        
    }
    
    func setNavBar(){
        let camera = UIImage(named: "ic_camera")
        let send = UIImage(named: "ic_send")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: self, action: #selector(leftTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: send, style: .plain, target: self, action: #selector(rightTapped))
        
        title = "Instagram"
    }
    
    
    
    
    // MARK: - Actions
    
    @objc func leftTapped(){
        
    }
    
    @objc func rightTapped(){
        
    }
    
    
    // MARK: - TableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        
        let cell = Bundle.main.loadNibNamed("NewTableViewCell", owner: self, options: nil)? .first as! NewTableViewCell
        cell.user_img.layer.cornerRadius = cell.user_img.frame.size.width/2
        
        cell.user_img.image = UIImage(named: item.user_img)
        cell.post1_img.image = UIImage(named: item.post_img)
        cell.post2_img.image = UIImage(named: item.post2_img)

        
        
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 600
    }
    
    
}
