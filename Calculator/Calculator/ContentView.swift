//
//  ContentView.swift
//  Calculator
//
//  Created by Devendra kumar narware on 26/06/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var enteredValue: String = "0"
    @State var firstNum: String = ""
    @State var secondNum: String = ""
    @State var symbol: String = ""
    @State var isFirstNum: Bool = true
    @State var isSymbol: Bool = false
    
    var body: some View {
        
        let arr: [[String]] = [
            
            ["del", "AC", "%", "÷"],
            ["7", "8", "9", "x"],
            ["4", "5", "6", "-"],
            ["1", "2", "3", "+"],
            ["+/-", "0", "•", "="]
        ]
        
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            
            VStack{
                
                Spacer()
                HStack{
                    
                    Spacer()
                    
                    Text(enteredValue)
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .padding()
                }
                // this is the output area
                VStack{
                    
                    ForEach(arr, id: \.self){ row in
                        HStack{
                            ForEach(row, id: \.self){ col in
                                Button{
                                    didTap(click: col)
                                }label: {
                                    Text(col)
                                        .font(.system(size: 32))
                                        .frame(width: 70, height: 70)
                                        .background(Color.gray)
                                        .foregroundColor(.white)
                                        .cornerRadius(35)
                                }
                            }
                        }
                    }
                    
                }
            }
        }
    }
    
    func didTap(click: String){
        
        print("Entered value \(enteredValue)")
        print("FirstNum \(firstNum)")
        print("SecondNum \(secondNum)")
        print("Symbol \(symbol)")
        print("isFirst \(isFirstNum)")
        print("isSymbol \(isSymbol)")
        
        switch click{
        case "AC":
            resetCalc()
        case "del":
            if enteredValue.count > 1{
                enteredValue.removeLast()
                isSymbol = false
                if !isSymbol{
                    if !isFirstNum && !secondNum.isEmpty{
                        secondNum.removeLast()
                    }else{
                        firstNum.removeLast()
                    }
                }
            }else{
                enteredValue = "0"
            }
        case "=" :
            enteredValue = calculate(firstNum: firstNum, secondNum: secondNum, symbol: symbol)
           
            
//        case "+/-" :
//        case "%" :

        case "+", "-", "x", "÷" :
            symbol = click
            enteredValue += click
            isFirstNum = false
            isSymbol = true
            
        default :
            isSymbol = false
            if enteredValue == "0"{
                enteredValue = click
            }else{
                enteredValue += click
                if isFirstNum{
                    firstNum = enteredValue
                }
                else{
                    secondNum += click
                }
            }
        }
        
        
    }
    
    func calculate(firstNum: String, secondNum: String, symbol: String) -> String {
        
        let a = Int(firstNum) ?? 0
        let b = Int(secondNum) ?? 0
        
        switch symbol{
        case "+":
            return("\(a+b)")
        case "-":
            return("\(a-b)")
        case "x":
            return("\(a*b)")
        case "÷":
            if b == 0{
                return "Error"
            }else{
                return ("\(a/b)")
            }
            
        default:
            print(symbol)
        }
        
        return ""
    }
    
    func resetCalc(){
        firstNum = ""
        secondNum = ""
        symbol = ""
        isFirstNum = true
        enteredValue = "0"
    }
}

#Preview {
    ContentView()
}
