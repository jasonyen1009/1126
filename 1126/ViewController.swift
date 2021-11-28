//
//  ViewController.swift
//  1126
//
//  Created by Hong Cheng Yen on 2021/11/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let str = "This is ag Very Long Label"
        
        
        let nsString = str as NSString
        if nsString.length >= 5 {
            label.text = nsString.substring(with: NSRange(location: 0, length: nsString.length > 5 ? 5 : nsString.length))
        }
        
    }
    
    private func presentModal() {
        let detailViewController = DetailViewController()
        let nav = UINavigationController(rootViewController: detailViewController)
        // 1
        nav.modalPresentationStyle = .pageSheet

        
        // 2
        if let sheet = nav.sheetPresentationController {

            // 3
            sheet.detents = [.medium(), .large()]

        }
        // 4
        present(nav, animated: true, completion: nil)

    }


    @IBAction func nextpage(_ sender: Any) {
        if let controller = storyboard?.instantiateViewController(identifier: "t1") {
              controller.isModalInPresentation = false
//              present(controller, animated: true, completion: nil)
           }
        button1.isHidden = false
        button2.isHidden = true

        button1.self.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        button1.self.layer.borderWidth = 1
        button1.self.layer.cornerRadius = 5
    }
    @IBAction func ttttt(_ sender: Any) {
        print("button1")
    }
    @IBAction func button2(_ sender: Any) {
        print("button2")
    }
    @IBAction func test(_ sender: Any) {
        print("{get")
    }
}

