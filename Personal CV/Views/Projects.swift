//
//  Projects.swift
//  Personal CV
//
//  Created by Nikos Galinos on 13/5/23.
//

import SwiftUI

struct Projects: View {
    var body: some View {
        VStack{
            ScrollView{
                HStack{
                    Text("Projectes i Assoliments")
                        .foregroundColor(Color.white)
                        .font(.system(size: 30, weight: .bold))
                    
                    Spacer()
                }.padding()
                
                HStack{
                    Text("Tots els projectes creats durant el meu procés d'aprenentatge per obtenir coneixements (bases sòlides en programació POO) estan emmagatzemats al meu GitHub personal. A continuació podeu trobar alguns projectes dels quals estic molt orgullós i que mostren els meus coneixements sobre desenvolupament backend i front-end en Kotlin")
                        .foregroundColor(Color.white)
                        .font(.system(size: 14, weight: .regular))
                    
                    Spacer()
                }.padding(.bottom,20)
                
                Group{
                    
                    //1
                    DisclosureGroup{
                        
                        Text("Desenvolupament d'AgriSync, aplicació de de gestió de dades agricoles orientada a técnics a una base de dades centralitzada.")
                            .foregroundColor(Color.white)
                            .font(.system(size: 14, weight: .regular))
                        
                    } label : {
                        Text("1️⃣ AgriSync")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20, weight: .bold))
                            .padding()
                        
                    }
                    
                    
                    //2
                    DisclosureGroup{
                        
                        Text("Desenvolupament d'un videojoc tipus Flappy Bird per android utilitzant unity. El projecte inclou gestió de físiques bàsiques, detecció de col·lisons sistema de puntuació i interficie d'usuari")
                            .foregroundColor(Color.white)
                            .font(.system(size: 14, weight: .regular))
                        
                    } label : {
                        Text("2️⃣ Videojoc Flappy")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20, weight: .bold))
                            .padding()
                        
                    }
                    
                
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                
                
                
                
                
                
                
                
                
                Spacer()
            }.padding()
                .background(Color(white: 0.18))
            
            
            
            
            
            
            
            
            
            
        }
        
        }
        
    }
        


struct Projects_Previews: PreviewProvider {
    static var previews: some View {
        Projects()
    }
}
