module QuestModule
  
  # You don't actually need to add any information, but the respective fields in the UI will be blank or "???"
  # I included this here mostly as an example of what not to do, but also to show it's a thing that exists
  Quest0 = {
  
  }
  
  Quest1 = {
    :ID        => "1",
    :Stage1    => "Go to  Dad's Lab!",
    :Location1 => "Dad's lab, bruh",
    :Stage2    => "Get Dad's Tablet his room!",
    :Location2 => "Somewhere in your dad's room",
    :Stage3    => "Bring Tabdab to dad!",
    :Location3 => "Somewhere in your PT Ship",
    :Stage4    => "Find Nurse Rose",
    :Location4 => "Probably on her room...",
    :Stage5    => "Check the reactor!",
    :Location5 => "At the very back of the ship",
    :Stage6    => "On the bed. NOW",
    :Location6 => "My room, of course...",
    :Stage7    => "Leave the ship",
    :Location7 => "Rigth next to the weapon room...",
    :Stage8    => "Go to my assigned room",
    :Location8 => "How do I know?",
    :Stage9    => "Bring Crizhia's case to her room",
    :Location9 => "Sheesh...",
    :Stage10   => "Explore & Crizhia's case",
    :Location10 => "Neither left nor right, Idk",
    :Name      => "<c3=940fff,6300b4>CH 0: Where The Genesis of Chaos began",
    :QuestDescription => "In the place where all origins converged, the initial semblance of normalcy was but a deceptive veneer. On this fateful day, a cosmic dance was set into motion, one that would plunge this universe into the abyss of chaos and uncertainty.",
    :QuestGiver => "Alpha Zetanium XYZ: The Dev",
    :RewardString => "Chapter 2!"
  }

end

#   # Here's the simplest example of a single-stage quest with everything specified
#   Quest1 = {
#     :ID => "1",
#     :Name => "Introductions",
#     :QuestGiver => "Little Boy",
#     :Stage1 => "Look for clues.",
#     :Location1 => "Lappet Town",
#     :QuestDescription => "Some wild Pokémon stole a little boy's favourite toy. Find those troublemakers and help him get it back.",
#     :RewardString => "Something shiny!"
#   }
  
#   # Here's an extension of the above that includes multiple stages
#   Quest2 = {
#     :ID => "2",
#     :Name => "Introductions",
#     :QuestGiver => "Little Boy",
#     :Stage1 => "Look for clues.",
#     :Stage2 => "Follow the trail.",
#     :Stage3 => "Catch the troublemakers!",
#     :Location1 => "Lappet Town",
#     :Location2 => "Viridian Forest",
#     :Location3 => "Route 3",
# 	:StageLabel1 => "1",
# 	:StageLabel2 => "2",
#     :QuestDescription => "Some wild Pokémon stole a little boy's favourite toy. Find those troublemakers and help him get it back.",
#     :RewardString => "Something shiny!"
#   }
  
#   # Here's an example of a quest with lots of stages that also doesn't have a stage location defined for every stage
#   Quest3 = {
#     :ID => "3",
#     :Name => "Last-minute chores",
#     :QuestGiver => "Grandma",
#     :Stage1 => "A",
#     :Stage2 => "B",
#     :Stage3 => "C",
#     :Stage4 => "D",
#     :Stage5 => "E",
#     :Stage6 => "F",
#     :Stage7 => "G",
#     :Stage8 => "H",
#     :Stage9 => "I",
#     :Stage10 => "J",
#     :Stage11 => "K",
#     :Stage12 => "L",
#     :Location1 => "nil",
#     :Location2 => "nil",
#     :Location3 => "Dewford Town",
#     :QuestDescription => "Isn't the alphabet longer than this?",
#     :RewardString => "Chicken soup!"
#   }
  
#   # Here's an example of not defining the quest giver and reward text
#   Quest4 = {
#     :ID => "4",
#     :Name => "A new beginning",
#     :QuestGiver => "nil",
#     :Stage1 => "Turning over a new leaf... literally!",
#     :Stage2 => "Help your neighbours.",
#     :Location1 => "Milky Way",
#     :Location2 => "nil",
#     :QuestDescription => "You crash landed on an alien planet. There are other humans here and they look hungry...",
#     :RewardString => "nil"
#   }
  
#   # Other random examples you can look at if you want to fill out the UI and check out the page scrolling
#   Quest5 = {
#     :ID => "5",
#     :Name => "All of my friends",
#     :QuestGiver => "Barry",
#     :Stage1 => "Meet your friends near Acuity Lake.",
#     :QuestDescription => "Barry told me that he saw something cool at Acuity Lake and that I should go see. I hope it's not another trick.",
#     :RewardString => "You win nothing for giving in to peer pressure."
#   }
  
#   Quest6 = {
#     :ID => "6",
#     :Name => "The journey begins",
#     :QuestGiver => "Professor Oak",
#     :Stage1 => "Deliver the parcel to the Pokémon Mart in Viridian City.",
#     :Stage2 => "Return to the Professor.",
#     :Location1 => "Viridian City",
#     :Location2 => "nil",
#     :QuestDescription => "The Professor has entrusted me with an important delivery for the Viridian City Pokémon Mart. This is my first task, best not mess it up!",
#     :RewardString => "nil"
#   }
  
#   Quest7 = {
#     :ID => "7",
#     :Name => "Close encounters of the... first kind?",
#     :QuestGiver => "nil",
#     :Stage1 => "Make contact with the strange creatures.",
#     :Location1 => "Rock Tunnel",
#     :QuestDescription => "A sudden burst of light, and then...! What are you?",
#     :RewardString => "A possible probing."
#   }
  
#   Quest8 = {
#     :ID => "8",
#     :Name => "These boots were made for walking",
#     :QuestGiver => "Musician #1",
#     :Stage1 => "Listen to the musician's, uhh, music.",
#     :Stage2 => "Find the source of the power outage.",
#     :Location1 => "nil",
#     :Location2 => "Celadon City Sewers",
#     :QuestDescription => "A musician was feeling down because he thinks no one likes his music. I should help him drum up some business."
#   }
  
#   Quest9 = {
#     :ID => "9",
#     :Name => "Got any grapes?",
#     :QuestGiver => "Duck",
#     :Stage1 => "Listen to The Duck Song.",
#     :Stage2 => "Try not to sing it all day.",
#     :Location1 => "YouTube",
#     :QuestDescription => "Let's try to revive old memes by listening to this funny song about a duck wanting grapes.",
#     :RewardString => "A loss of braincells. Hurray!"
#   }
  
#   Quest10 = {
#     :ID => "10",
#     :Name => "Singing in the rain",
#     :QuestGiver => "Some old dude",
#     :Stage1 => "I've run out of things to write.",
#     :Stage2 => "If you're reading this, I hope you have a great day!",
#     :Location1 => "Somewhere prone to rain?",
#     :QuestDescription => "Whatever you want it to be.",
#     :RewardString => "Wet clothes."
#   }
  
#   Quest11 = {
#     :ID => "11",
#     :Name => "When is this list going to end?",
#     :QuestGiver => "Me",
#     :Stage1 => "When IS this list going to end?",
#     :Stage2 => "123",
#     :Stage3 => "456",
#     :Stage4 => "789",
#     :QuestDescription => "I'm losing my sanity.",
#     :RewardString => "nil"
#   }
  
#   Quest12 = {
#     :ID => "12",
#     :Name => "The laaast melon",
#     :QuestGiver => "Some stupid dodo",
#     :Stage1 => "Fight for the last of the food.",
#     :Stage2 => "Don't die.",
#     :Location1 => "A volcano/cliff thing?",
#     :Location2 => "Good advice for life.",
#     :QuestDescription => "Tea and biscuits, anyone?",
#     :RewardString => "Food, glorious food!"
#   }


