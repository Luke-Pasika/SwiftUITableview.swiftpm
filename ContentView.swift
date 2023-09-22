import SwiftUI

struct ContentView: View {
    @State var text = ""
    @State var finalAnswer = ""
    var body: some View {
        VStack {
            
            
            Text("Enter Decimal Value")
                .padding(.bottom)
            TextField("Type here", text: $text)
                .frame(width: 90, height: .infinity, alignment: .center)
                .padding(.bottom)
            
            Button("PRESS ME FR") {
                ButtonPress()
            }
            Text(finalAnswer)
        
            
            
            }
        }
    
    
    func ButtonPress() {
        
        var decimalValue = Int(text)!
        var binaryNumber = ""
        while(decimalValue > 0) {
            if ((decimalValue & 1) == 1){
                binaryNumber += "1"
            }
            else {
                binaryNumber += "0"
            }
            
            decimalValue >>= 1
        }
    
        finalAnswer = "Number is, \(String(binaryNumber.reversed()))"
                
    }
    
    

    
}
