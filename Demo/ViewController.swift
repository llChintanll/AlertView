//
//  ViewController.swift
//  Demo
//
//  Created by Administrator on 7/12/17.
//  Copyright © 2017 zerones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var one = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func AlertClick(_ sender: Any) {
        
        if self.one {
            let alert = UIAlertController(title: "iOS Developer", message: "training Center", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Red", style: UIAlertActionStyle.default, handler: {
                Void in
                self.RedColor()
            }))
            
            alert.addAction(UIAlertAction(title: "Blue", style: UIAlertActionStyle.default, handler: {
                Void in
                self.BlueColor()
            }))
            
            alert.addAction(UIAlertAction(title: "Green", style: UIAlertActionStyle.default, handler: {
                Void in
                self.GreenColor()
            }))
            
            alert.addAction(UIAlertAction(title: "Cancle", style: UIAlertActionStyle.cancel, handler: nil))
            alert.view.tintColor = UIColor.red
            self.present(alert, animated: true, completion: nil)

        }else {
            
            let alert = UIAlertController(title: "iOS Developer", message: "training Center", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Bleck", style: UIAlertActionStyle.default, handler: {
                Void in
                self.view.backgroundColor = UIColor.black
            }))
            
            alert.addAction(UIAlertAction(title: "Blue", style: UIAlertActionStyle.default, handler: {
                Void in
                self.BlueColor()
            }))
            
            alert.addAction(UIAlertAction(title: "Green", style: UIAlertActionStyle.default, handler: {
                Void in
                self.GreenColor()
            }))
            
            alert.addAction(UIAlertAction(title: "Cancle", style: UIAlertActionStyle.cancel, handler: nil))
            alert.view.tintColor = UIColor.red
            self.present(alert, animated: true, completion: nil)
            
        }
        
        self.one = !self.one
        
    }
    
    @IBAction func ActionSheetClick(_ sender: Any) {
        let alert1 = UIAlertController(title: "Java Developer", message: "Traning Center", preferredStyle: .actionSheet)
        alert1.addAction(UIAlertAction(title: "Red", style: UIAlertActionStyle.default, handler: {
            Void in
            self.RedColor()
        }))
        alert1.addAction(UIAlertAction(title: "Blue", style: UIAlertActionStyle.default, handler: {
            Void in
            self.BlueColor()
        }))
        alert1.addAction(UIAlertAction(title: "Green", style: UIAlertActionStyle.default, handler: {
            Void in
            self.GreenColor()
        }))
        alert1.addAction(UIAlertAction(title: "Cancle", style: UIAlertActionStyle.cancel, handler: {
            Void in
           self.view.backgroundColor = UIColor.white
        }))
        self.present(alert1, animated: true, completion: nil)
    }
    
    func RedColor()
    {
        self.view.backgroundColor = UIColor.red
        //self.view.backgroundColor = UIColor.clear
    }
    func BlueColor() {
        
        self.view.backgroundColor = UIColor.blue
        
    }
    func GreenColor() {
        
        self.view.backgroundColor = UIColor.green
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
