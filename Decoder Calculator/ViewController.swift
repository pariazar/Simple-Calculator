//
//  ViewController.swift
//  Decoder Calculator
//
//  Created by HamedPa on 1/31/19.
//  Copyright © 2019 HamedPa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var backImage: UIImageView!
    @IBOutlet weak var display: UILabel!
    var result  = "";
    var nextNumber = "";
    var isFirst = 0;
    var selector = 0;
    //set 1 = + , 2 = * , 3 = / , 4 = -
    var index = 0;
    var intsC = [Int]()

    var arrInts = [Int](repeating: 0, count: 3)

    var a = 0;
    var b = 0;
    var c = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        display.font = UIFont(name: "digital-7", size: 50);
        let modelName = UIDevice.modelName;
        display.text = String("Decoder");
        if(modelName == "iPhone 8" || modelName == "Simulator iPhone 8")
        {
            backImage.isHidden = false;
        }
        else{
             backImage.isHidden = true;
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func button1pressed(_ sender: Any) {
        enterInputs(number: 1);
    }
    @IBAction func button2pressed(_ sender: Any) {
         enterInputs(number: 2);
    }
    @IBAction func button3pressed(_ sender: Any) {
        enterInputs(number: 3);
    }
    @IBAction func button4pressed(_ sender: Any) {
        enterInputs(number: 4);
    }
    @IBAction func button5pressed(_ sender: Any) {
        enterInputs(number: 5);
    }
    @IBAction func button6pressed(_ sender: Any) {
        enterInputs(number: 6);
    }
    @IBAction func button7pressed(_ sender: Any) {
        enterInputs(number: 7);
    }
    @IBAction func button8pressed(_ sender: Any) {
        enterInputs(number: 8);
    }
    @IBAction func button9pressed(_ sender: Any) {
        enterInputs(number: 9);
    }
    @IBAction func result2pressed0(_ sender: Any) {
        enterInputs(number: 0);
    }
    @IBAction func result2pressed00(_ sender: Any) {
       /* enterInputs(number: 102030405060);
        b = 12;*/
    }
    
    @IBAction func restart(_ sender: Any) {
        result = "0";
        display.text = String(result);
        isFirst = 1;
        
    }
    
    func enterInputs(number :Int){
        if(isFirst==1){
            result = String(number);
            isFirst = 0;
        }
        else{
            if(Int(result)==0){
                restart((Any).self)
            }
            else{
            if(b==12){
                 result += String("00");
                b = 52;
            }
            else{
                result += String(number);
            }
        }
        }
        display.text = String(result);
    }
    
    @IBAction func plus(_ sender: Any) {
        pressCumptingOP(type: "+",select: 1);
    }
    
    @IBAction func times(_ sender: Any) {
        pressCumptingOP(type: "*",select: 2);
    }
    @IBAction func divide(_ sender: Any) {
        pressCumptingOP(type: "/",select: 3);

    }
    @IBAction func minus(_ sender: Any) {
        pressCumptingOP(type: "",select: 4);

    }
    
    @IBAction func eq(_ sender: Any) {
        var end = 0;
        switch selector {
        case 1:
            end = c + Int(result)!;
            break;
        case 2:
            end = c * Int(result)!;
            break;
        case 3:
            end = c / Int(result)!;
            break;
        case 4:
            end = c - Int(result)!;
            break;
        default:
            break;
            
        }
        result =  String(end);
        display.text = String(end);
    }
    func pressCumptingOP(type: String,select: Int){
        c = Int(result)!;
        nextNumber = result;
        nextNumber += type;
        display.text = String(nextNumber);
        result = "";
        selector = select;
    }
    
    
    
    
  
}

