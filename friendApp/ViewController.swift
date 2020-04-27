//
//  ViewController.swift
//  friendApp
//
//  Created by 林祐辰 on 2020/4/27.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import UIKit
var clickCount = 0
var picMap = ["ellen.jpg","jake.jpg","Allison.jpg","Eddie.jpg","ling.jpg","peter.jpg"]
var nameMap = ["Ellen","Jake","Allison","Eddie","Ling","Peter"]
var quoteMap = ["開始成為演員的日子裡，我慢慢發現感受自己的「心」以及傾聽自己真正的聲音真的很重要，現在開始我要勇敢說出自己的想法，不害怕碰撞，即便產生衝突，也毫無畏懼的接受並處理它；讓自己更放鬆，成為一個嶄「新」的吳子霏。","Stay hungry , stay foolish .","十年間我也默默地接觸了不少舊相機與老鏡頭。回首一路以來的時光，覺得像是一種對自我的探索。人總要透過與他人碰撞才能漸漸地摸索出自己的樣貌，而跟相機相處，對我來說竟也有類似的哲理。","MV《盒子》的現場花絮照，還記得那天是一個晴朗的好天，拍起來很棒","能唱著歌給你聽的我，很開心.做這自己喜歡的事很幸福.又回到最初的起點","新作品拍攝中，敬請期待！ #彼得潘的冒險記#用Swift帶你一起飛"]


class ViewController: UIViewController {

    
    @IBOutlet weak var renderImage: UIImageView!
    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var refreshButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var quoteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func successButton(_ sender: UIButton) {
        let successController = UIAlertController (title: "配對成功", message: "靜待對方回覆" , preferredStyle: .alert)
        
       let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
       successController.addAction(okAction)
       present(successController, animated: true, completion: nil)
        
        refreshButton.isEnabled = false
        cancelButton.isEnabled = false
        cancelButton.setTitleColor(.gray, for: .normal)
                
    }
    
    @IBAction func cancelController(_ sender: UIButton) {
        clickCount+=1
        let randomIndex = Int.random(in: 1...5)
        renderImage.image = UIImage(named: picMap[randomIndex])
        nameLabel.text = "\(nameMap[randomIndex])"
        quoteLabel.text = "\(quoteMap[randomIndex])"
        
          if clickCount == 5 {
               let overController = UIAlertController (title:"額度已滿", message: "按⟲,試試和他們做朋友吧" , preferredStyle: .alert)
               let okOverAction = UIAlertAction(title: "好喔", style: .default, handler: nil)
               overController.addAction(okOverAction)
               present(overController, animated: true, completion: nil)

            refreshButton.isEnabled = true
            cancelButton.isEnabled = false
            cancelButton.setTitleColor(.gray, for: .normal)
        }        
    }
    
  
     
    @IBAction func refreshContoller(_ sender: UIButton) {
        let randomIndex = Int.random(in: 0...5)
        renderImage.image = UIImage(named: picMap[randomIndex])
        nameLabel.text = "\(nameMap[randomIndex])"
        quoteLabel.text = "\(quoteMap[randomIndex])"
        
    }
    
      
    
}
