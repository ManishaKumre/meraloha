//
//  Signupview.swift
//  MeralohaUI
//
//  Created by Mac on 25/07/23.
//

import SwiftUI

struct Signupview: View {
    //    @State private var name: String = ""
    @State private var email: String = ""
    //        @State private var password: String = ""
    @State private var isSignupValid: Bool = false
    
    var body: some View {
        GeometryReader{ geometry in
        VStack (){
            Image("Logo").resizable().frame(width: 180,height: 180).aspectRatio( contentMode: .fit)
            
            Text("SignUp")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            TextField("Email", text: $email)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.emailAddress)
            
            
            
            Button(action: {
                // Implement the signup logic here
                // For example, you can call a function to process the signup information and perform the signup action.
                // You can also navigate to the next view or display an alert for successful signup.
                
                // For this example, let's just print the signup information.
                
                print("Email: \(email)")
                
            }) {
                Text("Sign Up")
            }
            .disabled(!isSignupValid)
        }
        .padding()
        
        .onChange(of: email, perform: { _ in
            validateSignupForm()
        })
        .frame(width: geometry.size.width,height: geometry.size.height)
    }
    
}
        private func validateSignupForm() {
            // Implement your validation logic here
            // For simplicity, we'll just check if all fields are non-empty.
            isSignupValid =  !email.isEmpty
        }
    }

struct Signupview_Previews: PreviewProvider {
    static var previews: some View {
        Signupview()
    }
}
