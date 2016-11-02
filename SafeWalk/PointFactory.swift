//
//  PointFactory.swift
//  RPrepSearch
//
//  Created by Nidhi on 9/24/16.
//  Copyright © 2016 Nidhi. All rights reserved.
//
/*
import UIKit

class PointFactory: NSObject {
    
    private var resultDictionary = NSMutableDictionary();
    private var listOfPoints = NSMutableArray();
    
    private func loadPointData()
    {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true) as NSArray
        
        let documentsDirectory = paths[0] as! String
        
        let doc = NSURL(string: documentsDirectory)
        let path = doc!.appendingPathComponent("PointData.plist")
        
        let stringPath = "\(path)" //this is the file path as a string
        
        
        //get the file manager to work with our file
        let fileManager = FileManager.default
        
        
        
        //check if file exists
        if(!fileManager.fileExists(atPath: stringPath))
        {
            // If it doesn't, copy it from the default file in the Bundle
            if let bundlePath = Bundle.main.path(forResource: "PointData", ofType: "plist")
            {
                self.resultDictionary = NSMutableDictionary(contentsOfFile: bundlePath)!
                print(self.resultDictionary)
                //fileManager.copyItemAtPath(bundlePath, toPath: path)
                
            }
            else
            {
                print("PointData.plist not found. Please, make sure it is part of the bundle.")
            }
        }
        else
        {
            print("PointData.plist already exits at path.")
            // use this to delete file from documents directory
            //fileManager.removeItemAtPath(path, error: nil)
        }
        
    }
    
    
    func getListOfPoints() -> NSMutableArray
    {
        
        
        //Load the school data from the pList first
        loadPointData()
        
        
        //get the root dictionary that contains an array of schools
        let  arrayOfPoints = resultDictionary.object(forKey: "MarkerObjectList") as! [Dictionary]
        
        //parse the dictionary to extract the data
        //NOTE: arrayOfSchools!.count should be used but we
        //do not have all the schools in the list as yet
       
        
        for i in 0..<((arrayOfPoints as AnyObject).count) {
            
            let points = arrayOfPoints[i] as Point!
            let longitude = points.value(forKey: "longitude");
            let latitude = points.value(forKey: "latitude");
            
            let crimes = points.value(forKey: "crime");
            
            
            
            let currentPoint = Point(longitude: longitude as!Double, lattitude: latitude as!Double, crimes: crimes as! Int)
            
            
            
            //extract each piece of data
            
            
            
            
            
            //store the school object
            self.listOfPoints.add(currentPoint)
            
            
        }
        
        
        
        return self.listOfPoints
    }
    
    
    
    
    
    
    
}
*/
