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
    @State var didPressEqual: Bool = false
    @State var isPositive: Bool = true
    
    
    let arr: [[String]] = [
        
        ["⌫", "AC", "%", "÷"],
        ["7", "8", "9", "x"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["+/-", "0", ".", "="]
    ]
    
    var body: some View {
        
        
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
        
        switch click{
        case "AC":
            resetCalc()
        case "⌫":
            if enteredValue.count > 1{
                enteredValue.removeLast()
                if !isSymbol{
                    if !isFirstNum && secondNum.count > 1{
                        secondNum.removeLast()
                    }else if isFirstNum{
                        firstNum.removeLast()
                    }else{
                        isSymbol = true
                        secondNum.removeLast()
                    }
                }else{
                    isSymbol = false
                    isFirstNum = true
                }
            }else{
                resetCalc()
            }
        case "=" :
            enteredValue = calculate(firstNum: firstNum, secondNum: secondNum, symbol: symbol)
            didPressEqual = true
           
            
        case "+/-" :
            
            if enteredValue != "0"{
                if isPositive && isFirstNum{
                    firstNum = "(" + "-" + firstNum + ")"
                    enteredValue = "\(firstNum)"
                    isPositive = false
                }else if !isPositive && isFirstNum{
                    firstNum = firstNum.replacingOccurrences(of: "-", with: "")
                    firstNum = firstNum.replacingOccurrences(of: "(", with: "")
                    firstNum = firstNum.replacingOccurrences(of: ")", with: "")
                    enteredValue = firstNum
                    isPositive = true
                }else if !isFirstNum && isPositive && !isSymbol{
                    secondNum = "-" + secondNum
                    enteredValue = "\(firstNum)\(symbol)(\(secondNum))"
                    isPositive = false
                }else if !isFirstNum && !isPositive && !isSymbol{
                    secondNum = secondNum.replacingOccurrences(of: "-", with: "")
                    enteredValue = "\(firstNum)\(symbol)\(secondNum)"
                    isPositive = true
                }
                
            }
//        case "%" :
        case "." :
            
            if isFirstNum && !firstNum.contains(".") {
                enteredValue += "."
                firstNum += "."
            }else if !secondNum.contains(".") && !isFirstNum{
                if secondNum.isEmpty{
                    secondNum += "0."
                    enteredValue += "0."
                }else{
                    secondNum += "."
                    enteredValue += "."
                }
            }
            
        case "+", "-", "x", "÷" :
            symbol = click
            
            if isSymbol{
                enteredValue.removeLast()
            }
            enteredValue += symbol
            isFirstNum = false
            isSymbol = true
            isPositive = true
            
        default :
            
            if didPressEqual{
                resetCalc()
            }
            isSymbol = false
            if enteredValue == "0"{
                enteredValue = click
                firstNum = click
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
        
//        
//        print("Entered value \(enteredValue)")
//        print("FirstNum \(firstNum)")
//        print("SecondNum \(secondNum)")
//        print("Symbol \(symbol)")
//        print("isFirst \(isFirstNum)")
//        print("isSymbol \(isSymbol)")
//        print("-------------------------------------------------")
//        
    }
    
    func calculate(firstNum: String, secondNum: String, symbol: String) -> String {
        
        let a = Double(firstNum) ?? 0
        let b = Double(secondNum) ?? 0
        var ans:Double = 0
        
        switch symbol{
        case "+":
            ans = a+b
        case "-":
            ans = a-b
        case "x":
            ans = a*b
        case "÷":
            if b == 0{
                return "Error"
            }else{
                ans = a/b
            }
            
        default:
            ans = a+b
        }
        
        if ans.truncatingRemainder(dividingBy: 1) == 0 {
            return "\(Int(ans))"
        }else{
            return String(format: "%.10g", ans)
        }
    }
    
    func resetCalc(){
        firstNum = ""
        secondNum = ""
        symbol = ""
        isFirstNum = true
        isSymbol = false
        didPressEqual = false
        enteredValue = "0"
    }
}

#Preview {
    ContentView()
}
