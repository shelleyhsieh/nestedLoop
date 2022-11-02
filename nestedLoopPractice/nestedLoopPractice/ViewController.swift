//
//  ViewController.swift
//  nestedLoopPractice
//
//  Created by shelley on 2022/11/1.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var shapeSegmentControl: UISegmentedControl!
    @IBOutlet weak var emojiLable: UILabel!
    @IBOutlet weak var countLable: UILabel!
    @IBOutlet weak var emogiSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        emojiLable.frame = CGRect(x: 39, y: 297, width: 301, height: 276)
        emojiLable.backgroundColor = UIColor.lightGray
        emojiLable.text = ""
        countLable.text = ""
        emogiSlider.setValue(1, animated: true)
    }
    @IBAction func changeSegmentControl(_ sender: Any) {
        emojiLable.frame = CGRect(x: 39, y: 297, width: 301, height: 276)
        emojiLable.backgroundColor = UIColor.lightGray
        emojiLable.text = ""
        countLable.text = ""
        emogiSlider.setValue(1, animated: true)
    }
    @IBAction func changeSlider(_ sender: UISlider) {
        if shapeSegmentControl.selectedSegmentIndex == 0 {
            emogiSlider.maximumValue = 11
            triangle()
        }else if shapeSegmentControl.selectedSegmentIndex == 1 {
            emogiSlider.maximumValue = 11
            square()
        }else if shapeSegmentControl.selectedSegmentIndex == 2 {
            emogiSlider.maximumValue = 7
            pyramid()
        }else if shapeSegmentControl.selectedSegmentIndex == 3 {
            emogiSlider.maximumValue = 6
            diamond()
        }
    }
        
        
        //三角型
        func triangle(){
            var content = ""
            let count = Int(emogiSlider.value)
            countLable.text = "\(count)"
            for i in 1...count {
                for _ in 1...i {
                    content += "🎃"
                }
                content += "\n"
            }
            emojiLable.text = content
        }
        //正方形
        func square(){
            var content = ""
            let count = Int(emogiSlider.value) + 1
            countLable.text = "\(count)"
            for i in 1...count {
                for j in 1...count {
                    if i > j {
                        content += "🎃"
                    }else{
                        content += "🧛"
                    }
                }
                content += "\n"
            }
            emojiLable.text = content
        }
        //金字塔
        func pyramid(){
            var content = ""
            let count = Int(emogiSlider.value) + 1
            countLable.text = "\(count)"
            for i in 1..<count {
                for _ in i..<count {
                    content += "🎃"
                }
                let count = i * 2 - 1
                for _ in 1...count{
                    content += "🧛"
                }
                content += "\n"
            }
            emojiLable.text = content
        }
       //菱形
        func diamond(){
            var content = ""
            let count = Int(emogiSlider.value) + 1
            var emogiCount = 1
            countLable.text = "\(count)"
            emojiLable.textAlignment = .center
            for i in 1...count * 2 - 1{
                for _ in 1...emogiCount{
                    content += "🎃"
                }
                if i < count {
                    emogiCount += 2
                }else{
                    emogiCount -= 2
                }
                content += "\n"
            }
            emojiLable.text = content
        }
        
    
    }


