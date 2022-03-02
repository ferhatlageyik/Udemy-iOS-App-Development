//
//  ViewController.swift
//  MySystemView Controller,
//
//  Created by Ferhat Geyik on 12.02.2022.
//

import UIKit
import SafariServices
import MessageUI

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, MFMailComposeViewControllerDelegate {
    
    //MARK: - UI Elements
    @IBOutlet var imageView: UIImageView!
    
    

    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK:- Functions
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage  else { return }
        imageView.image = selectedImage
        dismiss(animated: true, completion: nil)
        
    }
    //MARK: - Actions
    
    @IBAction func shareButtonTapped(_ button: UIButton){
        guard let image = imageView.image else { return }
        
        let activityController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        
        present(activityController, animated: true, completion: nil)
        
        
    }
    @IBAction func safariButtonTapped(_ button: UIButton){
        if let url = URL(string: "https://www.hackerrank.com"){
            let safaiController = SFSafariViewController(url: url)
            present(safaiController, animated: true, completion: nil)
        }
        
    }
    @IBAction func cameraButtonTapped(_ button: UIButton){
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
       
        
        
        let alertController = UIAlertController(title: "Choose Source", message: nil, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let cameraAction = UIAlertAction(title: "Camera", style: .default) {
            Action in
            imagePickerController.sourceType = .camera
            self.present(imagePickerController, animated: true, completion: nil)
            print("Camera")
        }
        
        let photoLibrary = UIAlertAction(title: "Photo Library", style: .default) { Action in
            imagePickerController.sourceType = .photoLibrary
            self.present(imagePickerController, animated: true, completion: nil)
            print("Photo Library")
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(cameraAction)
        alertController.addAction(photoLibrary)
        
        present(alertController, animated: true, completion: nil)
    
    }
    @IBAction func emailButtonTapped(_ button: UIButton){
        guard MFMailComposeViewController.canSendMail() else { return }
       
        let mailComposer = MFMailComposeViewController()
        mailComposer.mailComposeDelegate = self
        mailComposer.setToRecipients(["frhtgyk@gmail.com"])
        mailComposer.setSubject("Try")
        mailComposer.setMessageBody("Hello Ferhat!", isHTML: false)
        
        present(mailComposer, animated: true, completion: nil)
        
    }
    
}

