
library(shiny)

function(input, output) {
  
 selected <- reactive({ 
   
   if (input$month==1){
    if (input$day<=20) h1(print("Capricorn")) else print("Aquarius")  }
  
   if (input$month==2){
     if (input$day<=19) print("Aquarius") else{  
       if ((input$day>=20)&&(input$day<=29)) print("Pisces")
       else print("Who are you?")}
   }
  
  if (input$month==3){
    if (input$day<=20) print("Pisces")  else print("Aries")  }
  
  if (input$month==4){
    if (input$day<=19) print("Aries")
    else{
    if ((input$day>19)&&(input$day<=30)) print("Taurus")
    else print("Who are you?")
      }
  }
  if (input$month==5){
    if (input$day<=20) print("Taurus") else print("Gemini") }
  
  if (input$month==6){
    if (input$day<=21) print("Gemini") else{
    if ((input$day>21)&&(input$day<=30)) print("Cancer")
    else print("Who are you?")}
  }
  if (input$month==7){
    if (input$day<=22) print("Cancer") else print("Leo")  }
  
  if (input$month==8){
    if (input$day<=24) print("Leo") else print("Virgo")  }
  
  if (input$month==9){
    if (input$day<=24) print("Virgo")  else{
    if ((input$day>24)&&(input$day<=30)) print("Pisces")
    else print("Who are you?")}
  }
  if (input$month==10){
    if (input$day<=23) print("Libra") else print("Scorpio") }
  
  if (input$month==11){
    if (input$day<=23) print("Scorpio") else{  
    if ((input$day>23)&&(input$day<=30)) print("Sagitarius")
    else print("Who are you?")}
  }
  if (input$month==12){
    if (input$day<=23) print("Sagitarius") else print("Capricorn") }

   
})
  
 output$zSign<-renderPrint({
    

   selected()
    
    })
  
}

