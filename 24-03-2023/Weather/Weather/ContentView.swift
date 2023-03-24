//
//  ContentView.swift
//  Weather
//
//  Created by Admin on 24/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            // BackgroundView(topColor: .blue, bottomColor: Color("lightBlue"))
            BackgroundView(isNight: true)

            VStack{
                Text("Dhaka, BD")
                    .font(.system(size: 32, weight: .light, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                MainWeatherStatusView()
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 20){
                        WeatherDayView(dayOfWeek: "TUE", imageName: "sun.max.fill", temperature: 23)
                        WeatherDayView(dayOfWeek: "WED", imageName: "wind.snow", temperature: 30)
                        WeatherDayView(dayOfWeek: "THU", imageName: "sunset.fill", temperature: 29)
                        WeatherDayView(dayOfWeek: "FRI", imageName: "snow", temperature: 28)
                        WeatherDayView(dayOfWeek: "SAT", imageName: "wind.snow", temperature: 27)
                        WeatherDayView(dayOfWeek: "SAT", imageName: "sun.max.fill", temperature: 27)
                        WeatherDayView(dayOfWeek: "SAT", imageName: "wind.snow", temperature: 27)
                        WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.sun.fill", temperature: 27)
                    }
                }
                
                Spacer()
                
                Button{
                    print("Tapped")
                } label: {
                    ChangeWeatherButton(buttonTitle: "Change Day Time!")
                }
                Spacer()
                
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 18, weight: .light, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName).renderingMode(.original).resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40, alignment: .center)
            Text("\(temperature)°")
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    @State var isNight: Bool
    var body: some View {
        LinearGradient(colors: [isNight ? .black : .blue, Color("lightBlue")], startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
    }
}

struct MainWeatherStatusView: View {
    var body: some View {
        VStack{
            Image(systemName: "cloud.sun.fill").renderingMode(.original).resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 120, alignment: .center)
            
            Text("76°")
                .font(.system(size: 70, weight: .light, design: .default))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}

struct ChangeWeatherButton: View {
    var buttonTitle: String
    var body: some View {
        Text(buttonTitle)
            .frame(width: 280, height: 50)
            .background(LinearGradient(colors: [.purple, .indigo], startPoint: .topLeading, endPoint: .bottomTrailing))
            .foregroundColor(.white)
            .font(.system(size: 20, weight: .light, design: .default))
            .cornerRadius(10)
        
    }
}
