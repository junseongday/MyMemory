//
//  MemoReadVC.swift
//  MyMemory
//
//  Created by JSMAC on 2019/12/27.
//  Copyright © 2019 JSPRO. All rights reserved.
//

import UIKit

class MemoReadVC: UIViewController {

    var param: MemoData?
    @IBOutlet var subject: UILabel!
    @IBOutlet var contents: UILabel!
    @IBOutlet var img: UIImageView!
    
    override func viewDidLoad() {
        self.subject.text = param?.title
        self.contents.text = param?.contents
        self.img.image = param?.image
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd일 HH:mm분에 작성됨"
        let dateString = formatter.string(from: (param?.regdate)!)
        
        self.navigationItem.title = dateString
    }
}
