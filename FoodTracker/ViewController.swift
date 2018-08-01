//
//  ViewController.swift
//  FoodTracker
//
//  Created by Declan Rhodes on 30/07/2018.
//  Copyright © 2018 Declan Rhodes. All rights reserved.
//

import UIKit
import os.log

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //MARK: Properties
    
    @IBOutlet weak var mealNameText: UITextField!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingController: ratingController!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var meal: Meal?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mealNameText.delegate = self
        if let meal = meal{
            navigationItem.title = meal.name
            mealNameText.text = meal.name
            photoImageView.image = meal.photo
            ratingController.rating = meal.rating
        }
        updateSaveButtonState()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: UITextFieldDelegate
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        saveButton.isEnabled = false
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField){
        updateSaveButtonState()
        navigationItem.title = textField.text
    }
    
    //MARK:Navigation
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        let name = mealNameText.text ?? ""
        let photo = photoImageView.image
        let rating = ratingController.rating
        
        meal = Meal(name: name, photo: photo, rating: rating)
        super.prepare(for: segue, sender: sender)
    }
    
    //MARK: Actions
    
    @IBAction func selectImage(_ sender: UITapGestureRecognizer) {
        mealNameText.resignFirstResponder()
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    
    //MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        photoImageView.image = selectedImage
        
        dismiss(animated:true, completion: nil)
    }
    
    //MARK: Private Methods
    private func updateSaveButtonState(){
        let text = mealNameText.text ?? ""
        saveButton.isEnabled = !text.isEmpty
    }

}

