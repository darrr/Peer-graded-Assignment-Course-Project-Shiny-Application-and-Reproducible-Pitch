pageWithSidebar(
  headerPanel('Find out what`s your zodiac sign!'),
  sidebarPanel(
    selectInput('month', 'Month of birth',seq(1,12)),
    selectInput('day', 'Day of birth', seq(1,31))
  ),
  mainPanel(
    
    h1(textOutput('zSign'))
   
  )
)