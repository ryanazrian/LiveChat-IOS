//
//  ChatViewController.swift
//  LiveChatIOS
//
//  Created by PFY-Ryan ME on 13/05/2024.
//

import UIKit

class ChatViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    
    struct User {
        let id: String
        let username: String
        let email: String
    }
    
    let names: [User] = [
        User(id: "1", username: "ryanazrian", email: "azrian.ryan@gmail.com"),
        User(id: "2", username: "ryansach", email: "ryansyach@gmail.com")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension ChatViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Chat", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "ChatDetailViewController")
        self.present(controller, animated: true, completion: nil)
        print("You tapped Me", indexPath);
    }
}

extension ChatViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let user = names[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.email.text = user.email
        cell.username.text = user.username
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72
    }
}
