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
      "QuestionNo": '15 Questions',
    },
    {
      "imageurl": 'assets/images/biology.png',
      "CategoryName": 'Biology',
      "QuestionNo": '20 Questions',
    },
    {
      "imageurl": 'assets/images/test_tube.png',
      "CategoryName": 'Chemistry',
      "QuestionNo": '10 Questions',
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
    // Add 7 more Sports questions here...
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
    // Add 7 more Math questions here...
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
    // Add 7 more Biology questions here...
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
    // Add 7 more Chemistry questions here...
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
