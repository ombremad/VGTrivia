//
//  Questions.swift
//  VGTrivia
//
//  Created by Anne Ferret on 22/08/2025.
//

private let baseAssetURL = "https://raw.githubusercontent.com/ombremad/VGTrivia/refs/heads/main/external_assets/"

let questions: [Question] = [
//    Question(
//        title: "Four in a square",
//        content: "In **Minecraft (2011)**, you need them to make a crafting table...",
//        media: DisplayMedia(
//            type: .image,
//            url: baseAssetURL + "crafting_table.webp"
//        ),
//        answers: [
//            "Wooden planks",
//            "Logs",
//            "Stones",
//            "Sticks",
//        ],
//        correctAnswer: "Wooden planks",
//        explanation: "Any sort of wooden plank will do, as long as you have four of them, and put them in a 2x2 square.",
//    ),
//    Question(
//        title: "Mario",
//        content: "What's the official last name of famous Nintendo's character, **Mario**?",
//        answers: [
//            "Mario",
//            "Giamatti",
//            "Letsago",
//            "Toadstool",
//        ],
//        correctAnswer: "Mario",
//        explanation: "This weird last name was coined in the infamous Super Mario Bros. 1993 movie. At first, the maker of Mario, Shigeru Miyamoto, found it rather ridiculous, but in 2015, he admitted that Mario's full name was indeed **\"Mario Mario\"**.",
//    ),
//    Question(
//        title: "Shake it",
//        content: "This **1999 rhythm game** features a monkey playing maracas, wearing cliché Latin-American attire...",
//        answers: [
//            "Super Monkey Ball",
//            "Samba de Amigo",
//            "Donkey Konga",
//            "Pop'n Music",
//        ],
//        correctAnswer: "Samba de Amigo",
//        explanation: "An arcade game ported to the SEGA Dreamcast, Samba de Amigo let the player shake an **actual pair of maracas** to the rhythm of the music and strike various poses.",
//    ),
//    Question(
//        title: "Blue blur",
//        content: "Which year saw the release of the very first **Sonic the Hedgehog** game by SEGA?",
//        answers: [
//            "1989",
//            "1991",
//            "1993",
//            "1995",
//        ],
//        correctAnswer: "1991",
//        explanation: "A mere year after Nintendo released their SNES and Super Mario World, Sonic showed that the SEGA Mega Drive (Genesis in the USA), available since 1988 in Japan, was still a powerhouse to be reckoned with.",
//        preventShuffling: true,
//    ),
//    Question(
//        title: "Urgh",
//        content: "He used (without permission) a music from **Sonic the Hedgehog (2006)** for a commercial...",
//        answers: [
//            "Donald Trump",
//            "Jair Bolsonaro",
//            "Vladimir Putin",
//            "Javier Milei",
//        ],
//        correctAnswer: "Jair Bolsonaro",
//        explanation: "The fascist Bolsonaro was exposed by the official **Sonic the Hedgehog Twitter account**, for releasing a commercial prominently featuring an epic boss battle theme stolen from the Sonic the Hedgehog (2006) game soundtrack.",
//    ),
//    Question(
//        title: "Strawberries!",
//        content: "2D platformer **Celeste (2018)** actually started as a tiny game jam project on the following platform...",
//        answers: [
//            "PICO-8",
//            "Game Boy Color",
//            "NES",
//            "Intellivision Amico",
//        ],
//        correctAnswer: "PICO-8",
//        explanation: "This original version of Celeste was included in the full-fledged version, as a bonus. The **PICO-8** is a \"fantasy\" retro-style console. It feels like a regular console, but runs on Windows, Mac, Linux... ",
//    ),
//    Question(
//        title: "Earworm",
//        content: "This studio used to start their games with a resounding **\"Challenge everything\"**...",
//        answers: [
//            "EA",
//            "Activision",
//            "SEGA",
//            "Blizzard",
//        ],
//        correctAnswer: "EA",
//        explanation: "Many players remember the whispered sound \"EA Games! Challenge everything\". It lasted only from around 2002 to 2005, but was featured in many iconic games : The Sims 2, Need for Speed Underground, the Battlefield and Harry Potter series...",
//    ),
//    Question(
//        title: "The Wall",
//        content: "This game was wildly marketed as a **\"Soviet Game\"** in the West during the late 1980s...",
//        answers: [
//            "Tetris",
//            "Missile Command",
//            "Populous",
//            "Castle Wolfenstein",
//        ],
//        correctAnswer: "Tetris",
//        explanation: "Created in 1985, during the last years of the **USSR**. It escaped the iron curtain thanks to more-or-less shady deals. In the West, marketers sold it as a mysterious \"Soviet Mind Game\", complete with faux-cyrillic fonts and Russian iconography.",
//    ),
//    Question(
//        title: "Beep boop",
//        content: "Which popular music software is still used nowadays to create tunes on the original **Game Boy**?",
//        answers: [
//            "LSDj",
//            "MilkyTracker",
//            "Ableton Live",
//            "Virtual DJ",
//        ],
//        correctAnswer: "LSDj",
//        explanation: "This popular piece of software has been developed and updated by its creator, **Johan Kotlinki**, for more than two decades. It can be put on a blank cartridge and run on the Game Boy hardware, to make chiptune music on-the-go!",
//    ),
//    Question(
//        title: "Iconic is the word",
//        content: "This guy is responsible for the original **Super Mario Bros. (1985)** music themes...",
//        answers: [
//            "Koji Kondo",
//            "Nobuo Uematsu",
//            "Yuzo Koshiro",
//            "Hirokazu Tanaka",
//        ],
//        correctAnswer: "Koji Kondo",
//        explanation: "**Koji Kondo** has composed music for the Super Mario Bros. and The Legend of Zelda series since their inception, and he's still going to this day. He's kind of a legend.",
//    ),
//    Question(
//        title: "Still Alive",
//        content: "🎵 This was a triumph. I'm making a note here... 🎵",
//        answers: [
//            "HUGE SUCCESS.",
//            "S.O.S.",
//            "MORNING DRESS.",
//            "WHAT A MESS.",
//        ],
//        correctAnswer: "HUGE SUCCESS.",
//        explanation: "Those were the opening lyrics from **Still Alive**, the ending theme of Portal. It was sung by GLaDOS, a fictional AI / supercomputer whose primary function is to kill you, and probably kill you again if she succeeds.",
//    ),
//    Question(
//        title: "The more the merrier",
//        content: "This was the first popular home video game console to come with **four controller ports**, instead of usually two...",
//        answers: [
//            "Nintendo 64",
//            "PlayStation",
//            "Xbox",
//            "Dreamcast",
//        ],
//        correctAnswer: "Nintendo 64",
//        explanation: "The Nintendo 64 was indeed the first well-known home console to feature four controller ports, making it an ideal candidate for **multiplayer games** (GoldenEye 007, Mario Kart 64, Mario Party, Super Smash Bros...).",
//    ),
//    Question(
//        title: "On the radio",
//        content: "Those famous bands all have covers of their music in the fictional language of **The Sims**... almost. Which is the odd one out of the list?",
//        answers: [
//            "Coldplay",
//            "The Black Eyed Peas",
//            "Depeche Mode",
//            "Katy Perry",
//        ],
//        correctAnswer: "Coldplay",
//        explanation: "**The Sims** convinced many artists to gibberish their own songs: Depeche Mode, The Black Eyed Peas, Katy Perry, Paramore, Lily Allen, Carly Rae Jepsen, The Pussycat Dolls, Rise Against, OK Go, My Chemical Romance, Charli XCX, girl in red...",
//    ),
//    Question(
//        title: "Sul sul!",
//        content: "**The Sims** video game series invented a peculiar language that is used in the game world. How was it named?",
//        answers: [
//            "Simlish",
//            "Simmish",
//            "Simsling",
//            "Simspeak",
//        ],
//        correctAnswer: "Simlish",
//        explanation: "A few phrases and words do exist in Simlish, but for the most part, it's gibberish. It does use a **limited set of consonants**, to make it \"sound\" like a real language.",
//    ),
//    Question(
//        title: "Now loading...",
//        content: "Which of these consoles didn't have a **CD drive**?",
//        answers: [
//            "Nintendo 64",
//            "PlayStation",
//            "3DO Interactive Multiplayer",
//            "SEGA Saturn",
//        ],
//        correctAnswer: "Nintendo 64",
//        explanation: "Nintendo was notoriously late to the CD party. The limited cartridge storage of the Nintendo 64 prevented it from getting games with heavy content such as CD-quality music or cinematics.",
//    ),
//    Question(
//        title: "Under the truck",
//        content: "What's the **151st Pokémon**...",
//        answers: [
//            "Mew",
//            "Pikachu",
//            "Arceus",
//            "Mewtwo",
//        ],
//        correctAnswer: "Mew",
//        explanation: "In the first-generation Pokémon games, it was impossible to get the **hidden 151st Pokémon**, Mew, through normal gameplay. An urban legend claimed that it could be found in the game by triggering a rare event involving a truck. Of course, it was untrue.",
//    ),
//    Question(
//        title: "Friends forever",
//        content: "In which game series can you see **Mario**, **Sonic**, **Pikachu** and their friends fighting against each other without mercy?",
//        answers: [
//            "Super Smash Bros.",
//            "Super Battle Bros.",
//            "Super VS Bros.",
//            "Super Brawler Bros."
//        ],
//        correctAnswer: "Super Smash Bros.",
//        explanation: "What started as a small party game with twelve Nintendo characters evolved to become an all-star brawler. Its latest installment, Super Smash Bros. Ultimate, features **89 characters** from many different game studios!",
//    ),
//    Question(
//        title: "...come again?",
//        content: "Gamers came up with what they called the **Nuzlocke challenge**, a set of rules to make the games of the following series harder to complete...",
//        answers: [
//            "Pokémon",
//            "Super Mario Bros.",
//            "Dark Souls",
//            "Final Fantasy"
//        ],
//        correctAnswer: "Pokémon",
//        explanation: "The Nuzlocke challenge was sort of an attempt to make a **hard mode** for Pokémon games. Its most well-known rule forces the player to consider that any K.O'd Pokémon is actually dead: it cannot ever be used again.",
//    ),
//    Question(
//        title: "There's more than 150...",
//        content: "Only one of those isn't a Champion from the massive character roaster of **League of Legends (2009)**...",
//        answers: [
//            "Bristleback",
//            "Mordekaiser",
//            "Nocturne",
//            "Jinx"
//        ],
//        correctAnswer: "Bristleback",
//        explanation: "Bristleback is actually a character from **Dota 2**, a game bearing striking resemblance to League of Legends. The initial DotA (then a mod for Warcraft III) saw its team split between the two projects and... listen, it's a long story, okay?",
//    ),
//    Question(
//        title: "You can't always get what you want",
//        content: "A critical and commercial failure, this console was the lowest-selling hardware of all **Nintendo** history...",
//        answers: [
//            "Virtual Boy",
//            "Nintendo Wii U",
//            "Nintendo DSi",
//            "Master System"
//        ],
//        correctAnswer: "Virtual Boy",
//        explanation: "50% VR headset, 50% Game Boy successor, the Virtual Boy was 100% a failure, with only 770,000 units sold worldwide. Nintendo barely acknowledges it ever happened. Its second biggest flop, the Wii U, still sold more than 13 million units.",
//    ),
//    Question(
//        title: "Muscle memory",
//        content: "↑ ↑ ↓ ↓ ← → ← → B A START",
//        answers: [
//            "Konami code",
//            "PaRappa The Rapper",
//            "Sonic debug",
//            "Lara Croft nude"
//        ],
//        correctAnswer: "Konami code",
//        explanation: "First used in the title screen of **Gradius (1986)** for the NES, to unlock power-ups, the code was then inserted in many Konami games. Other developers started using it, too. Nowadays, it's more of an easter egg, hidden in many games.",
//    ),
//    Question(
//        title: "Games within a game",
//        content: "Which of these isn't a game mode available in **Fortnite**?",
//        answers: [
//            "Fortnite Fantasy",
//            "Battle Royale",
//            "Fortnite Festival",
//            "LEGO Fortnite"
//        ],
//        correctAnswer: "Fortnite Fantasy",
//        explanation: "Nowadays, Fortnite is really a **platform** more than it is a game. You can pick between various game modes, like the OG Save the World, the well-known Battle Royale, LEGO Fortnite (a Minecraft-like survival), Fortnite Festival (a rhythm game by the makers of Rock Band), and more...",
//    ),
//    Question(
//        title: "Know your enemy",
//        content: "In **Stardew Valley (2016)**, players can choose to help the Community Center, or to join forces with the evil megacorporation known as...",
//        answers: [
//            "Joja Corporation",
//            "Arasaka Corporation",
//            "Abstergo Industries",
//            "Future Foundation",
//        ],
//        correctAnswer: "Joja Corporation",
//        explanation: "If the player gets a **JojaMart** membership, the beloved **Community Center**, that you could help rebuild, is permanently replaced with a warehouse. Choosing between those two paths is one of the key elements of Stardew Valley's story.",
//    ),
//    Question(
//        title: "Goodbye, inspector",
//        content: "In this game, set in the fictional communist state of **Arstotzka**, you play as an immigration inspector tangled in a web of new rules, regulations, and geopolitical intrigue...",
//        answers: [
//            "Papers, Please",
//            "Geo-Political Simulator 5",
//            "Citizen Sleeper",
//            "Republic: The Revolution",
//        ],
//        correctAnswer: "Papers, Please",
//        explanation: "Through simple gameplay mechanisms, like ID and fingerprint checks, **Papers, Please (2013)** tells a loaded story about authoritarianism and immigration. It offers 20 different endings, based on the player's choices.",
//    ),
//    Question(
//        title: "So cuuuute!",
//        content: "A cute, round, pink blob in the **Nintendo** universe. He eats his enemies to mimic their powers...",
//        answers: [
//            "Kirby",
//            "Yoshi",
//            "Toad",
//            "Shyguy",
//        ],
//        correctAnswer: "Kirby",
//        explanation: "Don't get fooled by his cute looks! **Kirby** is a powerful being. He's the reincarnation of a God, and is capable of saving galaxies and destroying entire dimensions alike.",
//    ),
//    Question(
//        title: "Mother?",
//        content: "In the beginning of a new game of **The Binding of Isaac (2011)**, main protagonist Isaac has to defeat enemies by using his...",
//        answers: [
//            "Tears",
//            "Blood",
//            "Sweat",
//            "Fists",
//        ],
//        correctAnswer: "Tears",
//        explanation: "Naked and scared, little Isaac has no issue coming with a **constant flow of tears** to shoot against foes. Upgrading this rather puny ability through various power-ups is one of the game's main gameplay features.",
//    ),
//    Question(
//        title: "About a bear",
//        content: "Which 2023 game, adapted from the 5th edition of **Dungeons and Dragons**, let you team up with Astarion, Gale, Shadowheart, Lae'zel, Wyll and Karlach?",
//        answers: [
//            "Baldur's Gate 3",
//            "The Witcher 3: Wild Hunt",
//            "The Elder Scrolls V: Skyrim",
//            "Elden Ring",
//        ],
//        correctAnswer: "Baldur's Gate 3",
//        explanation: "Independant developer **Larian Studio**, based in Ghent, Belgium, made what is now widely regarded as one of the greatest role-playing games of all time.",
//    ),
//    Question(
//        title: "Boy!",
//        content: "In the first three main **God of War** games, protagonist Kratos evolves in a Greek setting. Then, in **2018**, the series evolves to embrace which new mythology?",
//        answers: [
//            "Norse",
//            "Roman",
//            "Slavic",
//            "Egyptian",
//        ],
//        correctAnswer: "Norse",
//        explanation: "In the 2018 reboot/sequel of the series, the aging son of Zeus has come short of Olympian gods to kill. He now wanders the Norse pantheon, in the realm of **Midgard**, with his son Atreus.",
//    ),
//    Question(
//            title: "Press F",
//            content: "In **Call of Duty: Advanced Warfare (2014)**, players mocked a scene where you are prompted to press a key to...",
//            answers: [
//                "Pay respects",
//                "Reload your weapon",
//                "Shake hands",
//                "Close a door",
//            ],
//            correctAnswer: "Pay respects",
//            explanation: "During a funeral cutscene, the game literally told PC players to **\"Press F to Pay Respects\"**, which instantly became a meme still referenced online today.",
//        ),
//        Question(
//            title: "Phone home",
//            content: "The infamous game **E.T. the Extra-Terrestrial (1982)** is often blamed for...",
//            answers: [
//                "The US video game crash of 1983",
//                "Introducing microtransactions",
//                "Causing epilepsy scandals",
//                "Being banned in Japan",
//            ],
//            correctAnswer: "The US video game crash of 1983",
//            explanation: "Millions of unsold E.T. cartridges were **buried in a New Mexico landfill**. The US video game industry collapsed soon after — though saying it's all E.T.'s fault is a bit of a stretch.",
//        ),
//    Question(
//            title: "No items!",
//            content: "In competitive **Super Smash Bros. Melee (2001)**, almost all tournaments allow only this single stage to be picked...",
//            answers: [
//                "Final Destination",
//                "Battlefield",
//                "Pokémon Stadium",
//                "Dream Land",
//            ],
//            correctAnswer: "Final Destination",
//            explanation: "Flat, simple, no hazards: Final Destination became the ultimate neutral stage in Smash culture. The meme **\"Fox only, no items, Final Destination\"** still lingers in gaming circles.",
//        ),
    Question(
            title: "Hon hon",
            content: "This French actor was portrayed as a main character in the Japanese game **Onimusha 3: Demon Siege** (2004).",
            answers: [
                "Jean Reno",
                "Vincent Cassel",
                "Christophe Lambert",
                "Alain Delon",
            ],
            correctAnswer: "Jean Reno",
            explanation: "Onimusha 3's convoluted story goes back and forth between feudal Japan and **contemporary France**. Jean Reno provides his likeliness, but also motion capture and French voice acting.",
            explanationMedia: DisplayMedia(
                type: .image,
                url: baseAssetURL + "jean_reno.jpg"
            ),
        ),
    Question(
            title: "When you need me",
            content: "Who's this?",
            media: DisplayMedia(
                type: .image,
                url: baseAssetURL + "master_chief.jpg"
            ),
            answers: [
                "Master Chief",
                "Doom Slayer",
                "Samus Aran",
                "Isaac Clarke",
            ],
            correctAnswer: "Master Chief",
            explanation: "He's the main protagonist of the **Halo** video game series, also known as **John-117**, or simply The Chief. He's also the first video game character to have received a wax sculpture in Madame Tussauds' museums.",
            explanationMedia: DisplayMedia(
                type: .image,
                url: baseAssetURL + "master_chief_madame_tussauds.jpg"
            ),
        ),
    Question(
            title: "Inside the cube",
            content: "Who's this?",
            media: DisplayMedia(
                type: .image,
                url: baseAssetURL + "peter_molyneux.jpg"
            ),
            answers: [
                "Peter Molyneux",
                "Sid Meier",
                "Todd Howard",
                "Neil Druckmann",
            ],
            correctAnswer: "Peter Molyneux",
            explanation: "A famous video game designer, he's behind **Fable**, **Theme Park**, **Dungeon Keeper**, **Populous**, **Black and White**... he has been mocked online, for usually promising more than what his team could deliver.",
        ),
    Question(
            title: "That's mayor to you",
            content: "Who's this character from the **Super Mario** franchise?",
            media: DisplayMedia(
                type: .image,
                url: baseAssetURL + "pauline.jpg"
            ),
            answers: [
                "Pauline",
                "Peach",
                "Daisy",
                "Rosalina",
            ],
            correctAnswer: "Pauline",
            explanation: "The original kidnapped lady in the **Donkey Kong** 1981 arcade game. She made her big comeback in the Mario universe, with newfound mayor role and singing skills, in **Super Mario Odyssey** (2017) and **Donkey Kong Bananza** (2025).",
        ),
]
