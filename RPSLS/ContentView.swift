//
//  ContentView.swift
//  RPSLS
//
//  Created by student15 on 2/15/22.
//
import PhotosUI
import SwiftUI
import SafariServices

//NOTE: Scissors cuts Paper,
//Paper covers Rock,
//Rock crushes Lizard,
//Lizard poisons Spock,
//Spock smashes Scissors
//Scissors cut Lizard,
//Lizard eats Paper,
//Paper disproves Spock,
//Spock vaporizes,Rock
//(and as it always has) Rock breaks Scissors



struct ContentView: View {
    
    // THESE VARIABLES ARE SWITCHES, when selected they flip a switch in the next view to make its corespondding variable true/
    
    
    
    
    // User Choices
    @State var RockPiece = false
    @State var PaperPiece = false
    @State var ScissorsPiece = false
    @State var LizardsPiece = false
    @State var SpockPiece = false
    
    //bot choices
   
    
    //AI Choices
    @State var AIRockPiece = false
    @State var AIPaperPiece = false
    @State var AIScissorsPiece = false
    @State var AILizardsPiece = false
    @State var AISpockPiece = false
    
    //Extras
    @State var SelectedDifficulty = 0
    @State var BotChoice = false
    @State var NameofPiece = ""
    @State var Botsthing = ""
    @State var PictureOne = Image("")
    @State var PictureTwo = Image("")
    
    //Winners
    @State var Wonner = ""
    @State var WonnerTwo = ""
    @State var WonnerThree = ""
    @State var Tie = false
    @State var TieToo = false
    @State var TieThree = false
    
    
    //BotChoices
    @State  var BotPaper = false
    @State  var BotScissors = false
    @State   var BotRock = false
    @State   var BotLizards = false
    @State    var BotSpock = false

    @State var WhoWon = false

    // Stategic AI Stuff
    @State var WinCount = 0
    @State var LoseCount = 0
    @State var LastUsedOne = ""
    @State var LastUsedTwo = ""
    @State var AiPic = ""
    @State var AiPick = true
    @State var firstMove = ""
    @State var firstTime: Bool = true

    
    @State var AiPaper = false
    @State var AiScissors = false
    @State var AiRock = false
    @State var AiLizards = false
    @State var AiSpock = false
    
   @State var difficulty = 0
    @State  var BotPick = true
    @State var BotPickTOO = true
    @State var ScoreOne = 0
    @State var ScoreTwo = 0
    @State var ScoreThree = 0
    @State var remainingTime: Int = 3
    @State var timer: Timer? = nil
    @State var message: String = "Play"
    @State var SneakyTrick = false
    @State var Anger = false
    @State var alert = false
    @State var ShowTheThing = false
   
    
    //double tap image
    @State var Rockimage = UIImage (named: "Rock")!
    @State var Scissorimage = UIImage (named: "Scissors")!
    @State var Paperimage = UIImage (named: "Paper?")!
    @State var Lizardimage = UIImage (named: "Lizard")!
    @State var Spockimage = UIImage (named: "Spock")!
    
 
    
    //choices
    @State var BotChoices:[String] = ["BotRockPiece","BotPaperPiece","BotScissorsPiece","BotLizardsPiece","BotSpockPiece"]
    @State var AIChoices:[String] = ["AIRockPiece","AIPaperPiece","AIScissorsPiece","AILizardsPiece","AISpockPiece"]
   
    
        //Extra Ai things
        let RockBeat:[String] = ["AIPaperPiece","AISpockPiece"]
       let PaperBeat:[String] = ["AILizardsPiece","AIScissorsPiece"]
      let ScissorBeat:[String] = ["AISpockPiece","AIRockPiece"]
      let LizardBeat:[String] = ["AIRockPiece","AIScissorsPiece"]
        let SpockBeat:[String] = ["AILizardsPiece","AIScissorsPiece"]

    
    // @State var ActualTimer = Timer? = nil
    
    
    // lists of what things beat What
    
   

    
    
    
    
    
    var body: some View {
        NavigationView{
            VStack{
                VStack(spacing:30){
                    HStack(spacing:90){
                        Text("Player")
                            .font(.system(size: 30))
                        Text("Bot")
                            .font(.system(size: 30))
                        Text("AI")
                            .font(.system(size: 30))
                    }
                    HStack(spacing:90){
                        // Int to Text??
                        Text ("\(ScoreOne)")
                            .font(.system(size: 50))
                        Text ("\(ScoreTwo)")
                            .font(.system(size: 50))
                        Text ("\(ScoreThree)")
                            .font(.system(size: 50))
                    }
                    
                    
                    //Filler VStack
                    
                    VStack(spacing: 20){
//                        Picker("What?", selection: $SelectedDifficulty ) {
//                            Text("Easy").tag(0)
//                            Text("Hard").tag(1)
//                        }
//                        .pickerStyle(SegmentedPickerStyle())

                        HStack{
                            
                            Link("Rules", destination: URL(string: "https://www.instructables.com/How-to-Play-Rock-Paper-Scissors-Lizard-Spock/")!)
                                .font(.largeTitle)
                        }
                        Button(action: {
                            ScoreOne += 100})
                        {
                           
                            
                            
                            Text("Fidget")
                                .font(.system(size: 20))
                    
                            
                            
                        }
                      
                        
                        //Timer Thing?
                        Button(action: {
                            message = "Counting Down..."
                            //+ "\(remainingTime)")
                
                            self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block:
                            {
                                (timer) in self.remainingTime -= 1
                               
                                
                               
                                
                                if remainingTime == 0 {
                                 self.timer?.invalidate()
                                    alert = true
                                    ScoreTwo += 1
                                    ScoreThree += 1
                                    remainingTime = 3
                                }
                                if Anger{
                                    self.timer?.invalidate()
                                    message = "Play"
                                    Anger = false
                                    
                                }
                            })
                              
                 
                                
                        })
                {
                    Text(message)
                        .font(.largeTitle)
                        }
                    }
                    
                    
                    
                    // Visuals for each piece
                    
                    HStack(spacing:120.0){
                        
                        VStack(spacing:40.0){
                            
                            VStack{
                                //Rock
                                NavigationLink(destination: Fight(PlayerOne:NameofPiece, Bot: Botsthing, AI: AiPic, Winner: Wonner,WinnerTwo: WonnerTwo,winnerThree: WonnerThree)){
                                    Image(uiImage:Rockimage)
                                   
                                        .resizable()
                                        .frame(width: 80, height: 100)
                                }
                                .simultaneousGesture(TapGesture().onEnded{
                                 Anger = true
                                    RockPiece = true
                                    NameofPiece = "Rock"
                                    MakeTrue()
                                    SmartBoy()
                                  GameRules()
                                    GameRuleToo()
                                    GameRuleThree()
                                })
                                .onLongPressGesture(minimumDuration: 0.4){
                                    ShowTheThing = true
                                }
                                
                            }
                            
                            .sheet(isPresented: $ShowTheThing, content: {
                                PhotoPicker(RockImage: $Rockimage)
                            })
                            
                            
                            VStack{
                                //Paper
                                NavigationLink(destination: Fight(PlayerOne:NameofPiece, Bot: Botsthing, AI: AiPic, Winner: Wonner ,WinnerTwo: WonnerTwo,winnerThree: WonnerThree)){
                                    
                                    Image("Paper?")
                                        .resizable()
                                        .frame(width: 80, height: 100)
                                }
                                .simultaneousGesture(TapGesture().onEnded{
                                    Anger = true
                                    PaperPiece = true
                                    NameofPiece = "Paper?"
                                    MakeTrue()
                                    SmartBoy()
                                    GameRules()
                                    GameRuleToo()
                                    GameRuleThree()
                                    
                                })
                            }
                            
                            VStack{
                                //Scissors
                                NavigationLink(destination: Fight(PlayerOne:NameofPiece, Bot: Botsthing, AI: AiPic, Winner: Wonner ,WinnerTwo: WonnerTwo,winnerThree: WonnerThree)){
                                    
                                    Image("Scissors")
                                        .resizable()
                                        .frame(width: 80, height: 100)
                                }
                                .simultaneousGesture(TapGesture().onEnded{
                                    Anger = true
                                    ScissorsPiece = true
                                    NameofPiece = "Scissors"
                                    MakeTrue()
                                    SmartBoy()
                                    GameRules()
                                    GameRuleToo()
                                    GameRuleThree()
                                })
                                
                            }
                            
                            
                            
                        }
                        VStack(spacing:150.0){
                            VStack{
                                //Lizard
                                NavigationLink(destination: Fight(PlayerOne:NameofPiece, Bot: Botsthing, AI: AiPic, Winner: Wonner ,WinnerTwo: WonnerTwo,winnerThree: WonnerThree)){
                                    
                                    Image("Lizard")
                                        .resizable()
                                        .frame(width: 80, height: 100)
                                    
                                }
                                .simultaneousGesture(TapGesture().onEnded{
                                    Anger = true
                                    LizardsPiece = true
                                    NameofPiece = "Lizard"
                                    MakeTrue()
                                    SmartBoy()
                                    GameRules()
                                    GameRuleToo()
                                    GameRuleThree()
                                    
                                })
                                
                            }
                            
                            VStack{
                                //Spock
                                NavigationLink(destination: Fight(PlayerOne:NameofPiece, Bot: Botsthing, AI: AiPic, Winner: Wonner,WinnerTwo: WonnerTwo,winnerThree: WonnerThree)){
                                    
                                    Image("Spock")
                                        .resizable()
                                        .frame(width: 80, height: 100)
                                    
                                }
                                .simultaneousGesture(TapGesture().onEnded{
                                    Anger = true
                                    SpockPiece = true
                                    NameofPiece = "Spock"
                                    MakeTrue()
                                    SmartBoy()
                                    GameRules()
                                    GameRuleToo()
                                    GameRuleThree()
                                })
                            }
                        }
                        
                    }
                    
                }
            }
            
        }
        .alert(isPresented: $alert){
            () -> Alert in Alert(title: Text("Good try"), dismissButton: .destructive(Text("OK!"), action: {message = "Play"}))
            
        }
    }
    
        

   //Functions
    
    //Rules, Makes Win/Lose Variables true
    func GameRules() {
        Tie = false
        // Rock vs Rock
    
    
        if RockPiece && BotRock{
            Tie = true
            LastUsedOne = "Rock"
            
            
        }
        // Rock vs Paper
        else if RockPiece == true && BotPaper == true{
            //Add
            BotPick = false
            LastUsedOne = "Rock"
            
            
            
        }
        // Rock vs Scissors
        else  if RockPiece == true && BotScissors == true{
            //Add
            BotPick = true
            LastUsedOne = "Rock"
        }
            //Rock vs Lizard
        else if RockPiece && BotLizards{
            BotPick = true
            LastUsedOne = "Rock"
        }
            //Rock vs Spock
        else if RockPiece && BotSpock{
            BotPick = false
            LastUsedOne = "Rock"
        }
        
        //Paper vs Rock
        else  if PaperPiece == true && BotRock == true{
            //Add
            BotPick = true
            LastUsedOne = "Paper"
            
            
            
        }
        //Paper vs Paper
        else if PaperPiece == true && BotPaper == true{
            Tie = true
            LastUsedOne = "Paper"
          
        }
            //Paper vs Lizards
        else if PaperPiece && BotLizards{
            BotPick = false
            LastUsedOne = "Paper"
        }
            //Paper vs Spock
        else if PaperPiece && BotSpock{
            BotPick = true
            LastUsedOne = "Paper"
        }
        
        //Paper vs Scissors
        else  if PaperPiece == true && BotScissors == true{
            LastUsedOne = "Paper"

            BotPick = false
        
        }
        
        //Scissors vs Rock
        else if ScissorsPiece == true && BotRock == true{
            BotPick = false
            LastUsedOne = "Scissors"
          

        }
        
        //Scissors vs Paper
        
        else  if ScissorsPiece == true && BotPaper == true{
            BotPick = true
            LastUsedOne = "Scissors"
            

        }
        //Scissors vs Scissors
        else if ScissorsPiece && BotScissors{
            Tie = true
            LastUsedOne = "Scissors"
    

        }
        // Scissors vs Lizards
        else if ScissorsPiece && BotLizards{
            BotPick = true
            LastUsedOne = "Scissors"
         

        }
        //Scissors vs Spock
        else if ScissorsPiece && BotSpock{
            BotPick = false
            LastUsedOne = "Scissors"
        

        }
        //Lizards vs Rock
        else if LizardsPiece && BotRock{
            BotPick = false
            LastUsedOne = "Lizards"
        

        }
        //Lizards vs Paper
        else if LizardsPiece && BotPaper{
            BotPick = true
            LastUsedOne = "Lizards"
        

        }
        //Lizards vs Scissors
        else if LizardsPiece && BotScissors{
            BotPick = false
            LastUsedOne = "Lizards"
          

        }
        //Lizards vs Lizards
        else if LizardsPiece && BotLizards{
            Tie = true
            LastUsedOne = "Lizards"
     

        }
        //Lizards vs Spock
        else if LizardsPiece && BotSpock{
            BotPick = true
            LastUsedOne = "Lizards"
      
        }
        
        //Spock vs Rock
        else if SpockPiece && BotRock {
            BotPick = true
            LastUsedOne = "Spock"
       

        }
        //Spock vs Paper
        else if SpockPiece && BotPaper {
            BotPick = false
            LastUsedOne = "Spock"
          

        }
        //Spock vs Scissors
        else if SpockPiece && BotScissors {
            BotPick = true
            LastUsedOne = "Spock"
          

        }
        //Spock vs Lizards
        else if SpockPiece && BotLizards{
            BotPick = false
            LastUsedOne = "Spock"
            

        }
        //Spock vs Spock
        else if SpockPiece && BotSpock{
            Tie = true
            LastUsedOne = "Spock"
        

        }
   
        if Tie {
            Wonner = "Tie"
        }
        else  if BotPick{
            Wonner = "Player Wins!"
            ScoreOne += 1
            WhoWon = false
        }
        
        else if BotPick == false{
            Wonner = "Bot Wins"
            ScoreTwo += 1
            WhoWon = true
        }
        
        
        else{
            Wonner = "Error"
            
        }
      
       Tie = false
    }
    
    func GameRuleToo(){
        TieToo = false
       //print()
            // Rock vs Rock
            if RockPiece && AiRock{
                TieToo = true
                LastUsedOne = "Rock"
                LastUsedTwo = "Rock"

                
                
                
            }
            // Rock vs Paper
            else if RockPiece == true && AiPaper == true{
                //Add
                AiPick = false
                LastUsedOne = "Rock"
                LastUsedTwo = "Paper"

                
                
                
                
            }
            // Rock vs Scissors
            else  if RockPiece == true && AiScissors == true{
                //Add
                AiPick = true
                LastUsedOne = "Rock"
                LastUsedTwo = "Scissors"

            }
                //Rock vs Lizard
            else if RockPiece && AiLizards{
                BotPick = true
                LastUsedOne = "Rock"
                LastUsedTwo = "Lizards"

            }
                //Rock vs Spock
            else if RockPiece && AiSpock{
                AiPick = false
                LastUsedOne = "Rock"
                LastUsedTwo = "Spock"
            }
            
            //Paper vs Rock
            else  if PaperPiece == true && AiRock == true{
                //Add
                AiPick = true
                LastUsedOne = "Paper"
                LastUsedTwo = "Rock"

                
                
            }
            //Paper vs Paper
            else if PaperPiece == true && AiPaper == true{
                TieToo = true
                LastUsedOne = "Paper"
                LastUsedTwo = "Paper"

            }
                //Paper vs Lizards
            else if PaperPiece && AiLizards{
                AiPick = false
                LastUsedOne = "Paper"
                LastUsedTwo = "Lizards"

            }
                //Paper vs Spock
            else if PaperPiece && AiSpock{
                AiPick = true
                LastUsedOne = "Paper"
                LastUsedTwo = "Spock"

            }
            
            //Paper vs Scissors
            else  if PaperPiece == true && AiScissors == true{
                
                AiPick = false
                LastUsedOne = "Paper"
                LastUsedTwo = "Scissors"

            }
            
            //Scissors vs Rock
            else if ScissorsPiece == true && AiRock == true{
                AiPick = false
                LastUsedOne = "Scissors"
                LastUsedTwo = "Rock"
            }
            
            //Scissors vs Paper
            
            else  if ScissorsPiece == true && AiPaper == true{
                AiPick = true
                LastUsedOne = "Scissors"
                LastUsedTwo = "Paper"

            }
            //Scissors vs Scissors
            else if ScissorsPiece && AiScissors{
                TieToo = true
                LastUsedOne = "Scissors"
                LastUsedTwo = "Scissors"

            }
            // Scissors vs Lizards
            else if ScissorsPiece && AiLizards{
                AiPick = true
                LastUsedOne = "Scissors"
                LastUsedTwo = "Lizards"

            }
            //Scissors vs Spock
            else if ScissorsPiece && AiSpock{
                AiPick = false
                LastUsedOne = "Scissors"
                LastUsedTwo = "Spock"

            }
            //Lizards vs Rock
            else if LizardsPiece && AiRock{
                AiPick = false
                LastUsedOne = "Lizards"
                LastUsedTwo = "Rock"

            }
            //Lizards vs Paper
            else if LizardsPiece && AiPaper{
                AiPick = true
                LastUsedOne = "Lizards"
                LastUsedTwo = "Paper"

            }
            //Lizards vs Scissors
            else if LizardsPiece && AiScissors{
                AiPick = false
                LastUsedOne = "Lizards"
                LastUsedTwo = "Scissors"

            }
            //Lizards vs Lizards
            else if LizardsPiece && AiLizards{
                TieToo = true
                
                

            }
            //Lizards vs Spock
            else if LizardsPiece && AiSpock{
                AiPick = true
                LastUsedOne = "Lizards"
                LastUsedTwo = "Spock"

            }
            //Spock vs Rock
            else if SpockPiece && AiRock {
                AiPick = true
                LastUsedOne = "Spock"
                LastUsedTwo = "Rock"

            }
            //Spock vs Paper
            else if SpockPiece && AiPaper {
                AiPick = false
                LastUsedOne = "Spock"
                LastUsedTwo = "Paper"

            }
            //Spock vs Scissors
            else if SpockPiece && AiScissors {
                AiPick = true
                LastUsedOne = "Spock"
                LastUsedTwo = "Scissors"

            }
            //Spock vs Lizards
            else if SpockPiece && AiLizards{
                AiPick = false
                LastUsedOne = "Spock"
                LastUsedTwo = "Lizards"

            }
            //Spock vs Spock
            else if SpockPiece && AiSpock{
                TieToo = true
                LastUsedOne = "Spock"
                LastUsedTwo = "Spock"

            }
        else{
            print("Error 404")
        }
        if TieToo {
            WonnerTwo = "Tie"
        }
        else  if AiPick{
            WonnerTwo = "Player Wins!"
            ScoreOne += 1
            WhoWon = false
        }
        
        else if AiPick == false{
            WonnerTwo = "AI Wins"
            ScoreThree += 1
            WhoWon = true
        }
        
        
        else{
            WonnerTwo = "Error"
    }
        SpockPiece = false
        LizardsPiece = false
        PaperPiece = false
        ScissorsPiece = false
        RockPiece = false
        Tie = false
    }
    
    func GameRuleThree(){
       
        TieThree = false
            // Rock vs Rock
            if BotRock && AiRock{
                TieThree = true
                
                
            }
            // Rock vs Paper
            else if BotRock == true && AiPaper == true{
                
                BotPickTOO = false
                
                
                
            }
            // Rock vs Scissors
            else  if  BotRock == true && AiScissors == true{
             
                BotPickTOO = true
            }
                //Rock vs Lizard
            else if BotRock && AiLizards{
                BotPickTOO = true
            }
                //Rock vs Spock
            else if BotRock && AiSpock{
                BotPickTOO = false
            }
            
            //Paper vs Rock
            else  if BotPaper == true && AiRock == true{
                //Add
                BotPickTOO = true
                
                
                
            }
            //Paper vs Paper
            else if BotPaper == true && AiPaper == true{
                TieThree = true
            }
                //Paper vs Lizards
            else if BotPaper && AiLizards{
                BotPickTOO = false
            }
                //Paper vs Spock
            else if BotPaper && AiSpock{
                BotPickTOO = true
            }
            
            //Paper vs Scissors
            else  if BotPaper == true && AiScissors == true{
                
                BotPickTOO = false
            }
            
            //Scissors vs Rock
            else if BotScissors == true && AiRock == true{
                BotPickTOO = false
            }
            
            //Scissors vs Paper
            
            else  if BotScissors == true && AiPaper == true{
                BotPickTOO = true
            }
            //Scissors vs Scissors
            else if BotScissors && AiScissors{
                BotPickTOO = true
            }
            // Scissors vs Lizards
            else if BotScissors && AiLizards{
                BotPickTOO = true
            }
            //Scissors vs Spock
            else if BotScissors && AiSpock{
                BotPickTOO = false
            }
            //Lizards vs Rock
            else if BotLizards && AiRock{
                BotPickTOO = false
            }
            //Lizards vs Paper
            else if BotLizards && AiPaper{
                BotPickTOO = true
            }
            //Lizards vs Scissors
            else if BotLizards && AiScissors{
                BotPickTOO = false
            }
            //Lizards vs Lizards
            else if BotLizards && AiLizards{
                TieThree = true
            }
            //Lizards vs Spock
            else if BotLizards && AiSpock{
                BotPickTOO = true
            }
            //Spock vs Rock
            else if BotSpock && AiRock {
                BotPickTOO = true
            }
            //Spock vs Paper
            else if BotSpock && AiPaper {
                BotPickTOO = false
            }
            //Spock vs Scissors
            else if BotSpock && AiScissors {
                BotPickTOO = true
            }
            //Spock vs Lizards
            else if BotSpock && AiLizards{
                BotPickTOO = false
            }
            //Spock vs Spock
            else if BotSpock && AiSpock{
                TieThree = true
            }
        if TieThree {
            WonnerThree = "Tie"
        }
        else  if BotPickTOO{
            WonnerThree = "Bot Wins!"
            ScoreTwo += 1
            WhoWon = false
        }
        
        else if BotPickTOO == false{
            WonnerThree = "Ai Wins"
            ScoreThree += 1
            WhoWon = true
        }
        
        
        else{
            WonnerThree = "Error"
    }
    }
    
    
    
   
    // used to reset all bot/AI variables + BotsThing, for the next turn
    func MakeFalse(){
        BotRock = false
        BotScissors = false
        BotPaper = false
        BotSpock = false
        BotLizards = false
     
      Tie = false
        Botsthing = ""
    }
    func AIMakeFalse(){
        AiRock = false
        AiPaper = false
        AiScissors = false
        AiLizards = false
        AiSpock = false
        AiPic = ""

    }
    
    
    // used to activate variable for whichever piece Bot picked
    func MakeTrue(){
        //
        MakeFalse()
        //AiChoices.randomElement()
        let BotRandom = BotChoices.randomElement()!
      
        print(BotRandom)
        if BotRandom == "BotRockPiece" {
            BotRock = true
            Botsthing = "Rock"
        }
        else if BotRandom == "BotPaperPiece"{
            BotPaper = true
            Botsthing = "Paper?"
        }
        else if BotRandom == "BotScissorsPiece"{
            BotScissors = true
            Botsthing = "Scissors"
        }
        else if BotRandom == "BotLizardsPiece"{
            BotLizards = true
            Botsthing = "Lizard"
        }
        else if BotRandom == "BotSpockPiece"{
            BotSpock = true
            Botsthing = "Spock"
        }
       Tie = false
       
        
    }
    
    
    //func StrategicAI(){

    // first move is simply gonna be random
    //AiChoices.randomElement()
    //then the next move will be based on who won or who lost, when you come back to the main contentview the bot will already know what to do next, for example if the user wins the bot will repeat the same move,  It should looks something like if User Wins botsmove = users move or if user loses
    
    // track users/ bots move
    // Track who win or who lost how many times (in a row??)
    // use algorhytm
    //loop?
    //Variables to use?
    //     WhoWon = false
    //     WinCount = 0
    //     LoseCount = 0
    //     LastUserPieceUsed = ""    ???
    //     LastBotPieceUsed = ""
    //     Bot Wins = true
    //     Bot loses = false
    //}
    
    
    //neeed to define first move and den leave
    func SmartBoy(){
        if firstTime == true{
        //AI Piece Selection
        firstMove = AIChoices.randomElement()!
           
        AiMaketrue()
        }
        
        else{
            Actually()
        }
        
    }
        func Actually() {
        //AI Win
                        print(WonnerTwo)
        if WonnerTwo == "Player Wins!"{
            AIMakeFalse()
            ScoreOne += 1
            LoseCount += 1
            WhoWon = false
            
            print(LastUsedOne)
            // keeps variable the same if Lost
            if LastUsedOne == "Rock"{
                firstMove = "AIRockPiece"
            }
            else if LastUsedOne == "Paper"{
                firstMove = "AIPaperPiece"
            }
            else if LastUsedOne == "Scissors"{
                firstMove = "AIScissorsPiece"
            }
            else if LastUsedOne == "Lizards"{
                firstMove = "AILizardsPiece"
            }
            else if LastUsedOne == "Spock"{
                firstMove = "AISpockPiece"
            }
            AiMaketrue()
        }
        
    
       
       else if WonnerTwo == "AI Wins"{
            WinCount += 1
           AIMakeFalse()
            
            
            firstMove = AIChoices.randomElement()!
           print(LoseCount)
            if LoseCount > 1 {
                if LastUsedOne == "Rock"{
                    
                   
                }
                else if LastUsedOne == "Paper"{
                    firstMove = PaperBeat.randomElement()!
                }
                else if LastUsedOne == "Scissors"{
                    firstMove = PaperBeat.randomElement()!
                }
                else if LastUsedOne == "Lizards"{
                    firstMove = LizardBeat.randomElement()!
                }
                else if LastUsedOne == "Spock"{
                    firstMove = SpockBeat.randomElement()!
                }
            }
           else{
               firstMove = AIChoices.randomElement()!
           }
               AiMaketrue()
         }
        }
        
        
        func AiMaketrue (){
            print(firstMove)
            if firstMove == "AIRockPiece"{
             AiRock = true
                AiPic = "Rock"
            }
            else if firstMove == "AIPaperPiece" {
                AiPaper = true
                AiPic = "Paper?"
            }
            else if firstMove == "AIScissorsPiece" {
                AiScissors = true
                AiPic = "Scissors"
        }
            else if firstMove == "AILizardsPiece" {
                AiLizards = true
                AiPic = "Lizard"
        }
            else if firstMove == "AISpockPiece" {
                AiSpock = true
                AiPic = "Spock"
        }
            firstTime = false
    }

        
       
        
        
    //if whowon == true{
       
        //}
    
        //                If PLAYER wins bot should repeat move (keep repeating till AI Win?)
        //                If PLAYER loses two or more times change move  more likely to change it to the move that just beat them
      
        // Mark what the last (AI) piece used was and then pick from the list that beats "Last Piece"
        
        
        // if win bot uses the same Move
        //if lose once do random
        //if lose twice or more use move that just beat them
        //}
        
    
    
    
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
    
}


