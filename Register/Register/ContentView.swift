//
//  ContentView.swift
//  Register
//
//  Created by DA MAC M1 161 on 2023/05/19.
//

import SwiftUI


struct ContentView: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var displayText = ""
    @State private var isRegistered = false
    
    var body: some View {
        
        VStack (spacing:30){
            
            Image(systemName: "scribble.variable")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            TextField("Username", text: $username).padding(.horizontal,100)
            
            SecureField("Passsword", text: $password).padding(.horizontal,100)
            SecureField("Confirm Passsword", text: $confirmPassword).padding(.horizontal,100)
            Text(displayText)
                .foregroundColor(Color(.blue))
            Button("Register") {
                if ((password==confirmPassword)) {
                    isRegistered=true
                    displayText = "Succesful Registration"
                    Text(displayText)
                } else {
                    
                    displayText = "Please make sure the passwords, are the same"
                    Text(displayText)
                    // Show error message for invalid registration
                }
            }
            .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                        .alert(isPresented: $isRegistered) {
                            Alert(title: Text("Registration Successful"), message: Text("Welcome to the Dashboard"), dismissButton: .default(Text("OK")))
                        }
                        
                        NavigationLink(destination: Dashboard(), isActive: $isRegistered) {
                            EmptyView()
                        }
            
            }
        }
    }
func isValidPassword(_ password: String) -> Bool {
    // Check if password has at least 8 characters
    guard password.count >= 8 else {
        return false
    }
    let passwordRegex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).+$"
    let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
    return passwordPredicate.evaluate(with: password)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
