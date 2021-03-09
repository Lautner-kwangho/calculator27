//
//  ViewController.swift
//  SecondCalculator
//
//  Created by 최광호 on 2021/02/19.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    lazy var Background =  { () -> UIView in
        let background = UIView()
        background.backgroundColor = .black
        return background
    }()
    
// Line resultBox
    lazy var ResultBox = { () -> UILabel in
        let view = UILabel()
        view.backgroundColor = .systemGray
        return view
    }()
    
    lazy var result1 = { () -> UILabel in
        let view = UILabel()
        view.backgroundColor = .black
        view.textAlignment = .right
        view.textColor = .white
        view.font = UIFont.boldSystemFont(ofSize: 50)
        return view
    }()
    
    lazy var result2 = { () -> UILabel in
        let view = UILabel()
        view.backgroundColor = .black
        view.textAlignment = .right
        view.textColor = .white
        view.font = UIFont.boldSystemFont(ofSize: 50)
        return view
    }()
    
    
// Line 1 ( function Line )
    lazy var Line1 = { () -> UILabel in
        let view = UILabel()
        view.backgroundColor = .black
        return view
    }()
    
    lazy var AC = { () -> UIButton in
        let btn = UIButton()
        btn.backgroundColor = .lightGray
        btn.setTitle("A/C", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        btn.layer.cornerRadius = 45
        btn.addTarget(self, action: #selector(AC(_:)), for: .touchUpInside)
        return btn
    }()
    lazy var shiftPlus = { () -> UIButton in
        let btn = UIButton()
        btn.backgroundColor = .lightGray
        btn.setTitle("+/_", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        btn.layer.cornerRadius = 45
        btn.addTarget(self, action: #selector(shiftPlus(_sender:)), for: .touchUpInside)
        return btn
    }()
    lazy var percent = { () -> UIButton in
        let btn = UIButton()
        btn.backgroundColor = .lightGray
        btn.setTitle("%", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        btn.layer.cornerRadius = 45
        btn.addTarget(self, action: #selector(percent(_sender:)), for: .touchUpInside)
        return btn
    }()
    lazy var division = { () -> UIButton in
        let btn = UIButton()
        btn.backgroundColor = .lightGray
        btn.setTitle("÷", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        btn.layer.cornerRadius = 45
        btn.addTarget(self, action: #selector(division(_sender:)), for: .touchUpInside)
        return btn
    }()
    
// Line 2 (Number 7~9)
    
    lazy var Line2 = { () -> UILabel in
        let view = UILabel()
        view.backgroundColor = .black
        return view
    }()
    lazy var seven = { () -> UIButton in
        let btn = UIButton()
        btn.backgroundColor = .darkGray
        btn.setTitle("7", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        btn.layer.cornerRadius = 45
        btn.addTarget(self, action: #selector(seven(_sender:)), for: .touchUpInside)
        return btn
    } ()
    lazy var eight = { () -> UIButton in
        let btn = UIButton()
        btn.backgroundColor = .darkGray
        btn.setTitle("8", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        btn.layer.cornerRadius = 45
        btn.addTarget(self, action: #selector(eight(_sender:)), for: .touchUpInside)
        return btn
    } ()
    lazy var nine = { () -> UIButton in
        let btn = UIButton()
        btn.backgroundColor = .darkGray
        btn.setTitle("9", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        btn.layer.cornerRadius = 45
        btn.addTarget(self, action: #selector(nine(_sender:)), for: .touchUpInside)
        return btn
    } ()
    lazy var multi = { () -> UIButton in
        let btn = UIButton()
        btn.backgroundColor = .orange
        btn.setTitle("X", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        btn.layer.cornerRadius = 45
        btn.addTarget(self, action: #selector(multi(_sender:)), for: .touchUpInside)
        return btn
    } ()
    
// Line 3 (Number 4~6)
    lazy var Line3 = { () -> UILabel in
        let view = UILabel()
        view.backgroundColor = .black
        return view
    }()
    lazy var four = { () -> UIButton in
        let btn = UIButton()
        btn.backgroundColor = .darkGray
        btn.setTitle("4", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        btn.layer.cornerRadius = 45
        btn.addTarget(self, action: #selector(four(_sender:)), for: .touchUpInside)
        return btn
    } ()
    lazy var five = { () -> UIButton in
        let btn = UIButton()
        btn.backgroundColor = .darkGray
        btn.setTitle("5", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        btn.layer.cornerRadius = 45
        btn.addTarget(self, action: #selector(five(_sender:)), for: .touchUpInside)
        return btn
    } ()
    lazy var six = { () -> UIButton in
        let btn = UIButton()
        btn.backgroundColor = .darkGray
        btn.setTitle("6", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        btn.layer.cornerRadius = 45
        btn.addTarget(self, action: #selector(six(_sender:)), for: .touchUpInside)
        return btn
    } ()
    lazy var minus = { () -> UIButton in
        let btn = UIButton()
        btn.backgroundColor = .orange
        btn.setTitle("-", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        btn.layer.cornerRadius = 45
        btn.addTarget(self, action: #selector(minus(_sender:)), for: .touchUpInside)
        return btn
    } ()

// Line 4 (Number 1~3)
    lazy var Line4 = { () -> UILabel in
        let view = UILabel()
        view.backgroundColor = .black
        return view
    }()
    lazy var one = { () -> UIButton in
        let btn = UIButton()
        btn.backgroundColor = .darkGray
        btn.setTitle("1", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        btn.layer.cornerRadius = 45
        btn.addTarget(self, action: #selector(one(_sender:)), for: .touchUpInside)
        return btn
    } ()
    lazy var two = { () -> UIButton in
        let btn = UIButton()
        btn.backgroundColor = .darkGray
        btn.setTitle("2", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        btn.layer.cornerRadius = 45
        btn.addTarget(self, action: #selector(two(_sender:)), for: .touchUpInside)
        return btn
    } ()
    lazy var three = { () -> UIButton in
        let btn = UIButton()
        btn.backgroundColor = .darkGray
        btn.setTitle("3", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        btn.layer.cornerRadius = 45
        btn.addTarget(self, action: #selector(three(_sender:)), for: .touchUpInside)
        return btn
    } ()
    lazy var plus = { () -> UIButton in
        let btn = UIButton()
        btn.backgroundColor = .orange
        btn.setTitle("+", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        btn.layer.cornerRadius = 45
        btn.addTarget(self, action: #selector(plus(_sender:)), for: .touchUpInside)
        return btn
    } ()
    
// Line 5 (Number 0~.)
    lazy var Line5 = { () -> UILabel in
        let view = UILabel()
        view.backgroundColor = .black
        return view
    }()
    lazy var zero = { () -> UIButton in
        let btn = UIButton()
        btn.backgroundColor = .darkGray
        btn.setTitle("0", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        btn.layer.cornerRadius = 45
        btn.addTarget(self, action: #selector(zero(_sender:)), for: .touchUpInside)
        return btn
    } ()
    lazy var dat = { () -> UIButton in
        let btn = UIButton()
        btn.backgroundColor = .darkGray
        btn.setTitle(".", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        btn.layer.cornerRadius = 45
        btn.addTarget(self, action: #selector(dot(_sender:)), for: .touchUpInside)
        return btn
    } ()
    lazy var resultButton = { () -> UIButton in
        let btn = UIButton()
        btn.backgroundColor = .orange
        btn.setTitle("=", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        btn.layer.cornerRadius = 45
        btn.addTarget(self, action: #selector(resultButton(_sender:)), for: .touchUpInside)
        return btn
    } ()
    
    var working: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.addSubview(Background)
        
        self.view.addSubview(ResultBox)
        self.view.addSubview(result1)
        self.view.addSubview(result2)
        
        self.view.addSubview(Line1)
        self.view.addSubview(AC)
        self.view.addSubview(shiftPlus)
        self.view.addSubview(percent)
        self.view.addSubview(division)
        
        self.view.addSubview(Line2)
        self.view.addSubview(seven)
        self.view.addSubview(eight)
        self.view.addSubview(nine)
        self.view.addSubview(multi)
        
        self.view.addSubview(Line3)
        self.view.addSubview(four)
        self.view.addSubview(five)
        self.view.addSubview(six)
        self.view.addSubview(minus)
        
        self.view.addSubview(Line4)
        self.view.addSubview(one)
        self.view.addSubview(two)
        self.view.addSubview(three)
        self.view.addSubview(plus)
        
        self.view.addSubview(Line5)
        self.view.addSubview(zero)
        self.view.addSubview(dat)
        self.view.addSubview(resultButton)
        
        Background.snp.makeConstraints { (make) in
            make.edges.equalTo(self.view)
        }
        
// ResultBox workspace
        
        ResultBox.snp.makeConstraints { (make) in
            make.width.equalTo(20)
            make.height.equalTo(Background.snp.height).dividedBy(3)
            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).offset(20)
            make.right.equalTo(self.view.safeAreaLayoutGuide.snp.right).offset(-30)
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(5)
        }
        
        result1.snp.makeConstraints { (make) in
            make.width.equalTo(18)
            make.height.equalTo(ResultBox.snp.height).dividedBy(2)
            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).offset(20)
            
            make.centerX.equalToSuperview()
            make.top.equalTo(ResultBox.snp.top)
        }
        result2.snp.makeConstraints { (make) in
            make.width.equalTo(18)
            make.height.equalTo(ResultBox.snp.height).dividedBy(2)
            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).offset(20)
            make.centerX.equalToSuperview()
            make.top.equalTo(result1.snp.bottom)
        }
        
// Line 1 workspace
        
        Line1.snp.makeConstraints { (make) in
            make.width.equalTo(self.view.safeAreaLayoutGuide.snp.width)
            make.height.equalTo(100)
            make.top.equalTo(ResultBox.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
        }
        
        AC.snp.makeConstraints { (make) in
            make.width.height.equalTo(90)
            make.top.equalTo(Line1.snp.top).offset(5)
            make.left.equalTo(Line1.snp.left).offset(10)
        }
        shiftPlus.snp.makeConstraints { (make) in
            make.width.height.equalTo(90)
            make.top.equalTo(AC.snp.top)
            make.left.equalTo(AC.snp.right).offset(10)
        }
        percent.snp.makeConstraints { (make) in
            make.width.height.equalTo(90)
            make.top.equalTo(shiftPlus.snp.top)
            make.left.equalTo(shiftPlus.snp.right).offset(10)
        }
        division.snp.makeConstraints { (make) in
            make.width.height.equalTo(90)
            make.top.equalTo(percent.snp.top)
            make.left.equalTo(percent.snp.right).offset(10)
        }
        
// Line 2 workspace
        
        Line2.snp.makeConstraints { (make) in
            make.width.equalTo(self.view.safeAreaLayoutGuide.snp.width)
            make.height.equalTo(100)
            make.top.equalTo(Line1.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
        }
        
        seven.snp.makeConstraints { (make) in
            make.width.height.equalTo(90)
            make.top.equalTo(Line2.snp.top).offset(5)
            make.left.equalTo(Line2.snp.left).offset(10)
        }
        eight.snp.makeConstraints { (make) in
            make.width.height.equalTo(90)
            make.top.equalTo(seven.snp.top)
            make.left.equalTo(seven.snp.right).offset(10)
        }
        nine.snp.makeConstraints { (make) in
            make.width.height.equalTo(90)
            make.top.equalTo(eight.snp.top)
            make.left.equalTo(eight.snp.right).offset(10)
        }
        multi.snp.makeConstraints { (make) in
            make.width.height.equalTo(90)
            make.top.equalTo(nine.snp.top)
            make.left.equalTo(nine.snp.right).offset(10)
        }
// Line 3 workspace
        Line3.snp.makeConstraints { (make) in
            make.width.equalTo(self.view.safeAreaLayoutGuide.snp.width)
            make.height.equalTo(100)
            make.top.equalTo(Line2.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
        }
        
        four.snp.makeConstraints { (make) in
            make.width.height.equalTo(90)
            make.top.equalTo(Line3.snp.top).offset(5)
            make.left.equalTo(Line3.snp.left).offset(10)
        }
        five.snp.makeConstraints { (make) in
            make.width.height.equalTo(90)
            make.top.equalTo(four.snp.top)
            make.left.equalTo(four.snp.right).offset(10)
        }
        six.snp.makeConstraints { (make) in
            make.width.height.equalTo(90)
            make.top.equalTo(five.snp.top)
            make.left.equalTo(five.snp.right).offset(10)
        }
        minus.snp.makeConstraints { (make) in
            make.width.height.equalTo(90)
            make.top.equalTo(six.snp.top)
            make.left.equalTo(six.snp.right).offset(10)
        }
        
// Line 4 workspace
        Line4.snp.makeConstraints { (make) in
            make.width.equalTo(self.view.safeAreaLayoutGuide.snp.width)
            make.height.equalTo(100)
            make.top.equalTo(Line3.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
        }
        
        three.snp.makeConstraints { (make) in
            make.width.height.equalTo(90)
            make.top.equalTo(Line4.snp.top).offset(5)
            make.left.equalTo(Line4.snp.left).offset(10)
        }
        
        two.snp.makeConstraints { (make) in
            make.width.height.equalTo(90)
            make.top.equalTo(Line4.snp.top)
            make.left.equalTo(three.snp.right).offset(10)
        }
        
        one.snp.makeConstraints { (make) in
            make.width.height.equalTo(90)
            make.top.equalTo(Line4.snp.top)
            make.left.equalTo(two.snp.right).offset(10)
        }
        
        plus.snp.makeConstraints { (make) in
            make.width.height.equalTo(90)
            make.top.equalTo(Line4.snp.top)
            make.left.equalTo(one.snp.right).offset(10)
        }
        
// Line 5 workspace
        Line5.snp.makeConstraints { (make) in
            make.width.equalTo(self.view.safeAreaLayoutGuide.snp.width)
            make.height.equalTo(100)
            make.top.equalTo(Line4.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
        }
    
        zero.snp.makeConstraints { (make) in
            make.width.equalTo(190)
            make.height.equalTo(90)
            make.top.equalTo(Line5.snp.top).offset(5)
            make.left.equalTo(Line5.snp.left).offset(10)
        }
        dat.snp.makeConstraints { (make) in
            make.width.height.equalTo(90)
            make.top.equalTo(zero.snp.top)
            make.left.equalTo(zero.snp.right).offset(10)
        }
        resultButton.snp.makeConstraints { (make) in
            make.width.height.equalTo(90)
            make.top.equalTo(dat.snp.top)
            make.left.equalTo(dat.snp.right).offset(10)
        }
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
    }
    
    @objc func AC(_ sender: Any) {
        working = ""
        result1.text = ""
        result2.text = ""
    }
    
    @objc func shiftPlus(_sender: Any) {
        shiftToWorking()

    }
    
    @objc func percent(_sender: Any) {
        addToWorking(value: "%")
    }
    
    @objc func division(_sender: Any) {
        addToWorking(value: "/")
    }
    
    @objc func multi(_sender: Any) {
        addToWorking(value: "*")
    }
    
    @objc func minus(_sender: Any) {
        addToWorking(value: "-")
    }
    
    @objc func plus(_sender: Any) {
        addToWorking(value: "+")
    }
    
    @objc func resultButton(_sender: Any) {
        
        if (validInput()){
            let checkWorkingsForPercent = working.replacingOccurrences(of: "%", with: "* 0.01")
            let expression = NSExpression(format: checkWorkingsForPercent)
            let result = expression.expressionValue(with: nil, context: nil) as! Double
            let resultString = formatResult(result: result)
            result2.text = resultString
        } else {
            let alert = UIAlertController(title: "Fail", message: "계산이 불가능합니다, 유효값을 넣어주세요", preferredStyle: UIAlertController.Style.alert)
            let addAction = UIAlertAction(title: "확인", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(addAction)
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    func validInput() -> Bool {
        var count = 0
        var funcCharIndexs = [Int]()
        
        for char in working {
            if (specialCharacter(char: char)) {
                funcCharIndexs.append(count)
            }
            count += 1
        }
        
        var previous: Int = -1
        
        
        for index in funcCharIndexs {
            if index == 0 {
                return false
            }
            if index == working.count - 1 {
                return false
            }
            if previous != -1 {
                if index - previous == 1 {
                    return false
                }
            }
            
            previous = index 
        }
        
        return true
    }
    
    func specialCharacter (char: Character) -> Bool {
        
        switch char {
        case "*" :
            return true
        case "/" :
            return true
        case "+" :
            return true
        default :
            return false
            break
        }
        
    }
    
    func formatResult(result: Double) -> String {
        if (result.truncatingRemainder(dividingBy: 1) == 0) {
            return String(format: "%.0f", result)
        } else {
            return String(format: "%.02f", result)
        }
        
    }
    
    @objc func dot(_sender: Any) {
        addToWorking(value: ".")
    }
    
    @objc func zero(_sender: Any) {
        addToWorking(value: "0")
    }
    @objc func one(_sender: Any) {
        addToWorking(value: "1")
    }
    @objc func two(_sender: Any) {
        addToWorking(value: "2")
    }
    @objc func three(_sender: Any) {
        addToWorking(value: "3")
    }
    @objc func four(_sender: Any) {
        addToWorking(value: "4")
    }
    @objc func five(_sender: Any) {
        addToWorking(value: "5")
    }
    @objc func six(_sender: Any) {
        addToWorking(value: "6")
    }
    @objc func seven(_sender: Any) {
        addToWorking(value: "7")
    }
    @objc func eight(_sender: Any) {
        addToWorking(value: "8")
    }
    @objc func nine(_sender: Any) {
        addToWorking(value: "9")
    }
    
    func addToWorking(value: String) {
        working = working + value
        result1.text = working
    }
    
    func shiftToWorking() {
        if let workingNum = Int(working) {
            let cal: Int = -workingNum
            result1.text = String(cal)
        }
    }
    
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
                if !working.isEmpty {
                    working.removeLast()
                    result1.text = working
                }
            }
        }
    }

#if DEBUG

import SwiftUI
struct ViewControllerRepresentable: UIViewControllerRepresentable {
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        // leave this empty
    }
    @available( ios 14.0.0, *)
    func makeUIViewController(context: Context) -> UIViewController {
        ViewController()
    }
}
@ available( ios 14.0, *)
struct ViewControllerRepresentable_PreviewProvider: PreviewProvider {
    static var previews: some View {
        Group {
            ViewControllerRepresentable()
                .ignoresSafeArea()
                .previewDisplayName("Praview")
                .previewDevice(PreviewDevice(rawValue: "iphone 11"))
        }
    }
} #endif

