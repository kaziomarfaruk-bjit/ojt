//
//  ViewController.swift
//  WebSocket-Messenger
//
//  Created by Admin on 20/3/23.
//

import UIKit
import Combine

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, URLSessionWebSocketDelegate {
    
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var tableView: UITableView!
    var viewModel: ViewModel = ViewModel()
    private var cancellables: Set<AnyCancellable> = []
        
    @IBOutlet weak var chatTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        setupBinders()
        viewModel.getData()
    }
    
    
    private func setupBinders() {
        viewModel.$chatHistory.sink{ data in
            DispatchQueue.main.async {
                self.tableView.reloadData()
                
                /*if data.count > 0 {
                    let indexPath = IndexPath(row: data.count-1, section: 0)
                    self.tableView.scrollToRow(at: indexPath, at: .bottom, animated: true)
                } */
            }

        }.store(in: &cancellables)
    }
    
    
    @IBOutlet weak var msgText: UITextField!
    
    
    @IBAction func onClickSend(_ sender: Any) {
        let message = msgText.text
        if let message = message {
            viewModel.sendMessage(messsage: message)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.chatHistory.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.chatLabel.text = viewModel.chatHistory[indexPath.row].message
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        180
    }
    
    
    
    


}

