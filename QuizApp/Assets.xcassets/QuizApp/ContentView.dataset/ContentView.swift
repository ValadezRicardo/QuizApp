//
//  ContentView.swift
//  QuizApp
//
//  Created by Jose Ricardo Valadez Rojas on 02/05/26.
//

import SwiftUI

struct ContentView: View {
    @State private var resultado: String = ""
    @State private var mostrarResultado: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                
                // Imagen
                Image("529d43d8-6b5d-480a-b54f-c22684c07948")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(12)
                    .padding(.horizontal)
                
                // Pregunta
                Text("¿Cuál es la capital de Francia?")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                // Opcion A
                Button(action: {
                    resultado = "Correcto Paris es la capital"
                    mostrarResultado = true
                }) {
                    Text("A) Paris")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                // Opcion B
                Button(action: {
                    resultado = "Incorrecto Paris es la capital"
                    mostrarResultado = true
                }) {
                    Text("B) Mexico")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .foregroundColor(.primary)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                // Resultado
                if mostrarResultado {
                    Text(resultado)
                        .font(.headline)
                        .padding()
                        .multilineTextAlignment(.center)
                        .transition(.opacity)
                }
                
                Spacer()
            }
            .navigationTitle("Trivia Quiz")
            .animation(.easeInOut, value: mostrarResultado)
        }
    }
}

#Preview {
    ContentView()
}
