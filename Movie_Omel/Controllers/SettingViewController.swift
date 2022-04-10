//
//  SettingViewController.swift
//  Movie_Omel
//
//  Created by Виктор Назаров on 16.02.22.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var control: UISegmentedControl!
    @IBOutlet weak var englishView: UIView!
    @IBOutlet weak var russianView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        setSettingView(englishView)
        setSettingView(russianView)
        setSettingView(control)
        
    }
    func setSettingView (_ someView:UIView) -> UIView {
        someView.layer.borderWidth = 1
        someView.layer.borderColor = UIColor(named: "ColorForText")?.cgColor
        someView.layer.cornerRadius = 4
        
        return someView
    }
}
