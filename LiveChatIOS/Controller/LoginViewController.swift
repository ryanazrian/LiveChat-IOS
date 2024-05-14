//
//  LoginViewController.swift
//  LiveChatIOS
//
//  Created by PFY-Ryan ME on 13/05/2024.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onPressLogin() {
        let storyboard = UIStoryboard(name: "Chat", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "ChatViewController")
        self.present(controller, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
