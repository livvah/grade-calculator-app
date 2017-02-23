//
//  SecondViewController.swift
//  Homework1
//
//  Created by COSC3326 on 2/6/17.
//  Copyright © 2017 COSC3326. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    @IBOutlet var lblGradeValues: [UILabel]!
    
    
    @IBOutlet weak var lblLetterGradeVal: UILabel!
    
    
    @IBOutlet weak var lblFinalGradeVal: UILabel!
    
    
    @IBOutlet var sldGradeValues: [UISlider]!
    
    
    @IBAction func sldGradeCategories(_ sender: UISlider) {
        
        calGrades()
    }
    
    
    private func calGrades(){
        
        var i: Int = 0;
        
        var finalGrade: Double = 0
        
        for label in lblGradeValues{
            
            label.text = "\(Int(sldGradeValues[i].value))"
            
            var thisGrade: Double = 0
            
            
            switch i{
                
            case 0:
                
                thisGrade = Double(sldGradeValues[i].value)
                thisGrade = Double(floor(CGFloat(thisGrade * 0.2)))
            case 1:
                thisGrade = Double(sldGradeValues[i].value)
                thisGrade = Double(floor(CGFloat(thisGrade * 0.2)))
            case 2:
                thisGrade = Double(sldGradeValues[i].value)
                thisGrade = Double(floor(CGFloat(thisGrade * 0.2)))
            case 3:
                thisGrade = Double(sldGradeValues[i].value)
                thisGrade = Double(floor(CGFloat(thisGrade * 0.2)))
            case 4:
                thisGrade = Double(sldGradeValues[i].value)
                thisGrade = Double(floor(CGFloat(thisGrade * 0.2)))
                
            default: break
            }
            i += 1
            finalGrade += thisGrade
            
        }
        calLetterGrade(finalGrade: finalGrade)
        
        lblFinalGradeVal.text = String(finalGrade)
        
    }
    
    private func calLetterGrade(finalGrade: Double){
        
        var letterGrade: String = ""
        
        if finalGrade >= 90{
            
            letterGrade = "A"
        }
        else if finalGrade >= 80 && finalGrade < 90{
            
            letterGrade = "B"
        }
        else if finalGrade >= 70 && finalGrade < 80{
            
            letterGrade = "C"
        }
        else if finalGrade >= 60 && finalGrade < 70{
            
            letterGrade = "D"
        }
        else if finalGrade < 60{
            
            letterGrade = "F"
        }
        
        lblLetterGradeVal.text = letterGrade
        
    }
    
    
    
    
    
    
    
}

