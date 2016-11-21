//
//  OneViewController.swift
//  MixedProgrammingDemo
//
//  Created by baijf on 4/5/16.
//  Copyright © 2016 Junne. All rights reserved.
//

import UIKit

class OneViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    func swiftHelloWorld() {
        print("Swift Hello Wrold!");
    }
    
    func twoSum(_ nums:[Int], _ target:Int) -> [Int] {
        var result:[Int] =  []
        
        for i in 0..<nums.count {
            let first = nums[i]
            for j in (i+1)..<nums.count {
                let second = nums[j]
                if (first + second == target) {
                    result = [i,j]
                } else {
                    print("Not Find")
                }
            }
        }
        return result
    }
    
    func twoSumHashMap(_ nums:[Int], _ target: Int) -> [Int] {
        var result:[Int] = []
        var map:[Int:Int] = [:]
        for (index , x) in nums.enumerated() {
            let value = target - x
            if let anotherIndex = map[value] {
                result.append(anotherIndex)
                result.append(index)
                break
            } else {
                map[x] = index
            }
        }
        return result
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
