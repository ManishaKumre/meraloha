//
//  ContentView.swift
//  MeralohaUI
//
//  Created by Mac on 24/07/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var Signup = false
 
    var body: some View {
        GeometryReader{ geometry in
            VStack (spacing: 20){
                Image("Logo").resizable().frame(width: 180,height: 180)
                Text("Signin")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                
                TextField("Type Email Address / Mobile", text: $username)
                    .padding()
//                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    
                    .border(Color.black)
                    
                    .padding(.horizontal)
                    
                
                SecureField("Password", text: $password)
                    .padding()
//                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .border(Color.black)
                    .padding(.horizontal)
                
                Button(action: {
                    // Add your login logic here
                    // You can check the entered username and password and perform authentication
                    // For simplicity, let's just print the credentials for now
//                    print("Username: \(username)")
//                    print("Password: \(password)")
                }) {
        
                    Spacer(minLength: 180)
                    Text("  Forgot Password?")
                        .foregroundColor(.blue)
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: 250)
                       
                        .cornerRadius(40)
                        .padding(.horizontal)
                        
                }.buttonStyle(PlainButtonStyle())
              
                Button(action: {
                    // Add your login logic here
                    // You can check the entered username and password and perform authentication
                    // For simplicity, let's just print the credentials for now
                    print("Username: \(username)")
                    print("Password: \(password)")
                }) {
                    Spacer()
                    Text("Submit")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .cornerRadius(40)
                        .padding(.horizontal)
                }.buttonStyle(PlainButtonStyle())
                
                Spacer()
                HStack{
                    Text("Don't have an account? ")
                    Button(action: {
                        self.Signup.toggle()
                    }) {
                        
                        Text("SignUp")
                            .foregroundColor(.blue)
                            .font(.headline)
                            
                        
                    }.buttonStyle(PlainButtonStyle()).fullScreenCover(isPresented: $Signup, content:{ Signupview()})
                }
            }
            
            .padding()
            .frame(width: geometry.size.width,height: geometry.size.height)
            
            
        }
        
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
