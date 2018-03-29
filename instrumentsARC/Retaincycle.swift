//
//  ViewController.swift
//  instrumentsARC
//
//  Created by Ravi Pinamacha on 3/7/18.
//  Copyright © 2018 Divya. All rights reserved.
//

import UIKit

class Retaincycle: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("first testing")
        var david: Person? = Person()
        var iosdDev: Job? = Job()
        
        david?.job = iosdDev
        iosdDev?.person = david
        
        david = nil
        iosdDev = nil
    }

}
//parent class
class Person{
    var job: Job?
    deinit {
        print("Person class memory deallocated")
    }
}
//child class
class Job {
   weak var person: Person?
    deinit {
        print("Job class memory deallocated")
    }
}
//person has a variable job
//job has a variable person
//david refering person
//iosdev refenring job
//then person refereing to job and job is referer to person.if we nil david and ios dev nill but still referent count is one person to job  and job to person.
//until retian count is zero memory is not dealloted.so for that u need we need to week or unowned the any of the class variable of parent class
//
