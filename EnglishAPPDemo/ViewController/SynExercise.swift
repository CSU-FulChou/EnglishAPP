//
//  SynExercise.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/9.
//  Copyright © 2019 org.csu. All rights reserved.
//

import Foundation
import UIKit
class SynExercise: UIViewController {
    
    // 分割线：
    var splitLine:UIImageView = {
        let
        splitLineImageView = UIImageView(frame: CGRect(x: 0, y: (524-172)*Y_,width: SCREEN_WIDTH, height: 47*Y_))
        splitLineImageView.backgroundColor = UIColor(hexString: "#fafafa")
        return splitLineImageView
    }()
    
    var splitLineLabel:UILabel = {
        let splitLineLabel = UILabel(frame: CGRect(x: 28*X_, y: 12*Y_, width:100*X_, height: 23*X_))
        splitLineLabel.text = "单项学习"
        return splitLineLabel
    }()
    
    // scrollerView
    
    var scrollView :UIScrollView = {
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 54*Y_, width: SCREEN_WIDTH, height: SCREEN_HEIGHT-172*Y_))
        scrollView.contentSize = CGSize(width: SCREEN_WIDTH, height: 1000*Y_)
        return scrollView
    }()
    
    var arrowView:UIImageView = {
        let arrowView = UIImageView(frame: CGRect(x: 273.79*X_, y: 12.14*Y_, width: 12.7*X_, height: 7.73*Y_))
        arrowView.image = UIImage(named: "Icon_arrowImage")
        return arrowView
    }()
    
    // 选择课本按钮
    var selectBtn:UIButton = {
        
        let selectBtn = UIButton(frame: CGRect(x: 50*X_, y:14*Y_ , width: 315*X_, height: 34*Y_))
        selectBtn.setTitle("当前使用课本：人教精通版小学英语三年级下", for: .normal)
        selectBtn.setTitleColor(UIColor(hexString: "#999999"), for: .normal)
        selectBtn.titleLabel?.font = UIFont(name: (selectBtn.titleLabel?.font.fontName)!, size: 10)
        selectBtn.setBackgroundImage(UIImage(named: "bg_selectBtn"), for: .normal)
        
        return selectBtn
    }()
    
    var wordListenView:SynExerciseBigView = {
        let wordListenView =  Bundle.main.loadNibNamed("SynExerciseBigView", owner: nil, options: nil)?.first as? SynExerciseBigView
        wordListenView?.frame = CGRect(x: 19*X_, y:(172-172)*Y_, width: 376*X_, height: 128*Y_)
        wordListenView?.bgImageView.frame.size = wordListenView!.frame.size
        wordListenView?.titleLabel.text = "单词听写"
        wordListenView?.detialLabel.text = "本单元共有64个单词，已掌握28个"
        wordListenView?.bgImageView.image = UIImage(named: "bg_synbigView")
        wordListenView?.iconImageView.image = UIImage(named: "Icon_wordListening")
        wordListenView?.backgroundColor = UIColor.clear
        wordListenView?.isUserInteractionEnabled = true
        wordListenView?.tag = 0
        return wordListenView!
    }()
    
    
    
    // MARK: 句子听写
    var sentenceListeningView:SynExerciseImageView = {
        let icon1Frame = CGRect(x: 116*X_, y: 27*Y_, width: 29*X_, height: 25*Y_)
        
        let sentenceListeningView = SynExerciseImageView(frame: CGRect(x: 20*X_, y: (306-172), width: 183*X_, height: 92*Y_), bgImageName: "bg_synlittleView", iconImageName: "Icon_sentenceListening", Iconframe: icon1Frame,withTitleAndDetail: "句子听写", "常考句子/泛听训练")
        sentenceListeningView.isUserInteractionEnabled = true
        sentenceListeningView.tag = 1
        return sentenceListeningView
    }()
    
    var wordTestView:SynExerciseImageView = {
        let icon2Frame = CGRect(x: 121*X_, y: 22*Y_, width: 20*X_, height: 28*Y_)
        
        let wordTestView = SynExerciseImageView(frame: CGRect(x: 213*X_, y: (306-172), width: 183*X_, height: 92*Y_), bgImageName: "bg_synlittleView", iconImageName: "Icon_wordTest", Iconframe: icon2Frame,withTitleAndDetail: "单词测试", "看词选意/同步训练")
        wordTestView.isUserInteractionEnabled = true
        wordTestView.tag = 2
        return wordTestView
    }()
    
    
    var  sentenceTestView:SynExerciseImageView = {
        let icon3Frame = CGRect(x: 114*X_, y: 21*Y_, width: 33*X_, height: 29*Y_)
        
        let sentenceTestView = SynExerciseImageView(frame: CGRect(x: 20*X_, y: (404-172)*Y_, width: 183*X_, height: 92*Y_), bgImageName: "bg_synlittleView", iconImageName: "Icon_sentenceTest", Iconframe: icon3Frame,withTitleAndDetail: "句子测试", "常考句子/检验成果")
        sentenceTestView.isUserInteractionEnabled = true
        sentenceTestView.tag = 3
        return sentenceTestView
    }()
    
    
    var  erorrBooksView:SynExerciseImageView = {
        let icon4Frame = CGRect(x: 115*X_, y: 17*Y_, width: 31*X_, height: 36*Y_)
        
        let erorrBooksView = SynExerciseImageView(frame: CGRect(x: 213*X_, y: (404-172)*Y_, width: 183*X_, height: 92*Y_), bgImageName: "bg_synlittleView", iconImageName: "Icon_errorBooks",Iconframe: icon4Frame, withTitleAndDetail: "错题本", "错词错句/温故知新")
        erorrBooksView.isUserInteractionEnabled = true
        erorrBooksView.tag = 4
        return erorrBooksView
    }()
    
    
    // -MARK: 单项学习
    var popularPhraseView:SynExerciseBigView = {
        let popularPhraseView =  Bundle.main.loadNibNamed("SynExerciseBigView", owner: nil, options: nil)?.first as? SynExerciseBigView
        popularPhraseView?.frame = CGRect(x: 19, y:(578-172)*Y_, width: 376*X_, height: 128*Y_)
        popularPhraseView?.bgImageView.frame.size = popularPhraseView!.frame.size
        popularPhraseView?.titleLabel.text = "常用短语"
        popularPhraseView?.detialLabel.text = "好作文、好口语的必备法宝"
        popularPhraseView?.bgImageView.image = UIImage(named: "bg_synbigView")
        popularPhraseView?.iconImageView.image = UIImage(named: "Icon_popularPhrase")
        popularPhraseView?.backgroundColor = UIColor.clear
        
        popularPhraseView?.isUserInteractionEnabled = true
        //        popularPhraseView?.addGestureRecognizer(tapWordListening)
        popularPhraseView?.tag = 5
        return popularPhraseView!
    }()
    
    var writeLearnView:SynExerciseImageView = {
        let writeLearn = IdentityTapGestureRecongnizer(target: self, action:#selector(toWordListening(_:)))
        writeLearn.identity = "写作学习"
        let Frame = CGRect(x: 111*X_, y: 22*Y_, width: 44*X_, height: 44*Y_)
        let writeLearnView = SynExerciseImageView(frame: CGRect(x: 20*X_, y: (712-172)*Y_, width: 183*X_, height: 92*Y_), bgImageName: "bg_synlittleView", iconImageName: "Icon_writeLearn",Iconframe: Frame, withTitleAndDetail: "写作学习", "")
        writeLearnView.isUserInteractionEnabled = true
        writeLearnView.tag = 6
        return writeLearnView
    }()
    
    var listeningLearnView:SynExerciseImageView = {
        let Frame = CGRect(x: 111*X_, y: 22*Y_, width: 44*X_, height: 44*Y_)
        let listeningLearnView = SynExerciseImageView(frame: CGRect(x: 213*X_, y: (712-172)*Y_, width: 183*X_, height: 92*Y_), bgImageName: "bg_synlittleView", iconImageName: "Icon_listenLearn",Iconframe: Frame, withTitleAndDetail: "听力学习", "")
        listeningLearnView.isUserInteractionEnabled = true
        listeningLearnView.tag = 7
        return listeningLearnView
    }()
    
    var readLearnView:SynExerciseImageView = {
        let Frame = CGRect(x: 111*X_, y: 22*Y_, width: 44*X_, height: 44*Y_)
        let readLearnView = SynExerciseImageView(frame: CGRect(x: 20*X_, y: (810-172)*Y_, width: 183*X_, height: 92*Y_), bgImageName: "bg_synlittleView", iconImageName: "Icon_readLearn",Iconframe: Frame, withTitleAndDetail: "阅读学习", "")
        readLearnView.isUserInteractionEnabled = true
        readLearnView.tag = 8
        return readLearnView
    }()
    
    var yinSmpView:SynExerciseImageView = {
        let Frame = CGRect(x: 111*X_, y: 22*Y_, width: 44*X_, height: 44*Y_)
        let yinSmpView = SynExerciseImageView(frame: CGRect(x: 213*X_, y: (810-172)*Y_, width: 183*X_, height: 92*Y_), bgImageName: "bg_synlittleView", iconImageName: "Icon_yinSmp",Iconframe: Frame, withTitleAndDetail: "音标学习", "")
        yinSmpView.isUserInteractionEnabled = true
        yinSmpView.tag = 9
        return yinSmpView
    }()
    
    var wordLearnView:SynExerciseImageView = {
        let Frame = CGRect(x: 111*X_, y: 22*Y_, width: 44*X_, height: 44*Y_)
        let wordLearnView = SynExerciseImageView(frame: CGRect(x: 20*X_, y: (908-172)*Y_, width: 183*X_, height: 92*Y_), bgImageName: "bg_synlittleView", iconImageName: "Icon_wordLearn",Iconframe: Frame, withTitleAndDetail: "单词学习", "")
        wordLearnView.isUserInteractionEnabled = true
        wordLearnView.tag = 10
        return wordLearnView
    }()
    
    var sentenceLearnView:SynExerciseImageView = {
        let Frame = CGRect(x: 111*X_, y: 22*Y_, width: 44*X_, height: 44*Y_)
        let sentenceLearnView = SynExerciseImageView(frame: CGRect(x: 213*X_, y: (908-172)*Y_, width: 183*X_, height: 92*Y_), bgImageName: "bg_synlittleView", iconImageName: "Icon_sentenceLearn",Iconframe: Frame, withTitleAndDetail: "句型学习", "")
        sentenceLearnView.isUserInteractionEnabled = true
        sentenceLearnView.tag = 11
        return sentenceLearnView
    }()
    
    var grammerLearnView:SynExerciseImageView = {
        let Frame = CGRect(x: 111*X_, y: 22*Y_, width: 44*X_, height: 44*Y_)
        let grammerLearnView = SynExerciseImageView(frame: CGRect(x: 20*X_, y: (1006-172)*Y_, width: 183*X_, height: 92*Y_), bgImageName: "bg_synlittleView", iconImageName: "Icon_grammerLearn",Iconframe: Frame, withTitleAndDetail: "语法学习", "")
        grammerLearnView.isUserInteractionEnabled = true
        grammerLearnView.tag = 12
        return grammerLearnView
    }()
    
    var schoolOvalView:SynExerciseImageView = {
        let Frame = CGRect(x: 111*X_, y: 22*Y_, width: 44*X_, height: 44*Y_)
        let schoolOvalView = SynExerciseImageView(frame: CGRect(x: 213*X_, y: (1006-172)*Y_, width: 183*X_, height: 92*Y_), bgImageName: "bg_synlittleView", iconImageName: "Icon_schoolOval",Iconframe: Frame, withTitleAndDetail: "学校口语", "")
        schoolOvalView.isUserInteractionEnabled = true
        schoolOvalView.tag = 13
        return schoolOvalView
    }()
    var wordHeadAndRootView:SynExerciseImageView = {
        let Frame = CGRect(x: 111*X_, y: 22*Y_, width: 44*X_, height: 44*Y_)
        let wordHeadAndRootView = SynExerciseImageView(frame: CGRect(x: 20*X_, y: (1104-172)*Y_, width: 183*X_, height: 92*Y_), bgImageName: "bg_synlittleView", iconImageName: "Icon_wordHeadAndRoot",Iconframe: Frame, withTitleAndDetail: "词根词缀", "")
        wordHeadAndRootView.isUserInteractionEnabled = true
        wordHeadAndRootView.tag = 14
        return wordHeadAndRootView
    }()
    
    var dailyLearnView:SynExerciseImageView = {
        let Frame = CGRect(x: 111*X_, y: 22*Y_, width: 44*X_, height: 44*Y_)
        let dailyLearnView = SynExerciseImageView(frame: CGRect(x: 213*X_, y: (1104-172)*Y_, width: 183*X_, height: 92*Y_), bgImageName: "bg_synlittleView", iconImageName: "Icon_dailyLearn",Iconframe: Frame, withTitleAndDetail: "日常用语", "")
        
        dailyLearnView.isUserInteractionEnabled = true
        dailyLearnView.tag = 15
        return dailyLearnView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = UIColor(hexString: "#fafafa")
        scrollView.delegate = self
        scrollView.bounces = false
        
        
        self.view.addSubview(scrollView)
        self.view.addSubview(selectBtn)
        
        selectBtn.addTarget(self, action: #selector(popChooseBookView), for: .touchUpInside)
        
        
        selectBtn.addSubview(arrowView)
        
        //        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 118*Y_), withTitle: "小学英语学伴")
        
        
        //MARK:绑定点击函数
        let tapWordListening = IdentityTapGestureRecongnizer(target: self, action:#selector(toWordListening(_:)))
        tapWordListening.identity = "单词听写"
        wordListenView.addGestureRecognizer(tapWordListening)
        scrollView.addSubview(wordListenView)
        
        
        let sentenceListening = IdentityTapGestureRecongnizer(target: self, action:#selector(toWordListening(_:)))
        sentenceListening.identity = "句子听写"
        sentenceListeningView.addGestureRecognizer(sentenceListening)
        
        scrollView.addSubview(sentenceListeningView)
        
        let wordTest = IdentityTapGestureRecongnizer(target: self, action:#selector(toWordListening(_:)))
        wordTest.identity = "单词测试"
        wordTestView.addGestureRecognizer(wordTest)
        scrollView.addSubview(wordTestView)
        
        let sentenceTest = IdentityTapGestureRecongnizer(target: self, action:#selector(toWordListening(_:)))
        sentenceTest.identity = "句子测试"
        sentenceTestView.addGestureRecognizer(sentenceTest)
        scrollView.addSubview(sentenceTestView)
        
        let erorrBooks = IdentityTapGestureRecongnizer(target: self, action:#selector(toWordListening(_:)))
        erorrBooks.identity = "错题本"
        erorrBooksView.addGestureRecognizer(erorrBooks)
        scrollView.addSubview(erorrBooksView)
        
        
        // 没有搞懂为什么要在 函数里面去绑定；还需要很多个（闭包解决了）
        //let learnChooseTap = UITapGestureRecognizer(target: self, action:#selector(toLearnChooseView(_:)))
        popularPhraseView.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(toLearnChooseView(_:))))
        writeLearnView.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(toLearnChooseView(_:))))
        listeningLearnView.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(toLearnChooseView(_:))))
        readLearnView.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(toLearnChooseView(_:))))
        yinSmpView.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(toLearnChooseView(_:))))
        wordLearnView.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(toLearnChooseView(_:))))
        sentenceLearnView.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(toLearnChooseView(_:))))
        grammerLearnView.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(toLearnChooseView(_:))))
        schoolOvalView.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(toLearnChooseView(_:))))
        wordHeadAndRootView.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(toLearnChooseView(_:))))
        dailyLearnView.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(toLearnChooseView(_:))))
        
        scrollView.addSubview(popularPhraseView)
        scrollView.addSubview(writeLearnView)
        scrollView.addSubview(listeningLearnView)
        scrollView.addSubview(readLearnView)
        scrollView.addSubview(yinSmpView)
        scrollView.addSubview(wordLearnView)
        scrollView.addSubview(sentenceLearnView)
        scrollView.addSubview(grammerLearnView)
        scrollView.addSubview(schoolOvalView)
        scrollView.addSubview(wordHeadAndRootView)
        scrollView.addSubview(dailyLearnView)
        scrollView.addSubview(splitLine)
        splitLine.addSubview(splitLineLabel)
        

        
    }
    
    var bgView:UIView!
    var chooseBookView:SynChooseBookTableView!
    var cellText :[String] = ["人教精通版小学英语三年级上册","人教精通版小学英语三年级上册","人教精通版小学英语四年级上册","人教精通版小学英语四年级下册","人教精通版小学英语五年级下册" ]
    var chooseBookViewIsUserable = [true,false,false,true,true]
    
    @objc func popChooseBookView(){
        // 添加带透明度的背景视图，从而实现下方视图变暗
        guard let window = UIApplication.shared.keyWindow else { return }
        bgView = UIView()
        bgView.frame = window.bounds
        bgView.backgroundColor = UIColor(white: 0.1, alpha: 0.6)
        window.addSubview(bgView)
        // 相对于 相当的window新建的 view的位置
        
        chooseBookView = SynChooseBookTableView(frame: CGRect(x: 50, y: 128, width: 315, height: 207))
        chooseBookView.isUserable = chooseBookViewIsUserable
        chooseBookView.cellText = cellText

        bgView.isUserInteractionEnabled = true
        window.addSubview(chooseBookView)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hidePopView))
        
        bgView.addGestureRecognizer(tapGesture)
        
    }
    
    // 点击阴影处，触发的函数：
    @objc func hidePopView(){
                /// 收回动画
                       UIView.animate(withDuration: 0.3) {
                           // 尾随闭包播放弹出动画
        //                   self.popupView.frame = CGRect(x: 30, y: kScreenHeight, width: kScreenWidth-60, height: 60)
//                        self.popupView.frame.origin.y = SCREEN_HEIGHT+20
                           // 提交一个延时任务线程
                           DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                               
                           }
                       }
        
        
        self.chooseBookView.removeFromSuperview()
        self.bgView.removeFromSuperview()
    }

    
    // 点击事件处理函数：
    @objc func toLearnChooseView(_ tap:UIGestureRecognizer){
        print("to learn Choose View ")
        print(tap.view!.tag)
        switch tap.view!.tag {
        case 5:
            pushToLearnChoose(withHeadTitle: "常用短语")
        case 6:
            pushToLearnChoose(withHeadTitle: "写作学习")
        case 7:
            pushToLearnChoose(withHeadTitle: "听力学习")
        case 8:
            pushToLearnChoose(withHeadTitle: "阅读学习")
        case 9:
            pushToLearnChoose(withHeadTitle: "音标学习")
        case 10:
            pushToLearnChoose(withHeadTitle: "单词学习")
        case 11:
            pushToLearnChoose(withHeadTitle: "句型学习")
        case 12:
            pushToLearnChoose(withHeadTitle: "语法学习")
        case 13:
            pushToLearnChoose(withHeadTitle: "学校口语")
        case 14:
            pushToLearnChoose(withHeadTitle: "词根词缀")
        case 15:
            pushToLearnChoose(withHeadTitle: "日常用语")
        default:
            break
        }
        
    }
    
    //
    func pushToLearnChoose(withHeadTitle headTitle:String){
        let toLearnChooseVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LearnChooseListController") as? LearnChooseListController
        toLearnChooseVC?.headTitle = headTitle; self.navigationController!.pushViewController(toLearnChooseVC!, animated: true)
    }
    // 点击进行界面跳转
    @objc func toWordListening(_ sender:IdentityTapGestureRecongnizer){
        //        print(sender.identity)
        switch sender.identity {
        case "单词听写":
            let wordUnitChooseVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WordUnitChooseController") as? WordUnitChooseController
            wordUnitChooseVC?.headTitle = "单词听写"; self.navigationController!.pushViewController(wordUnitChooseVC!, animated: true)
        case "句子听写":
            let wordUnitChooseVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WordUnitChooseController") as? WordUnitChooseController
            wordUnitChooseVC?.headTitle = "句子听写"; self.navigationController!.pushViewController(wordUnitChooseVC!, animated: true)
        case "单词测试":
            let wordUnitChooseVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WordUnitChooseController") as? WordUnitChooseController
            wordUnitChooseVC?.headTitle = "单词测试"; self.navigationController!.pushViewController(wordUnitChooseVC!, animated: true)
        case "句子测试":
            let wordUnitChooseVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WordUnitChooseController") as? WordUnitChooseController
            wordUnitChooseVC?.headTitle = "句子测试"; self.navigationController!.pushViewController(wordUnitChooseVC!, animated: true)
        case "错题本":
            let wordUnitChooseVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WordUnitChooseController") as? WordUnitChooseController
            wordUnitChooseVC?.headTitle = "错题本"; self.navigationController!.pushViewController(wordUnitChooseVC!, animated: true)
        default:
            break
        }
        
    }
    
}
// MARK: --拓展
extension SynExercise:UIScrollViewDelegate{
    
}
