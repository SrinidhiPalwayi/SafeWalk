//
//  ViewController.swift
//  SafeWalk
//
//  Created by Anushk Mittal on 9/24/16.
//  Copyright © 2016 Anushk Mittal. All rights reserved.
//

import UIKit
import GoogleMaps


class ViewController: UIViewController {
    
  //  @IBOutlet weak var viewMap: GMSMapView!
    
    //@IBOutlet weak var mapV: GMSMapView!

  //  @IBOutlet weak var mapV: GMSMapView!
    
  //  @IBOutlet weak var mapView1: GMSMapView!
  //  @IBOutlet weak var subView: GMSMapView!
    
    let camera = GMSCameraPosition.camera(withLatitude: 33.775417, longitude: -84.396361, zoom: 15)


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let position3 = CLLocationCoordinate2DMake(33.77131, -84.392067)
        let marker3 = GMSMarker(position: position3)
        marker3.title = "No. of Crimes: "+String(10)
        marker3.map = self.view as! GMSMapView?
        
        let position6 = CLLocationCoordinate2DMake(33.77413608, -84.39881802)
        let marker6 = GMSMarker(position: position6)
        marker6.title = "No. of Crimes: "+String(12)
        marker6.map = self.view as! GMSMapView?
        
        let position9 = CLLocationCoordinate2DMake(33.77607454, -84.39299968)
        let marker9 = GMSMarker(position: position9)
        marker9.title = "No. of Crimes: "+String(16)
        marker9.map = self.view as! GMSMapView?
        
        let position10 = CLLocationCoordinate2DMake(33.77632934, -84.38995185)
        let marker10 = GMSMarker(position: position10)
        marker10.title = "No. of Crimes: "+String(20)
        marker10.map = self.view as! GMSMapView?
        
        
        let position11 = CLLocationCoordinate2DMake(33.777007, -84.405706)
        
        let marker11 = GMSMarker(position: position11)
        
        marker11.title = "No. of Crimes is 8"
        
        marker11.map = self.view as! GMSMapView?
        
        
        let position12 = CLLocationCoordinate2DMake(33.77716232
            , -84.39618136)
        let marker12 = GMSMarker(position: position12)
        
        marker12.title = "No. of Crimes is 11"
        
        marker12.map = self.view as! GMSMapView?
        let position13 = CLLocationCoordinate2DMake(33.77895641
            , -84.40131466)
        let marker13 = GMSMarker(position: position13)
        marker13.title = "No. of Crimes is 11"
        marker13.map = self.view as! GMSMapView?
        
        
        let position20 = CLLocationCoordinate2DMake(33.77910743, -84.40662487)
        let marker20 = GMSMarker(position: position20)
        //counter++;
        marker20.title = "No. of Crimes is 15"
        marker20.map = self.view as! GMSMapView?
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 //   @IBOutlet weak var mapV: UIView!
    
    override func loadView() {
  
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        self.view = mapView
    }

}

