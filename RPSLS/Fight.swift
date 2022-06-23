//
//  Fight.swift
//  RPSLS
//
//  Created by student15 on 2/17/22.
//


import SwiftUI

struct Fight: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var btnBack : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        
        
            }) {
                HStack {
                    Text("Back")
                }
            }
        }
    
  
    
    var difficulty = ""
    @State var PlayerOne = "Filler"
    @State var Bot = "Filler"
    @State var AI = "Filler"
    @State  var BotPick = true
   
    //Winners
    @State var Winner = "filler"
    @State var WinnerTwo = "Filler"
    @State var winnerThree = "Filler"
    
    @State var ScoreOne = 0
    @State var ScoreTwo = 0
    
    
    //if botpick == false user loses
    //True = Win, user wins
    //Rock vs Paper, Paper is false, Lose
    //Rock vs Scissors, Scissors is True, Win
    // if bot pick is true or false change text of bot
    
    
    var body : some View {
            

        // var ScoreOneString = String(ScoreOne)
        //  var ScoreTwoString = String(ScoreTwo)
        VStack(spacing:70){
        VStack(spacing:140) {
            
            }
//        .onAppear{
//
//        }
        }
        VStack(){
            Text("Ai")
            Image(AI)
                .resizable()
                .frame(width: 80, height: 100)
        }
        HStack(spacing: 30) {
            VStack() {
                Text("User")
                
                // Change the Text to Image??
                    Image(PlayerOne)
                    .resizable()
                    .frame(width: 80, height: 100)
                
            }
            
            VStack(){
                Text("Vs")
                    .font(.system(size: 80))
                
            }
            VStack(){
                Text("Bot")
                Image(Bot)
                .resizable()
                .frame(width: 80, height: 100)
                
            }
            
           
            }
      
        VStack(alignment: .center, spacing: 40){
            HStack{
                Text("User vs Bot")
            Text("#1 " + Winner)
                .font(.system(size: 20))
            }
            HStack{
                Text("User vs Ai")
            Text("#2 " + WinnerTwo)
                .font(.system(size: 20))
            }
            HStack{
                Text("Bot vs Ai")
            Text("#3 " + winnerThree)
                .font(.system(size: 20))
            }
        
            
}
      
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
    }
   
    
    }


    
    
    




struct Fight_Previews: PreviewProvider {
    static var previews: some View {
        Fight()
    }
}


