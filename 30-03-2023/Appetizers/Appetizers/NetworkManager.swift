//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Kazi Omar Faruk on 30/3/23.
//

import UIKit

final class NetworkManager{
    
    static let shared = NetworkManager()
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerURL = baseURL + "appetizers"
    
    private let cache = NSCache<NSString, UIImage>()
    
    private init(){}
    
    func getAppetizers(completed: @escaping (Result<[Appetizer], APError>)->()){
        
        guard let url = URL(string: appetizerURL) else{
            completed(Result.failure(APError.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)){
            (data, response, error) in
            
            if let _ = error {
                completed(Result.failure(APError.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(Result.failure(APError.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(Result.failure(APError.invalidData))
                return
            }
            
            do {
                let result = try JSONDecoder().decode(AppetizerResponse.self, from: data)
                completed(Result.success(result.request))
            }
            catch {
                completed(Result.failure(APError.invalidData))
            }

        }
        
        task.resume()
        
        
    }
    
    func downloadImage(fromURLString urlString: String, completed: @escaping (UIImage?) -> ()){
        let cacheKey = NSString(string: urlString)
        
        if let image = cache.object(forKey: cacheKey){
            completed(image)
            return
        }
        
        guard let url = URL(string: urlString) else {
            completed(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)){
            (data, response, error) in
            guard let data = data, let image = UIImage(data: data) else {
                completed(nil)
                return
            }
            self.cache.setObject(image, forKey: cacheKey)
            completed(image)
        }
        
        task.resume()
        
        
            
        
    }
    
}
