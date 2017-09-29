//
//  Tab3ViewController.swift
//  Vault
//
//  Created by Playground on 9/29/17.
//  Copyright © 2017 Vault. All rights reserved.
//

import UIKit

class Tab3ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    @IBOutlet weak var UIImageView: UIImageView!
    
    @IBAction func TakPic(_ sender: Any){
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            let image = UIImagePickerController()
            image.delegate = self
            image.allowsEditing = false
            image.sourceType = UIImagePickerControllerSourceType.camera
            self.present(image, animated: false, completion: nil)
        } else {
            let image = UIImagePickerController()
            image.delegate = self
            image.sourceType = UIImagePickerControllerSourceType.photoLibrary
            image.allowsEditing = false
            self.present(image, animated: true)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage{
            UIImageView.image = image
        } else {
            //do something
        }
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
