//
//  ViewModel.swift
//  WebSocket-Messenger
//
//  Created by Admin on 21/3/23.
//

import Foundation
import Combine

class ViewModel{
    
    private var webSocket: URLSessionWebSocketTask!
    
    @Published var isLoading: Bool = false
    
    @Published var chatHistory: [ChatModel] = []
    
    var userName = "kazi"
    
     init(){
        //super.init()
        let urlSession = URLSession(configuration: .default)
        webSocket = urlSession.webSocketTask(with: URL(string: "ws://127.0.0.1:8080/webSocketChat")!)
        webSocket.resume()
    }
    
    func setUserName(name: String){
        userName = name
    }
    
    func sendData(chat: String, completion: @escaping (String)->Void){
        // let message = URLSessionWebSocketTask.Message.string(chat)
        let message = URLSessionWebSocketTask.Message.string(
            """
            {"user": "\(userName)", "message": "\(chat)"}
            """
        )
        webSocket.send(message){
            error in
            print("Socket err: ", error)
        }
    }
    
    // completion: @escaping (String)->Void
    func getData(){
        isLoading = true
        webSocket.receive{
            result in
            switch result{
                case .failure(let error):
                print("Something wrong! \(error.localizedDescription)")
                case .success(let message):
                    switch message{
                        case .data(let data):
                            print(data)
                        
                        case .string(let message):
                            guard
                                let data = message.data(using: .utf8),
                                let chats = try? JSONDecoder().decode([ChatModel].self, from: data) else {
                                print("Error")
                                return
                            }
                            self.chatHistory = chats
                            self.isLoading = false
                        
                        default: print("Unknown!")
                    }
                    self.getData()
            }
        }
    }
    
    
    func sendMessage(messsage: String){
        isLoading = true
        sendData(chat: messsage){result in
            self.isLoading = false
        }
    }

    
}


struct ChatModel: Codable{
    var user: String
    var message: String
}

struct ChatHistory: Codable{
    var data: [ChatModel]
}



