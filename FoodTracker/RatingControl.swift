//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Declan Rhodes on 30/07/2018.
//  Copyright © 2018 Declan Rhodes. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    
    //MARK: Initialization
    override init(frame: CGRect){
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder:NSCoder)
    {
        super.init(coder:coder)
        setupButtons()
    }
    
    //MARK: Button Action
    @objc func ratingButtonTapped(Button: UIButton){
        print("Button Pressed")
    }
    
    //MARK: Private Methods
    private func setupButtons() {
        
        for _ in 0..<5 {
            // Create the button
            let button = UIButton()
            button.backgroundColor = UIColor.red
            
            // Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
            
            // Setup the button action
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(Button:)), for: .touchUpInside)
            
            // Add the button to the stack
            addArrangedSubview(button)
            
            // Add the new button to the rating button array
            ratingButtons.append(button)
        }
    }
    //MARK:Properties
    private var ratingButtons = [UIButton]()
    
    var rating = 0
}
