//
//  ViewController.swift
//  ExampleProject
//
//  Created by appinventiv on 09/09/17.
//  Copyright © 2017 yogesh singh negi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageChangeBtn: UIButton!

    @IBOutlet weak var twitterImage: UIButton!
    
    @IBOutlet weak var fbImage: UIButton!
    
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var darkView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.darkView.layer.cornerRadius = self.darkView.frame.size.width/2
    }
    
//    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super.touchesBegan(touches, with: event)
//        
//        UIView.animate(withDuration: 1.0, animations: {
//            if self.darkView.transform == .identity {
//                self.darkView.transform = CGAffineTransform(scaleX: 20.0, y: 20.0)
//                self.mainView.transform = CGAffineTransform(translationX: 1, y: -69)
//            }
//            else {
//                self.darkView.transform = .identity
//                self.mainView.transform = .identity
//            }
//            self.fbImage.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
//            self.twitterImage.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
//        }) { (finish) in
//            UIView.animate(withDuration: 0.8, animations: {
//                if self.imageChangeBtn.transform == .identity {
//                    self.imageChangeBtn.transform = CGAffineTransform(rotationAngle: .pi)
//                }
//                else {
//                    self.imageChangeBtn.transform = .identity
//                }
//            })
//            
//            UIView.animate(withDuration: 0.5, animations: {
//                self.fbImage.transform = .identity
//                self.twitterImage.transform = .identity
//            })
//            
//        }
//    }
    
    
    @IBAction func imageBtnTapped(_ sender: UIButton) {

        UIView.animate(withDuration: 1.0, animations: {
            if self.darkView.transform == .identity {
                self.darkView.transform = CGAffineTransform(scaleX: 20.0, y: 20.0)
                self.mainView.transform = CGAffineTransform(translationX: 1, y: -69)
            }
            else {
                self.darkView.transform = .identity
                self.mainView.transform = .identity
            }
            self.fbImage.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
            self.twitterImage.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
        }) { (finish) in
            UIView.animate(withDuration: 0.8, animations: {
                if self.imageChangeBtn.transform == .identity {
                    self.imageChangeBtn.transform = CGAffineTransform(rotationAngle: .pi)
                }
                else {
                    self.imageChangeBtn.transform = .identity
                }
            })
            
            UIView.animate(withDuration: 0.5, animations: {
                self.fbImage.transform = .identity
                self.twitterImage.transform = .identity
            })
            
        }

    }
    

}
