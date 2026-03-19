//
//  Questions+Series02.swift
//  VGTrivia
//
//  Created by Anne Ferret on 16/03/2026.
//

extension QuestionBank {
  static let series02: [Question] = generateIds(
    [
      Question(
        title: "Four in a square",
        content:
          "In **Minecraft (2011)**, you need them to make a crafting table...",
        media: DisplayMedia(
          type: .image,
          url: baseAssetURL + "crafting_table.webp"
        ),
        answers: [
          "Wooden planks",
          "Logs",
          "Stones",
          "Sticks",
        ],
        correctAnswer: "Wooden planks",
        explanation:
          "Any sort of wooden plank will do, as long as you have four of them, and put them in a 2x2 square.",
      ),
      Question(
        title: "Hon hon",
        content:
          "This French actor was portrayed as a main character in the Japanese game **Onimusha 3: Demon Siege** (2004).",
        answers: [
          "Jean Reno",
          "Vincent Cassel",
          "Christophe Lambert",
          "Alain Delon",
        ],
        correctAnswer: "Jean Reno",
        explanation:
          "Onimusha 3's convoluted story goes back and forth between feudal Japan and **contemporary France**. Jean Reno provides his likeliness, but also motion capture and French voice acting.",
        explanationMedia: image("jean_reno.jpg"),
      ),
      Question(
        title: "When you need me",
        content: "Who's this?",
        media: image("master_chief.jpg"),
        answers: [
          "Master Chief",
          "Doom Slayer",
          "Samus Aran",
          "Isaac Clarke",
        ],
        correctAnswer: "Master Chief",
        explanation:
          "He's the main protagonist of the **Halo** video game series, also known as **John-117**, or simply The Chief. He's also the first video game character to have received a wax sculpture in Madame Tussauds' museums.",
        explanationMedia: image("master_chief_madame_tussauds.jpg"),
      ),
      Question(
        title: "Inside the cube",
        content: "Who's this?",
        media: image("peter_molyneux.jpg"),
        answers: [
          "Peter Molyneux",
          "Sid Meier",
          "Todd Howard",
          "Neil Druckmann",
        ],
        correctAnswer: "Peter Molyneux",
        explanation:
          "A famous video game designer, he's behind **Fable**, **Theme Park**, **Dungeon Keeper**, **Populous**, **Black and White**... he has been mocked online, for usually promising more than what his team could deliver.",
      ),
      Question(
        title: "That's mayor to you",
        content: "Who's this character from the **Super Mario** franchise?",
        media: image("pauline.jpg"),
        answers: [
          "Pauline",
          "Peach",
          "Daisy",
          "Rosalina",
        ],
        correctAnswer: "Pauline",
        explanation:
          "The original kidnapped lady in the **Donkey Kong** 1981 arcade game. She made her big comeback in the Mario universe, with newfound mayor role and singing skills, in **Super Mario Odyssey** (2017) and **Donkey Kong Bananza** (2025).",
      ),
      Question(
        title: "Life will change",
        content: "Who's this character?",
        media: image("joker.jpg"),
        answers: [
          "Joker",
          "Dante",
          "Alucard",
          "Raiden",
        ],
        correctAnswer: "Joker",
        explanation:
          "High schooler **Ren Amamiya**, silent protagonist from **Persona 5** (2016), is better known under his viligante codename, Joker. He leads the **Phantom Thieves**, a group of misfits trying to bring justice to the world.",
      ),
      Question(
        title: "The weight of the world",
        content: "What's one of the main features of 2017's **NieR: Automata**?",
        answers: [
          "Multiple endings",
          "Online co-op missions",
          "Strategic turn-based combat system",
          "Interactive sex scenes",
        ],
        correctAnswer: "Multiple endings",
        explanation:
          "NieR: Automata features **26 different endings**. Five playthroughs are needed to uncover the whole storyline and true ending, while other endings act as alternate storylines, jokes, or easter eggs of sorts.",
      ),
      Question(
        title: "Pig's butt",
        content: "Who's this character?",
        media: image("ness.jpg"),
        answers: [
          "Ness",
          "Ninten",
          "Red",
          "Young Mario",
        ],
        correctAnswer: "Ness",
        explanation:
          "The main protagonist of classic SNES role-playing game **EarthBound** (1994), he's probably more recognized nowadays by Western audiences as a playable character from the **Super Smash Bros.** series.",
      ),
      Question(
        title: "You didn't think of that mecha...",
        content:
          "Which 1993 game is widely credited with popularizing the **first-person shooter** genre on PC?",
        answers: [
          "Doom",
          "Wolfenstein 3D",
          "Quake",
          "Duke Nukem 3D",
        ],
        correctAnswer: "Wolfenstein 3D",
        explanation:
          "Wolfenstein 3D (1992) from iD Software is often cited as the foundational FPS. The player controls B.J. Blazkowicz, a Polish Jewish prisoner trying to escape a Nazi castle during WWII."
      ),
      Question(
        title: "Actually not final",
        content:
          "Which company developed the original **Final Fantasy** (1987) for the NES?",
        answers: [
          "Square",
          "Enix",
          "Capcom",
          "Konami",
        ],
        correctAnswer: "Square",
        explanation:
          "Square (later Square Enix after a 2003 merger) developed Final Fantasy, facing **dire financial difficulties**, as a last effort... hence the name. The \"final\" fantasy turned out very popular, saving the company."
      ),
      Question(
        title: "Survival horror",
        content:
          "Which of these games was considered pioneer of the **survival horror** genre?",
        answers: [
          "Alone in the Dark",
          "Resident Evil",
          "Silent Hill",
          "Fatal Frame",
        ],
        correctAnswer: "Alone in the Dark",
        explanation:
          "Way back in **1992**, Infogrames' Alone in the Dark introduced many elements that ended up being fundational to the genre: 3D characters over 2D backgrounds, fixed camera angle, limited field of view, powerful enemies, limited ammo... and a mansion."
      ),
      Question(
        title: "The IP destroyer",
        content:
          "This director is known for its **terrible movie adaptations** of popular video games, such as House of the Dead, Alone in the Dark, BloodRayne, Postal, Far Cry...",
        media: image("uwe_boll.jpg"),
        answers: [
          "Uwe Boll",
          "Paul W.S. Anderson",
          "Christophe Gans",
          "Jeff Fowler",
        ],
        correctAnswer: "Uwe Boll",
        explanation:
          "His films were so comically bad he's kinda hatred amongst gamers. Nowadays, he's hardly allowed to touch a video game IP anymore... but that doesn't prevent him from directing all kinds of other direct-to-video Z movies."
      ),
      Question(
        title: "Indie darling",
        content:
          "Which indie title from 2010 is known for its **brutal difficulty** and **fast-paced retro platforming**?",
        answers: [
          "Super Meat Boy",
          "Braid",
          "Limbo",
          "Fez",
        ],
        correctAnswer: "Super Meat Boy",
        explanation:
          "Developed by Team Meat, it's famous for its slippery-yet-tight controls and very challenging quick platforming levels. It's one of the gems coming from the ~2008 to 2012 short-lived **indie golden era**."
      ),
      Question(
        title: "Quarter circle",
        content: "What's the name of this **classic fighting game move**?",
        media: image("hadouken.jpg"),
        answers: [
          "Hadouken",
          "Kamehameha",
          "Shoryuken",
          "Shoryueppa",
        ],
        correctAnswer: "Hadouken",
        explanation:
          "This is one of the staples of **Street Fighter II** (1991)'s gameplay, performed by many characters such as Ryu and Ken. It's performed by inputting **↓↘→ + PUNCH**, assuming your opponent stands on your right."
      ),
      Question(
        title: "Night reign",
        content:
          "Who co-created the world and lore of **Elden Ring** (2022) alongside Hidetaka Miyazaki?",
        answers: [
          "George R. R. Martin",
          "Neil Gaiman",
          "Robin Hobb",
          "Brandon Sanderson",
        ],
        correctAnswer: "George R. R. Martin",
        explanation:
          "The famous author of **A Song of Ice and Fire** provided the game's team with a backstory, that could easily be fitted ingame through texts and dialogues. The exact nature of his contribution remains unclear, though.",
      ),
      Question(
        title: "Gotta go fast",
        content:
          "In the **speedrunning** community, a run that aims to end the game as fast as possible without any additional completion challenge is called...",
        answers: [
          "any%",
          "no BS",
          "story clear",
          "barebone run",
        ],
        correctAnswer: "any%",
        explanation:
          "The most popular speedrunning category of all. **Any percentage of completion** is enough, as long as you get to the ending of the game. And unless it's also a \"glitchless\" run, any trick is fair game.",
      ),
      Question(
        title: "Stupid jellyfish",
        content: "This is from which video game series?",
        media: image("mass_effect.jpg"),
        answers: [
          "Mass Effect",
          "The Elder Scrolls",
          "Fallout",
          "Dragon Age",
        ],
        correctAnswer: "Mass Effect",
        explanation:
          "This pink kinda blob was a Hanar. It's only one of the many species you can encounter in this massive role-playing **space opera** series.",
      ),
      Question(
        title: "Daddy issues",
        content:
          "This **fighting game** series lets you play as Paul, Nina, Yoshimitsu, Hwoarang...",
        answers: [
          "Tekken",
          "Soul Calibur",
          "Virtua Fighter",
          "The King of Fighters",
        ],
        correctAnswer: "Tekken",
        explanation:
          "Across the many games of the series, the main plot features a never-ending conflict between father **Heihachi Mishima**, and his son turned half-devil, **Kazuya**.",
      ),
      Question(
        title: "Will it blend?",
        content:
          "The **Kingdom Hearts** series is an unexpected crossover between the universes of Final Fantasy and...",
        answers: [
          "Disney",
          "Warhammer 40,000",
          "Nintendo",
          "Studio Ghibli",
        ],
        correctAnswer: "Disney",
        explanation:
          "In 2002, the perspective of classic Final Fantasy characters fighting alongside **Mickey, Donald and Goofy** was seen with a mixture of wariness and disgust. Nowadays, the franchise is well-known, loved, and it has its die-hard fans.",
      ),
      Question(
        title: "Heavy breathing",
        content:
          "**SoulCalibur IV** (2008) featured an exclusive Star Wars character for each console it was released on. The PlayStation 3 version got Darth Vader... but what about the **Xbox 360**?",
        media: image("starwars_darthvader.jpg"),
        answers: [
          "Yoda",
          "Luke Skywalker",
          "Darth Maul",
          "Palpatine",
        ],
        correctAnswer: "Yoda",
        explanation:
          "The general ideas was that Yoda reflected Xbox 360's green brand identity, just as Darth Vader reflected PlayStation 3's overall blackness.",
        explanationMedia: image("starwars_yoda.jpg"),
      ),
    ], series: 02)
}
