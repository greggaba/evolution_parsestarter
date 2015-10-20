/**
* Copyright (c) 2015-present, Parse, LLC.
* All rights reserved.
*
* This source code is licensed under the BSD-style license found in the
* LICENSE file in the root directory of this source tree. An additional grant
* of patent rights can be found in the PATENTS file in the same directory.
*/

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /* Adding a row
        let object = PFObject(className: "messages")
        object.setObject("My name is Tanmay Bakshi", forKey: "message")
        object.setObject(1, forKey: "number")
        try! object.save() */
        /* Retrieve all rows
        let query = PFQuery(className: "messages")
        let objects = try! query.findObjects()
        var finalObjects = [[String: AnyObject]]()
        for j in objects {
            finalObjects.append([:])
            finalObjects[finalObjects.count-1]["message"] = j.valueForKey("message")! as! String
            finalObjects[finalObjects.count-1]["number"] = j.valueForKey("number")! as! Int
        }
        print(finalObjects) */
        /* Update a row
        let query = PFQuery(className: "messages")
        query.whereKey("number", equalTo: 1)
        let object = try! query.getFirstObject()
        object.setObject("YAY! IT WORKED.", forKey: "message")
        try! object.save() */
        /* Delete a row
        let query = PFQuery(className: "messages")
        query.whereKey("number", equalTo: 1)
        let object = try! query.getFirstObject()
        try! object.delete() */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
