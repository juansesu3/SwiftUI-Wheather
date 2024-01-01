//
//  ContentView.swift
//  SwiftUI-Wheather
//
//  Created by Juan Suarez on 13/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack{
                CityTextView(cityName: "Friburg, CH")
                MainWeatherView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 5)
                HStack(spacing:20){
                    WeatherDayView(dayOfWeek:"TUE",
                                   imageName:"cloud.hail.fill",
                                   temperature: 2)
                    WeatherDayView(dayOfWeek:"WED",
                                   imageName:"cloud.snow.fill",
                                   temperature: 3)
                    WeatherDayView(dayOfWeek:"THU",
                                   imageName:"wind.snow",
                                   temperature: 1)
                    WeatherDayView(dayOfWeek:"FRI",
                                   imageName:"cloud.sun.fill",
                                   temperature: 5)
                    WeatherDayView(dayOfWeek:"SAT",
                                   imageName:"snow",
                                   temperature: 0)
                }
                Spacer()
                Button{
                    isNight.toggle()
                } label:{
                    WeatherButton(title: "Change Day Time", 
                                  textColor: .blue,
                                  backgroundColor:.white)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    var body: some View {
        
        VStack(){
            Text(dayOfWeek).font(.system(size:23, weight: .medium, design: .default))
                .foregroundColor(.white)
            VStack(spacing:10){
                Image(systemName: imageName)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 40, height: 40)
                Text("\(temperature)°")
                    .font(.system(size: 23, weight: .medium))
                    .foregroundColor(.white)
            }
        }
    }
}

struct BackgroundView: View {
    
  
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black: .blue, 
                                                   isNight ? .gray : Color(.lightBlue)]), startPoint: .topLeading,
            endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct CityTextView: View{
    
    var cityName: String
    
    var body: some View{
        Text(cityName)
            .font(.system(size:23, weight: .medium, design: .default))
                .foregroundColor(.white)
                .padding()
    }
}

struct MainWeatherView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing:10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
            
        }
        .padding(.bottom, 40)
    }
    
}


