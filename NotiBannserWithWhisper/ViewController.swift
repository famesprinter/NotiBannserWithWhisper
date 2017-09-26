import UIKit
import Whisper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let announcement = Announcement(title: "Your title",
                                        subtitle: "Your subtitle",
                                        image: UIImage(named: "avatar"))
        
        Whisper.show(shout: announcement,
                     to: navigationController!,
                     completion: {
            print("The shout was silent.")
        })
    }
}

