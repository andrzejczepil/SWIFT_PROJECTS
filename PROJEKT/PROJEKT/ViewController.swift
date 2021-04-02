//
//  ViewController.swift
//  PROJEKT
//
//  Created by Andrzej Czepil on 09/12/2019.
//  Copyright © 2019 Andrzej Czepil. All rights reserved.
//

import Cocoa

var login: String = ""
var haslo: String = ""

func logowanie(login_K login_A: String,haslo_K haslo_A: String) ->Bool{
    var wynik: Bool = false
    struct pracownik{
        var nazwa: String = ""
        var haslo: String = ""
    }
    var uzytkownicy: [pracownik] = []
    //uzytkownicy
    let pracownik1: pracownik = pracownik(nazwa: "admin", haslo: "admin")
    let pracownik2: pracownik = pracownik(nazwa: "andrzej", haslo: "czepil")
    let pracownik3: pracownik = pracownik(nazwa: "patryk", haslo: "maciejewski")
    uzytkownicy.append(pracownik1)
    uzytkownicy.append(pracownik2)
    uzytkownicy.append(pracownik3)
    
    let podane: pracownik = pracownik(nazwa: login_A, haslo: haslo_A)
    for index in 0...(uzytkownicy.count-1){
        if ((uzytkownicy[index].nazwa == podane.nazwa) && (uzytkownicy[index].haslo == podane.haslo)){
            return true
        }
        else{
            wynik = false
        }
    }
return wynik
}

func BLAD(question: String, text: String) -> Bool{
           let alert = NSAlert()
           alert.messageText = question
           alert.informativeText = text
        alert.alertStyle = NSAlert.Style.warning
           alert.addButton(withTitle: "OK")
        return alert.runModal() == NSApplication.ModalResponse.alertFirstButtonReturn
       }

class ViewController: NSViewController {
    
    @IBAction func SHUTDOWN(_ sender: Any) {
        exit(0)
    }
    
    @IBOutlet weak var LOGIN_LABEL: NSTextField!
    @IBOutlet weak var LOGIN: NSTextField!
    @IBOutlet weak var HASLO_LABEL: NSTextField!
    @IBOutlet weak var HASLO: NSSecureTextField!
    @IBOutlet weak var LOGOWANIE_LABEL: NSTextField!
    
    @IBAction func CZYSZCZENIE_BUTTON(_ sender: Any) {
            if LOGIN.stringValue.isEmpty {
               }
            else{
               LOGIN.stringValue = ""
               }
            if HASLO.stringValue.isEmpty {
               }
            else{
               HASLO.stringValue = ""
               }
    }
    
    @IBAction func LOGIN_BUTTON(_ sender: Any) {
        if LOGIN.stringValue.isEmpty {
             _ = BLAD(question: "BRAK LOGINU", text: "UZUPEŁNIJ LOGIN")
                  }
        else if HASLO.stringValue.isEmpty {
            _ = BLAD(question: "BRAK HASŁA", text: "UZUPEŁNIJ HASŁO")
        }
        else{
        login = LOGIN.stringValue
        haslo = HASLO.stringValue
            if(logowanie(login_K: login, haslo_K: haslo)){
                performSegue(withIdentifier: "ZALOGOWANO" , sender: self)
            }
            else{
                 _ = BLAD(question: "Niepoprawne hasło lub login", text: "Podaj poprawne hasło i login")
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override var representedObject: Any? {
        didSet {
        }
    }
}

