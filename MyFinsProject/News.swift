//
//  News.swift
//  MyFinsProject
//
//  Created by tanarat wuttipornpong on 29/5/60.
//  Copyright © พ.ศ. 2560 tanarat wuttipornpong. All rights reserved.
//

import UIKit

class News {
    var title:String
    var description:String
    var iconImmge:UIImage
    var author:String
    var view:Int
    var createData:String
    
    init(title: String, description:String,iconImmge:UIImage,author:String,view :Int,createData :String ) {
        self.title = title
        self.description = description
        self.iconImmge = iconImmge
        self.author = author
        self.view = view
        self.createData = createData
    }
}
