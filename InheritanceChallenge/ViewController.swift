//
//  ViewController.swift
//  ClassificationAndInheritanceChallenge
//
//  Created by Robert Le Bruce on 6/6/18.
//  Copyright (c) 2018 MobileMakers. All rights reserved.
//

import UIKit
import MediaPlayer

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UITextView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        UIDevice.current.isBatteryMonitoringEnabled = true

        let myMVPDevice = iPad()

        myLabel.text = getDeviceInfo(myMVPDevice)
    }

    @IBAction func onStretch1Pressed(_ sender: UIButton)
    {
        let myFirstDevice = iPad()

        myFirstDevice.name = UIDevice.current.name
        myFirstDevice.model = UIDevice.current.model
        myFirstDevice.batteryLevel = Double(UIDevice.current.batteryLevel)
        myFirstDevice.systemVersion = UIDevice.current.systemVersion

        myFirstDevice.orientationIsPortrait = UIDevice.current.orientation.isPortrait

        myLabel.text = "Stretch #1 Completed\n\n" + getDeviceInfo(myFirstDevice)
    }

    @IBAction func onStretch2Pressed(_ sender: UIButton)
    {
        let name = UIDevice.current.name
        let model = UIDevice.current.model
        let batteryLevel = UIDevice.current.batteryLevel
        let systemVersion = UIDevice.current.systemVersion
        let screenWidth = (Float)(UIScreen.main.bounds.width)
        let screenHeight = (Float)(UIScreen.main.bounds.height)
        let orientationIsPortrait = UIDevice.current.orientation.isPortrait

        //Uncomment for the two lines below for Stretch #2
        //let mySecondDevice = iPad(Name: name, Model: model, BatteryLevel: batteryLevel, SystemVersion: systemVersion, ScreenWidth: screenWidth, ScreenHeight: screenHeight, Orientation: orientationIsPortrait)
       // myLabel.text = "Stretch #2 Completed\n\n" + getDeviceInfo(mySecondDevice)
    }

    @IBAction func onStretch3Pressed(_ sender: UIButton)
    {
        let name = UIDevice.current.name
        let model = UIDevice.current.model
        let batteryLevel = UIDevice.current.batteryLevel
        let systemVersion = UIDevice.current.systemVersion

        //Uncomment for the six lines below for Stretch #3
       // let myAppleDevice = AppleDevice(Name: name, Model: model, BatteryLevel: batteryLevel, SystemVersion: systemVersion)

       // let myThirdDevice = iPad(AppleDevice: myAppleDevice)

       // myThirdDevice.screenWidth = (Float)(UIScreen.main.bounds.width)
       // myThirdDevice.screenHeight = (Float)(UIScreen.main.bounds.height)
     //   myThirdDevice.orientationIsPortrait = UIDevice.current.orientation.isPortrait

      //  myLabel.text = "Stretch #3 Completed\n\n" + getDeviceInfo(myThirdDevice)
    }

    func getDeviceInfo(_ device: iPad) -> String {
        return  "Name: \(device.name)\n" +
                "Model: \(device.model)\n" +
                "Battery Level: \(device.batteryLevel)\n" +
                "System Version: \(device.systemVersion)\n" +
                "Screen Width: \(device.screenWidth)\n" +
                "Screen Height: \(device.screenHeight)\n" +
                "Orientation Is Portrait?: \(device.orientationIsPortrait)"
    }
}

