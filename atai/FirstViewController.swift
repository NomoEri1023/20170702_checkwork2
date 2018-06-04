//
//  ViewController.swift
//  atai
//
//  Created by 野本エリカ on 2018/05/23.
//  Copyright © 2018年 Life is Tech!. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextViewDelegate {
    
    @IBAction func back(segue: UIStoryboardSegue) {
        
    }

    
    @IBOutlet var TextView: UITextView!
    
    @IBAction func next(_ sender: Any) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TextView.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //func textViewShouldReturn(_ TextView: UITextView) -> Bool {
        
        //outputText.text = textField.text
        
        //TextView.resignFirstResponder()
        //return true
    //}
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let second = segue.destination as! SecondViewController
        second.Text1 = TextView.text
        
    }
    


}

