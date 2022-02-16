//
//  Post.swift
//  Insta Pdp
//
//  Created by  Abdurahmon on 15/02/22.
//

import Foundation

class Post{
    var fullname = ""
    var user_img = ""
    var post_img = ""
    
    init(fullname: String, user_img: String, post_img: String){
        self.fullname = fullname
        self.user_img = user_img
        self.post_img = post_img
    }
}
