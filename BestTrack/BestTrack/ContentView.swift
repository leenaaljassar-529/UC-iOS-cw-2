//
//  ContentView.swift
//  BestTrack
//
//  Created by Leena Al Jassar on 25/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var image = "question"
    
    var body: some View {
        ZStack{
            Color.gray.opacity(0.1)
                .ignoresSafeArea()
        VStack{
       
        Text("ما هو المسار المفضل لديك")
            .padding()
            .font(.system(size: 30))
            .offset(y: 30)
            Image("\(image)")
                .resizable()
                .frame(width: 200, height:200)
                .padding()
        //   Spacer()
            
            VStack{
                
                Text("IOS")
                    .padding()
                    .font(.system(size: 25))
                    .frame(width: 300, height: 50)
                    .background(Color.blue.opacity(0.3))
                    .clipShape(Capsule())
                    .onTapGesture {
                        image = "ios"
                    }
                    .onLongPressGesture {
                            image = "question"
                            }
            Spacer()
                
                Text("Gamedev")
                    .padding()
                    .font(.system(size: 25))
                    .frame(width: 300, height: 50)
                    .background(Color.gray.opacity(0.4))
                    .clipShape(Capsule())
                    .onTapGesture {
                        image = "game"
                    }
                    .onLongPressGesture {
                            image = "question"
                            }

                Spacer()
                Text("Web")
                    .padding()
                    .font(.system(size: 25))
                    .frame(width: 300, height: 50)
                    .background(Color.teal.opacity(0.3))
                    .clipShape(Capsule())
                    .onTapGesture {
                        image = "web"
                    }
                    .onLongPressGesture {
                            image = "question"
                            }
                Spacer()
                
                Text("Android")
                    .padding()
                    .font(.system(size: 25))
                    .frame(width: 300, height: 50)
                    .background(Color.green.opacity(0.4))
                    .clipShape(Capsule())
                    .onTapGesture {
                        image = "android"
                    }
                    .onLongPressGesture {
                            image = "question"
                            }
                Spacer()
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
