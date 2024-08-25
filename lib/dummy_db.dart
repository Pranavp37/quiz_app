class DummyDb {
  static List categoreies = [
    {
      "imageurl": 'assets/images/basketball-ball.png',
      "CategoryName": 'Sports',
      "QuestionNo": '10 Questions',
    },
    {
      "imageurl": 'assets/images/calculator.png',
      "CategoryName": 'Maths',
      "QuestionNo": '10 Questions',
    },
    {
      "imageurl": 'assets/images/biology.png',
      "CategoryName": 'Biology',
      "QuestionNo": '8 Questions',
    },
    {
      "imageurl": 'assets/images/test_tube.png',
      "CategoryName": 'Chemistry',
      "QuestionNo": '15 Questions',
    },
  ];

  static List<List<Map<String, dynamic>>> categorizedQuestions = [
    // Category: Sports
    [
      {
        "question": "Which country won the FIFA World Cup in 2018?",
        "options": ["Brazil", "Germany", "France", "Argentina"],
        "answer": 2, // France
      },
      {
        "question": "What sport is known as 'the beautiful game'?",
        "options": ["Basketball", "Cricket", "Football (Soccer)", "Tennis"],
        "answer": 2, // Football (Soccer)
      },
      {
        "question": "Who has won the most Olympic gold medals?",
        "options": ["Usain Bolt", "Michael Phelps", "Carl Lewis", "Mark Spitz"],
        "answer": 1, // Michael Phelps
      },
      {
        "question": "Which country has won the most Rugby World Cups?",
        "options": ["New Zealand", "Australia", "South Africa", "England"],
        "answer": 0 // New Zealand
      },
      {
        "question": "In which sport would you perform a slam dunk?",
        "options": ["Basketball", "Volleyball", "Tennis", "Badminton"],
        "answer": 0 // Basketball
      },
      {
        "question": "Which tennis player has won the most Grand Slam titles?",
        "options": [
          "Roger Federer",
          "Rafael Nadal",
          "Novak Djokovic",
          "Pete Sampras"
        ],
        "answer": 2 // Novak Djokovic
      },
      {
        "question": "What is the maximum score in a single frame of snooker?",
        "options": ["155", "147", "120", "132"],
        "answer": 1 // 147
      },
      {
        "question": "In which sport is the term 'birdie' used?",
        "options": ["Golf", "Badminton", "Tennis", "Cricket"],
        "answer": 0 // Golf
      },
      {
        "question": "Which country hosted the 2016 Summer Olympics?",
        "options": ["Brazil", "China", "United Kingdom", "Russia"],
        "answer": 0 // Brazil
      },
      {
        "question":
            "Who is the only athlete to win the Olympic marathon twice?",
        "options": [
          "Eliud Kipchoge",
          "Abebe Bikila",
          "Paavo Nurmi",
          "Emil Zatopek"
        ],
        "answer": 1 // Abebe Bikila
      }
    ],

    // Category: Math
    [
      {
        "question": "What is 5 + 7?",
        "options": ["10", "11", "12", "13"],
        "answer": 2, // 12
      },
      {
        "question": "What is the value of Pi (π) to two decimal places?",
        "options": ["3.14", "2.72", "1.41", "1.61"],
        "answer": 0, // 3.14
      },
      {
        "question": "What is the derivative of x²?",
        "options": ["1", "x", "2x", "x²"],
        "answer": 2, // 2x
      },
      {
        "question": "What is the square root of 64?",
        "options": ["6", "7", "8", "9"],
        "answer": 2 // 8
      },
      {
        "question": "What is the result of 9 x 9?",
        "options": ["72", "81", "90", "99"],
        "answer": 1 // 81
      },
      {
        "question": "What is the formula for the area of a circle?",
        "options": ["2πr", "πr²", "πd", "2πr²"],
        "answer": 1 // πr²
      },
      {
        "question": "What is 15% of 200?",
        "options": ["15", "25", "30", "35"],
        "answer": 2 // 30
      },
      {
        "question": "If 3x = 12, what is the value of x?",
        "options": ["2", "3", "4", "5"],
        "answer": 2 // 4
      },
      {
        "question": "What is the next prime number after 7?",
        "options": ["8", "9", "10", "11"],
        "answer": 3 // 11
      },
      {
        "question": "What is the value of 2 raised to the power of 5?",
        "options": ["16", "32", "64", "128"],
        "answer": 1 // 32
      }
    ],

    // Category: Biology
    [
      {
        "question": "What is the powerhouse of the cell?",
        "options": ["Nucleus", "Ribosome", "Mitochondria", "Golgi apparatus"],
        "answer": 2, // Mitochondria
      },
      {
        "question": "Which part of the plant conducts photosynthesis?",
        "options": ["Root", "Stem", "Leaf", "Flower"],
        "answer": 2, // Leaf
      },
      {
        "question": "What is the basic unit of life?",
        "options": ["Atom", "Molecule", "Cell", "Organ"],
        "answer": 2, // Cell
      },
      {
        "question":
            "What type of blood cells are responsible for fighting infections?",
        "options": [
          "Red blood cells",
          "White blood cells",
          "Platelets",
          "Plasma cells"
        ],
        "answer": 1 // White blood cells
      },
      {
        "question":
            "What process do plants use to convert sunlight into chemical energy?",
        "options": [
          "Respiration",
          "Digestion",
          "Photosynthesis",
          "Transpiration"
        ],
        "answer": 2 // Photosynthesis
      },
      {
        "question":
            "Which biome is characterized by very low temperatures and permafrost?",
        "options": ["Desert", "Rainforest", "Tundra", "Savanna"],
        "answer": 2 // Tundra
      },
      {
        "question": "What is the largest organ in the human body?",
        "options": ["Liver", "Skin", "Lungs", "Brain"],
        "answer": 1 // Skin
      },
      {
        "question":
            "Which scientist is known for proposing the theory of evolution by natural selection?",
        "options": [
          "Gregor Mendel",
          "Isaac Newton",
          "Albert Einstein",
          "Charles Darwin"
        ],
        "answer": 3 // Charles Darwin
      }
    ],

    // Category: Chemistry
    [
      {
        "question": "What is the chemical symbol for water?",
        "options": ["O", "H", "H2O", "HO"],
        "answer": 2, // H2O
      },
      {
        "question": "What is the atomic number of carbon?",
        "options": ["6", "8", "12", "14"],
        "answer": 0, // 6
      },
      {
        "question": "Which gas is most abundant in the Earth's atmosphere?",
        "options": ["Oxygen", "Hydrogen", "Nitrogen", "Carbon dioxide"],
        "answer": 2, // Nitrogen
      },
      {
        "question": "What is the chemical symbol for gold?",
        "options": ["Ag", "Au", "Pb", "Fe"],
        "answer": 1 // Au
      },
      {
        "question": "Which element is known as the 'king of chemicals'?",
        "options": [
          "Sulfuric acid",
          "Hydrochloric acid",
          "Nitric acid",
          "Acetic acid"
        ],
        "answer": 0 // Sulfuric acid
      },
      {
        "question": "What is the pH of a neutral substance?",
        "options": ["0", "7", "14", "10"],
        "answer": 1 // 7
      },
      {
        "question": "What is the most common isotope of hydrogen?",
        "options": ["Protium", "Deuterium", "Tritium", "Quadrium"],
        "answer": 0 // Protium
      },
      {
        "question": "Which of the following is an alkali metal?",
        "options": ["Calcium", "Iron", "Sodium", "Magnesium"],
        "answer": 2 // Sodium
      },
      {
        "question":
            "What type of bond involves the sharing of electron pairs between atoms?",
        "options": [
          "Ionic bond",
          "Covalent bond",
          "Hydrogen bond",
          "Van der Waals bond"
        ],
        "answer": 1 // Covalent bond
      },
      {
        "question": "What is the main component of natural gas?",
        "options": ["Ethane", "Propane", "Methane", "Butane"],
        "answer": 2 // Methane
      },
      {
        "question": "What is the chemical symbol for gold?",
        "options": ["Ag", "Au", "Pb", "Fe"],
        "answer": 1 // Au
      },
      {
        "question": "Which element is known as the 'king of chemicals'?",
        "options": [
          "Sulfuric acid",
          "Hydrochloric acid",
          "Nitric acid",
          "Acetic acid"
        ],
        "answer": 0 // Sulfuric acid
      },
      {
        "question": "What is the pH of a neutral substance?",
        "options": ["0", "7", "14", "10"],
        "answer": 1 // 7
      },
      {
        "question": "What is the most common isotope of hydrogen?",
        "options": ["Protium", "Deuterium", "Tritium", "Quadrium"],
        "answer": 0 // Protium
      },
      {
        "question": "Which of the following is an alkali metal?",
        "options": ["Calcium", "Iron", "Sodium", "Magnesium"],
        "answer": 2 // Sodium
      },
    ],
  ];

  static List<Map<String, dynamic>> questions = [
    {
      "question": "What is the capital of France?",
      "options": ["Berlin", "Paris", "Madrid", "Rome"],
      "answer": 1, // Paris
    },
    {
      "question": "What is 2 + 2?",
      "options": ["3", "4", "5", "6"],
      "answer": 1, // 4
    },
    {
      "question": "Who wrote 'Romeo and Juliet'?",
      "options": [
        "William Shakespeare",
        "Charles Dickens",
        "Mark Twain",
        "Jane Austen"
      ],
      "answer": 0, // William Shakespeare
    },
    {
      "question": "Which planet is known as the Red Planet?",
      "options": ["Earth", "Mars", "Jupiter", "Saturn"],
      "answer": 1, // Mars
    },
    {
      "question": "What is the largest ocean on Earth?",
      "options": [
        "Atlantic Ocean",
        "Indian Ocean",
        "Pacific Ocean",
        "Arctic Ocean"
      ],
      "answer": 2, // Pacific Ocean
    },
    {
      "question": "What is the square root of 64?",
      "options": ["6", "7", "8", "9"],
      "answer": 2, // 8
    },
    {
      "question": "Which element has the chemical symbol 'O'?",
      "options": ["Oxygen", "Osmium", "Gold", "Silver"],
      "answer": 0, // Oxygen
    },
    {
      "question": "In which year did the Titanic sink?",
      "options": ["1910", "1912", "1914", "1916"],
      "answer": 1, // 1912
    },
    {
      "question": "What is the hardest natural substance on Earth?",
      "options": ["Gold", "Iron", "Diamond", "Quartz"],
      "answer": 2, // Diamond
    },
    {
      "question": "Which country is known as the Land of the Rising Sun?",
      "options": ["China", "Japan", "Thailand", "India"],
      "answer": 1, // Japan
    },
    {
      "question": "How many continents are there on Earth?",
      "options": ["5", "6", "7", "8"],
      "answer": 2, // 7
    },
    {
      "question": "What is the boiling point of water?",
      "options": ["90°C", "100°C", "110°C", "120°C"],
      "answer": 1, // 100°C
    },
  ];
}
