//
//  CreatePostViewController.swift
//  restapi
//
//  Created by thusitha on 8/2/20.
//  Copyright © 2020 nibm. All rights reserved.
//

import UIKit

class CreatePostViewController: UIViewController {
    
    @IBOutlet weak var txtUserId: UITextField!
    
    @IBOutlet weak var txtPostBody: UITextField!
    @IBOutlet weak var txtPostTitle: UITextField!
    
    var postData: Post?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if(postData != nil) {
            txtUserId.text = "\(postData?.userId ?? 0)"
            txtPostBody.text = postData?.body
            txtPostTitle.text = postData?.title
        }
    }
    
    
    func savePost() {
        //post api call
        //navigate back to home page
    }
    
    func updatePost() {
        
    }
    
    @IBAction func submitPostData(_ sender: Any) {
        //if isEdit
        updatePost()
        //else
        savePost()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
