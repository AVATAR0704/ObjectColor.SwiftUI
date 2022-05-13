//
//  ContentView.swift
//  ObjectColor
//
//  Created by Macservis on 13/05/22.
//

import SwiftUI

struct HomeScreen: View {
   
        @State var background: Color = Color.white
        
        @State var object: String = "Object"

      
        let objects: [[Object]] = [
            [
              Fruit(name: "apple", color: Color.red.opacity(0.7)),
              Fruit(name: "ananas",color: Color.yellow.opacity(0.7)),
              Fruit(name: "lemon", color: Color.yellow),
              Fruit(name: "orange", color: Color.orange)
            ],
            [
                Vegetables(name: "carrot", color: Color.orange),
                Vegetables(name: "potato", color: Color.brown),
                Vegetables(name: "onion", color: Color.purple),
                Vegetables(name: "turnip", color: Color.brown.opacity(0.7))
            
            ],
            [
              Fruit(name: "apple", color: Color.red.opacity(0.7)),
              Fruit(name: "ananas",color: Color.yellow.opacity(0.7)),
              Fruit(name: "lemon", color: Color.yellow),
              Fruit(name: "orange", color: Color.orange)
            ],
            [
                Vegetables(name: "carrot", color: Color.orange),
                Vegetables(name: "potato", color: Color.brown),
                Vegetables(name: "onion", color: Color.purple),
                Vegetables(name: "turnip", color: Color.brown.opacity(0.7))
            
            ]
        ]
        
      
        
        
        
        var body: some View {
            
            ZStack {
                
               // background
                background.edgesIgnoringSafeArea(.all)
              
                
                //Contents
        
                
                VStack {
                  
                    Text("Object Colors")
                        .font(.largeTitle)
                        .bold()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .shadow(radius: 10)
                    
                    Spacer()
                        .frame(height: 10)
                    
                    Text(object)
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .padding(.horizontal, 30)
                        .foregroundColor(.black)
                        .background(
                            Capsule()
                                .fill(
                                  LinearGradient(colors:
                                                    [
                                                        .blue,.red,
                                                        .white,.red,
                                                        .green],
                                                 startPoint:
                                                        .top,
                                                 endPoint:
                                                        .bottom)
                                )
                        )
                        .shadow(
                                color: Color.black,
                                radius: 10,
                                x: 10,
                                y: 10
                               )
                        
                        
                        
                    
                    
                    Spacer()
                        .frame(height: 20)
                    
                    

                    ScrollView {
                        
                     
                        VStack(spacing: 20) {
                            
                        
                          ForEach(0..<objects.count) { i in
                              
                            
                              ScrollView(.horizontal,showsIndicators: false) {
                                  
                                  HStack(spacing: 15) {
                                      
                                      ForEach(0..<objects[i].count) { j in
                                          
                                          
                                          Button {
                                              self.background = objects[i][j].color!
                                              
                                              
                                              self.object = objects[i][j].name!
                                              
                                              
                                          } label: {
                                              
                                              Image("\(objects[i][j].name!)")
                                                  .resizable()
                                                  .scaledToFill()
                                                  .frame(width: 150, height: 150)
                                                  .clipped()
                                                  .cornerRadius(10)
                                                  .shadow(radius: 10,x:10,y: 10)
                                                  .padding()
                                              
                                          }
                                      }
     
                                  }
                                  
                                  
                              }
      
                          }
     
                        }
                        
                        
                    }
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding(.horizontal, 8)
                  //  .padding(.bottom, 10)
                    
                    
                    
                    
                    Button {
                        
                        self.background = Color.white
                        self.object = "Object"
                        
                    } label: {
                     
                        Text("Refresh")
                            .font(SwiftUI.Font.largeTitle)
                            .bold()
                            .foregroundColor(SwiftUI.Color.white)
                            .padding()
                            .padding(.horizontal,10)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .shadow(color: SwiftUI.Color.black, radius: 10, x: 10, y: 10)
                        
                     
                        
                        
                    }

                }

            }
 
        }
 
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
