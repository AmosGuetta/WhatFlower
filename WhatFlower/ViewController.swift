//
//  ViewController.swift
//  WhatFlower
//
//  Created by Amos Guetta on 17/09/2018.
//  Copyright © 2018 Amos Guetta. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UINavigationControllerDelegate,UIImagePickerControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = false
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let userImagePicker =  info[UIImagePickerControllerOriginalImage] as? UIImage
        imageView.image = userImagePicker
        imagePicker.dismiss(animated: true, completion: nil)
    }
    

    @IBAction func cameraTapped(_ sender: UIBarButtonItem) {
        present(imagePicker, animated: true, completion: nil)
    }
    
}

