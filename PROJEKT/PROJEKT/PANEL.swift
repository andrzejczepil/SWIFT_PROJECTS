//
//  PANEL.swift
//  PROJEKT
//
//  Created by Andrzej Czepil on 10/12/2019.
//  Copyright © 2019 Andrzej Czepil. All rights reserved.
//

import Cocoa
import Foundation

func getCPULoadInfo()-> Array<Double>{ //Pobieranie danych o czasie procesora
    var cpuInfo: processor_info_array_t!
    var prevCpuInfo: processor_info_array_t?
    var numCpuInfo: mach_msg_type_number_t = 0
    var numPrevCpuInfo: mach_msg_type_number_t = 0
    var numCPUs: uint = 0
    let CPUUsageLock: NSLock = NSLock()
    var usage:Float32 = 0
    var procek: [Double] = []
    var procek1: Double = 0
    var procek2: Double = 0
    var procek3: Double = 0
    var procek4: Double = 0
    var procesor:Double = 0
    let mibKeys: [Int32] = [ CTL_HW, HW_NCPU ]
    mibKeys.withUnsafeBufferPointer() { mib in
        var sizeOfNumCPUs: size_t = MemoryLayout<uint>.size
        let status = sysctl(processor_info_array_t(mutating: mib.baseAddress), 2, &numCPUs, &sizeOfNumCPUs, nil, 0)
        if status != 0 {
            numCPUs = 1
        }
    }
    var numCPUsU: natural_t = 0
    let err: kern_return_t = host_processor_info(mach_host_self(), PROCESSOR_CPU_LOAD_INFO, &numCPUsU, &cpuInfo, &numCpuInfo);
    if err == KERN_SUCCESS {
        CPUUsageLock.lock()
        
        for i in 0 ..< Int32(numCPUs) {
            var inUse: Int32
            var total: Int32
            if let prevCpuInfo = prevCpuInfo {
                inUse = cpuInfo[Int(CPU_STATE_MAX * i + CPU_STATE_USER)]
                    - prevCpuInfo[Int(CPU_STATE_MAX * i + CPU_STATE_USER)]
                    + cpuInfo[Int(CPU_STATE_MAX * i + CPU_STATE_SYSTEM)]
                    - prevCpuInfo[Int(CPU_STATE_MAX * i + CPU_STATE_SYSTEM)]
                    + cpuInfo[Int(CPU_STATE_MAX * i + CPU_STATE_NICE)]
                    - prevCpuInfo[Int(CPU_STATE_MAX * i + CPU_STATE_NICE)]
                total = inUse + (cpuInfo[Int(CPU_STATE_MAX * i + CPU_STATE_IDLE)]
                    - prevCpuInfo[Int(CPU_STATE_MAX * i + CPU_STATE_IDLE)])
            } else {
                inUse = cpuInfo[Int(CPU_STATE_MAX * i + CPU_STATE_USER)]
                    + cpuInfo[Int(CPU_STATE_MAX * i + CPU_STATE_SYSTEM)]
                    + cpuInfo[Int(CPU_STATE_MAX * i + CPU_STATE_NICE)]
                total = inUse + cpuInfo[Int(CPU_STATE_MAX * i + CPU_STATE_IDLE)]
            }
            let coreInfo = Float(inUse) / Float(total)
            usage += coreInfo
            switch i {
            case 0:
                procek1 = round( 1000000 * (Double(Float(inUse) / Float(total)))) / 10000
            case 1:
                procek2 = round( 1000000 * (Double(Float(inUse) / Float(total)))) / 10000
            case 2:
                procek3 = round( 1000000 * (Double(Float(inUse) / Float(total)))) / 10000
            case 3:
                procek4 = round( 1000000 * (Double(Float(inUse) / Float(total)))) / 10000
            default:
                procek1 = round( 1000000 * (Double(Float(inUse) / Float(total)))) / 10000
            }
        }
        CPUUsageLock.unlock()
        procesor = round(10000 * Double( 100 * Float(usage) / Float(numCPUs) )) / 10000
        if let prevCpuInfo = prevCpuInfo {
            let prevCpuInfoSize: size_t = MemoryLayout<integer_t>.stride * Int(numPrevCpuInfo)
            vm_deallocate(mach_task_self_, vm_address_t(bitPattern: prevCpuInfo), vm_size_t(prevCpuInfoSize))
        }
        prevCpuInfo = cpuInfo
        numPrevCpuInfo = numCpuInfo
        cpuInfo = nil
        numCpuInfo = 0
    } else {
        print("Błąd!")
    }
    procek.append(procek1)
    procek.append(procek2)
    procek.append(procek3)
    procek.append(procek4)
    procek.append(procesor)
    return procek
}

func TEMP_AL(question: String, text: String) -> Bool{
    let alert = NSAlert()
    alert.messageText = question
    alert.informativeText = text
    alert.alertStyle = NSAlert.Style.warning
    alert.addButton(withTitle: "Przywróć")
 return alert.runModal() == NSApplication.ModalResponse.alertFirstButtonReturn
}

class PANEL: NSViewController {
    
    func LOGOUT(){
        self.dismiss(NSViewController.self)
    }
    
    @IBAction func SHUTDOWN(_ sender: Any) {
        exit(0)
    }
    
    func RAND_1()->Double{
        var random = Double.random(in: 10 ... 50)
        random = round(100 * random) / 100
        return random
    }
    func RAND_2()->Double{
        var random = Double.random(in: 0 ... 100)
        random = round(100 * random) / 100
        return random
    }
    var procek: [Double] = []
    var przycisk_proc: Int = 0
    var przycisk_wiat: Int = 0
    var przycisk_term: Int = 0
    var przycisk_stop: Int = 0
    var timer1 = Timer() //timer czasu odswiezania
    var timer2 = Timer()
    var timer3 = Timer()
    var timer4 = Timer()
    var timer5 = Timer()
    var timer6 = Timer()
    let czas_z: Double = 30 //czas co ile komunikat obecnosci
    let czas_o: Double = 1 //czas odswiezania
    var FAN_S: Double = 0
    var COOL_Tem: Double = 0
    
   
    @IBAction func WYLOGUJ(_ sender: Any) {
        self.timer1.invalidate()
        self.timer2.invalidate()
        self.timer3.invalidate()
        self.timer4.invalidate()
        self.timer5.invalidate()
        self.timer6.invalidate()
        LOGOUT()
    }
    @objc func timer1A() {
        procek = getCPULoadInfo()
        COOL_Tem = RAND_2()
    }
    @objc func timer5A() {
        FAN_S = RAND_1()
        FAN_SPEED.stringValue = String (FAN_S)
    }
    @objc func timer6A() {
          COOL_T.stringValue = String (COOL_Tem)
    }
    @objc func timer4A() {
        CPU_1.stringValue = String (procek[0])
        CPU_2.stringValue = String (procek[1])
        CPU_3.stringValue = String (procek[2])
        CPU_4.stringValue = String (procek[3])
        CPU_5.stringValue = String (procek[4])
    }
    
     @objc func timer2A() {
        self.timer2.invalidate()
        performSegue(withIdentifier: "OBECNOSC_P", sender: self)
        self.timer3 = Timer.scheduledTimer(timeInterval: czas_z, target: self, selector: #selector(timer3A), userInfo: nil, repeats: false)
    }
    
    @objc func timer3A() {
           self.timer2 = Timer.scheduledTimer(timeInterval: czas_z, target: self, selector: #selector(timer2A), userInfo: nil, repeats: false)
       }
    
    @IBOutlet weak var CPU_1: NSTextField!
    @IBOutlet weak var CPU_2: NSTextField!
    @IBOutlet weak var CPU_3: NSTextField!
    @IBOutlet weak var CPU_4: NSTextField!
    @IBOutlet weak var CPU_5: NSTextField!
    @IBOutlet weak var FAN_SPEED: NSTextField!
    @IBOutlet weak var COOL_T: NSTextField!
    
    @IBAction func CPU_DAJ(_ sender: Any) {
        przycisk_proc = przycisk_proc + 1
        if(przycisk_proc % 2 == 0 ){
            self.timer4.invalidate()
            CPU_1.stringValue = "CPU 1"
            CPU_2.stringValue = "CPU 2"
            CPU_3.stringValue = "CPU 3"
            CPU_4.stringValue = "CPU 4"
            CPU_5.stringValue = "Całkowite"
        }
        else if (przycisk_proc % 2 != 0 ){
            procek = getCPULoadInfo()
            CPU_1.stringValue = String (procek[0])
            CPU_2.stringValue = String (procek[1])
            CPU_3.stringValue = String (procek[2])
            CPU_4.stringValue = String (procek[3])
            CPU_5.stringValue = String (procek[4])
            self.timer4 = Timer.scheduledTimer(timeInterval: czas_o, target: self, selector: #selector(timer4A), userInfo: nil, repeats: true)
            }
        }
    
    @IBAction func POMIAR_SPEED(_ sender: Any) {
        przycisk_wiat = przycisk_wiat + 1
        if(przycisk_wiat % 2 == 0){
            self.timer5.invalidate()
            FAN_SPEED.stringValue = "Prędkość"
        }
        else if (przycisk_wiat % 2 != 0){
            FAN_SPEED.stringValue = String(FAN_S)
            self.timer5 = Timer.scheduledTimer(timeInterval: czas_o, target: self, selector: #selector(timer5A), userInfo: nil, repeats: true)
        }
    }
    
    @IBAction func POMIAR_T(_ sender: Any) {
        przycisk_term = przycisk_term + 1
        if(przycisk_term % 2 == 0){
            self.timer6.invalidate()
            COOL_T.stringValue = "Temperatura"
        }
        else if (przycisk_term % 2 != 0){
            COOL_T.stringValue = String(COOL_Tem)
            self.timer6 = Timer.scheduledTimer(timeInterval: czas_o, target: self, selector: #selector(timer6A), userInfo: nil, repeats: true)
        }
    }
    
    @IBAction func STOP_POM(_ sender: Any) {
        przycisk_stop = przycisk_stop + 1
        if(przycisk_stop % 2 == 0){
            self.timer5 = Timer.scheduledTimer(timeInterval: czas_o, target: self, selector: #selector(timer5A), userInfo: nil, repeats: true)
            FAN_SPEED.stringValue = String(FAN_S)
        }
        else if (przycisk_stop % 2 != 0){
            self.timer5.invalidate()
            FAN_SPEED.stringValue = String(FAN_S)
            if(FAN_S<15){
                _ = TEMP_AL(question: "ZA NISKIE OBROTY", text: "PRZYWRÓĆ AUTOUSTALANIE")
                self.timer5 = Timer.scheduledTimer(timeInterval: czas_o, target: self, selector: #selector(timer5A), userInfo: nil, repeats: true)
                przycisk_stop = przycisk_stop + 1
                FAN_SPEED.stringValue = String(FAN_S)
            }
            
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.timer1 = Timer.scheduledTimer(timeInterval: czas_o, target: self, selector: #selector(timer1A), userInfo: nil, repeats: true)
        self.timer2 = Timer.scheduledTimer(timeInterval: czas_z, target: self, selector: #selector(timer2A), userInfo: nil, repeats: false)
    }
    
}
