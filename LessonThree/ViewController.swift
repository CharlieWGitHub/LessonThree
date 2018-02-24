//
//  ViewController.swift
//  LessonThree
//
//  Created by 王成龙 on 2018/1/29.
//  Copyright © 2018年 com.charlieKingStudios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rect = CGRect(x:50,y:150,width:200,height:50)
        let view = UIView(frame:rect)
        view.backgroundColor = UIColor.brown
        self.view.addSubview(view)
        
//      添加放射
        var transform = view.transform
        transform = transform.rotated(by: 3.14/4)
        view.transform = transform
        
//      添加手势
        view.isUserInteractionEnabled = true
        let guessture = UITapGestureRecognizer(target:self,action:#selector(ViewController.singleTap))
        view.addGestureRecognizer(guessture)
        //设置点击次数
        guessture.numberOfTapsRequired = 2
        //设置单次双击事件
        guessture.numberOfTouchesRequired = 1
        
        let rect2 = CGRect(x:50,y:280,width:80,height:80)
        let image = UIImageView(frame:rect2)
        image.image = UIImage(named:"icon")
        image.isUserInteractionEnabled = true
        self.view.addSubview(image)
        
        let longGuessture = UILongPressGestureRecognizer(target:self, action: #selector(ViewController.longTap))
        image.addGestureRecognizer(longGuessture)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func longTap(){
        let alertView = UIAlertController(title:"long",message:"长长久久",preferredStyle:UIAlertControllerStyle.alert)
        let OKButton = UIAlertAction(title:"ok",style:.default,handler:{_ in})
        alertView.addAction(OKButton)
        self.present(alertView,animated: true,completion: nil)
    }
    @objc func singleTap(){
        let alertView = UIAlertController(title:"info",message:"爱是一道光，如此美妙",preferredStyle:UIAlertControllerStyle.alert)
        let OKButton = UIAlertAction(title:"ok",style:.default,handler:{_ in})
        alertView.addAction(OKButton)
        self.present(alertView,animated: true,completion: nil)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

