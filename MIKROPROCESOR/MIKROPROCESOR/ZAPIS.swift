//
//  ZAPIS.swift
//  MIKROPROCESOR
//
//  Created by Andrzej Czepil on 15/01/2020.
//  Copyright © 2020 Andrzej Czepil. All rights reserved.
//

import Foundation
import UIKit
extension UIImage {
    public class func image(fromView view: UIView) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(view.frame.size, false, 0)
        view.drawHierarchy(in: view.bounds, afterScreenUpdates: false)

        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}

class ZAPIS: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    var pickerData: [[String]] = [[String]]()
    var pickerData_2: [String] = [String]()
    var pickerData_3: [String] = [String]()
    var teksty = [String]()
    var rozkaz_0_N:Int = 0
    var rozkaz_1_N:Int = 0
    var rozkaz_2_N:Int = 0
    var rozkaz_0_R:Int = 0
    var rozkaz_1_R:Int = 0
    var rozkaz_2_R:Int = 0
    var przerwanie: Int = 0
    var linijka: Int = 0
    var zapis_0: [String] = ["","","","","","","","","","","","","","",""]
    var zapis_1: [String] = ["","","","","","","","","","","","","","",""]
    var zapis_2: [String] = ["","","","","","","","","","","","","","",""]
    var AX: Int = 0
    var BX: Int = 0
    var CX: Int = 0
    var DX: Int = 0
    var AH: String = "00000000"
    var AL: String = "00000000"
    var BH: String = "00000000"
    var BL: String = "00000000"
    var CH: String = "00000000"
    var CL: String = "00000000"
    var DH: String = "00000000"
    var DL: String = "00000000"
    var Stos: [Int] = [0,0,0,0]
    var rozkazy_l:[[Int]] = [[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1],[-1,-1,-1]]
    var teksty_zapis:[String] = ["","","","","","","","","","","","","","",""]
    var plik_tekst:String = ""
    var binarka:[String] = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"]
    var przerw_1: String = ""
    var przerw_2: String = ""
    var przerw_3: String = ""
    var przerw_4: String = ""
    var przerw_5: String = ""
    var przerw_6: String = ""
    
    override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
       }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        if pickerView == picker{
            return 2
        }
        else if pickerView == picker_2{
            return 1
        }
        else {
            return 1
        }
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == picker{
            return 5
        }
        else if pickerView == picker_2{
            return 5
        }
        else if pickerView == picker_3{
            return 11
        }
        else {
            return 0
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == picker{
            return pickerData[component][row]
        }
        else if pickerView == picker_2{
            return pickerData_2[row]
        }
        else if pickerView == picker_3{
            return pickerData_3[row]
        }
        else{
            return nil
        }
       }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == picker{
            if component == 0{
                switch row {
                    case 0:
                        print("nic nie wybrano w componencie 1 row 1")
                        rozkaz_1_R=0
                    case 1:
                        rozkaz_1_R=1
                    case 2:
                        rozkaz_1_R=2
                    case 3:
                        rozkaz_1_R=3
                    case 4:
                        rozkaz_1_R=4
                    default:
                        print("default w component 2 row 1")
                }
            }
            else if component == 1{
                switch row {
                    case 0:
                        print("nic nie wybrano w componencie 2 row 2")
                        rozkaz_2_R=0
                    case 1:
                        rozkaz_2_R=(-4)
                    case 2:
                        rozkaz_2_R=(-5)
                    case 3:
                        rozkaz_2_R=(-6)
                    case 4:
                        rozkaz_2_R=(-7)
                    default:
                        print("default w component 2 row 2")
                }
            }
        }
        else if pickerView == picker_2{
            switch row {
                case 0:
                    print("nic nie wybrano w componencie 1 ")
                        rozkaz_1_N=0
                    case 1:
                        rozkaz_1_N=1
                    case 2:
                        rozkaz_1_N=2
                    case 3:
                        rozkaz_1_N=3
                    case 4:
                        rozkaz_1_N=4
                default:
                    print("default w component 1 row 1")
            }
        }
        else if pickerView == picker_3{
            switch row{
                case 0:
                    przerwanie = 0
                    print("nic nie wybrano w przerwaniu")
                case 1:
                    przerwanie = 1
                case 2:
                    przerwanie = 2
                case 3:
                    przerwanie = 3
                case 4:
                    przerwanie = 4
                case 5:
                    przerwanie = 5
                case 6:
                    przerwanie = 6
                case 7:
                    przerwanie = 7
                case 8:
                    przerwanie = 8
                case 9:
                    przerwanie = 9
                case 10:
                    przerwanie = 10
                default:
                    print("default w przerwaniu")
            }
        }
        else {
            print("zaden pickerview nie uruchomiony")
        }
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
    
    @IBOutlet var picker: UIPickerView! //wybor rejestrowe
    @IBOutlet var picker_2: UIPickerView! //wybor bezposrednie
    @IBOutlet var picker_3: UIPickerView! //wybor przerwania
    
    @IBOutlet var WART_ADR: UITextField!
    @IBAction func WART_ADR_ACT(_ sender: Any) {
        rozkaz_2_N = Int(WART_ADR.text!) ?? 0
    }
    
    @IBOutlet var TRYB_REJ: UISegmentedControl!
    @IBAction func TRYB_REJ_ACT(_ sender: Any) {
        switch TRYB_REJ.selectedSegmentIndex
        {
        case 0:
            rozkaz_0_R = 0
        case 1:
            rozkaz_0_R = 1
        case 2:
            rozkaz_0_R = 2
        default:
            print("default switch tryb rej")
        }
    }
    
    @IBOutlet var TRYB_NATY: UISegmentedControl!
    @IBAction func TRYB_NATY_ACT(_ sender: Any) {
        switch TRYB_NATY.selectedSegmentIndex
        {
        case 0:
            rozkaz_0_N = 0
        case 1:
            rozkaz_0_N = 1
        case 2:
            rozkaz_0_N = 2
        default:
            print("default switch tryb naty")
        }
    }
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    @IBOutlet var R_AH: UITextField!
    @IBOutlet var R_AL: UITextField!
    @IBOutlet var R_BH: UITextField!
    @IBOutlet var R_BL: UITextField!
    @IBOutlet var R_CH: UITextField!
    @IBOutlet var R_CL: UITextField!
    @IBOutlet var R_DH: UITextField!
    @IBOutlet var R_DL: UITextField!
    
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
   
    @IBAction func P_ZAPISZ(_ sender: Any) {
        teksty_zapis[0] = I_1.text ?? ""
        teksty_zapis[1] = I_2.text ?? ""
        teksty_zapis[2] = I_3.text ?? ""
        teksty_zapis[3] = I_4.text ?? ""
        teksty_zapis[4] = I_5.text ?? ""
        teksty_zapis[5] = I_6.text ?? ""
        teksty_zapis[6] = I_7.text ?? ""
        teksty_zapis[7] = I_8.text ?? ""
        teksty_zapis[8] = I_9.text ?? ""
        teksty_zapis[9] = I_10.text ?? ""
        teksty_zapis[10] = I_11.text ?? ""
        teksty_zapis[11] = I_12.text ?? ""
        teksty_zapis[12] = I_13.text ?? ""
        teksty_zapis[13] = I_14.text ?? ""
        teksty_zapis[14] = I_15.text ?? ""
        for l in 0...teksty_zapis.count-1 {
            if teksty_zapis[l] != ""{
                plik_tekst += teksty_zapis[l]+"\n"
            }
        }
        print(plik_tekst)
        let url = self.getDocumentsDirectory().appendingPathComponent("plik.txt")
        do {
            try plik_tekst.write(to: url, atomically: true, encoding: .utf8)
            let input = try String(contentsOf: url)
            print(input)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    @IBAction func P_WYCZYSC_TEKST(_ sender: Any) {
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
        I_14.text = nil
        I_15.text = nil
        teksty_zapis = ["","","","","","","","","","","","","","",""]
        plik_tekst = ""
    }
    func wynikowanie(){
        if rozkazy_l[linijka][0]==0{
                    zapis_0[linijka]="MOV"
                    if rozkazy_l[linijka][1]==1{
                        zapis_1[linijka]="AX"
                        if rozkazy_l[linijka][2]==(-4){
                            zapis_2[linijka]="AX"
                            print("AX do AX")
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            zapis_2[linijka]="BX"
                            AX = BX
                            BX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            zapis_2[linijka]="CX"
                            AX = CX
                            CX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            zapis_2[linijka]="DX"
                            AX = DX
                            DX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            zapis_2[linijka]=String(rozkazy_l[linijka][2])
                            AX = rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==2{
                        zapis_1[linijka]="BX"
                        if rozkazy_l[linijka][2]==(-4){
                            zapis_2[linijka]="AX"
                            BX = AX
                            AX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            zapis_2[linijka]="BX"
                            print("AX do AX")
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            zapis_2[linijka]="CX"
                            BX = CX
                            CX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            zapis_2[linijka]="DX"
                            BX = DX
                            DX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            zapis_2[linijka]=String(rozkazy_l[linijka][2])
                            BX = rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==3{
                        zapis_1[linijka]="CX"
                        if rozkazy_l[linijka][2]==(-4){
                            zapis_2[linijka]="AX"
                            CX = AX
                            AX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            zapis_2[linijka]="BX"
                            CX = BX
                            BX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            zapis_2[linijka]="CX"
                            print("CX do CX")
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            zapis_2[linijka]="DX"
                            CX = DX
                            DX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            zapis_2[linijka]=String(rozkazy_l[linijka][2])
                            CX = rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==4{
                        zapis_1[linijka]="DX"
                        if rozkazy_l[linijka][2]==(-4){
                            zapis_2[linijka]="AX"
                            DX = AX
                            AX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            zapis_2[linijka]="BX"
                            DX = BX
                            BX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            zapis_2[linijka]="CX"
                            DX = CX
                            CX = 0
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            zapis_2[linijka]="DX"
                            print("DX do DX")
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            zapis_2[linijka]=String(rozkazy_l[linijka][2])
                            DX = rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==(-2){
                        _ = alert_blad()
                    }
                }
                else if rozkazy_l[linijka][0]==1{
                    zapis_0[linijka]="ADD"
                    if rozkazy_l[linijka][1]==1{
                        zapis_1[linijka]="AX"
                        if rozkazy_l[linijka][2]==(-4){
                            zapis_2[linijka]="AX"
                            AX += AX
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            zapis_2[linijka]="BX"
                            AX = BX + AX
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            zapis_2[linijka]="CX"
                            AX = CX + AX
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            zapis_2[linijka]="DX"
                            AX = DX + AX
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            zapis_2[linijka]=String(rozkazy_l[linijka][2])
                            AX+=rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==2{
                        zapis_1[linijka]="BX"
                        if rozkazy_l[linijka][2]==(-4){
                            zapis_2[linijka]="AX"
                            BX = AX + BX
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            zapis_2[linijka]="BX"
                            BX += BX
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            zapis_2[linijka]="CX"
                            BX = CX + BX
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            zapis_2[linijka]="DX"
                            BX = DX + BX
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            zapis_2[linijka]=String(rozkazy_l[linijka][2])
                            BX+=rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==3{
                        zapis_1[linijka]="CX"
                        if rozkazy_l[linijka][2]==(-4){
                            zapis_2[linijka]="AX"
                            CX = AX + CX
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            zapis_2[linijka]="BX"
                            CX = BX + CX
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            zapis_2[linijka]="CX"
                            CX += CX
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            zapis_2[linijka]="DX"
                            CX = DX + CX
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            zapis_2[linijka]=String(rozkazy_l[linijka][2])
                            CX+=rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==4{
                        zapis_1[linijka]="DX"
                        if rozkazy_l[linijka][2]==(-4){
                            zapis_2[linijka]="AX"
                            DX = AX + DX
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            zapis_2[linijka]="BX"
                            DX = BX + DX
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            zapis_2[linijka]="CX"
                            DX = CX + DX
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            zapis_2[linijka]="DX"
                            DX += DX
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            zapis_2[linijka]=String(rozkazy_l[linijka][2])
                            DX+=rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==(-2){
                        _ = alert_blad()
                    }
                }
                else if rozkazy_l[linijka][0]==2{
                    zapis_0[linijka]="SUB"
                    if rozkazy_l[linijka][1]==1{
                        zapis_1[linijka]="AX"
                        if rozkazy_l[linijka][2]==(-4){
                            zapis_2[linijka]="AX"
                            AX -= AX
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            zapis_2[linijka]="BX"
                            AX = AX - BX
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            zapis_2[linijka]="CX"
                            AX = AX - CX
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            zapis_2[linijka]="DX"
                            AX = AX - DX
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            zapis_2[linijka]=String(rozkazy_l[linijka][2])
                            AX-=rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==2{
                        zapis_1[linijka]="BX"
                        if rozkazy_l[linijka][2]==(-4){
                            zapis_2[linijka]="AX"
                            BX = BX - AX
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            zapis_2[linijka]="BX"
                            BX -= BX
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            zapis_2[linijka]="CX"
                            BX = BX - CX
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            zapis_2[linijka]="DX"
                            BX = BX - DX
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            zapis_2[linijka]=String(rozkazy_l[linijka][2])
                            BX-=rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==3{
                        zapis_1[linijka]="CX"
                        if rozkazy_l[linijka][2]==(-4){
                            zapis_2[linijka]="AX"
                            CX = CX - AX
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            zapis_2[linijka]="BX"
                            CX = CX - AX
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            zapis_2[linijka]="CX"
                            CX -= CX
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            zapis_2[linijka]="DX"
                            CX = CX - DX
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            zapis_2[linijka]=String(rozkazy_l[linijka][2])
                            CX-=rozkazy_l[linijka][2]
                        }
                    }
                    else if rozkazy_l[linijka][1]==4{
                        zapis_1[linijka]="DX"
                        if rozkazy_l[linijka][2]==(-4){
                            zapis_2[linijka]="AX"
                            DX = DX - AX
                        }
                        else if rozkazy_l[linijka][2]==(-5){
                            zapis_2[linijka]="BX"
                            DX = DX - BX
                        }
                        else if rozkazy_l[linijka][2]==(-6){
                            zapis_2[linijka]="CX"
                            DX = DX - CX
                        }
                        else if rozkazy_l[linijka][2]==(-7){
                            zapis_2[linijka]="DX"
                            DX -= DX
                        }
                        else if rozkazy_l[linijka][2]==(-2){
                            _ = alert_blad()
                        }
                        else{
                            zapis_2[linijka]=String(rozkazy_l[linijka][2])
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
                wpisz_w()
                linijka+=1
                wpisz_r()
                print("AX: \(AX), BX: \(BX), CX: \(CX), DX: \(DX)")
    }
    func alert_blad() {
        let alert2 = UIAlertController(title: "Blad pliku", message: "Wystapil blad danych", preferredStyle: .alert)
        alert2.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        alert2.addAction(UIAlertAction(title: "Anuluj", style: .cancel, handler: nil))
        self.present(alert2, animated: true)
    }
    func alert_blad_P() {
        let alert2 = UIAlertController(title: "Błąd pliku", message: "Za mało miejsca w pliku", preferredStyle: .alert)
        alert2.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert2, animated: true)
    }
    
    @IBAction func P_WYKONAJ_REJ(_ sender: Any) {
        if linijka<15 {
            if przerwanie != 0{
                if linijka<5{
                    rozkazy_l[linijka+10]=[rozkaz_0_R,rozkaz_1_R,rozkaz_2_R]
                    przerwanie_r()
                }
                else{
                    _ = alert_blad_P()
                }
            }
            else{
                rozkazy_l[linijka]=[rozkaz_0_R,rozkaz_1_R,rozkaz_2_R]
                przerwanie_r()
            }
        }
        else{
            _ = alert_blad()
        }
    }
    
    @IBAction func P_WYKONAJ_NAT(_ sender: Any) {
        if linijka<15 {
            if przerwanie != 0{
                if linijka<5{
                    rozkazy_l[linijka+10]=[rozkaz_0_N,rozkaz_1_N,rozkaz_2_N]
                    przerwanie_r()
                }
                else{
                    _ = alert_blad_P()
                }
            }
            else{
                rozkazy_l[linijka]=[rozkaz_0_N,rozkaz_1_N,rozkaz_2_N]
                przerwanie_r()
            }
        }
        else{
            _ = alert_blad()
        }
    }
    @IBAction func INFO_PRZERW(_ sender: Any) {
        var opisik: String = ""
        switch przerwanie{
            case 0:
                opisik = "Przerwania zaczynają się od odłożenia na stos wartości rejestrów, które będą używane, wraz z informacją o miejscu do którego powinno się powrócić po wykonaniu obsługi przerwania(Return Flag). Przerwanie polega na wykonaniu pewnych operacji zaprogramowanych w BIOS komputera."
            case 1:
                opisik = "Przerwanie podaje stan zegara RTC, następnie wpisuje jego wartości, do CH trafia godzina, do CL minuty, do DH sekundy a do DL dzień tygodnia"
            case 2:
                opisik = "Przerwanie drukuje znak(stronę)."
            case 3:
                opisik = "Przerwanie podaje stan klawiatury, zawiera ono informajcę czy jest podłączona zewnętrzna klawatura oraz czy systemowa klawiatura jest aktywna"
            case 4:
                opisik = "Przerwanie przesyła pojedynczy znak portem"
            case 5:
                opisik = "Przerwanie zapisuje w rejestrach informację o środowisku pracy, w tym nazwę urządzenia oraz wersję systemową"
            case 6:
                opisik = "Przerwanie drukuje pozycję kursora w pliku zawierając informację na jakim numerze lini i znaku się on znajduje"
            case 7:
                opisik = "Przerwanie wypisuje słowo"
            case 8:
                opisik = "Przerwanie wypisuje informacje dotyczące rodzaju pamięci oraz pojemności"
            case 9:
                opisik = "Przerwanie to wypisuje datę. Do rejestru CH trafia rok, do CL miesiąc, do DH trafia dzień miesiąca a do DL dzień tygodnia"
            case 10:
                opisik = "Przerwanie wypisuje znak"
            default:
                opisik = "brak opisu"
        }
        _ = showPopU2(tytul: "Przerwanie nr: \(przerwanie)", tresc: opisik)
    }
    func showPopU2(tytul: String, tresc:String) {
       let alert = UIAlertController(title: tytul, message: tresc, preferredStyle: .alert)
       alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
           self.handleSelection2()
       }))
       self.present(alert, animated: true)
    }
    
    func handleSelection2() {
        print("Przeczytano")
    }
    
    func wpisz_r(){
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
    func wpisz_w(){
        switch linijka{
            case 0:
                I_1.text = zapis_0[0]+" "+zapis_1[0]+" "+zapis_2[0]
            case 1:
                I_2.text = zapis_0[1]+" "+zapis_1[1]+" "+zapis_2[1]
            case 2:
                I_3.text = zapis_0[2]+" "+zapis_1[2]+" "+zapis_2[2]
            case 3:
                I_4.text = zapis_0[3]+" "+zapis_1[3]+" "+zapis_2[3]
            case 4:
                I_5.text = zapis_0[4]+" "+zapis_1[4]+" "+zapis_2[4]
            case 5:
                I_6.text = zapis_0[5]+" "+zapis_1[5]+" "+zapis_2[5]
            case 6:
                I_7.text = zapis_0[6]+" "+zapis_1[6]+" "+zapis_2[6]
            case 7:
                I_8.text = zapis_0[7]+" "+zapis_1[7]+" "+zapis_2[7]
            case 8:
                I_9.text = zapis_0[8]+" "+zapis_1[8]+" "+zapis_2[8]
            case 9:
                I_10.text = zapis_0[9]+" "+zapis_1[9]+" "+zapis_2[9]
            case 10:
                I_11.text = zapis_0[10]+" "+zapis_1[10]+" "+zapis_2[10]
            case 11:
                I_12.text = zapis_0[11]+" "+zapis_1[11]+" "+zapis_2[11]
            case 12:
                I_13.text = zapis_0[12]+" "+zapis_1[12]+" "+zapis_2[12]
            case 13:
                I_14.text = zapis_0[13]+" "+zapis_1[13]+" "+zapis_2[13]
            case 14:
                I_15.text = zapis_0[14]+" "+zapis_1[14]+" "+zapis_2[14]
           default:
                print("Switch drukowanie napisow")
        }
    }
    
    func showPopUp() {
       let alert = UIAlertController(title: "Czy zakończono obsługę przerwania ?", message: nil, preferredStyle: .alert)
       alert.addAction(UIAlertAction(title: "Tak", style: .default, handler: { action in
           self.handleSelection()
       }))
       self.present(alert, animated: true)
    }
    
    func handleSelection() {
        POP()
    }
    
    func POP(){
        zapis_0[linijka] = "POP"
        zapis_1[linijka] = "DX"
        zapis_2[linijka] = ""
        wpisz_w()
        linijka+=1
        zapis_0[linijka] = "POP"
        zapis_1[linijka] = "CX"
        zapis_2[linijka] = ""
        wpisz_w()
        linijka+=1
        zapis_0[linijka] = "POP"
        zapis_1[linijka] = "AX"
        zapis_2[linijka] = ""
        wpisz_w()
        linijka+=1
        AX = Stos[0]
        BX = Stos[1]
        CX = Stos[2]
        DX = Stos[3]
        Stos = [0,0,0,0]
        print("Koniec obsługi przerwania")
        wpisz_r()
        wynikowanie()
    }
    
    func PUSH(){
        Stos = [AX,BX,CX,DX]
        zapis_0[linijka] = "PUSH"
        zapis_1[linijka] = "AX"
        zapis_2[linijka] = ""
        wpisz_w()
        linijka += 1
        zapis_0[linijka] = "MOV"
        zapis_1[linijka] = "AH"
        zapis_2[linijka] = przerw_1
        wpisz_w()
        R_AH.text = przerw_1
        linijka+=1
        zapis_0[linijka] = "INT"
        zapis_1[linijka] = przerw_2
        zapis_2[linijka] = ""
        wpisz_w()
        linijka+=1
        zapis_0[linijka] = "MOV"
        zapis_1[linijka] = "CH"
        zapis_2[linijka] = przerw_3
        wpisz_w()
        R_CH.text = przerw_3
        linijka+=1
        zapis_0[linijka] = "MOV"
        zapis_1[linijka] = "CL"
        zapis_2[linijka] = przerw_4
        wpisz_w()
        R_CL.text = przerw_4
        linijka+=1
        zapis_0[linijka] = "MOV"
        zapis_1[linijka] = "DH"
        zapis_2[linijka] = przerw_5
        wpisz_w()
        R_DH.text = przerw_5
        linijka+=1
        zapis_0[linijka] = "MOV"
        zapis_1[linijka] = "DL"
        zapis_2[linijka] = przerw_6
        wpisz_w()
        R_DL.text = przerw_6
        linijka+=1
    }
    
    func przerwanie_r(){
        print("Obsługa przerwania")
        switch przerwanie {
        case 0:
            print("nic nie wybrano")
            wynikowanie()
        case 1: //1Ah02H zegar
            if linijka<5{
                przerw_1 = "02h"
                przerw_2 = "1Ah"
                let today1 = Date()
                let formatter11 = DateFormatter()
                let formatter22 = DateFormatter()
                let formatter33 = DateFormatter()
                let formatter44 = DateFormatter()
                formatter11.dateFormat = "HH"
                przerw_3 = formatter11.string(from: today1)
                formatter22.dateFormat = "mm"
                przerw_4 = formatter22.string(from: today1)
                formatter33.dateFormat = "ss"
                przerw_5 = formatter33.string(from: today1)
                formatter44.dateFormat = "E"
                przerw_6 = formatter44.string(from: today1)
                
                PUSH()
                var once = true
                if once {
                   showPopUp()
                   once = false // to prevent re-showing it again
                }
            }
            else{
                _ = alert_blad_P()
                print("Zbyt malo miejsca case 1")
            }
        case 2: //17h00h drukuj znak
            if linijka<5{
                przerw_1 = "00h"
                przerw_2 = "17h"
                przerw_3 = "SCREEN"
                przerw_4 = "CAPTURE"
                przerw_5 = "STATE"
                przerw_6 = "OK"
                let info = UIPrintInfo(dictionary:nil)
                info.outputType = UIPrintInfo.OutputType.general
                info.jobName = "Printing"
                let vc = UIPrintInteractionController.shared
                vc.printInfo = info
                vc.printingItem = UIImage.image(fromView: self.view)
                vc.present(from: self.view.frame, in: self.view, animated: true, completionHandler: nil)
                
                PUSH()
                var once = true
                if once {
                    showPopUp()
                    once = false // to prevent re-showing it again
                }
            }
            else{
                _ = alert_blad_P()
                print("Zbyt malo miejsca case 2")
            }
        case 3: //16h02h podaj stan klawiatury
            if linijka<5{
                przerw_1 = "02h"
                przerw_2 = "16h"
                przerw_3 = "EXTERNAL"
                przerw_4 = "0"
                przerw_5 = "INTERNAL"
                przerw_6 = "DISABLED"
                
                PUSH()
                var once = true
                if once {
                    showPopUp()
                    once = false // to prevent re-showing it again
                }
            }
            else{
                _ = alert_blad_P()
                print("Zbyt malo miejsca case 3")
            }
        case 4: //14h01h wyslij znak przez port
            if linijka<5{
                przerw_1 = "01h"
                przerw_2 = "14h"
                przerw_3 = "A"
                przerw_4 = "01000001"
                przerw_5 = "STATE"
                przerw_6 = "SENT"
                print("Transmisja z portu: 01000001 na ASCII: A")
                
                PUSH()
                var once = true
                if once {
                    showPopUp()
                    once = false // to prevent re-showing it again
                }
            }
            else{
                _ = alert_blad_P()
                print("Zbyt malo miejsca case 4")
            }
        case 5: //15hC0h podaje inf o srodowisku pracy
            if linijka<5{
                przerw_1 = "C0h"
                przerw_2 = "15h"
                przerw_3 = "SYS VER"
                przerw_4 = "IOS 13.3"
                przerw_5 = "DEVICE"
                przerw_6 = "MNVP2FDA"
                
                
                PUSH()
                var once = true
                if once {
                    showPopUp()
                    once = false // to prevent re-showing it again
                }
            }
            else{
                _ = alert_blad_P()
                print("Zbyt malo miejsca case 4")
            }
        case 6: //10h03h odczytuje pozycje kursora (linijke)
            if linijka<5{
                przerw_1 = "03h"
                przerw_2 = "10h"
                przerw_3 = "LINE"
                przerw_4 = String(linijka+8)
                przerw_5 = "AT"
                przerw_6 = "0"
                
                PUSH()
                var once = true
                if once {
                      showPopUp()
                      once = false // to prevent re-showing it again
                   }
            }
            else{
                _ = alert_blad_P()
                print("Zbyt malo miejsca case 4")
            }
        case 7: //10h13h pisze tekst
            if linijka<5{
                przerw_1 = "13h"
                przerw_2 = "10h"
                przerw_3 = "TEXT"
                przerw_4 = "AB"
                przerw_5 = "01000001"
                przerw_6 = "01000010"
                print("Tekst: AB")
                
                PUSH()
                var once = true
                if once {
                      showPopUp()
                      once = false // to prevent re-showing it again
                   }
            }
            else{
                _ = alert_blad_P()
                print("Zbyt malo miejsca case 4")
            }
        case 8: //13h15h podaje typ hdd
            if linijka<5{
                przerw_1 = "15h"
                przerw_2 = "13h"
                przerw_3 = "TYPE"
                przerw_4 = "RAM"
                przerw_5 = "CAPACITY"
                przerw_6 = "32 GB"
                
                PUSH()
                var once = true
                if once {
                      showPopUp()
                      once = false // to prevent re-showing it again
                   }
            }
            else{
                _ = alert_blad_P()
                print("Zbyt malo miejsca case 4")
            }
        case 9: //1Ah04h podaje date
            if linijka<5{
                przerw_1 = "04h"
                przerw_2 = "1Ah"
                let today = Date()
                let formatter1 = DateFormatter()
                let formatter2 = DateFormatter()
                let formatter3 = DateFormatter()
                let formatter4 = DateFormatter()
                formatter1.dateFormat = "y"
                przerw_3 = formatter1.string(from: today)
                formatter2.dateFormat = "MMM"
                przerw_4 = formatter2.string(from: today)
                formatter3.dateFormat = "d"
                przerw_5 = formatter3.string(from: today)
                formatter4.dateFormat = "E"
                przerw_6 = formatter4.string(from: today)
                
                
                PUSH()
                var once = true
                if once {
                      showPopUp()
                      once = false // to prevent re-showing it again
                   }
            }
            else{
                _ = alert_blad_P()
                print("Zbyt malo miejsca case 4")
            }
        case 10: //10h0Ah pisze znak
            if linijka<5{
                przerw_1 = "0Ah"
                przerw_2 = "10h"
                przerw_3 = "WRITE"
                przerw_4 = "Z"
                przerw_5 = "BIN"
                przerw_6 = "01011010"
                print("Wypisano znak: 01011010, ASCII: Z")
                
                PUSH()
                var once = true
                if once {
                      showPopUp()
                      once = false // to prevent re-showing it again
                   }
            }
            else{
                _ = alert_blad_P()
                print("Zbyt malo miejsca case 4")
            }
        default:
            print("default w przerwanie obsluga")
        }
    }
    
    @IBAction func P_WYCZY_REJ(_ sender: Any) {
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.picker.delegate = self
        self.picker.dataSource = self
        self.picker_2.delegate = self
        self.picker_2.dataSource = self
        self.picker_3.delegate = self
        self.picker_3.dataSource = self
        pickerData = [["-","AX","BX","CX","DX"],["-","AX","BX","CX","DX"]]
        pickerData_2 = ["-","AX","BX","CX","DX"]
        pickerData_3 = ["Brak przerwania","Podaj czas","Drukuj stronę","Podaj stan klawiatury","Wyślij znak portem","Informacja o środowisku","Pozycja kursora","Pisz tekst","Podaj typ hdd","Podaj datę","Pisz znak"]
     
    }
}
