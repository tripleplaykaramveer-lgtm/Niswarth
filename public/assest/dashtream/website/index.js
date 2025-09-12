const data = [
    {
        "id": "education",
        "name": "EDUCATION",
        "items": [
            {
                "id": "free-books",
                "title": "Free Books",
                "description": "Essential textbooks and notebooks for students in need.",
                "image": "https://images.unsplash.com/photo-1705721357357-ab87523248f7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGJvb2tzfGVufDB8fDB8fHww",
                "modalSteps": [
                    {
                        "step": 1,
                        "title": "Books",
                        "options": ["School books", "College books", "Professional course books", "Spiritual books", "Miscellaneous/other books"],
                        "nextSteps": {
                            "School books": [
                                {
                                    "step": 2,
                                    "title": "Choose Board",
                                    "options": ["RBSE", "CBSE", "NCERT"],
                                    "nextSteps": {
                                        "RBSE": [
                                            {
                                                "step": 3,
                                                "title": "Select Class",
                                                "options": ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
                                                "nextSteps": {
                                                    "1": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Maths", "Science", "Social Studies"],
                                                            "data": {
                                                                "Maths": ["Counting Basics", "Addition & Subtraction", "Shapes"],
                                                                "Science": ["Living and Nonliving", "Our Senses", "Weather"],
                                                                "Social Studies": ["My School", "Family and Friends", "Neighborhood"]
                                                            }
                                                        }
                                                    ],
                                                    "2": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Maths", "Science", "Social Studies"],
                                                            "data": {
                                                                "Maths": ["Numbers and Patterns", "Money", "Time"],
                                                                "Science": ["Plants", "Animals", "Air and Water"],
                                                                "Social Studies": ["Maps", "Seasons", "Community Helpers"]
                                                            }
                                                        }
                                                    ],
                                                    "3": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Maths", "Science", "Social Studies"],
                                                            "data": {
                                                                "Maths": ["Multiplication", "Division", "Geometry"],
                                                                "Science": ["Human Body", "Food and Health", "Earth and Sky"],
                                                                "Social Studies": ["Our Country", "Transport", "Communication"]
                                                            }
                                                        }
                                                    ],
                                                    "4": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Maths", "Science", "Social Studies"],
                                                            "data": {
                                                                "Maths": ["Fractions", "Decimals", "Measurement"],
                                                                "Science": ["Matter", "Energy", "Living Organisms"],
                                                                "Social Studies": ["States of India", "Cultural Heritage", "Civics Basics"]
                                                            }
                                                        }
                                                    ],
                                                    "5": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Maths", "Science", "Social Studies"],
                                                            "data": {
                                                                "Maths": ["Percentages", "Data Handling", "Area and Perimeter"],
                                                                "Science": ["Light and Sound", "Our Environment", "Human Body Systems"],
                                                                "Social Studies": ["Ancient India", "Indian Geography", "Indian Democracy"]
                                                            }
                                                        }
                                                    ],
                                                    "6": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["History", "Geography", "Civics"],
                                                            "data": {
                                                                "History": ["Early Humans", "First Cities", "Religions and Empires"],
                                                                "Geography": ["Latitudes and Longitudes", "Landforms", "Water Bodies"],
                                                                "Civics": ["Diversity", "Government", "Local Administration"]
                                                            }
                                                        }
                                                    ],
                                                    "7": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["History", "Geography", "Civics"],
                                                            "data": {
                                                                "History": ["Medieval India", "Kings and Kingdoms", "Cultural Developments"],
                                                                "Geography": ["Environment", "Resources", "Weather & Climate"],
                                                                "Civics": ["Democracy", "State Government", "Role of Media"]
                                                            }
                                                        }
                                                    ],
                                                    "8": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["History", "Geography", "Civics"],
                                                            "data": {
                                                                "History": ["Colonialism", "Indian Freedom Struggle", "Reform Movements"],
                                                                "Geography": ["Natural Resources", "Industries", "Urbanization"],
                                                                "Civics": ["Laws", "Judiciary", "Social Justice"]
                                                            }
                                                        }
                                                    ],
                                                    "9": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Physics", "Chemistry", "Biology"],
                                                            "data": {
                                                                "Physics": ["Motion", "Force", "Work and Energy"],
                                                                "Chemistry": ["Matter", "Atoms and Molecules", "Chemical Reactions"],
                                                                "Biology": ["Cell Structure", "Tissues", "Diversity of Living Organisms"]
                                                            }
                                                        }
                                                    ],
                                                    "10": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Physics", "Chemistry", "Biology"],
                                                            "data": {
                                                                "Physics": ["Light", "Electricity", "Magnetic Effects"],
                                                                "Chemistry": ["Periodic Table", "Metals & Non-metals", "Carbon Compounds"],
                                                                "Biology": ["Life Processes", "Control and Coordination", "Reproduction"]
                                                            }
                                                        }
                                                    ],
                                                    "11": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Physics", "Chemistry", "Biology"],
                                                            "data": {
                                                                "Physics": ["Units and Measurements", "Kinematics", "Thermodynamics"],
                                                                "Chemistry": ["Atomic Structure", "Chemical Bonding", "Equilibrium"],
                                                                "Biology": ["Plant Physiology", "Animal Kingdom", "Biomolecules"]
                                                            }
                                                        }
                                                    ],
                                                    "12": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Physics", "Chemistry", "Biology"],
                                                            "data": {
                                                                "Physics": ["Electrostatics", "Magnetism", "Modern Physics"],
                                                                "Chemistry": ["Solid State", "Surface Chemistry", "Polymers"],
                                                                "Biology": ["Genetics", "Evolution", "Ecology"]
                                                            }
                                                        }
                                                    ]
                                                }
                                            }

                                        ],
                                        "CBSE": [
                                            {
                                                "step": 3,
                                                "title": "Select Class",
                                                "options": ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
                                                "nextSteps": {
                                                    "1": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Maths", "Science", "Social Studies"],
                                                            "data": {
                                                                "Maths": ["Counting Basics", "Addition & Subtraction", "Shapes"],
                                                                "Science": ["Living and Nonliving", "Our Senses", "Weather"],
                                                                "Social Studies": ["My School", "Family and Friends", "Neighborhood"]
                                                            }
                                                        }
                                                    ],
                                                    "2": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Maths", "Science", "Social Studies"],
                                                            "data": {
                                                                "Maths": ["Numbers and Patterns", "Money", "Time"],
                                                                "Science": ["Plants", "Animals", "Air and Water"],
                                                                "Social Studies": ["Maps", "Seasons", "Community Helpers"]
                                                            }
                                                        }
                                                    ],
                                                    "3": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Maths", "Science", "Social Studies"],
                                                            "data": {
                                                                "Maths": ["Multiplication", "Division", "Geometry"],
                                                                "Science": ["Human Body", "Food and Health", "Earth and Sky"],
                                                                "Social Studies": ["Our Country", "Transport", "Communication"]
                                                            }
                                                        }
                                                    ],
                                                    "4": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Maths", "Science", "Social Studies"],
                                                            "data": {
                                                                "Maths": ["Fractions", "Decimals", "Measurement"],
                                                                "Science": ["Matter", "Energy", "Living Organisms"],
                                                                "Social Studies": ["States of India", "Cultural Heritage", "Civics Basics"]
                                                            }
                                                        }
                                                    ],
                                                    "5": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Maths", "Science", "Social Studies"],
                                                            "data": {
                                                                "Maths": ["Percentages", "Data Handling", "Area and Perimeter"],
                                                                "Science": ["Light and Sound", "Our Environment", "Human Body Systems"],
                                                                "Social Studies": ["Ancient India", "Indian Geography", "Indian Democracy"]
                                                            }
                                                        }
                                                    ],
                                                    "6": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["History", "Geography", "Civics"],
                                                            "data": {
                                                                "History": ["Early Humans", "First Cities", "Religions and Empires"],
                                                                "Geography": ["Latitudes and Longitudes", "Landforms", "Water Bodies"],
                                                                "Civics": ["Diversity", "Government", "Local Administration"]
                                                            }
                                                        }
                                                    ],
                                                    "7": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["History", "Geography", "Civics"],
                                                            "data": {
                                                                "History": ["Medieval India", "Kings and Kingdoms", "Cultural Developments"],
                                                                "Geography": ["Environment", "Resources", "Weather & Climate"],
                                                                "Civics": ["Democracy", "State Government", "Role of Media"]
                                                            }
                                                        }
                                                    ],
                                                    "8": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["History", "Geography", "Civics"],
                                                            "data": {
                                                                "History": ["Colonialism", "Indian Freedom Struggle", "Reform Movements"],
                                                                "Geography": ["Natural Resources", "Industries", "Urbanization"],
                                                                "Civics": ["Laws", "Judiciary", "Social Justice"]
                                                            }
                                                        }
                                                    ],
                                                    "9": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Physics", "Chemistry", "Biology"],
                                                            "data": {
                                                                "Physics": ["Motion", "Force", "Work and Energy"],
                                                                "Chemistry": ["Matter", "Atoms and Molecules", "Chemical Reactions"],
                                                                "Biology": ["Cell Structure", "Tissues", "Diversity of Living Organisms"]
                                                            }
                                                        }
                                                    ],
                                                    "10": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Physics", "Chemistry", "Biology"],
                                                            "data": {
                                                                "Physics": ["Light", "Electricity", "Magnetic Effects"],
                                                                "Chemistry": ["Periodic Table", "Metals & Non-metals", "Carbon Compounds"],
                                                                "Biology": ["Life Processes", "Control and Coordination", "Reproduction"]
                                                            }
                                                        }
                                                    ],
                                                    "11": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Physics", "Chemistry", "Biology"],
                                                            "data": {
                                                                "Physics": ["Units and Measurements", "Kinematics", "Thermodynamics"],
                                                                "Chemistry": ["Atomic Structure", "Chemical Bonding", "Equilibrium"],
                                                                "Biology": ["Plant Physiology", "Animal Kingdom", "Biomolecules"]
                                                            }
                                                        }
                                                    ],
                                                    "12": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Physics", "Chemistry", "Biology"],
                                                            "data": {
                                                                "Physics": ["Electrostatics", "Magnetism", "Modern Physics"],
                                                                "Chemistry": ["Solid State", "Surface Chemistry", "Polymers"],
                                                                "Biology": ["Genetics", "Evolution", "Ecology"]
                                                            }
                                                        }
                                                    ]
                                                }
                                            }
                                        ],
                                        "NCERT": [
                                            {
                                                "step": 3,
                                                "title": "Select Class",
                                                "options": ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
                                                "nextSteps": {
                                                    "1": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Maths", "Science", "Social Studies"],
                                                            "data": {
                                                                "Maths": ["Counting Basics", "Addition & Subtraction", "Shapes"],
                                                                "Science": ["Living and Nonliving", "Our Senses", "Weather"],
                                                                "Social Studies": ["My School", "Family and Friends", "Neighborhood"]
                                                            }
                                                        }
                                                    ],
                                                    "2": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Maths", "Science", "Social Studies"],
                                                            "data": {
                                                                "Maths": ["Numbers and Patterns", "Money", "Time"],
                                                                "Science": ["Plants", "Animals", "Air and Water"],
                                                                "Social Studies": ["Maps", "Seasons", "Community Helpers"]
                                                            }
                                                        }
                                                    ],
                                                    "3": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Maths", "Science", "Social Studies"],
                                                            "data": {
                                                                "Maths": ["Multiplication", "Division", "Geometry"],
                                                                "Science": ["Human Body", "Food and Health", "Earth and Sky"],
                                                                "Social Studies": ["Our Country", "Transport", "Communication"]
                                                            }
                                                        }
                                                    ],
                                                    "4": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Maths", "Science", "Social Studies"],
                                                            "data": {
                                                                "Maths": ["Fractions", "Decimals", "Measurement"],
                                                                "Science": ["Matter", "Energy", "Living Organisms"],
                                                                "Social Studies": ["States of India", "Cultural Heritage", "Civics Basics"]
                                                            }
                                                        }
                                                    ],
                                                    "5": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Maths", "Science", "Social Studies"],
                                                            "data": {
                                                                "Maths": ["Percentages", "Data Handling", "Area and Perimeter"],
                                                                "Science": ["Light and Sound", "Our Environment", "Human Body Systems"],
                                                                "Social Studies": ["Ancient India", "Indian Geography", "Indian Democracy"]
                                                            }
                                                        }
                                                    ],
                                                    "6": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["History", "Geography", "Civics"],
                                                            "data": {
                                                                "History": ["Early Humans", "First Cities", "Religions and Empires"],
                                                                "Geography": ["Latitudes and Longitudes", "Landforms", "Water Bodies"],
                                                                "Civics": ["Diversity", "Government", "Local Administration"]
                                                            }
                                                        }
                                                    ],
                                                    "7": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["History", "Geography", "Civics"],
                                                            "data": {
                                                                "History": ["Medieval India", "Kings and Kingdoms", "Cultural Developments"],
                                                                "Geography": ["Environment", "Resources", "Weather & Climate"],
                                                                "Civics": ["Democracy", "State Government", "Role of Media"]
                                                            }
                                                        }
                                                    ],
                                                    "8": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["History", "Geography", "Civics"],
                                                            "data": {
                                                                "History": ["Colonialism", "Indian Freedom Struggle", "Reform Movements"],
                                                                "Geography": ["Natural Resources", "Industries", "Urbanization"],
                                                                "Civics": ["Laws", "Judiciary", "Social Justice"]
                                                            }
                                                        }
                                                    ],
                                                    "9": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Physics", "Chemistry", "Biology"],
                                                            "data": {
                                                                "Physics": ["Motion", "Force", "Work and Energy"],
                                                                "Chemistry": ["Matter", "Atoms and Molecules", "Chemical Reactions"],
                                                                "Biology": ["Cell Structure", "Tissues", "Diversity of Living Organisms"]
                                                            }
                                                        }
                                                    ],
                                                    "10": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Physics", "Chemistry", "Biology"],
                                                            "data": {
                                                                "Physics": ["Light", "Electricity", "Magnetic Effects"],
                                                                "Chemistry": ["Periodic Table", "Metals & Non-metals", "Carbon Compounds"],
                                                                "Biology": ["Life Processes", "Control and Coordination", "Reproduction"]
                                                            }
                                                        }
                                                    ],
                                                    "11": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Physics", "Chemistry", "Biology"],
                                                            "data": {
                                                                "Physics": ["Units and Measurements", "Kinematics", "Thermodynamics"],
                                                                "Chemistry": ["Atomic Structure", "Chemical Bonding", "Equilibrium"],
                                                                "Biology": ["Plant Physiology", "Animal Kingdom", "Biomolecules"]
                                                            }
                                                        }
                                                    ],
                                                    "12": [
                                                        {
                                                            "step": 4,
                                                            "title": "Subject",
                                                            "options": ["Physics", "Chemistry", "Biology"],
                                                            "data": {
                                                                "Physics": ["Electrostatics", "Magnetism", "Modern Physics"],
                                                                "Chemistry": ["Solid State", "Surface Chemistry", "Polymers"],
                                                                "Biology": ["Genetics", "Evolution", "Ecology"]
                                                            }
                                                        }
                                                    ]
                                                }
                                            }
                                        ]
                                    }
                                }
                            ],
                            "College books": [

                            ],
                            "Professional course books": [
                                {
                                    "step": 2,
                                    "title": "Select Course",
                                    "options": ["CA", "CS", "CFA"],
                                    "nextSteps": {
                                        "CA": [
                                            {
                                                "step": 3,
                                                "title": "Select Level",
                                                "options": ["Foundation", "Intermediate", "Final"],
                                                "data": {
                                                    "Foundation": ["Principles of Accounting", "Mercantile Laws", "General Economics"],
                                                    "Intermediate": ["Advanced Accounting", "Corporate Laws", "Taxation"],
                                                    "Final": ["Strategic Financial Management", "Auditing", "Corporate Finance"]
                                                }
                                            }
                                        ],
                                        "CS": [
                                            {
                                                "step": 3,
                                                "title": "Select Level",
                                                "options": ["Executive", "Professional"],
                                                "data": {
                                                    "Executive": ["Jurisprudence", "Company Law", "Economic Laws"],
                                                    "Professional": ["Governance", "Due Diligence", "Compliance Management"]
                                                }
                                            }
                                        ],
                                        "CFA": [
                                            {
                                                "step": 3,
                                                "title": "Select Level",
                                                "options": ["Level 1", "Level 2", "Level 3"],
                                                "data": {
                                                    "Level 1": ["Ethical Standards", "Quantitative Methods", "Financial Reporting"],
                                                    "Level 2": ["Equity Investments", "Fixed Income", "Derivatives"],
                                                    "Level 3": ["Portfolio Management", "Wealth Planning", "Asset Allocation"]
                                                }
                                            }
                                        ]
                                    }
                                }
                            ],
                            "Spiritual books": [
                                {
                                    "step": 2,
                                    "title": "Select Type",
                                    "options": ["Hindu", "Islamic", "Christian", "Sikh"],
                                    "nextSteps": {
                                        "Hindu": [
                                            {
                                                "step": 3,
                                                "title": "Select Book",
                                                "options": ["Bhagavad Gita", "Ramayana", "Mahabharata"],
                                                "data": {
                                                    "Bhagavad Gita": ["Chapter 1", "Chapter 2", "Chapter 3"],
                                                    "Ramayana": ["Bal Kand", "Ayodhya Kand", "Aranya Kand"],
                                                    "Mahabharata": ["Adi Parva", "Sabhā Parva", "Vana Parva"]
                                                }
                                            }
                                        ],
                                        "Islamic": [
                                            {
                                                "step": 3,
                                                "title": "Select Book",
                                                "options": ["Quran", "Hadith", "Tafsir"],
                                                "data": {
                                                    "Quran": ["Surah Al-Fatiha", "Surah Al-Baqarah", "Surah Al-Imran"],
                                                    "Hadith": ["Sahih Bukhari", "Sahih Muslim", "Sunan Abu Dawood"],
                                                    "Tafsir": ["Ibn Kathir", "Al-Jalalayn", "Al-Tabari"]
                                                }
                                            }
                                        ],
                                        "Christian": [
                                            {
                                                "step": 3,
                                                "title": "Select Book",
                                                "options": ["Bible", "Psalms", "Gospels"],
                                                "data": {
                                                    "Bible": ["Genesis", "Exodus", "Leviticus"],
                                                    "Psalms": ["Psalm 23", "Psalm 91", "Psalm 121"],
                                                    "Gospels": ["Matthew", "Mark", "Luke"]
                                                }
                                            }
                                        ],
                                        "Sikh": [
                                            {
                                                "step": 3,
                                                "title": "Select Book",
                                                "options": ["Guru Granth Sahib", "Dasam Granth"],
                                                "data": {
                                                    "Guru Granth Sahib": ["Japji Sahib", "Rehras Sahib", "Kirtan Sohila"],
                                                    "Dasam Granth": ["Jaap Sahib", "Akal Ustat", "Bachitar Natak"]
                                                }
                                            }
                                        ]
                                    }
                                }
                            ],
                            "Miscellaneous/other books": [
                                {
                                    "step": 2,
                                    "title": "Select Genre",
                                    "options": ["Fiction", "Non-Fiction", "Self-Help"],
                                    "nextSteps": {
                                        "Fiction": [
                                            {
                                                "step": 3,
                                                "title": "Select Type",
                                                "options": ["Novel", "Short Story", "Poetry"],
                                                "data": {
                                                    "Novel": ["Mystery", "Romance", "Science Fiction"],
                                                    "Short Story": ["Horror", "Fantasy", "Adventure"],
                                                    "Poetry": ["Classic", "Modern", "Haiku"]
                                                }
                                            }
                                        ],
                                        "Non-Fiction": [
                                            {
                                                "step": 3,
                                                "title": "Select Type",
                                                "options": ["Biography", "History", "Science"],
                                                "data": {
                                                    "Biography": ["Autobiography", "Memoir", "Diary"],
                                                    "History": ["Ancient", "Medieval", "Modern"],
                                                    "Science": ["Physics", "Biology", "Astronomy"]
                                                }
                                            }
                                        ],
                                        "Self-Help": [
                                            {
                                                "step": 3,
                                                "title": "Select Type",
                                                "options": ["Motivation", "Productivity", "Wellness"],
                                                "data": {
                                                    "Motivation": ["Goal Setting", "Positive Thinking", "Success Stories"],
                                                    "Productivity": ["Time Management", "Habit Formation", "Work Efficiency"],
                                                    "Wellness": ["Mental Health", "Physical Fitness", "Nutrition"]
                                                }
                                            }
                                        ]
                                    }
                                }
                            ]
                        }
                    }
                ]
            },
            {
                "id": "Education Building Donations",
                "title": "Education Building Donations",
                "description": "Construction and maintenance of safe, clean learning environments with proper classrooms, libraries and facilities.",
                "image": "https://images.unsplash.com/photo-1611941671018-6c3907cb7a76?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8c2Nob29sJTIwYnVpbGRpbmd8ZW58MHx8MHx8fDA%3D",
                "modalSteps": [
                    {
                        "step": 1,
                        "title": "Donation Type",
                        "options": [
                            "Donating buildings & building material for educational institutions",
                            "Providing furniture for educational institutions (tables, chairs, benches, boards)"
                        ],
                        "nextSteps": {

                        }
                    }
                ]
            },
            {
                "id": "fee-free-study",
                "title": "Fee-Free Study",
                "description": "Support for tuition fees and educational expenses to ensure no child is left behind due to financial constraints.",
                "image": "https://images.unsplash.com/photo-1660128355607-2a311a8acfa2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzV8fGZyZWUlMjBzdHVkeXxlbnwwfHwwfHx8MA%3D%3D",
                "modalSteps": [
                    { "step": 0 }


                ]
            },
            {
                "id": "Free Dress & Other Accessories",
                "title": "Free Dress & Other Accessories",
                "description": "Complete school uniforms including shirts, pants, skirts and shoes to help students attend school with dignity and equality.",
                "image": "https://plus.unsplash.com/premium_photo-1661896201873-4ec4245a83cc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Njl8fHVuaWZvcm18ZW58MHx8MHx8fDA%3D",
                "modalSteps": [
                    {
                        "step": 1,
                        "title": "Select Donation Category",
                        "options": ["School/College Uniform", "Bags", "Shoes"],
                        "nextSteps": {

                        }
                    }
                ]
            }
        ]
    },
    {
        "id": "medicine",
        "name": "MEDICINE",
        "items": [
            {
                "id": "upload-doctor-slip",
                "title": "Free Medicine",
                "description": "Support our medical initiatives through generous donations to help those in need of healthcare services.",
                "image": "https://images.unsplash.com/photo-1619708034522-7d1ddb943599?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                "modalSteps": [
                    {
                        "step": 1,
                        "title": "Select Illness",
                        "options": ["Fever", "Cold", "Digestive Issues"],
                        "nextSteps": {
                            "Fever": [
                                {
                                    "step": 2,
                                    "title": "Select Medicine",
                                    "options": ["Paracetamol", "Ibuprofen", "ORS Sachets"]
                                }
                            ],
                            "Cold": [
                                {
                                    "step": 2,
                                    "title": "Select Medicine",
                                    "options": ["Antihistamines", "Steam Inhaler", "Cough Syrup"]
                                }
                            ],
                            "Digestive Issues": [
                                {
                                    "step": 2,
                                    "title": "Select Medicine",
                                    "options": ["Antacids", "Probiotics", "ORS"]
                                }
                            ]
                        }
                    }
                ]
            }
            ,
            {
                "id": "free-medicine-consultancy",
                "title": "Free Medicine Consultancy",
                "description": "Professional medical advice and consultation services provided free of charge to underserved communities.",
                "image": "https://plus.unsplash.com/premium_photo-1661761151437-a5f7fbe5753b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzN8fG1lZGljaWFufGVufDB8fDB8fHww",
                "modalSteps": [
                    { "step": 0 }


                ]
            },
            {
                "id": "free-diagnostics",
                "title": "Free Diagnostics",
                "description": "Medical diagnostic services including lab tests and imaging to help identify health issues early.",
                "image": "https://images.unsplash.com/photo-1589104759909-e355f8999f7e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGRpYWdub3N0aWNzfGVufDB8fDB8fHww",
                "modalSteps": [
                    { "step": 0 }


                ]
            },
            {
                "id": "free-lab-tests",
                "title": "Free Lab Tests",
                "description": "Comprehensive laboratory testing services to monitor health and diagnose conditions.",
                "image": "https://images.unsplash.com/photo-1562411054-261f857a7c62?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8ZGlhZ25vc3RpY2t8ZW58MHx8MHx8fDA%3D",
                "modalSteps": [
                    { "step": 0 }


                ]
            },
            {
                "id": "donations",
                "title": "Donations",
                "description": "Support our medical initiatives through generous donations to help those in need of healthcare services.",
                "image": "https://images.unsplash.com/photo-1521369483739-e33ef611d7e2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDN8fGRvbmF0aW9ufGVufDB8fDB8fHww",
                "modalSteps": [
                    {
                        "step": 1,
                        "title": "Select Donation Category",
                        "options": ["Fund For Patient Care", "Medical Equipment", "Treatment & Surgical", "Clinics & Hospitals"],
                        "nextSteps": {
                            "Fund For Patient Care": [
                                {
                                    "step": 2,
                                    "title": "Select Amount",
                                    "options": ["500", "1000", "5000"],
                                    "data": {
                                        "500": {
                                            "impact": "Supports basic medicines for 5 patients",
                                            "taxBenefit": "80G certificate provided",
                                            "paymentOptions": ["UPI", "Credit Card", "Net Banking"]
                                        },
                                        "1000": {
                                            "impact": "Covers diagnostic tests for 2 patients",
                                            "taxBenefit": "80G certificate provided",
                                            "paymentOptions": ["UPI", "Credit Card", "Net Banking"]
                                        },
                                        "5000": {
                                            "impact": "Funds partial treatment for 1 patient",
                                            "taxBenefit": "80G certificate provided",
                                            "paymentOptions": ["UPI", "Credit Card", "Net Banking", "Cheque"]
                                        }
                                    }
                                }
                            ],
                            "Medical Equipment": [
                                {
                                    "step": 2,
                                    "title": "Select Equipment",
                                    "options": ["Ventilator", "Ultrasound Machine", "Defibrillator"],
                                    "data": {
                                        "Ventilator": {
                                            "cost": "₹2,50,000",
                                            "impact": "Can save 100+ critical patients annually",
                                            "recognition": "Donor name plaque on equipment"
                                        },
                                        "Ultrasound Machine": {
                                            "cost": "₹8,00,000",
                                            "impact": "Helps 500+ pregnant women annually",
                                            "recognition": "Donor name in annual report"
                                        },
                                        "Defibrillator": {
                                            "cost": "₹1,50,000",
                                            "impact": "Can save 50+ cardiac patients annually",
                                            "recognition": "Certificate of appreciation"
                                        }
                                    }
                                }
                            ],
                            "Treatment & Surgical": [
                                {
                                    "step": 2,
                                    "title": "Select Type",
                                    "options": ["Cancer Treatment", "Heart Surgery", "Orthopedic Surgery"],
                                    "data": {
                                        "Cancer Treatment": {
                                            "costRange": "₹50,000-₹5,00,000",
                                            "impact": "Sponsor chemotherapy or radiation",
                                            "transparency": "Regular patient updates provided"
                                        },
                                        "Heart Surgery": {
                                            "costRange": "₹1,00,000-₹3,00,000",
                                            "impact": "Save a life through cardiac surgery",
                                            "transparency": "Pre/post-op reports shared"
                                        },
                                        "Orthopedic Surgery": {
                                            "costRange": "₹30,000-₹2,00,000",
                                            "impact": "Help someone walk again",
                                            "transparency": "Surgical photos shared (optional)"
                                        }
                                    }
                                }
                            ],
                            "Clinics & Hospitals": [
                                {
                                    "step": 2,
                                    "title": "Select Contribution",
                                    "options": ["Infrastructure", "Staff Training", "Supplies"],
                                    "data": {
                                        "Infrastructure": {
                                            "examples": ["Build new ward", "Renovate OPD", "Add beds"],
                                            "impact": "Serve 50% more patients",
                                            "recognition": "Naming rights available"
                                        },
                                        "Staff Training": {
                                            "examples": ["Doctor workshops", "Nurse certification", "Paramedic courses"],
                                            "impact": "Improve quality of care",
                                            "recognition": "Training center named after donor"
                                        },
                                        "Supplies": {
                                            "examples": ["Medicines", "Bandages", "Disinfectants"],
                                            "impact": "Daily operational needs",
                                            "recognition": "Donor wall mention"
                                        }
                                    }
                                }
                            ]
                        }
                    }
                ]
            }
        ]
    },
    {
        "id": "free-food-water",
        "name": "FREE FOOD & WATER",
        "items": [
            {
                "id": "free-meals",
                "title": "Free Meals",
                "description": "Nutritious cooked meals distributed daily to people in need.",
                "image": "https://images.unsplash.com/photo-1598449426314-8b02525e8733?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nzh8fG1lYWx8ZW58MHx8MHx8fDA%3D",
                "modalSteps": [
                    {
                        "step": 1,
                        "title": "Who is the meal for?",
                        "options": ["Human", "Animal"],
                        "nextSteps": {
                            "Human": [
                                {
                                    "step": 2,
                                    "title": "Langar (Free Food)",
                                    "options": ["City-wise Distribution", "Location-based Access", "View Donor Details"],
                                    "nextSteps": {
                                        "View Donor Details": [
                                            {
                                                "step": 3,
                                                "title": "Donor Details",
                                                "options": ["View Frequency", "See Upcoming Dates", "Scan QR Code to Donate"]
                                            }
                                        ]
                                    }
                                }
                            ],
                            "Animal": [
                                {
                                    "step": 2,
                                    "title": "Select Animal Type for Feeding",
                                    "options": ["Gaushalas (Cattle Shelters)", "Street Dogs", "Birds"]
                                }
                            ]
                        }
                    }
                ]
            }
            , {
                "id": "clean-water",
                "title": "Clean Water",
                "description": "Free access to clean and safe drinking water through community taps and filters.",
                "image": "https://images.unsplash.com/photo-1538300342682-cf57afb97285?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHdhdGVyfGVufDB8fDB8fHww",
                "modalSteps": [
                    {
                        "step": 1,
                        "title": "Select Location Type",
                        "options": ["Village", "Urban", "School"],
                        "nextSteps": {
                            "Village": [
                                {
                                    "step": 2,
                                    "title": "Select Solution",
                                    "options": ["Water Filters", "Community Taps", "Wells"],
                                    "nextSteps": {
                                        "Water Filters": [
                                            {
                                                "step": 3,
                                                "title": "Installation Details",
                                                "options": ["No. of Piyaus", "Space Availability", "Water Availability", "Light Availability", "Organizer Details", "Budget Requirements"]
                                            }
                                        ],
                                        "Community Taps": [
                                            {
                                                "step": 3,
                                                "title": "Installation Details",
                                                "options": ["No. of Piyaus", "Space Availability", "Water Availability", "Light Availability", "Organizer Details", "Budget Requirements"]
                                            }
                                        ],
                                        "Wells": [
                                            {
                                                "step": 3,
                                                "title": "Installation Details",
                                                "options": ["No. of Piyaus", "Space Availability", "Water Availability", "Light Availability", "Organizer Details", "Budget Requirements"]
                                            }
                                        ]
                                    }
                                }
                            ],
                            "Urban": [
                                {
                                    "step": 2,
                                    "title": "Select Solution",
                                    "options": ["Water Dispensers", "Mobile Units", "Public Taps"],
                                    "nextSteps": {
                                        "Water Dispensers": [
                                            {
                                                "step": 3,
                                                "title": "Installation Details",
                                                "options": ["No. of Piyaus", "Space Availability", "Water Availability", "Light Availability", "Organizer Details", "Budget Requirements"]
                                            }
                                        ],
                                        "Mobile Units": [
                                            {
                                                "step": 3,
                                                "title": "Installation Details",
                                                "options": ["No. of Piyaus", "Space Availability", "Water Availability", "Light Availability", "Organizer Details", "Budget Requirements"]
                                            }
                                        ],
                                        "Public Taps": [
                                            {
                                                "step": 3,
                                                "title": "Installation Details",
                                                "options": ["No. of Piyaus", "Space Availability", "Water Availability", "Light Availability", "Organizer Details", "Budget Requirements"]
                                            }
                                        ]
                                    }
                                }
                            ],
                            "School": [
                                {
                                    "step": 2,
                                    "title": "Select Solution",
                                    "options": ["Water Coolers", "Filters", "Bottled Water"],
                                    "nextSteps": {
                                        "Water Coolers": [
                                            {
                                                "step": 3,
                                                "title": "Installation Details",
                                                "options": ["No. of Piyaus", "Space Availability", "Water Availability", "Light Availability", "Organizer Details", "Budget Requirements"]
                                            }
                                        ],
                                        "Filters": [
                                            {
                                                "step": 3,
                                                "title": "Installation Details",
                                                "options": ["No. of Piyaus", "Space Availability", "Water Availability", "Light Availability", "Organizer Details", "Budget Requirements"]
                                            }
                                        ],
                                        "Bottled Water": [
                                            {
                                                "step": 3,
                                                "title": "Installation Details",
                                                "options": ["No. of Piyaus", "Space Availability", "Water Availability", "Light Availability", "Organizer Details", "Budget Requirements"]
                                            }
                                        ]
                                    }
                                }
                            ]
                        }
                    }
                ]
            }

        ]
    },
    {
        "id": "clothes",
        "name": "CLOTHES",
        "items": [
            {
                "id": "winter-clothes",
                "title": "Winter Clothes",
                "description": "Distribution of warm clothes and blankets for the homeless and poor.",
                "image": "https://images.unsplash.com/photo-1516648064-ee10acfa64db?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHdpbnRlciUyMGNsb3RoZXN8ZW58MHx8MHx8fDA%3D",
                "modalSteps": [
                    {
                        "step": 1,
                        "title": "Choose Clothing Type",
                        "options": ["Blankets", "Sweaters", "Jackets"],
                        "nextSteps": {
                            "Blankets": [
                                {
                                    "step": 2,
                                    "title": "Select Type",
                                    "options": ["Single", "Double", "Thermal"]
                                }
                            ],
                            "Sweaters": [
                                {
                                    "step": 2,
                                    "title": "Select Size",
                                    "options": ["Small", "Medium", "Large"]
                                }
                            ],
                            "Jackets": [
                                {
                                    "step": 2,
                                    "title": "Select Type",
                                    "options": ["Fleece", "Puffer", "Wool"]
                                }
                            ]
                        }
                    }
                ]
            },
            {
                "id": "daily-wear",
                "title": "Summer Clothes",
                "description": "New and gently used clothes for people in need.",
                "image": "https://images.unsplash.com/photo-1621960426404-c7b6e52c2348?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fFN1bW1lcmNsb3RoZXN8ZW58MHx8MHx8fDA%3D",
                "modalSteps": [
                    {
                        "step": 1,
                        "title": "Select Age Group",
                        "options": ["Kids", "Adults", "Elderly"],
                        "nextSteps": {
                            "Kids": [
                                {
                                    "step": 2,
                                    "title": "Select Type",
                                    "options": ["T-Shirts", "Shorts", "Dresses"]
                                }
                            ],
                            "Adults": [
                                {
                                    "step": 2,
                                    "title": "Select Type",
                                    "options": ["Shirts", "Trousers", "Skirts"]
                                }
                            ],
                            "Elderly": [
                                {
                                    "step": 2,
                                    "title": "Select Type",
                                    "options": ["Kurtas", "Sarees", "Dhotis"]
                                }
                            ]
                        }
                    }
                ]
            }
        ]
    },
    {
        "id": "tree-installation",
        "name": "TREE INSTALLATION",
        "items": [
            {
                "id": "plant-trees",
                "title": "Plant Trees",
                "description": "Help us plant trees to combat climate change and improve urban greenery.",
                "image": "https://images.unsplash.com/photo-1501004318641-b39e6451bec6?auto=format&fit=crop&w=1350&q=80",
                "modalSteps": [
                    {
                        "step": 1,
                        "title": "Select Tree Type",

                        "options": ["Fruit Tree", "Shade Tree", "Medicinal Tree"],
                        "nextSteps": {
                            "Fruit Tree": [
                                {
                                    "step": 2,
                                    "title": "Select Variety",
                                    "options": ["Mango", "Apple", "Guava"]
                                }
                            ],
                            "Shade Tree": [
                                {
                                    "step": 2,
                                    "title": "Select Variety",
                                    "options": ["Banyan", "Neem", "Peepal"]
                                }
                            ],
                            "Medicinal Tree": [
                                {
                                    "step": 2,
                                    "title": "Select Variety",
                                    "options": ["Tulsi", "Aloe Vera", "Moringa"]
                                }
                            ]
                        }
                    }
                ]
            },
            {
                "id": "tree-donation",
                "title": "Tree Donation",
                "description": "Donate funds or saplings to support our plantation drives.",
                "image": "https://plus.unsplash.com/premium_photo-1681965550198-c1c039421905?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTAxfHx0cmVlJTIwZG9uYXRpb258ZW58MHx8MHx8fDA%3D",
                "modalSteps": [
                    {
                        "step": 1,
                        "title": "Donation Options",
                        "options": ["Buy Sapling", "Support Plantation Worker", "Fund Irrigation"],
                        "nextSteps": {
                            "Buy Sapling": [
                                {
                                    "step": 2,
                                    "title": "Select Amount",
                                    "options": ["100", "200", "500"]
                                }
                            ],
                            "Support Plantation Worker": [
                                {
                                    "step": 2,
                                    "title": "Select Amount",
                                    "options": ["500", "1000", "2000"]
                                }
                            ],
                            "Fund Irrigation": [
                                {
                                    "step": 2,
                                    "title": "Select Amount",
                                    "options": ["1000", "3000", "5000"]
                                }
                            ]
                        }
                    }
                ]
            }
        ]
    },
    {
        "id": "spiritual",
        "name": "SPIRITUAL",
        "items": [
            {
                "id": "meditation-sessions",
                "title": "Meditation Centers",
                "description": "Free guided meditation and mindfulness sessions for mental peace.",
                "image": "https://images.unsplash.com/photo-1506126613408-eca07ce68773?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWVkaXRhdGlvbnxlbnwwfHwwfHx8MA%3D%3D",
                "modalSteps": [
                    { "step": 0 }


                ]
            },
            {
                "id": "Spiritual-Events",
                "title": "Current Spiritual Events",
                "description": "Free spiritual literature and holy books for inner guidance.",
                "image": "https://static.punjabkesari.in/multimedia/18_12_097854966sriramcharitmanas_0.jpg",
                "modalSteps": [
                    { "step": 0 }


                ]
            },
            {
                "id": "spiritual-books",
                "title": "Spiritual Books",
                "description": "Free spiritual literature and holy books for inner guidance.",
                "image": "https://static.punjabkesari.in/multimedia/18_12_097854966sriramcharitmanas_0.jpg",
                "modalSteps": [
                    { "step": 0 }


                ]
            },
            {
                "id": "Deras-Religious-Centers",
                "title": "Deras (Religious Centers)",
                "description": "Free guided meditation and mindfulness sessions for mental peace.",
                "image": "https://images.unsplash.com/photo-1506126613408-eca07ce68773?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWVkaXRhdGlvbnxlbnwwfHwwfHx8MA%3D%3D",
                "modalSteps": [
                    { "step": 0 }


                ]
            }, {
                "id": "Gurudwaras",
                "title": "Gurudwaras ",
                "description": "Free guided meditation and mindfulness sessions for mental peace.",
                "image": "https://images.unsplash.com/photo-1506126613408-eca07ce68773?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWVkaXRhdGlvbnxlbnwwfHwwfHx8MA%3D%3D",
                "modalSteps": [
                    { "step": 0 }


                ]
            }, {
                "id": "yug-sessions",
                "title": "Yug Shala (Hawan Centers) ",
                "description": "Free guided meditation and mindfulness sessions for mental peace.",
                "image": "https://images.unsplash.com/photo-1506126613408-eca07ce68773?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWVkaXRhdGlvbnxlbnwwfHwwfHx8MA%3D%3D",
                "modalSteps": [
                    { "step": 0 }


                ]
            }, {
                "id": "temples-sessions",
                "title": "Temples",
                "description": "Free guided meditation and mindfulness sessions for mental peace.",
                "image": "https://images.unsplash.com/photo-1506126613408-eca07ce68773?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWVkaXRhdGlvbnxlbnwwfHwwfHx8MA%3D%3D",
                "modalSteps": [
                    { "step": 0 }


                ]
            }, {
                "id": "Ashrams-sessions",
                "title": "Ashrams",
                "description": "Free guided meditation and mindfulness sessions for mental peace.",
                "image": "https://images.unsplash.com/photo-1506126613408-eca07ce68773?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWVkaXRhdGlvbnxlbnwwfHwwfHx8MA%3D%3D",
                "modalSteps": [
                    { "step": 0 }


                ]
            },
        ]
    }
]

// Render sections
data.forEach(section => {
    section.items.forEach(item => item.sectionId = section.id); // Add this line

    const sectionContainer = document.getElementById(`${section.id}-section`);

    if (sectionContainer) {
        sectionContainer.innerHTML = `
      <div class="container">
        <div class="d-flex align-items-center justify-content-between mb-4 border-bottom ">
  <h2 class="fs-4 m-0 align-middle">${section.name}</h2>
  <button class="gradient-button">View All</button>
</div>

        <div class="owl-carousel  custom-carousel owl-theme">
          ${section.items.map(item => `
            <div class="item " style="background-image: url('${item.image}');">
              <div class="item-desc">
                <h3>${item.title}</h3>
                <p>${item.description}</p>
<button class="card-button btn btn-primary" onclick='handleDonateClick(${JSON.stringify(item)})'>Donate Now</button>
              </div>
            </div>
          `).join('')}
        </div>
      </div>
    `;
    }
});

// Initialize Owl Carousel
$(document).ready(function () {
    $('.owl-carousel').owlCarousel({
        loop: true,
        margin: 20,
        nav: true,
        dots: true,
        responsive: {
            0: { items: 1 },
            600: { items: 2 },
            1000: { items: 3 }
        }
    });
});// Modal handling  let currentItem = null;
let currentItem = null;
let selectedPath = [];

function showModal(item) {
    currentItem = item;
    selectedPath = [];
    renderModalContent();
    const modal = new bootstrap.Modal(document.getElementById('detailModal'));
    modal.show();
}

function renderModalContent() {
    const modalBody = document.getElementById('modalBodyContent');
    const stepperContainer = document.getElementById('stepperSteps');
    const progressFill = document.getElementById('progressFill');

    let content = '';
    let stepperHTML = '';
    let stepPointer = currentItem.modalSteps[0];
    let currentSteps = [stepPointer];

    for (let i = 0; i < selectedPath.length; i++) {
        const selectedOption = selectedPath[i];
        if (stepPointer.nextSteps && stepPointer.nextSteps[selectedOption]) {
            stepPointer = stepPointer.nextSteps[selectedOption][0];
            currentSteps.push(stepPointer);
        } else {
            break;
        }
    }

    let isLastStep = !stepPointer.nextSteps || Object.keys(stepPointer.nextSteps).length === 0;

    currentSteps.forEach((step, index) => {
        const selectedOption = selectedPath[index];

        // Right content
        if (step.options && step.options.length > 0) {
            content += `
        <div class="popup-section mb-4 animate__animated animate__fadeIn">
          <p class="fw-bold mb-2">Step ${index + 1}: ${step.title}</p>
          <div class="custom-button-group d-flex flex-wrap">
            ${step.options.map(option => `
              <button class="custom-select-btn ${selectedOption === option ? 'selected' : ''}"
                onclick="selectOption('${option.replace(/'/g, "\\'")}', ${index})">
                ${option}
              </button>
            `).join('')}
          </div>
        </div>`;
        }

        // Left stepper
        stepperHTML += `
      <div class="stepper-step ${index <= selectedPath.length ? 'active' : ''}">
        Step ${index + 1}: ${step.title}
      </div>`;

        // Auto-redirect
        if (index === currentSteps.length - 1 && isLastStep && selectedOption) {
            setTimeout(() => {
                window.location.href = 'post.html';
            }, 500);
        }
    });

    modalBody.innerHTML = content;
    stepperContainer.innerHTML = stepperHTML;

    const percent = ((currentSteps.length - 1) / (currentItem.modalSteps.length - 1)) * 100;
    progressFill.style.height = `${Math.min(percent, 100)}%`;
}

function selectOption(option, stepIndex) {
    selectedPath[stepIndex] = option;
    selectedPath = selectedPath.slice(0, stepIndex + 1);

    let stepPointer = currentItem.modalSteps[0];
    for (let i = 0; i <= stepIndex; i++) {
        const selectedOption = selectedPath[i];
        if (stepPointer.nextSteps && stepPointer.nextSteps[selectedOption]) {
            stepPointer = stepPointer.nextSteps[selectedOption][0];
        } else {
            stepPointer = null;
            break;
        }
    }

    renderModalContent();
}

function handleDonateClick(item) {
    if (item.modalSteps && item.modalSteps.length === 1 && item.modalSteps[0].step === 0) {
        const sectionId = item.sectionId || ''; // Pass sectionId through your render logic
        const itemId = item.id;
        window.location.href = `post.html?section=${encodeURIComponent(sectionId)}&item=${encodeURIComponent(itemId)}`;
    } else {
        showModal(item);
    }
}

let selectedRole = 'donor';

// Role Tab Switch
document.getElementById('tabDonor').onclick = () => {
    selectedRole = 'donor';
    document.getElementById('tabDonor').classList.add('active');
    document.getElementById('tabReceiver').classList.remove('active');
    updateModalTitle();
};

document.getElementById('tabReceiver').onclick = () => {
    selectedRole = 'receiver';
    document.getElementById('tabReceiver').classList.add('active');
    document.getElementById('tabDonor').classList.remove('active');
    updateModalTitle();
};

// Update Modal Title Based on Role and Form
function updateModalTitle() {
    const title = document.getElementById('modalTitle');
    const registerForm = document.getElementById('registerForm').style.display === 'block';
    title.textContent = registerForm ?
        `Register as ${selectedRole.charAt(0).toUpperCase() + selectedRole.slice(1)}` :
        `Login as ${selectedRole.charAt(0).toUpperCase() + selectedRole.slice(1)}`;
}

// Switch to Register View
document.getElementById('showRegisterBtn').onclick = () => {
    document.getElementById('loginForm').style.display = 'none';
    document.getElementById('registerForm').style.display = 'block';
    goToStep(1);
    updateModalTitle();
};

// Step Navigation
function goToStep(step) {
    const steps = [1, 2, 3];
    steps.forEach(s => {
        document.getElementById(`step${s}`).style.display = 'none';
        document.getElementById(`step${s}Indicator`).classList.remove('active');
    });

    document.getElementById(`step${step}`).style.display = 'block';
    document.getElementById(`step${step}Indicator`).classList.add('active');

    if (step === 3) {
        document.getElementById('reviewEmail').textContent = document.getElementById('regEmail').value || 'Not provided';
        document.getElementById('reviewName').textContent = document.getElementById('fullName').value || 'Not provided';
        document.getElementById('reviewPhone').textContent = document.getElementById('phoneNumber').value || 'Not provided';
        document.getElementById('reviewAddress').textContent = document.getElementById('address').value || 'Not provided';
        document.getElementById('reviewOrganization').textContent = document.getElementById('organization').value || 'None';
        document.getElementById('reviewDonationType').textContent = document.getElementById('donationType').value || 'Not provided';
        document.getElementById('reviewContactMethod').textContent = document.getElementById('contactMethod').value || 'Not provided';
        document.getElementById('reviewRole').textContent = selectedRole.charAt(0).toUpperCase() + selectedRole.slice(1);
    }
}

// Register Logic
document.getElementById('registerBtn').onclick = async () => {
    const email = document.getElementById('regEmail').value;
    const password = document.getElementById('regPassword').value;
    const name = document.getElementById('fullName').value;
    const phone = document.getElementById('phoneNumber').value;
    const address = document.getElementById('address').value;
    const organization = document.getElementById('organization').value;
    const donationType = document.getElementById('donationType').value;
    const contactMethod = document.getElementById('contactMethod').value;

    // Basic Validation
    if (!email || !password || !name || !phone || !address || !donationType || !contactMethod) {
        alert('Please fill all required fields.');
        return;
    }

    // Simulate API call (Replace with actual backend API call)
    try {
        const user = {
            email,
            name,
            phone,
            address,
            organization,
            donationType,
            contactMethod,
            role: selectedRole
        };

        // Save to localStorage (simulating database)
        localStorage.setItem('user', JSON.stringify(user));

        // Show success message
        alert('Registration successful!');

        // Reload the page or redirect
        location.reload();

    } catch (error) {
        console.error('Registration error:', error);
        alert('Registration failed. Please try again.');
    }
};

// Login Logic
document.getElementById('loginBtn').onclick = () => {
    const email = document.getElementById('emailInput').value;
    const password = document.getElementById('passwordInput').value;

    if (!email || !password) {
        alert('Please enter email and password.');
        return;
    }

    // Simulate login (Replace with actual backend API call)
    try {
        // In a real app, you would verify credentials with your backend
        const storedUser = JSON.parse(localStorage.getItem('user'));

        if (storedUser && storedUser.email === email) {
            // Save login state
            localStorage.setItem('loggedInUser', JSON.stringify({ email, role: selectedRole }));
            alert('Login successful!');
            location.reload();
        } else {
            alert('Invalid credentials. Please try again.');
        }
    } catch (error) {
        console.error('Login error:', error);
        alert('Login failed. Please try again.');
    }
};

// Check if user is already logged in on page load
document.addEventListener('DOMContentLoaded', () => {
    const loggedInUser = JSON.parse(localStorage.getItem('loggedInUser'));
    if (loggedInUser) {
        // User is logged in - update UI accordingly
        selectedRole = loggedInUser.role;
        // You might want to hide login button and show user profile, etc.
    }

    // Initialize modal title
    updateModalTitle();
});














document.addEventListener("DOMContentLoaded", () => {
    new Swiper(".swiper", {
        loop: true,
        slidesPerView: 1,
        spaceBetween: 20,
        autoplay: {
            delay: 3000,
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
    });
});
