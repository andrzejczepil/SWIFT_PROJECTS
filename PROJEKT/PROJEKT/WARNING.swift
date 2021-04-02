//
//  WARNING.swift
//  PROJEKT
//
//  Created by Andrzej Czepil on 11/12/2019.
//  Copyright © 2019 Andrzej Czepil. All rights reserved.
//

import Cocoa

class WARNING: NSViewController {
    
    weak var timer: Timer?
    weak var timer1: Timer?
    var czas_zamk: Double = 5
    
    @IBAction func OBECNY_P(_ sender: Any) {
        timer?.invalidate()
        timer1?.invalidate()
        self.dismiss(NSViewController.self)
    }
    func LOGOUT(){
        exit(0)
    }
    @IBAction func WYLOGUJ_P(_ sender: Any) {
        LOGOUT()
    }
    @IBOutlet var CZAS_W: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer1 = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] timer in
            self?.WYLOGOWYWANIE_L()
        }
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: czas_zamk+1, repeats: false) { [weak self] timer in
            self?.WYLOGOWYWANIE()
        }
        
    }
    deinit {
        timer?.invalidate()
        self.dismiss(NSViewController.self)
    }

    func WYLOGOWYWANIE() {
        LOGOUT()
    }
    func WYLOGOWYWANIE_L() {
        CZAS_W.stringValue = String(czas_zamk)
        czas_zamk -=  1
    }
    
}
