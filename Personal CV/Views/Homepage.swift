//
//  Homepage.swift
//  Personal CV
//
//  Created by Nikos Galinos on 13/5/23.
//

import SwiftUI

struct Homepage: View {
    var body: some View {
        
           VStack {
               ScrollView{
                   Group{
                       HStack{
                           Image("ProfilePic")
                               .resizable()
                               .scaledToFit()
                               .clipShape(Circle())
                               .overlay(
                                Circle()
                                    .stroke(.yellow, style: StrokeStyle(lineWidth: 5)))
                               .scaleEffect(0.7)
                           
                           
                           VStack(spacing: 5){
                               Text("Cristian Jiménez Hernández")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 21, weight: .bold))
                               
                               
                               Text("Desenvolupador Junior")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 16, weight: .regular))
                               
                               Text("C# Backend / Frontend")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 12, weight: .light))
                               
                               Text("EMAIL: cristian.jimenez@email.com")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 11, weight: .regular))
                               
                           }
                       }
                       
                       
                   }
                   Group{
                       HStack(spacing:40){
                           Link("Github", destination: URL(string: "https://github.com/cristianjimenezhernandezdev")!)
                               .foregroundColor(Color.white)
                               .font(.system(size: 16, weight: .regular))
                       }.scaledToFit()
                           .scaledToFit()
                   }
                   Group{
                       HStack{
                           Text("Experiencia i Formació")
                               .foregroundColor(Color.white)
                               .font(.system(size: 20, weight: .bold))
                           
                           Spacer()
                       }.padding()
                       
                       
                       HStack{
                           Text("✅ Suport Tècnic i manteniment informàtic")
                               .foregroundColor(Color.white)
                               .font(.system(size: 16, weight: .regular))
                           Spacer()
                           
                       }.padding(.bottom,8)
                       HStack{
                           Text("✅ Treball amb PostgreSQL i Integració amb aplicacions")
                               .foregroundColor(Color.white)
                               .font(.system(size: 16, weight: .regular))
                           Spacer()
                           
                       }.padding(.bottom,8)
                       
                       HStack{
                           Text("✅ Participació en el desenvolupament de projectes amb Kotlin Multiplatform")
                               .foregroundColor(Color.white)
                               .font(.system(size: 16, weight: .regular))
                           Spacer()
                           
                       }.padding(.bottom,8)
                       
                       HStack{
                           Text("✅ Coneixements Bàsics de API REST i integració de serveis")
                               .foregroundColor(Color.white)
                               .font(.system(size: 16, weight: .regular))
                           Spacer()
                           
                       }.padding(.bottom,8)
                       
                       HStack{
                           Text("✅ Implementació d'operacions CRUD")
                               .foregroundColor(Color.white)
                               .font(.system(size: 16, weight: .regular))
                           Spacer()
                           
                       }.padding(.bottom,8)
                       Group{
                           HStack{
                               Text("Hard Skills")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 20, weight: .bold))
                               
                               Spacer()
                           }.padding()
                           
                           HStack{
                               Text("👨‍💻 Programació: C#, Kotlin, SQL")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 16, weight: .regular))
                               Spacer()
                               
                           }.padding(.bottom,8)
                           
                           HStack{
                               Text("🛠️ Desenvolupament amb Jetpack Compose")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 16, weight: .regular))
                               Spacer()
                               
                           }.padding(.bottom,8)
                           
                           HStack{
                               Text("🛠️ Ús de Unity en el desenvolupament de Videojocs")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 16, weight: .regular))
                               Spacer()
                               
                           }.padding(.bottom,8)
                           
                           HStack{
                               Text("Desenvolupament Frontend: React.js")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 16, weight: .regular))
                               Spacer()
                               
                           }.padding(.bottom,8)
                           
                           HStack{
                               Text("📊 Nocions Swift, iOS")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 16, weight: .regular))
                               Spacer()
                               
                           }.padding(.bottom,8)
                           
                        
                           
                           HStack{
                               Text("🎟 Workflow Software: Jira i Confluence")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 16, weight: .regular))
                               Spacer()
                               
                           }.padding(.bottom,8)
                           
                           HStack{
                               Text("Experiència Laboral")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 20, weight: .bold))
                               Spacer()
                               
                           }.padding()
                           
                           
                           
                       }
                       Group{
                           
                           HStack{
                               Text("👷🏻‍♂️ Informàtic | Sancho")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 16, weight:.bold))
                               Spacer()
                               
                           }.padding(.bottom,15)
                           
                           HStack{
                               Text("11/2017 - 11/2020")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 14, weight:.regular))
                               Spacer()
                               
                           }.padding(.bottom,15)
                           
                           HStack{
                               Text("► Gestió i ús de l'ERP Sage")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 16, weight: .regular))
                               Spacer()
                               
                           }.padding(.bottom,6)
                           
                           HStack{
                               Text("► Manteniment i edició de pàgines web corporatives")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 16, weight: .regular))
                               Spacer()
                               
                           }.padding(.bottom,6)
                           
                           HStack{
                               Text("► Programació en VBA per a l'automatització de tasques")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 16, weight: .regular))
                               Spacer()
                               
                           }.padding(.bottom,6)
                           
                           HStack{
                               Text("► Creació i manteniment de catàlegs en línia i gestió de la botiga en línia a PrestaShop.")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 16, weight: .regular))
                               Spacer()
                               
                           }.padding(.bottom,6)
                           
                           
                           
                       }
                       Group{
                           HStack{
                               Text("Educació")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 20, weight: .bold))
                               Spacer()
                               
                           }.padding()
                           
                         
                           
                           HStack{
                               Text("🎓 Universitat de Girona")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 16, weight:.regular))
                               Spacer()
                               
                           }.padding(.bottom,8)
                           
                           
                           
                           HStack{
                               Text("Grau en Psicologia")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 14, weight: .regular))
                               Spacer()
                               
                           }.padding(.bottom,6)
                           
                           HStack{
                               Text("2011 -2015")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 14, weight: .regular))
                               Spacer()
                               
                           }.padding(.bottom,18)
                           
                           HStack{
                               Text("Grau en psicologia amb Formació en analisi del comportament, habilitats comunicatives i gestió de persones ")
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 13, weight: .regular))
                               Spacer()
                               
                           }.padding(.bottom,6)
                           
                           
                           
                           
                       }
                           
                       
                       
                       
                       
                   }
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   Spacer()
               }
           }
           .padding()
           .background(Color(white: 0.18))
           
       }
}

struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}
