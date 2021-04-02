//
//  ViewController.swift
//  MIKROPROCESOR
//
//  Created by Andrzej Czepil on 15/01/2020.
//  Copyright © 2020 Andrzej Czepil. All rights reserved.
//
//self.tekst.text = String(zawartosc[3])
import Foundation
import UIKit

func zaladuj()->[[String]]{ //wczytanie danych z pliku
    var teksty:[String] = [String]()
    var rozkaz_0:[String] = [String]()
    var rozkaz_1:[String] = [String]()
    var rozkaz_2:[String] = [String]()
    var rozkaz_3:[String] = [String]()
    var rozkaz_4:[String] = [String]()
    var rozkaz_5:[String] = [String]()
    var rozkaz_6:[String] = [String]()
    var rozkaz_7:[String] = [String]()
    var rozkaz_8:[String] = [String]()
    var rozkaz_9:[String] = [String]()
    var rozkaz_10:[String] = [String]()
    var rozkaz_11:[String] = [String]()
    var rozkaz_12:[String] = [String]()
    var rozkaz_13:[String] = [String]()
    var rozkaz_14:[String] = [String]()
    var rozkazy:[[String]] = [[String]]()
    if let filepath = Bundle.main.path(forResource: "plik", ofType: "txt") {
        do {
            let zawartosc_s = try String(contentsOfFile: filepath)
            teksty = zawartosc_s.split(separator: "\n").map({ (substring) in return String(substring)})
        }
        catch {
            print("Blad pliku")
        }
    }
    else {
        print("Brak pliku")
    }
    if teksty.count > 0 {
        rozkaz_0 = teksty[0].split(separator: " ").map({ (substring) in return String(substring)})
    }
     if teksty.count > 1 {
        rozkaz_1 = teksty[1].split(separator: " ").map({ (substring) in return String(substring)})
     }
     if teksty.count > 2 {
        rozkaz_2 = teksty[2].split(separator: " ").map({ (substring) in return String(substring)})
     }
     if teksty.count > 3{
        rozkaz_3 = teksty[3].split(separator: " ").map({ (substring) in return String(substring)})
     }
     if teksty.count > 4 {
        rozkaz_4 = teksty[4].split(separator: " ").map({ (substring) in return String(substring)})
     }
     if teksty.count > 5 {
        rozkaz_5 = teksty[5].split(separator: " ").map({ (substring) in return String(substring)})
     }
     if teksty.count > 6 {
        rozkaz_6 = teksty[6].split(separator: " ").map({ (substring) in return String(substring)})
     }
     if teksty.count > 7 {
        rozkaz_7 = teksty[7].split(separator: " ").map({ (substring) in return String(substring)})
     }
     if teksty.count > 8 {
        rozkaz_8 = teksty[8].split(separator: " ").map({ (substring) in return String(substring)})
     }
     if teksty.count > 9 {
        rozkaz_9 = teksty[9].split(separator: " ").map({ (substring) in return String(substring)})
     }
     if teksty.count > 10 {
        rozkaz_10 = teksty[10].split(separator: " ").map({ (substring) in return String(substring)})
     }
     if teksty.count > 11 {
        rozkaz_11 = teksty[11].split(separator: " ").map({ (substring) in return String(substring)})
     }
     if teksty.count > 12 {
        rozkaz_12 = teksty[12].split(separator: " ").map({ (substring) in return String(substring)})
     }
     if teksty.count > 13 {
        rozkaz_13 = teksty[13].split(separator: " ").map({ (substring) in return String(substring)})
     }
     if teksty.count > 14 {
        rozkaz_14 = teksty[14].split(separator: " ").map({ (substring) in return String(substring)})
     }
    if teksty.count > 0 {
       rozkazy = [[rozkaz_0[0],rozkaz_0[1],rozkaz_0[2]]]
    }
     if teksty.count > 1 {
        rozkazy = [[rozkaz_0[0],rozkaz_0[1],rozkaz_0[2]],[rozkaz_1[0],rozkaz_1[1],rozkaz_1[2]]]
     }
     if teksty.count > 2 {
        rozkazy = [[rozkaz_0[0],rozkaz_0[1],rozkaz_0[2]],[rozkaz_1[0],rozkaz_1[1],rozkaz_1[2]],[rozkaz_2[0],rozkaz_2[1],rozkaz_2[2]]]
     }
     if teksty.count > 3{
        rozkazy = [[rozkaz_0[0],rozkaz_0[1],rozkaz_0[2]],[rozkaz_1[0],rozkaz_1[1],rozkaz_1[2]],[rozkaz_2[0],rozkaz_2[1],rozkaz_2[2]],[rozkaz_3[0],rozkaz_3[1],rozkaz_3[2]]]
    }
     if teksty.count > 4 {
        rozkazy = [[rozkaz_0[0],rozkaz_0[1],rozkaz_0[2]],[rozkaz_1[0],rozkaz_1[1],rozkaz_1[2]],[rozkaz_2[0],rozkaz_2[1],rozkaz_2[2]],[rozkaz_3[0],rozkaz_3[1],rozkaz_3[2]],[rozkaz_4[0],rozkaz_4[1],rozkaz_4[2]]]
     }
     if teksty.count > 5 {
        rozkazy = [[rozkaz_0[0],rozkaz_0[1],rozkaz_0[2]],[rozkaz_1[0],rozkaz_1[1],rozkaz_1[2]],[rozkaz_2[0],rozkaz_2[1],rozkaz_2[2]],[rozkaz_3[0],rozkaz_3[1],rozkaz_3[2]],[rozkaz_4[0],rozkaz_4[1],rozkaz_4[2]],[rozkaz_5[0],rozkaz_5[1],rozkaz_5[2]]]
     }
     if teksty.count > 6 {
        rozkazy = [[rozkaz_0[0],rozkaz_0[1],rozkaz_0[2]],[rozkaz_1[0],rozkaz_1[1],rozkaz_1[2]],[rozkaz_2[0],rozkaz_2[1],rozkaz_2[2]],[rozkaz_3[0],rozkaz_3[1],rozkaz_3[2]],[rozkaz_4[0],rozkaz_4[1],rozkaz_4[2]],[rozkaz_5[0],rozkaz_5[1],rozkaz_5[2]],[rozkaz_6[0],rozkaz_6[1],rozkaz_6[2]]]
     }
     if teksty.count > 7 {
        rozkazy = [[rozkaz_0[0],rozkaz_0[1],rozkaz_0[2]],[rozkaz_1[0],rozkaz_1[1],rozkaz_1[2]],[rozkaz_2[0],rozkaz_2[1],rozkaz_2[2]],[rozkaz_3[0],rozkaz_3[1],rozkaz_3[2]],[rozkaz_4[0],rozkaz_4[1],rozkaz_4[2]],[rozkaz_5[0],rozkaz_5[1],rozkaz_5[2]],[rozkaz_6[0],rozkaz_6[1],rozkaz_6[2]],[rozkaz_7[0],rozkaz_7[1],rozkaz_7[2]]]
     }
     if teksty.count > 8 {
        rozkazy = [[rozkaz_0[0],rozkaz_0[1],rozkaz_0[2]],[rozkaz_1[0],rozkaz_1[1],rozkaz_1[2]],[rozkaz_2[0],rozkaz_2[1],rozkaz_2[2]],[rozkaz_3[0],rozkaz_3[1],rozkaz_3[2]],[rozkaz_4[0],rozkaz_4[1],rozkaz_4[2]],[rozkaz_5[0],rozkaz_5[1],rozkaz_5[2]],[rozkaz_6[0],rozkaz_6[1],rozkaz_6[2]],[rozkaz_7[0],rozkaz_7[1],rozkaz_7[2]],[rozkaz_8[0],rozkaz_8[1],rozkaz_8[2]]]
     }
     if teksty.count > 9 {
        rozkazy = [[rozkaz_0[0],rozkaz_0[1],rozkaz_0[2]],[rozkaz_1[0],rozkaz_1[1],rozkaz_1[2]],[rozkaz_2[0],rozkaz_2[1],rozkaz_2[2]],[rozkaz_3[0],rozkaz_3[1],rozkaz_3[2]],[rozkaz_4[0],rozkaz_4[1],rozkaz_4[2]],[rozkaz_5[0],rozkaz_5[1],rozkaz_5[2]],[rozkaz_6[0],rozkaz_6[1],rozkaz_6[2]],[rozkaz_7[0],rozkaz_7[1],rozkaz_7[2]],[rozkaz_8[0],rozkaz_8[1],rozkaz_8[2]],[rozkaz_9[0],rozkaz_9[1],rozkaz_9[2]]]
     }
     if teksty.count > 10 {
        rozkazy = [[rozkaz_0[0],rozkaz_0[1],rozkaz_0[2]],[rozkaz_1[0],rozkaz_1[1],rozkaz_1[2]],[rozkaz_2[0],rozkaz_2[1],rozkaz_2[2]],[rozkaz_3[0],rozkaz_3[1],rozkaz_3[2]],[rozkaz_4[0],rozkaz_4[1],rozkaz_4[2]],[rozkaz_5[0],rozkaz_5[1],rozkaz_5[2]],[rozkaz_6[0],rozkaz_6[1],rozkaz_6[2]],[rozkaz_7[0],rozkaz_7[1],rozkaz_7[2]],[rozkaz_8[0],rozkaz_8[1],rozkaz_8[2]],[rozkaz_9[0],rozkaz_9[1],rozkaz_9[2]],[rozkaz_10[0],rozkaz_10[1],rozkaz_10[2]]]
     }
     if teksty.count > 11 {
        rozkazy = [[rozkaz_0[0],rozkaz_0[1],rozkaz_0[2]],[rozkaz_1[0],rozkaz_1[1],rozkaz_1[2]],[rozkaz_2[0],rozkaz_2[1],rozkaz_2[2]],[rozkaz_3[0],rozkaz_3[1],rozkaz_3[2]],[rozkaz_4[0],rozkaz_4[1],rozkaz_4[2]],[rozkaz_5[0],rozkaz_5[1],rozkaz_5[2]],[rozkaz_6[0],rozkaz_6[1],rozkaz_6[2]],[rozkaz_7[0],rozkaz_7[1],rozkaz_7[2]],[rozkaz_8[0],rozkaz_8[1],rozkaz_8[2]],[rozkaz_9[0],rozkaz_9[1],rozkaz_9[2]],[rozkaz_10[0],rozkaz_10[1],rozkaz_10[2]],[rozkaz_11[0],rozkaz_11[1],rozkaz_11[2]]]
     }
     if teksty.count > 12 {
        rozkazy = [[rozkaz_0[0],rozkaz_0[1],rozkaz_0[2]],[rozkaz_1[0],rozkaz_1[1],rozkaz_1[2]],[rozkaz_2[0],rozkaz_2[1],rozkaz_2[2]],[rozkaz_3[0],rozkaz_3[1],rozkaz_3[2]],[rozkaz_4[0],rozkaz_4[1],rozkaz_4[2]],[rozkaz_5[0],rozkaz_5[1],rozkaz_5[2]],[rozkaz_6[0],rozkaz_6[1],rozkaz_6[2]],[rozkaz_7[0],rozkaz_7[1],rozkaz_7[2]],[rozkaz_8[0],rozkaz_8[1],rozkaz_8[2]],[rozkaz_9[0],rozkaz_9[1],rozkaz_9[2]],[rozkaz_10[0],rozkaz_10[1],rozkaz_10[2]],[rozkaz_11[0],rozkaz_11[1],rozkaz_11[2]],[rozkaz_12[0],rozkaz_12[1],rozkaz_12[2]]]
     }
     if teksty.count > 13 {
        rozkazy = [[rozkaz_0[0],rozkaz_0[1],rozkaz_0[2]],[rozkaz_1[0],rozkaz_1[1],rozkaz_1[2]],[rozkaz_2[0],rozkaz_2[1],rozkaz_2[2]],[rozkaz_3[0],rozkaz_3[1],rozkaz_3[2]],[rozkaz_4[0],rozkaz_4[1],rozkaz_4[2]],[rozkaz_5[0],rozkaz_5[1],rozkaz_5[2]],[rozkaz_6[0],rozkaz_6[1],rozkaz_6[2]],[rozkaz_7[0],rozkaz_7[1],rozkaz_7[2]],[rozkaz_8[0],rozkaz_8[1],rozkaz_8[2]],[rozkaz_9[0],rozkaz_9[1],rozkaz_9[2]],[rozkaz_10[0],rozkaz_10[1],rozkaz_10[2]],[rozkaz_11[0],rozkaz_11[1],rozkaz_11[2]],[rozkaz_12[0],rozkaz_12[1],rozkaz_12[2]],[rozkaz_13[0],rozkaz_13[1],rozkaz_13[2]]]
     }
     if teksty.count > 14 {
        rozkazy = [[rozkaz_0[0],rozkaz_0[1],rozkaz_0[2]],[rozkaz_1[0],rozkaz_1[1],rozkaz_1[2]],[rozkaz_2[0],rozkaz_2[1],rozkaz_2[2]],[rozkaz_3[0],rozkaz_3[1],rozkaz_3[2]],[rozkaz_4[0],rozkaz_4[1],rozkaz_4[2]],[rozkaz_5[0],rozkaz_5[1],rozkaz_5[2]],[rozkaz_6[0],rozkaz_6[1],rozkaz_6[2]],[rozkaz_7[0],rozkaz_7[1],rozkaz_7[2]],[rozkaz_8[0],rozkaz_8[1],rozkaz_8[2]],[rozkaz_9[0],rozkaz_9[1],rozkaz_9[2]],[rozkaz_10[0],rozkaz_10[1],rozkaz_10[2]],[rozkaz_11[0],rozkaz_11[1],rozkaz_11[2]],[rozkaz_12[0],rozkaz_12[1],rozkaz_12[2]],[rozkaz_13[0],rozkaz_13[1],rozkaz_13[2]],[rozkaz_14[0],rozkaz_14[1],rozkaz_14[2]]]
     }
    return rozkazy
}

class WCZYT: UIViewController {
    var tryb_pracki:Int = 0
    var rozkaz_0: Int = 0
    var rozkaz_1: Int = 0
    var rozkaz_2: Int = 0
    var linijka: Int = 0
    var AX: Int = 0
    var BX: Int = 0
    var CX: Int = 0
    var DX: Int = 0
    var T: Int = 0
    var rozkazy:[[String]] = [[String]]()
    var rozkazy_l:[[Int]] = [[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1]]
    var AH: String = "00000000"
    var AL: String = "00000000"
    var BH: String = "00000000"
    var BL: String = "00000000"
    var CH: String = "00000000"
    var CL: String = "00000000"
    var DH: String = "00000000"
    var DL: String = "00000000"
    var binarka:[String] = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"]
    
    @IBOutlet var I_1: UITextField!
    @IBOutlet var I_2: UITextField!
    @IBOutlet var I_3: UITextField!
    @IBOutlet var I_4: UITextField!
    @IBOutlet var I_5: UITextField!
    @IBOutlet var I_6: UITextField!
    @IBOutlet var I_7: UITextField!
    @IBOutlet var I_8: UITextField!
    @IBOutlet var I_9: UITextField!
    @IBOutlet var I_10: UITextField!
    @IBOutlet var I_11: UITextField!
    @IBOutlet var I_12: UITextField!
    @IBOutlet var I_13: UITextField!
    @IBOutlet var I_14: UITextField!
    @IBOutlet var I_15: UITextField!
    @IBOutlet var R_AH: UITextField!
    @IBOutlet var R_AL: UITextField!
    @IBOutlet var R_BH: UITextField!
    @IBOutlet var R_BL: UITextField!
    @IBOutlet var R_CH: UITextField!
    @IBOutlet var R_CL: UITextField!
    @IBOutlet var R_DH: UITextField!
    @IBOutlet var R_DL: UITextField!
    
    @IBOutlet var TRYB_PRACY: UISegmentedControl!
    @IBAction func TRYB_PRACY_ACT(_ sender: Any) {
        switch TRYB_PRACY.selectedSegmentIndex
        {
        case 0:
            tryb_pracki = 0
        case 1:
            tryb_pracki = 1
        default:
            print("default switch tryb rej")
        }
    }
    
    func alert_koniec() {
        let alert = UIAlertController(title: "Koniec pliku", message: "Osiagnieto koniec pliku", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Anuluj", style: .cancel, handler: nil))
        self.present(alert, animated: true)
    }
    
    func zmien_na_BIN(liczba: Int)->[String]{
        var wynik: [String] = [""]
        var conv: String = ""
        conv = String(liczba,radix: 2)
        var pomoc:[String] = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"]
        pomoc = Array(conv).map({ "\($0)" })
        if liczba>65535{
            wynik = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"]
            return wynik
        }
        else if liczba>32767{
            wynik = [pomoc[0],pomoc[1],pomoc[2],pomoc[3],pomoc[4],pomoc[5],pomoc[6],pomoc[7],pomoc[8],pomoc[9],pomoc[10],pomoc[11],pomoc[12],pomoc[13],pomoc[14],pomoc[15]]
            return wynik
        }
        else if liczba>16383{
            wynik = [pomoc[0],pomoc[1],pomoc[2],pomoc[3],pomoc[4],pomoc[5],pomoc[6],pomoc[7],pomoc[8],pomoc[9],pomoc[10],pomoc[11],pomoc[12],pomoc[13],pomoc[14]]
            return wynik
        }
        else if liczba>8191{
            wynik = ["0","0",pomoc[0],pomoc[1],pomoc[2],pomoc[3],pomoc[4],pomoc[5],pomoc[6],pomoc[7],pomoc[8],pomoc[9],pomoc[10],pomoc[11],pomoc[12],pomoc[13]]
            return wynik
        }
        else if liczba>4095{
            wynik = ["0","0","0",pomoc[0],pomoc[1],pomoc[2],pomoc[3],pomoc[4],pomoc[5],pomoc[6],pomoc[7],pomoc[8],pomoc[9],pomoc[10],pomoc[11],pomoc[12]]
            return wynik
        }
        else if liczba>2047{
            wynik = ["0","0","0","0",pomoc[0],pomoc[1],pomoc[2],pomoc[3],pomoc[4],pomoc[5],pomoc[6],pomoc[7],pomoc[8],pomoc[9],pomoc[10],pomoc[11]]
            return wynik
        }
        else if liczba>1023{
            wynik = ["0","0","0","0","0",pomoc[0],pomoc[1],pomoc[2],pomoc[3],pomoc[4],pomoc[5],pomoc[6],pomoc[7],pomoc[8],pomoc[9],pomoc[10]]
            return wynik
        }
        else if liczba>511{
            wynik = ["0","0","0","0","0","0",pomoc[0],pomoc[1],pomoc[2],pomoc[3],pomoc[4],pomoc[5],pomoc[6],pomoc[7],pomoc[8],pomoc[9]]
            return wynik
        }
        else if liczba>255{
            wynik = ["0","0","0","0","0","0","0",pomoc[0],pomoc[1],pomoc[2],pomoc[3],pomoc[4],pomoc[5],pomoc[6],pomoc[7],pomoc[8]]
            return wynik
        }
        else if liczba>127{
            wynik = ["0","0","0","0","0","0","0","0",pomoc[0],pomoc[1],pomoc[2],pomoc[3],pomoc[4],pomoc[5],pomoc[6],pomoc[7]]
            return wynik
        }
        else if liczba>63{
            wynik = ["0","0","0","0","0","0","0","0","0",pomoc[0],pomoc[1],pomoc[2],pomoc[3],pomoc[4],pomoc[5],pomoc[6]]
            return wynik
        }
        else if liczba>31{
            wynik = ["0","0","0","0","0","0","0","0","0","0",pomoc[0],pomoc[1],pomoc[2],pomoc[3],pomoc[4],pomoc[5]]
            return wynik
        }
        else if liczba>15{
            wynik = ["0","0","0","0","0","0","0","0","0","0","0",pomoc[0],pomoc[1],pomoc[2],pomoc[3],pomoc[4]]
            return wynik
        }
        else if liczba>7{
            wynik = ["0","0","0","0","0","0","0","0","0","0","0","0",pomoc[0],pomoc[1],pomoc[2],pomoc[3]]
            return wynik
        }
        else if liczba>3{
            wynik =
                ["0","0","0","0","0","0","0","0","0","0","0","0","0",pomoc[0],pomoc[1],pomoc[2]]
            return wynik
        }
        else if liczba>1{
            wynik = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0",pomoc[0],pomoc[1]]
            return wynik
        }
        else if liczba>0{
            wynik = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0",pomoc[0]]
            return wynik
        }
        else{
            wynik = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"]
            return wynik
        }
    }
    
    func alert_blad() {
        let alert2 = UIAlertController(title: "Blad pliku", message: "Wystapil blad danych", preferredStyle: .alert)
        alert2.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        alert2.addAction(UIAlertAction(title: "Anuluj", style: .cancel, handler: nil))
        self.present(alert2, animated: true)
    }

    @IBAction func URUCH(_ sender: Any) {
        if tryb_pracki==0{
            for j in 0...rozkazy.count-1{
                if rozkazy_l[j][0]==0{
                    if rozkazy_l[j][1]==1{
                        if rozkazy_l[j][2]==(-4){
                            print("AX do AX")
                        }
                        else if rozkazy_l[j][2]==(-5){
                            AX = BX
                            BX = 0
                        }
                        else if rozkazy_l[j][2]==(-6){
                            AX = CX
                            CX = 0
                        }
                        else if rozkazy_l[j][2]==(-7){
                            AX = DX
                            DX = 0
                        }
                        else if rozkazy_l[j][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                              AX=rozkazy_l[j][2]
                        }
                    }
                    else if rozkazy_l[j][1]==2{
                        if rozkazy_l[j][2]==(-4){
                            BX = AX
                            AX = 0
                        }
                        else if rozkazy_l[j][2]==(-5){
                            print("AX do AX")
                        }
                        else if rozkazy_l[j][2]==(-6){
                            BX = CX
                            CX = 0
                        }
                        else if rozkazy_l[j][2]==(-7){
                            BX = DX
                            DX = 0
                        }
                        else if rozkazy_l[j][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                              BX=rozkazy_l[j][2]
                        }
                    }
                    else if rozkazy_l[j][1]==3{
                        if rozkazy_l[j][2]==(-4){
                            CX = AX
                            AX = 0
                        }
                        else if rozkazy_l[j][2]==(-5){
                            CX = BX
                            BX = 0
                        }
                        else if rozkazy_l[j][2]==(-6){
                            print("CX do CX")
                        }
                        else if rozkazy_l[j][2]==(-7){
                            CX = DX
                            DX = 0
                        }
                        else if rozkazy_l[j][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                              CX=rozkazy_l[j][2]
                        }
                    }
                    else if rozkazy_l[j][1]==4{
                        if rozkazy_l[j][2]==(-4){
                            DX = AX
                            AX = 0
                        }
                        else if rozkazy_l[j][2]==(-5){
                            DX = BX
                            BX = 0
                        }
                        else if rozkazy_l[j][2]==(-6){
                            DX = CX
                            CX = 0
                        }
                        else if rozkazy_l[j][2]==(-7){
                            print("DX do DX")
                        }
                        else if rozkazy_l[j][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                              DX=rozkazy_l[j][2]
                        }
                    }
                    else if rozkazy_l[j][1]==(-2){
                        _ = alert_blad()
                    }
                }
                else if rozkazy_l[j][0]==1{
                    if rozkazy_l[j][1]==1{
                        if rozkazy_l[j][2]==(-4){
                            AX += AX
                        }
                        else if rozkazy_l[j][2]==(-5){
                            AX = BX + AX
                        }
                        else if rozkazy_l[j][2]==(-6){
                            AX = CX + AX
                        }
                        else if rozkazy_l[j][2]==(-7){
                            AX = DX + AX
                        }
                        else if rozkazy_l[j][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            AX+=rozkazy_l[j][2]
                        }
                    }
                    else if rozkazy_l[j][1]==2{
                        if rozkazy_l[j][2]==(-4){
                            BX = AX + BX
                        }
                        else if rozkazy_l[j][2]==(-5){
                            BX += BX
                        }
                        else if rozkazy_l[j][2]==(-6){
                            BX = CX + BX
                        }
                        else if rozkazy_l[j][2]==(-7){
                            BX = DX + BX
                        }
                        else if rozkazy_l[j][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            BX+=rozkazy_l[j][2]
                        }
                    }
                    else if rozkazy_l[j][1]==3{
                        if rozkazy_l[j][2]==(-4){
                            CX = AX + CX
                        }
                        else if rozkazy_l[j][2]==(-5){
                            CX = BX + CX
                        }
                        else if rozkazy_l[j][2]==(-6){
                            CX += CX
                        }
                        else if rozkazy_l[j][2]==(-7){
                            CX = DX + CX
                        }
                        else if rozkazy_l[j][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            CX+=rozkazy_l[j][2]
                        }
                    }
                    else if rozkazy_l[j][1]==4{
                        if rozkazy_l[j][2]==(-4){
                            DX = AX + DX
                        }
                        else if rozkazy_l[j][2]==(-5){
                            DX = BX + DX
                        }
                        else if rozkazy_l[j][2]==(-6){
                            DX = CX + DX
                        }
                        else if rozkazy_l[j][2]==(-7){
                            DX += DX
                        }
                        else if rozkazy_l[j][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            DX+=rozkazy_l[j][2]
                        }
                    }
                    else if rozkazy_l[j][1]==(-2){
                        _ = alert_blad()
                    }
                }
                else if rozkazy_l[j][0]==2{
                    if rozkazy_l[j][1]==1{
                        if rozkazy_l[j][2]==(-4){
                            AX -= AX
                        }
                        else if rozkazy_l[j][2]==(-5){
                            AX = AX - BX
                        }
                        else if rozkazy_l[j][2]==(-6){
                            AX = AX - CX
                        }
                        else if rozkazy_l[j][2]==(-7){
                            AX = AX - DX
                        }
                        else if rozkazy_l[j][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            AX-=rozkazy_l[j][2]
                        }
                    }
                    else if rozkazy_l[j][1]==2{
                        if rozkazy_l[j][2]==(-4){
                            BX = BX - AX
                        }
                        else if rozkazy_l[j][2]==(-5){
                            BX -= BX
                        }
                        else if rozkazy_l[j][2]==(-6){
                            BX = BX - CX
                        }
                        else if rozkazy_l[j][2]==(-7){
                            BX = BX - DX
                        }
                        else if rozkazy_l[j][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            BX-=rozkazy_l[j][2]
                        }
                    }
                    else if rozkazy_l[j][1]==3{
                        if rozkazy_l[j][2]==(-4){
                            CX = CX - AX
                        }
                        else if rozkazy_l[j][2]==(-5){
                            CX = CX - AX
                        }
                        else if rozkazy_l[j][2]==(-6){
                            CX -= CX
                        }
                        else if rozkazy_l[j][2]==(-7){
                            CX = CX - DX
                        }
                        else if rozkazy_l[j][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            CX-=rozkazy_l[j][2]
                        }
                    }
                    else if rozkazy_l[j][1]==4{
                        if rozkazy_l[j][2]==(-4){
                            DX = DX - AX
                        }
                        else if rozkazy_l[j][2]==(-5){
                            DX = DX - BX
                        }
                        else if rozkazy_l[j][2]==(-6){
                            DX = DX - CX
                        }
                        else if rozkazy_l[j][2]==(-7){
                            DX -= DX
                        }
                        else if rozkazy_l[j][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            DX-=rozkazy_l[j][2]
                        }
                    }
                    else if rozkazy_l[j][1]==(-2){
                        _ = alert_blad()
                    }
                }
                else if rozkazy_l[j][0]==(-2){
                    _ = alert_blad()
                }
            }
            print(AX," ",BX," ",CX," ",DX)
                        binarka = zmien_na_BIN(liczba: AX)
                           R_AH.text = binarka[0]+binarka[1]+binarka[2]+binarka[3]+binarka[4]+binarka[5]+binarka[6]+binarka[7]
                           R_AL.text = binarka[8]+binarka[9]+binarka[10]+binarka[11]+binarka[12]+binarka[13]+binarka[14]+binarka[15]
                           binarka = zmien_na_BIN(liczba: BX)
                           R_BH.text = binarka[0]+binarka[1]+binarka[2]+binarka[3]+binarka[4]+binarka[5]+binarka[6]+binarka[7]
                           R_BL.text = binarka[8]+binarka[9]+binarka[10]+binarka[11]+binarka[12]+binarka[13]+binarka[14]+binarka[15]
                           binarka = zmien_na_BIN(liczba: CX)
                           R_CH.text = binarka[0]+binarka[1]+binarka[2]+binarka[3]+binarka[4]+binarka[5]+binarka[6]+binarka[7]
                           R_CL.text = binarka[8]+binarka[9]+binarka[10]+binarka[11]+binarka[12]+binarka[13]+binarka[14]+binarka[15]
                           binarka = zmien_na_BIN(liczba: DX)
                           R_DH.text = binarka[0]+binarka[1]+binarka[2]+binarka[3]+binarka[4]+binarka[5]+binarka[6]+binarka[7]
                           R_DL.text = binarka[8]+binarka[9]+binarka[10]+binarka[11]+binarka[12]+binarka[13]+binarka[14]+binarka[15]
        }
        else{
            if linijka<rozkazy.count {
                if rozkazy_l[linijka][0]==0{
                    if rozkazy_l[linijka][1]==1{
                        if rozkazy_l[linijka][2]==(-4){
                            print("AX do AX")
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            AX = BX
                            BX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            AX = CX
                            CX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            AX = DX
                            DX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            AX=rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==2{
                        if rozkazy_l[linijka][2]==(-4){
                            BX = AX
                            AX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            print("AX do AX")
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            BX = CX
                            CX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            BX = DX
                            DX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            BX=rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==3{
                        if rozkazy_l[linijka][2]==(-4){
                            CX = AX
                            AX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            CX = BX
                            BX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            print("CX do CX")
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            CX = DX
                            DX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            CX=rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==4{
                        if rozkazy_l[linijka][2]==(-4){
                            DX = AX
                            AX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            DX = BX
                            BX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            DX = CX
                            CX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            print("DX do DX")
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            DX=rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==(-2){
                        _ = alert_blad()
                    }
                }
                else if rozkazy_l[linijka][0]==1{
                    if rozkazy_l[linijka][1]==1{
                        if rozkazy_l[linijka][2]==(-4){
                            AX += AX
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            AX = BX + AX
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            AX = CX + AX
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            AX = DX + AX
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            AX+=rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==2{
                        if rozkazy_l[linijka][2]==(-4){
                            BX = AX + BX
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            BX += BX
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            BX = CX + BX
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            BX = DX + BX
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            BX+=rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==3{
                        if rozkazy_l[linijka][2]==(-4){
                            CX = AX + CX
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            CX = BX + CX
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            CX += CX
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            CX = DX + CX
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            CX+=rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==4{
                        if rozkazy_l[linijka][2]==(-4){
                            DX = AX + DX
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            DX = BX + DX
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            DX = CX + DX
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            DX += DX
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            DX+=rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==(-2){
                        _ = alert_blad()
                    }
                }
                else if rozkazy_l[linijka][0]==2{
                    if rozkazy_l[linijka][1]==1{
                        if rozkazy_l[linijka][2]==(-4){
                            AX -= AX
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            AX = AX - BX
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            AX = AX - CX
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            AX = AX - DX
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            AX-=rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==2{
                        if rozkazy_l[linijka][2]==(-4){
                            BX = BX - AX
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            BX -= BX
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            BX = BX - CX
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            BX = BX - DX
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            BX-=rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==3{
                        if rozkazy_l[linijka][2]==(-4){
                            CX = CX - AX
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            CX = CX - AX
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            CX -= CX
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            CX = CX - DX
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            CX-=rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==4{
                        if rozkazy_l[linijka][2]==(-4){
                            DX = DX - AX
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            DX = DX - BX
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            DX = DX - CX
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            DX -= DX
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            DX-=rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==(-2){
                        _ = alert_blad()
                    }
                }
                else if rozkazy_l[linijka][0]==(-2){
                    _ = alert_blad()
                }
                print(AX," ",BX," ",CX," ",DX)
                    binarka = zmien_na_BIN(liczba: AX)
                               R_AH.text = binarka[0]+binarka[1]+binarka[2]+binarka[3]+binarka[4]+binarka[5]+binarka[6]+binarka[7]
                               R_AL.text = binarka[8]+binarka[9]+binarka[10]+binarka[11]+binarka[12]+binarka[13]+binarka[14]+binarka[15]
                               binarka = zmien_na_BIN(liczba: BX)
                               R_BH.text = binarka[0]+binarka[1]+binarka[2]+binarka[3]+binarka[4]+binarka[5]+binarka[6]+binarka[7]
                               R_BL.text = binarka[8]+binarka[9]+binarka[10]+binarka[11]+binarka[12]+binarka[13]+binarka[14]+binarka[15]
                               binarka = zmien_na_BIN(liczba: CX)
                               R_CH.text = binarka[0]+binarka[1]+binarka[2]+binarka[3]+binarka[4]+binarka[5]+binarka[6]+binarka[7]
                               R_CL.text = binarka[8]+binarka[9]+binarka[10]+binarka[11]+binarka[12]+binarka[13]+binarka[14]+binarka[15]
                               binarka = zmien_na_BIN(liczba: DX)
                               R_DH.text = binarka[0]+binarka[1]+binarka[2]+binarka[3]+binarka[4]+binarka[5]+binarka[6]+binarka[7]
                               R_DL.text = binarka[8]+binarka[9]+binarka[10]+binarka[11]+binarka[12]+binarka[13]+binarka[14]+binarka[15]
                znacznik = ["","","","","","","","","","","","","","",""]
                znacznik_2 = ["","","","","","","","","","","","","","",""]
                znacznik[linijka] = ">>>  "
                znacznik_2[linijka] = "  <<<"
                linijka+=1
                odswiez()
            }
            else{
                _ = alert_koniec()
            }
        }
    }
    
    @IBAction func WYCZYSC_REJ(_ sender: Any) {
        AX = 0
        BX = 0
        CX = 0
        DX = 0
        R_AH.text = "00000000"
        R_AL.text = "00000000"
        R_BH.text = "00000000"
        R_BL.text = "00000000"
        R_CH.text = "00000000"
        R_CL.text = "00000000"
        R_DH.text = "00000000"
        R_DL.text = "00000000"
    }
    
    @IBAction func WYCZ_TEKST(_ sender: Any) {
        linijka = 0
        I_1.text = nil
        I_2.text = nil
        I_3.text = nil
        I_4.text = nil
        I_5.text = nil
        I_6.text = nil
        I_7.text = nil
        I_8.text = nil
        I_9.text = nil
        I_10.text = nil
        I_11.text = nil
        I_12.text = nil
        I_13.text = nil
        I_14.text = nil
        znacznik = ["","","","","","","","","","","","","","",""]
        znacznik_2 = ["","","","","","","","","","","","","","",""]
    }
    var znacznik: [String] = ["","","","","","","","","","","","","","",""]
    var znacznik_2: [String] = ["","","","","","","","","","","","","","",""]
    func odswiez(){
        if rozkazy.count > 14{
            I_1.text = znacznik[0]+" "+rozkazy[0][0]+" "+rozkazy[0][1]+" "+rozkazy[0][2]+" "+znacznik_2[0]
            I_2.text = znacznik[1]+" "+rozkazy[1][0]+" "+rozkazy[1][1]+" "+rozkazy[1][2]+" "+znacznik_2[1]
            I_3.text = znacznik[2]+" "+rozkazy[2][0]+" "+rozkazy[2][1]+" "+rozkazy[2][2]+" "+znacznik_2[2]
            I_4.text = znacznik[3]+" "+rozkazy[3][0]+" "+rozkazy[3][1]+" "+rozkazy[3][2]+" "+znacznik_2[3]
            I_5.text = znacznik[4]+" "+rozkazy[4][0]+" "+rozkazy[4][1]+" "+rozkazy[4][2]+" "+znacznik_2[4]
            I_6.text = znacznik[5]+" "+rozkazy[5][0]+" "+rozkazy[5][1]+" "+rozkazy[5][2]+" "+znacznik_2[5]
            I_7.text = znacznik[6]+" "+rozkazy[6][0]+" "+rozkazy[6][1]+" "+rozkazy[6][2]+" "+znacznik_2[6]
            I_8.text = znacznik[7]+" "+rozkazy[7][0]+" "+rozkazy[7][1]+" "+rozkazy[7][2]+" "+znacznik_2[7]
            I_9.text = znacznik[8]+" "+rozkazy[8][0]+" "+rozkazy[8][1]+" "+rozkazy[8][2]+" "+znacznik_2[8]
            I_10.text = znacznik[9]+" "+rozkazy[9][0]+" "+rozkazy[9][1]+" "+rozkazy[9][2]+" "+znacznik_2[9]
            I_11.text = znacznik[10]+" "+rozkazy[10][0]+" "+rozkazy[10][1]+" "+rozkazy[10][2]+" "+znacznik_2[10]
            I_12.text = znacznik[11]+" "+rozkazy[11][0]+" "+rozkazy[11][1]+" "+rozkazy[11][2]+" "+znacznik_2[11]
            I_13.text = znacznik[12]+" "+rozkazy[12][0]+" "+rozkazy[12][1]+" "+rozkazy[12][2]+" "+znacznik_2[12]
            I_14.text = znacznik[13]+" "+rozkazy[13][0]+" "+rozkazy[13][1]+" "+rozkazy[13][2]+" "+znacznik_2[13]
            I_15.text = znacznik[14]+" "+rozkazy[14][0]+" "+rozkazy[14][1]+" "+rozkazy[14][2]+" "+znacznik_2[14]
        }
        else if rozkazy.count > 13{
           I_1.text = znacznik[0]+" "+rozkazy[0][0]+" "+rozkazy[0][1]+" "+rozkazy[0][2]+" "+znacznik_2[0]
            I_2.text = znacznik[1]+" "+rozkazy[1][0]+" "+rozkazy[1][1]+" "+rozkazy[1][2]+" "+znacznik_2[1]
            I_3.text = znacznik[2]+" "+rozkazy[2][0]+" "+rozkazy[2][1]+" "+rozkazy[2][2]+" "+znacznik_2[2]
            I_4.text = znacznik[3]+" "+rozkazy[3][0]+" "+rozkazy[3][1]+" "+rozkazy[3][2]+" "+znacznik_2[3]
            I_5.text = znacznik[4]+" "+rozkazy[4][0]+" "+rozkazy[4][1]+" "+rozkazy[4][2]+" "+znacznik_2[4]
            I_6.text = znacznik[5]+" "+rozkazy[5][0]+" "+rozkazy[5][1]+" "+rozkazy[5][2]+" "+znacznik_2[5]
            I_7.text = znacznik[6]+" "+rozkazy[6][0]+" "+rozkazy[6][1]+" "+rozkazy[6][2]+" "+znacznik_2[6]
            I_8.text = znacznik[7]+" "+rozkazy[7][0]+" "+rozkazy[7][1]+" "+rozkazy[7][2]+" "+znacznik_2[7]
            I_9.text = znacznik[8]+" "+rozkazy[8][0]+" "+rozkazy[8][1]+" "+rozkazy[8][2]+" "+znacznik_2[8]
            I_10.text = znacznik[9]+" "+rozkazy[9][0]+" "+rozkazy[9][1]+" "+rozkazy[9][2]+" "+znacznik_2[9]
            I_11.text = znacznik[10]+" "+rozkazy[10][0]+" "+rozkazy[10][1]+" "+rozkazy[10][2]+" "+znacznik_2[10]
            I_12.text = znacznik[11]+" "+rozkazy[11][0]+" "+rozkazy[11][1]+" "+rozkazy[11][2]+" "+znacznik_2[11]
            I_13.text = znacznik[12]+" "+rozkazy[12][0]+" "+rozkazy[12][1]+" "+rozkazy[12][2]+" "+znacznik_2[12]
            I_14.text = znacznik[13]+" "+rozkazy[13][0]+" "+rozkazy[13][1]+" "+rozkazy[13][2]+" "+znacznik_2[13]
        }
        else if rozkazy.count > 12{
            I_1.text = znacznik[0]+" "+rozkazy[0][0]+" "+rozkazy[0][1]+" "+rozkazy[0][2]+" "+znacznik_2[0]
            I_2.text = znacznik[1]+" "+rozkazy[1][0]+" "+rozkazy[1][1]+" "+rozkazy[1][2]+" "+znacznik_2[1]
            I_3.text = znacznik[2]+" "+rozkazy[2][0]+" "+rozkazy[2][1]+" "+rozkazy[2][2]+" "+znacznik_2[2]
            I_4.text = znacznik[3]+" "+rozkazy[3][0]+" "+rozkazy[3][1]+" "+rozkazy[3][2]+" "+znacznik_2[3]
            I_5.text = znacznik[4]+" "+rozkazy[4][0]+" "+rozkazy[4][1]+" "+rozkazy[4][2]+" "+znacznik_2[4]
            I_6.text = znacznik[5]+" "+rozkazy[5][0]+" "+rozkazy[5][1]+" "+rozkazy[5][2]+" "+znacznik_2[5]
            I_7.text = znacznik[6]+" "+rozkazy[6][0]+" "+rozkazy[6][1]+" "+rozkazy[6][2]+" "+znacznik_2[6]
            I_8.text = znacznik[7]+" "+rozkazy[7][0]+" "+rozkazy[7][1]+" "+rozkazy[7][2]+" "+znacznik_2[7]
            I_9.text = znacznik[8]+" "+rozkazy[8][0]+" "+rozkazy[8][1]+" "+rozkazy[8][2]+" "+znacznik_2[8]
            I_10.text = znacznik[9]+" "+rozkazy[9][0]+" "+rozkazy[9][1]+" "+rozkazy[9][2]+" "+znacznik_2[9]
            I_11.text = znacznik[10]+" "+rozkazy[10][0]+" "+rozkazy[10][1]+" "+rozkazy[10][2]+" "+znacznik_2[10]
            I_12.text = znacznik[11]+" "+rozkazy[11][0]+" "+rozkazy[11][1]+" "+rozkazy[11][2]+" "+znacznik_2[11]
            I_13.text = znacznik[12]+" "+rozkazy[12][0]+" "+rozkazy[12][1]+" "+rozkazy[12][2]+" "+znacznik_2[12]
        }
        else if rozkazy.count > 11{
            I_1.text = znacznik[0]+" "+rozkazy[0][0]+" "+rozkazy[0][1]+" "+rozkazy[0][2]+" "+znacznik_2[0]
            I_2.text = znacznik[1]+" "+rozkazy[1][0]+" "+rozkazy[1][1]+" "+rozkazy[1][2]+" "+znacznik_2[1]
            I_3.text = znacznik[2]+" "+rozkazy[2][0]+" "+rozkazy[2][1]+" "+rozkazy[2][2]+" "+znacznik_2[2]
            I_4.text = znacznik[3]+" "+rozkazy[3][0]+" "+rozkazy[3][1]+" "+rozkazy[3][2]+" "+znacznik_2[3]
            I_5.text = znacznik[4]+" "+rozkazy[4][0]+" "+rozkazy[4][1]+" "+rozkazy[4][2]+" "+znacznik_2[4]
            I_6.text = znacznik[5]+" "+rozkazy[5][0]+" "+rozkazy[5][1]+" "+rozkazy[5][2]+" "+znacznik_2[5]
            I_7.text = znacznik[6]+" "+rozkazy[6][0]+" "+rozkazy[6][1]+" "+rozkazy[6][2]+" "+znacznik_2[6]
            I_8.text = znacznik[7]+" "+rozkazy[7][0]+" "+rozkazy[7][1]+" "+rozkazy[7][2]+" "+znacznik_2[7]
            I_9.text = znacznik[8]+" "+rozkazy[8][0]+" "+rozkazy[8][1]+" "+rozkazy[8][2]+" "+znacznik_2[8]
            I_10.text = znacznik[9]+" "+rozkazy[9][0]+" "+rozkazy[9][1]+" "+rozkazy[9][2]+" "+znacznik_2[9]
            I_11.text = znacznik[10]+" "+rozkazy[10][0]+" "+rozkazy[10][1]+" "+rozkazy[10][2]+" "+znacznik_2[10]
            I_12.text = znacznik[11]+" "+rozkazy[11][0]+" "+rozkazy[11][1]+" "+rozkazy[11][2]+" "+znacznik_2[11]
        }
        else if rozkazy.count > 10{
            I_1.text = znacznik[0]+" "+rozkazy[0][0]+" "+rozkazy[0][1]+" "+rozkazy[0][2]+" "+znacznik_2[0]
            I_2.text = znacznik[1]+" "+rozkazy[1][0]+" "+rozkazy[1][1]+" "+rozkazy[1][2]+" "+znacznik_2[1]
            I_3.text = znacznik[2]+" "+rozkazy[2][0]+" "+rozkazy[2][1]+" "+rozkazy[2][2]+" "+znacznik_2[2]
            I_4.text = znacznik[3]+" "+rozkazy[3][0]+" "+rozkazy[3][1]+" "+rozkazy[3][2]+" "+znacznik_2[3]
            I_5.text = znacznik[4]+" "+rozkazy[4][0]+" "+rozkazy[4][1]+" "+rozkazy[4][2]+" "+znacznik_2[4]
            I_6.text = znacznik[5]+" "+rozkazy[5][0]+" "+rozkazy[5][1]+" "+rozkazy[5][2]+" "+znacznik_2[5]
            I_7.text = znacznik[6]+" "+rozkazy[6][0]+" "+rozkazy[6][1]+" "+rozkazy[6][2]+" "+znacznik_2[6]
            I_8.text = znacznik[7]+" "+rozkazy[7][0]+" "+rozkazy[7][1]+" "+rozkazy[7][2]+" "+znacznik_2[7]
            I_9.text = znacznik[8]+" "+rozkazy[8][0]+" "+rozkazy[8][1]+" "+rozkazy[8][2]+" "+znacznik_2[8]
            I_10.text = znacznik[9]+" "+rozkazy[9][0]+" "+rozkazy[9][1]+" "+rozkazy[9][2]+" "+znacznik_2[9]
            I_11.text = znacznik[10]+" "+rozkazy[10][0]+" "+rozkazy[10][1]+" "+rozkazy[10][2]+" "+znacznik_2[10]
        }
        else if rozkazy.count > 9{
            I_1.text = znacznik[0]+" "+rozkazy[0][0]+" "+rozkazy[0][1]+" "+rozkazy[0][2]+" "+znacznik_2[0]
            I_2.text = znacznik[1]+" "+rozkazy[1][0]+" "+rozkazy[1][1]+" "+rozkazy[1][2]+" "+znacznik_2[1]
            I_3.text = znacznik[2]+" "+rozkazy[2][0]+" "+rozkazy[2][1]+" "+rozkazy[2][2]+" "+znacznik_2[2]
            I_4.text = znacznik[3]+" "+rozkazy[3][0]+" "+rozkazy[3][1]+" "+rozkazy[3][2]+" "+znacznik_2[3]
            I_5.text = znacznik[4]+" "+rozkazy[4][0]+" "+rozkazy[4][1]+" "+rozkazy[4][2]+" "+znacznik_2[4]
            I_6.text = znacznik[5]+" "+rozkazy[5][0]+" "+rozkazy[5][1]+" "+rozkazy[5][2]+" "+znacznik_2[5]
            I_7.text = znacznik[6]+" "+rozkazy[6][0]+" "+rozkazy[6][1]+" "+rozkazy[6][2]+" "+znacznik_2[6]
            I_8.text = znacznik[7]+" "+rozkazy[7][0]+" "+rozkazy[7][1]+" "+rozkazy[7][2]+" "+znacznik_2[7]
            I_9.text = znacznik[8]+" "+rozkazy[8][0]+" "+rozkazy[8][1]+" "+rozkazy[8][2]+" "+znacznik_2[8]
            I_10.text = znacznik[9]+" "+rozkazy[9][0]+" "+rozkazy[9][1]+" "+rozkazy[9][2]+" "+znacznik_2[9]
        }
        else if rozkazy.count > 8{
            I_1.text = znacznik[0]+" "+rozkazy[0][0]+" "+rozkazy[0][1]+" "+rozkazy[0][2]+" "+znacznik_2[0]
            I_2.text = znacznik[1]+" "+rozkazy[1][0]+" "+rozkazy[1][1]+" "+rozkazy[1][2]+" "+znacznik_2[1]
            I_3.text = znacznik[2]+" "+rozkazy[2][0]+" "+rozkazy[2][1]+" "+rozkazy[2][2]+" "+znacznik_2[2]
            I_4.text = znacznik[3]+" "+rozkazy[3][0]+" "+rozkazy[3][1]+" "+rozkazy[3][2]+" "+znacznik_2[3]
            I_5.text = znacznik[4]+" "+rozkazy[4][0]+" "+rozkazy[4][1]+" "+rozkazy[4][2]+" "+znacznik_2[4]
            I_6.text = znacznik[5]+" "+rozkazy[5][0]+" "+rozkazy[5][1]+" "+rozkazy[5][2]+" "+znacznik_2[5]
            I_7.text = znacznik[6]+" "+rozkazy[6][0]+" "+rozkazy[6][1]+" "+rozkazy[6][2]+" "+znacznik_2[6]
            I_8.text = znacznik[7]+" "+rozkazy[7][0]+" "+rozkazy[7][1]+" "+rozkazy[7][2]+" "+znacznik_2[7]
            I_9.text = znacznik[8]+" "+rozkazy[8][0]+" "+rozkazy[8][1]+" "+rozkazy[8][2]+" "+znacznik_2[8]
        }
        else if rozkazy.count > 7{
            I_1.text = znacznik[0]+" "+rozkazy[0][0]+" "+rozkazy[0][1]+" "+rozkazy[0][2]+" "+znacznik_2[0]
            I_2.text = znacznik[1]+" "+rozkazy[1][0]+" "+rozkazy[1][1]+" "+rozkazy[1][2]+" "+znacznik_2[1]
            I_3.text = znacznik[2]+" "+rozkazy[2][0]+" "+rozkazy[2][1]+" "+rozkazy[2][2]+" "+znacznik_2[2]
            I_4.text = znacznik[3]+" "+rozkazy[3][0]+" "+rozkazy[3][1]+" "+rozkazy[3][2]+" "+znacznik_2[3]
            I_5.text = znacznik[4]+" "+rozkazy[4][0]+" "+rozkazy[4][1]+" "+rozkazy[4][2]+" "+znacznik_2[4]
            I_6.text = znacznik[5]+" "+rozkazy[5][0]+" "+rozkazy[5][1]+" "+rozkazy[5][2]+" "+znacznik_2[5]
            I_7.text = znacznik[6]+" "+rozkazy[6][0]+" "+rozkazy[6][1]+" "+rozkazy[6][2]+" "+znacznik_2[6]
            I_8.text = znacznik[7]+" "+rozkazy[7][0]+" "+rozkazy[7][1]+" "+rozkazy[7][2]+" "+znacznik_2[7]
        }
        else if rozkazy.count > 6{
            I_1.text = znacznik[0]+" "+rozkazy[0][0]+" "+rozkazy[0][1]+" "+rozkazy[0][2]+" "+znacznik_2[0]
            I_2.text = znacznik[1]+" "+rozkazy[1][0]+" "+rozkazy[1][1]+" "+rozkazy[1][2]+" "+znacznik_2[1]
            I_3.text = znacznik[2]+" "+rozkazy[2][0]+" "+rozkazy[2][1]+" "+rozkazy[2][2]+" "+znacznik_2[2]
            I_4.text = znacznik[3]+" "+rozkazy[3][0]+" "+rozkazy[3][1]+" "+rozkazy[3][2]+" "+znacznik_2[3]
            I_5.text = znacznik[4]+" "+rozkazy[4][0]+" "+rozkazy[4][1]+" "+rozkazy[4][2]+" "+znacznik_2[4]
            I_6.text = znacznik[5]+" "+rozkazy[5][0]+" "+rozkazy[5][1]+" "+rozkazy[5][2]+" "+znacznik_2[5]
            I_7.text = znacznik[6]+" "+rozkazy[6][0]+" "+rozkazy[6][1]+" "+rozkazy[6][2]+" "+znacznik_2[6]
        }
        else if rozkazy.count > 5{
            
            I_1.text = znacznik[0]+" "+rozkazy[0][0]+" "+rozkazy[0][1]+" "+rozkazy[0][2]+" "+znacznik_2[0]
            I_2.text = znacznik[1]+" "+rozkazy[1][0]+" "+rozkazy[1][1]+" "+rozkazy[1][2]+" "+znacznik_2[1]
            I_3.text = znacznik[2]+" "+rozkazy[2][0]+" "+rozkazy[2][1]+" "+rozkazy[2][2]+" "+znacznik_2[2]
            I_4.text = znacznik[3]+" "+rozkazy[3][0]+" "+rozkazy[3][1]+" "+rozkazy[3][2]+" "+znacznik_2[3]
            I_5.text = znacznik[4]+" "+rozkazy[4][0]+" "+rozkazy[4][1]+" "+rozkazy[4][2]+" "+znacznik_2[4]
            I_6.text = znacznik[5]+" "+rozkazy[5][0]+" "+rozkazy[5][1]+" "+rozkazy[5][2]+" "+znacznik_2[5]
        }
        else if rozkazy.count > 4{
            I_1.text = znacznik[0]+" "+rozkazy[0][0]+" "+rozkazy[0][1]+" "+rozkazy[0][2]+" "+znacznik_2[0]
            I_2.text = znacznik[1]+" "+rozkazy[1][0]+" "+rozkazy[1][1]+" "+rozkazy[1][2]+" "+znacznik_2[1]
            I_3.text = znacznik[2]+" "+rozkazy[2][0]+" "+rozkazy[2][1]+" "+rozkazy[2][2]+" "+znacznik_2[2]
            I_4.text = znacznik[3]+" "+rozkazy[3][0]+" "+rozkazy[3][1]+" "+rozkazy[3][2]+" "+znacznik_2[3]
            I_5.text = znacznik[4]+" "+rozkazy[4][0]+" "+rozkazy[4][1]+" "+rozkazy[4][2]+" "+znacznik_2[4]
        }
        else if rozkazy.count > 3{
            I_1.text = znacznik[0]+" "+rozkazy[0][0]+" "+rozkazy[0][1]+" "+rozkazy[0][2]+" "+znacznik_2[0]
            I_2.text = znacznik[1]+" "+rozkazy[1][0]+" "+rozkazy[1][1]+" "+rozkazy[1][2]+" "+znacznik_2[1]
            I_3.text = znacznik[2]+" "+rozkazy[2][0]+" "+rozkazy[2][1]+" "+rozkazy[2][2]+" "+znacznik_2[2]
            I_4.text = znacznik[3]+" "+rozkazy[3][0]+" "+rozkazy[3][1]+" "+rozkazy[3][2]+" "+znacznik_2[3]
        }
        else if rozkazy.count > 2{
            I_1.text = znacznik[0]+" "+rozkazy[0][0]+" "+rozkazy[0][1]+" "+rozkazy[0][2]+" "+znacznik_2[0]
            I_2.text = znacznik[1]+" "+rozkazy[1][0]+" "+rozkazy[1][1]+" "+rozkazy[1][2]+" "+znacznik_2[1]
            I_3.text = znacznik[2]+" "+rozkazy[2][0]+" "+rozkazy[2][1]+" "+rozkazy[2][2]+" "+znacznik_2[2]
        }
        else if rozkazy.count > 1{
            I_1.text = znacznik[0]+" "+rozkazy[0][0]+" "+rozkazy[0][1]+" "+rozkazy[0][2]+" "+znacznik_2[0]
            I_2.text = znacznik[1]+" "+rozkazy[1][0]+" "+rozkazy[1][1]+" "+rozkazy[1][2]+" "+znacznik_2[1]
        }
        else if rozkazy.count > 0{
            I_1.text = znacznik[0]+" "+rozkazy[0][0]+" "+rozkazy[0][1]+" "+rozkazy[0][2]+" "+znacznik_2[0]
        }
    }
    @IBAction func WCZYTAJ_TEKST(_ sender: Any) {
        odswiez()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        rozkazy =  zaladuj()
        print(rozkazy)
        print(rozkazy.count)
        for i in 0...rozkazy.count-1 {
            switch rozkazy[i][0]{
            case "MOV":
                rozkazy_l[i][0] = 0
            case "ADD":
                rozkazy_l[i][0] = 1
            case "SUB":
                rozkazy_l[i][0] = 2
            default:
                print("blad rozkazu 0 ")
                rozkazy_l[i][0] = -2
            }
            switch rozkazy[i][1]{
            case "AX":
                rozkazy_l[i][1] = 1
            case "BX":
                rozkazy_l[i][1] = 2
            case "CX":
                rozkazy_l[i][1] = 3
            case "DX":
                rozkazy_l[i][1] = 4
            default:
                print("blad rozkazu 1 ")
                rozkazy_l[i][1] = -2
            }
            switch rozkazy[i][2]{
            case "AX":
                rozkazy_l[i][2] = -4
            case "BX":
                rozkazy_l[i][2] = -5
            case "CX":
                rozkazy_l[i][2] = -6
            case "DX":
                rozkazy_l[i][2] = -7
            default:
                rozkazy_l[i][2] = Int(rozkazy[i][2]) ?? -2
            }
        }
       print(rozkazy_l)
    }
}

