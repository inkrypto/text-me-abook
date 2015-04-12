User.create!([
  {email: "x@gm.com", encrypted_password: "$2a$10$QEapg/CqZOWkznCnAI/CZOzZap0bMnQvZJUSNpAbBhQKXQoQp1/by", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 33, current_sign_in_at: "2015-04-12 20:26:59", last_sign_in_at: "2015-04-12 19:10:22", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", full_name: "Brent Morris", phone: "9045270149", sentences: 3, book_id: 0, sentence_bookmark: 0, page_bookmark: 0},
  {email: "inkrypto@gmail.com", encrypted_password: "$2a$10$eL7.9Ffd/mwLbKUn4yWS2uOAltIZrL7WpdHf3GqknAQGs7VrwYBXe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 42, current_sign_in_at: "2015-04-12 20:47:15", last_sign_in_at: "2015-04-12 20:39:27", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", full_name: "asdf asdadsf", phone: "999999999", sentences: 10, book_id: 104, sentence_bookmark: 10, page_bookmark: 1},
  {email: "brentmorris9@yahoo.com", encrypted_password: "$2a$10$MhugBbNjwBreWrKtkBoCceVePkwxLFBVgZsp77NVnJAgD/R0KmgsS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2015-03-27 01:43:47", last_sign_in_at: "2015-03-25 20:49:53", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", full_name: nil, phone: "877798779", sentences: nil, book_id: nil, sentence_bookmark: nil, page_bookmark: nil},
  {email: "shlomo@gmail.com", encrypted_password: "$2a$10$qR0tqsQMZrNtO8IsMUPQZu00hYsjw5jc0l7HCmUwJNla8yyYhbOJ6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-04-12 14:47:17", last_sign_in_at: "2015-04-12 14:47:17", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", full_name: "shlomo y", phone: "9045270149", sentences: 3, book_id: 104, sentence_bookmark: 3, page_bookmark: 1},
  {email: "ystwerski@gmail.com", encrypted_password: "$2a$10$TxeJezuWD2kt5LQuWdHYMO2xv03sB4o/g29EGzW8XKXefTUDD/Gq6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-04-12 20:32:56", last_sign_in_at: "2015-04-12 20:32:56", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", full_name: "Shlomo Twerski", phone: "7737156825", sentences: 10, book_id: 104, sentence_bookmark: 10, page_bookmark: 1}
])
Book.create!([
  {title: nil, author: nil, isbn: nil, url: nil, summary: nil, is_public: true},
  {title: nil, author: nil, isbn: nil, url: nil, summary: nil, is_public: true},
  {title: "1984", author: "George Orwell", isbn: "9080923482384", url: "1984.pdf", summary: "Winston Smith is a member of the Outer Party. He works in the Records Department in the Ministry of Truth, rewriting and distorting history. To escape Big Brother's tyranny, at least inside his own mind, Winston begins a diary — an act punishable by death.", is_public: true},
  {title: "A Christmas Carol", author: "Charles Dickens", isbn: nil, url: "A_Christmas_Carol-2.pdf", summary: "Though London awaits the joyful arrival of Christmas, miserly Ebenezer Scrooge thinks it's all humbug, berating his faithful clerk and cheerful nephew for their view. Later, Scrooge encounters the ghost of his late business partner, who warns that three spirits will visit him this night. The ghosts take Scrooge on a journey through his past, present and future in the hope of transforming his bitterness.", is_public: true},
  {title: "A Tale of Two Cities", author: "Charles Dickens", isbn: nil, url: "A_Tale_of_Two_Cities-2.pdf", summary: "", is_public: true},
  {title: "A Portrait of the Artist as a Young", author: "James Joyce", isbn: nil, url: "A-Portrait-of-the-Artist-as-a-Young-Man.pdf", summary: "A Künstlerroman in a modernist style, it traces the religious and intellectual awakening of young Stephen Dedalus.", is_public: true},
  {title: "Aesop's Fables", author: "Aesop", isbn: nil, url: "Aesops-Fables.pdf", summary: "Aesop's Fables or the Aesopica is a collection of fables credited to Aesop, a slave and storyteller believed to have lived in ancient Greece between 620 and 560 BCE.", is_public: true},
  {title: "Agnes Grey", author: "Anne Brontë", isbn: nil, url: "Agnes-Grey.pdf", summary: "Agnes Grey is the debut novel of English author Anne Brontë, first published in December 1847, and republished in a second edition in 1850. The novel follows Agnes Grey, a governess, as she works within families of the English gentry.", is_public: true},
  {title: "Alice's Adventure in Wonderland", author: "Lewis Carol", isbn: nil, url: "Alices-Adventures-in-Wonderland.pdf", summary: "When Alice falls down a mysterious rabbit hole she stumbles upon a magical fantasy world where anything can happen . . . ", is_public: true},
  {title: "Andersen's Fairy Tales", author: "Hans Christian Andersen", isbn: nil, url: "Andersens-Fairy-Tales.pdf", summary: "Fairy Tales", is_public: true},
  {title: "Anna Karenina", author: "Leo Tolstoy", isbn: nil, url: "Anna-Karenina-2.pdf", summary: "Widely regarded as a pinnacle in realist fiction, Tolstoy considered Anna Karenina his first true novel, when he came to consider War and Peace to be more than a novel.", is_public: true},
  {title: "Anne of Green Gables", author: "Lucy Maud Montgomery", isbn: nil, url: "Anne-of-Green-Gables-2.pdf", summary: "It recounts the adventures of Anne Shirley, an 11-year-old orphan girl who is mistakenly sent to Matthew and Marilla Cuthbert, a middle-aged brother and sister who had intended to adopt a boy to help them on their farm in Prince Edward Island. The novel recounts how Anne makes her way with the Cuthberts, in school, and within the town.", is_public: true},
  {title: "Beyond Good and Evil", author: "Friedrich Nietzsche", isbn: nil, url: "Beyond-Good-and-Evil.pdf", summary: "One of the most important works in philosophical history, Beyond Good and Evil consists of 296 sections and a final “aftersong.” Therein, Nietzsche articulates his views on philosophy, philosophers, morality, religion, society, people, and culture. As challenging as it is rewarding, Beyond Good and Evil will command you, confront you, and provoke you into reconsidering your perception of the modern world.", is_public: true},
  {title: "Bleak House", author: "Charles Dickens", isbn: nil, url: "Bleak-House.pdf", summary: "The story is told partly by the novel's heroine, Esther Summerson, and partly by an omniscient narrator. Memorable characters include haughty Lady Honoria Dedlock, the menacing lawyer Tulkinghorn, the realistic John Jarndyce, and the childish and disingenuous Harold Skimpole, as well as the imprudent Richard Carstone.", is_public: true},
  {title: "Crime and Punishment", author: "Fyodor Dostoyevsky", isbn: nil, url: "Crime-and-Punishment.pdf", summary: "Crime and Punishment focuses on the mental anguish and moral dilemmas of Rodion Raskolnikov, an impoverished ex-student in St. Petersburg who formulates and executes a plan to kill an unscrupulous pawnbroker for her cash. ", is_public: true},
  {title: "David Copperfield", author: "Charles Dickens", isbn: nil, url: "David-Copperfield-2.pdf", summary: "The story traces the life of David Copperfield from childhood to maturity. David was born in Blunderstone, Suffolk, near Great Yarmouth, Norfolk, England, in 1820, six months after the death of his father. David spends his early years in relative happiness with his loving but frail mother and their kindly housekeeper, Peggotty.", is_public: true},
  {title: "Down and Out in Paris and London-", author: "George Orwell", isbn: nil, url: "Down-and-Out-in-Paris-and-London-2.pdf", summary: "Down and Out is a memoir in two parts on the theme of poverty in the two cities. The first part is an account of living on the breadline in Paris and the experience of casual labour in restaurant kitchens. The second part is a travelogue of life on the road in and around London from the tramp's perspective, with descriptions of the types of hostel accommodation available and some of the characters to be found living on the margins.", is_public: true},
  {title: "Dubliners", author: "James Joyce", isbn: nil, url: "Dubliners-2.pdf", summary: "Dubliners is a collection of fifteen short stories by James Joyce, first published in 1914. They form a naturalistic depiction of Irish middle class life in and around Dublin in the early years of the 20th century.", is_public: true},
  {title: "Emma", author: "Jane Austen", isbn: nil, url: "Emma.pdf", summary: "Emma, by Jane Austen, is a novel about youthful hubris and the perils of misconstrued romance. The novel was first published in December 1815. As in her other novels, Austen explores the concerns and difficulties of genteel women living in Georgian-Regency England; she also creates a lively comedy of manners among her characters.", is_public: true},
  {title: "Erewhon", author: "Samuel Butler", isbn: nil, url: "Erewhon.pdf", summary: "The book is a satire on Victorian society.", is_public: true},
  {title: "For the Term of His Natural Life", author: "Marcus Clarke", isbn: nil, url: "For-the-Term-of-His-Natural-Life.pdf", summary: "The story follows the fortunes of Rufus Dawes, a young man transported for a murder that he did not commit. The book clearly conveys the harsh and inhumane treatment meted out to the convicts, some of whom were transported for relatively minor crimes, and graphically describes the conditions the convicts experienced. The novel was based on research by the author as well as a visit to the penal settlement of Port Arthur, Tasmania.", is_public: true},
  {title: "Frankenstein", author: "Mary Shelley", isbn: nil, url: "Frankenstein-2.pdf", summary: "Frankenstein; or, The Modern Prometheus, is a novel written by English author Mary Shelley about the young student of science Victor Frankenstein, who creates a grotesque but sentient creature in an unorthodox scientific experiment.", is_public: true},
  {title: "Great Expectations", author: "Charles Dickens", isbn: nil, url: "Great-Expectations.pdf", summary: "Great Expectations is Charles Dickens' thirteenth novel and his penultimate novel; a bildungsroman which depicts the personal growth and personal development of an orphan nicknamed Pip.", is_public: true},
  {title: "Grimms Fairy Tales", author: "Brothers Grimm", isbn: nil, url: "Grimms-Fairy-Tales.pdf", summary: "Children's and Household Tales is a collection of German fairy tales first published in 1812 by the Grimm brothers, Jacob and Wilhelm. The collection is commonly known in English as Grimm's Fairy Tales.", is_public: true},
  {title: "Gullivers Travels", author: "Jonathan Swift", isbn: nil, url: "Gullivers-Travels.pdf", summary: "Travels into Several Remote Nations of the World. In Four Parts. By Lemuel Gulliver, First a Surgeon, and then a Captain of Several Ships, commonly known as Gulliver's Travels, is a satire by Anglo-Irish ...", is_public: true},
  {title: "Heart of Darkness", author: "Joseph Conrad", isbn: nil, url: "Heart-of-Darkness.pdf", summary: "Heart of Darkness is a novella by Anglo-Polish novelist Joseph Conrad, written as a frame narrative, about Charles Marlow's experience as an ivory transporter down the Congo River in Central Africa.", is_public: true},
  {title: "Jane Eyre", author: "Charlotte Brontë", isbn: nil, url: "Jane-Eyre.pdf", summary: "Jane Eyre is a novel by English writer Charlotte Brontë. It was published on 16 October 1847 by Smith, Elder & Co. of London, England, under the pen name \"Currer Bell.\"", is_public: true},
  {title: "Kidnapped", author: "Robert Louis Stevenson", isbn: nil, url: "Kidnapped.pdf", summary: "Kidnapped is a historical fiction adventure novel by Scottish author Robert Louis Stevenson, written as a \"boys' novel\" and first published in the magazine Young Folks from May to July 1886.", is_public: true},
  {title: "Les Miserables", author: "Victor Hugo", isbn: nil, url: "Les-Miserables.pdf", summary: "Les Misérables is a French historical novel by Victor Hugo, first published in 1862, that is considered one of the greatest novels of the 19th century.", is_public: true},
  {title: "Little Women", author: "Louisa May Alcott", isbn: nil, url: "Little-Women.pdf", summary: "Little Women is a novel by American author Louisa May Alcott, which was originally published in two volumes in 1868 and 1869. Alcott wrote the books rapidly over several months at the request of her publisher.", is_public: true},
  {title: "Madame Bovary", author: "Gustave Flaubert", isbn: nil, url: "Madame-Bovary-2.pdf", summary: "Madame Bovary is the French writer Gustave Flaubert's debut novel. The story focuses on a doctor's wife, Emma Bovary, who has adulterous affairs and lives beyond her means in order to escape the banalities and emptiness of provincial life.", is_public: true},
  {title: "Middlemarch: A Study of Provincial Life", author: "George Eliot", isbn: nil, url: "Middlemarch.pdf", summary: "Middlemarch, subtitled A Study of Provincial Life, is a novel by English author George Eliot, first published in eight instalments during 1871–2", is_public: true},
  {title: "Moby Dick", author: "Herman Melville", isbn: nil, url: "Moby-Dick-2.pdf", summary: "Moby-Dick; or, The Whale is a novel by Herman Melville considered an outstanding work of Romanticism and the American Renaissance.", is_public: true},
  {title: "Northanger Abbey", author: "Jane Austen", isbn: nil, url: "Northanger-Abbey.pdf", summary: "Northanger Abbey was the first of Jane Austen's novels to be completed for publication, though she had previously made a start on Sense and Sensibility and Pride and Prejudice.", is_public: true},
  {title: "Nostromo: A Tale of the Seaboard", author: "Joseph Conrad", isbn: nil, url: "Nostromo-A-Tale-of-the-Seaboard-2.pdf", summary: "Nostromo is a 1904 novel by Polish novelist Joseph Conrad, set in the fictitious South American republic of \"Costaguana\". It was originally published serially in two volumes of T.P.'s Weekly.", is_public: true},
  {title: "Notes from the Underground", author: "Fyodor Dostoyevsky", isbn: nil, url: "Notes-from-the-Underground-2.pdf", summary: "Notes from Underground, also translated as Notes from the Underground or Letters from the Underworld, is an 1864 novella by Fyodor Dostoyevsky. Notes is considered by many to be the first existentialist novel.", is_public: true},
  {title: "Of Human Bondage", author: "W. Somerset Maugham", isbn: nil, url: "Of-Human-Bondage-2.pdf", summary: "The book begins with the death of Helen Carey, the mother of nine-year-old Philip Carey. Philip's father Henry had died a few months before, and the orphan Philip, born with a club foot, is sent to live with his Aunt Louisa and Uncle William Carey.", is_public: true},
  {title: "Oliver Twist", author: "Charles Dickens", isbn: nil, url: "Oliver-Twist.pdf", summary: "Oliver Twist, or The Parish Boy's Progress, is the second novel by Charles Dickens, and was first published as a serial 1837–9. The story is of the orphan Oliver Twist, who starts life in a workhouse and is then apprenticed with an undertaker.", is_public: true},
  {title: "Paradise Lost", author: "John Milton", isbn: nil, url: "Paradise-Lost-2.pdf", summary: "Paradise Lost is an epic poem in blank verse by the 17th-century English poet John Milton. The first version, published in 1667, consisted of ten books with over ten thousand lines of verse.", is_public: true},
  {title: "Persuasion", author: "Jane Austen", isbn: nil, url: "Persuasion-2.pdf", summary: "Persuasion is Jane Austen's last completed novel. She began it soon after she had finished Emma and completed it in August 1816. She died, at age 41, in 1817; Persuasion was published in December of that year.", is_public: true},
  {title: "Pollyanna", author: "Eleanor H. Porter", isbn: nil, url: "Pollyanna-2.pdf", summary: "Pollyanna is a best-selling 1913 novel by Eleanor H. Porter that is now considered a classic of children's literature, with the title character's name becoming a popular term for someone with the same optimistic outlook.", is_public: true},
  {title: "Pride and Prejudice", author: "Jane Austen", isbn: nil, url: "Pride-and-Prejudice-2.pdf", summary: "Pride and Prejudice is a novel of manners by Jane Austen, first published in 1813. The story follows the main character, Elizabeth Bennet, as she deals with issues of manners, upbringing, morality, ...", is_public: true},
  {title: "Robinson Crusoe", author: "Daniel Defoe", isbn: nil, url: "Robinson-Crusoe-2.pdf", summary: "Robinson Crusoe is a novel by Daniel Defoe, first published on 25 April 1719. This first edition credited the work's fictional protagonist Robinson Crusoe as its author, leading many readers to believe ...", is_public: true},
  {title: "Sense and Sensibility", author: "Jane Austen", isbn: nil, url: "Sense-and-Sensibility-2.pdf", summary: "Sense and Sensibility is a novel by Jane Austen, and was her first published work when it appeared in 1811 under the pseudonym \"A Lady\".", is_public: true},
  {title: "Sons and Lovers", author: "D. H. Lawerence", isbn: nil, url: "Sons-and-Lovers-2.pdf", summary: "Sons and Lovers is a 1913 novel by the English writer D. H. Lawrence. The Modern Library placed it ninth on their list of the 100 best novels of the 20th century.", is_public: true},
  {title: "Tarzan of the Apes", author: "Edgar Rice Burroughs", isbn: nil, url: "Tarzan-of-the-Apes-2.pdf", summary: "Tarzan of the Apes is a novel written by Edgar Rice Burroughs, the first in a series of books about the title character Tarzan.", is_public: true},
  {title: "Tender is the Night", author: "F. Scott Fitzgerald", isbn: nil, url: "Tender-is-the-Night-2.pdf", summary: "Tender Is the Night is a novel by American writer F. Scott Fitzgerald. It was his fourth and final completed novel, and was first published in Scribner's Magazine between January–April 1934 in four issues.", is_public: true},
  {title: "Tess of the d'Urbervilles", author: "Thomas Hardy", isbn: nil, url: "Tess-of-the-dUrbervilles-2.pdf", summary: "Tess of the d'Urbervilles: A Pure Woman Faithfully Presented is a novel by Thomas Hardy. It initially appeared in a censored and serialised version, published by the British illustrated newspaper The Graphic in 1891 and in book form in 1892.", is_public: true},
  {title: "The Adventures of Huckleberry Finn", author: "Mark Twain", isbn: nil, url: "The-Adventures-of-Huckleberry-Finn-2.pdf", summary: "Adventures of Huckleberry Finn is a novel by Mark Twain, first published in the United Kingdom in December 1884 and in the United States in February 1885.", is_public: true},
  {title: "The Adventures of Tom Sawyer", author: "Mark Twain", isbn: nil, url: "The-Adventures-of-Tom-Sawyer-2.pdf", summary: "The Adventures of Tom Sawyer by Mark Twain is an 1876 novel about a young boy growing up along the Mississippi River. The story is set in the fictional town of St. Petersburg, inspired by Hannibal, Missouri, where Twain lived. ", is_public: true},
  {title: "The Brothers Karamazov", author: "Fyodor Dostoyevsky", isbn: nil, url: "The-Brothers-Karamazov-2.pdf", summary: "The Brothers Karamazov, sometimes also translated as The Karamazov Brothers, is the final novel by the Russian author Fyodor Dostoyevsky.", is_public: true},
  {title: "The Great Gatsby", author: "F. Scott Fitzgerald", isbn: nil, url: "The-Great-Gatsby.pdf", summary: "The Great Gatsby is a 1925 novel written by American author F. Scott Fitzgerald that follows a cast of characters living in the fictional town of West Egg on prosperous Long Island in the summer of 1922.", is_public: true},
  {title: "The Hound of the Baskervilles", author: "Arthur Conan Doyle", isbn: nil, url: "The-Hound-of-the-Baskervilles-2.pdf", summary: "The Hound of the Baskervilles is the third of the crime novels written by Sir Arthur Conan Doyle featuring the detective Sherlock Holmes.", is_public: true},
  {title: "The Idiot", author: "Fyodor Dostoyevsky", isbn: nil, url: "The-Idiot-2.pdf", summary: "The Idiot is a novel written by the 19th-century Russian author Fyodor Dostoyevsky. It was first published serially in The Russian Messenger between 1868 and 1869.", is_public: true},
  {title: "The Illiad", author: "Homer", isbn: nil, url: "The-Illiad-2.pdf", summary: "The Iliad is an ancient Greek epic poem in dactylic hexameter, traditionally attributed to Homer. Set during the Trojan War, the ten-year siege of the city of Troy by a coalition of Greek states.", is_public: true},
  {title: "The Island of Doctor Moreau", author: "H. G. Wells", isbn: nil, url: "The-Island-of-Doctor-Moreau-2.pdf", summary: "The Island of Doctor Moreau is an 1896 science fiction novel by H. G. Wells, who called it \"an exercise in youthful blasphemy\".", is_public: true},
  {title: "The Jungle Book", author: "Rudyard Kipling", isbn: nil, url: "The-Jungle-Book-2.pdf", summary: "The Jungle Book is a collection of stories by English author Rudyard Kipling. The stories were first published in magazines in 1893–94. The original publications contain illustrations, some by Rudyard's father, John Lockwood Kipling.", is_public: true},
  {title: "The Last of the Mohicans", author: "James Fenimore Cooper", isbn: nil, url: "The-Last-of-the-Mohicans-2.pdf", summary: "The Last of the Mohicans: A Narrative of 1757 is a historical novel by James Fenimore Cooper. It is the second book of the Leatherstocking Tales pentalogy and the best known to contemporary audiences.", is_public: true},
  {title: "The Legend of Sleepy Hollow", author: "Washington Irving", isbn: nil, url: "The-Legend-of-Sleepy-Hollow-2.pdf", summary: "The headless horseman.", is_public: true},
  {title: "The Merry Adventures of Robin Hood", author: "Howard Pyle", isbn: nil, url: "The-Merry-Adventures-of-Robin-Hood-2.pdf", summary: "The Merry Adventures of Robin Hood of Great Renown in Nottinghamshire is an 1883 novel by the American illustrator and writer Howard Pyle.", is_public: true},
  {title: "The Metamorphosis", author: "Franz Kafka", isbn: nil, url: "The-Metamorphosis-2.pdf", summary: "The Metamorphosis is a novella by Franz Kafka, first published in 1915. It has been cited as one of the seminal works of fiction of the 20th century and is studied in colleges and universities across the Western world.", is_public: true},
  {title: "The Odyssey", author: "Homer", isbn: nil, url: "The-Odyssey-2.pdf", summary: "The Odyssey is one of two major ancient Greek epic poems attributed to Homer. It is, in part, a sequel to the Iliad, the other work ascribed to Homer.", is_public: true},
  {title: "The Picture of Dorian Gray", author: "Oscar Wilde", isbn: nil, url: "The-Picture-of-Dorian-Gray-2.pdf", summary: "The Picture of Dorian Gray is an 1891 philosophical novel by writer and playwright Oscar Wilde. First published as a complete story in the July 1890 issue of Lippincott's Monthly Magazine, the editors ...", is_public: true},
  {title: "The Portrait of a Lady", author: "Henry James", isbn: nil, url: "The-Portrait-of-a-Lady-2.pdf", summary: "The Portrait of a Lady is a novel by Henry James, first published as a serial in The Atlantic Monthly and Macmillan's Magazine in 1880–81 and then as a book in 1881.", is_public: true},
  {title: "The Prince", author: "Niccolò Machiavelli", isbn: nil, url: "The-Prince-2.pdf", summary: "The Prince is a 16th-century political treatise by the Italian diplomat and political theorist Niccolò Machiavelli. From correspondence a version appears to have been distributed in 1513, using a Latin title, De Principatibus.", is_public: true},
  {title: "The Scarlet Pimpernel", author: "Baroness Emma Orczy", isbn: nil, url: "The-Scarlet-Pimpernel-2.pdf", summary: "The Scarlet Pimpernel is a play and adventure novel by Emma Orczy set during the Reign of Terror following the start of the French Revolution.", is_public: true},
  {title: "The Strange Case of Dr.Jekyll", author: " Robert Louis Stevenson", isbn: nil, url: "The-Strange-Case-of-Dr-Jekyll-2.pdf", summary: "Strange Case of Dr. Jekyll and Mr. Hyde is the original title of a novella written by the Scottish author Robert Louis Stevenson that was first published in 1886.", is_public: true},
  {title: "The Tales of Mother Goose", author: "Charles Perrault", isbn: nil, url: "The-Tales-of-Mother-Goose-by-Charles-Perrault-2.pdf", summary: "Mother Goose", is_public: true},
  {title: "The Thirty Nine Steps", author: "John Buchan", isbn: nil, url: "The-Thirty-Nine-Steps-2.pdf", summary: "Hanney, an expatriated Scot, returns from a long stay in South Africa to his flat in London. One night he is buttonholed by an American who appears to know of an anarchist plot to destabilise Europe, and claims to be in fear for his life. ", is_public: true},
  {title: "The Three Musketeers", author: "Alexandre Dumas", isbn: nil, url: "The-Three-Musketeers-2.pdf", summary: "Like the movie but the book.", is_public: true},
  {title: "The Time Machine", author: "H. G. Wells", isbn: nil, url: "The-Three-Musketeers-2.pdf", summary: "The Time Machine is a science fiction novel by H. G. Wells, published in 1895. Wells is generally credited with the popularization of the concept of time travel by using a vehicle that allows an operator to travel purposefully and selectively.", is_public: true},
  {title: "The Trial", author: "Franz Kafka", isbn: nil, url: "The-Trial-2.pdf", summary: "The Trial is a novel written by Franz Kafka in 1914 and 1915 but not published until 1925. One of Kafka's best-known works, it tells the story of a man arrested and prosecuted by a remote, inaccessible ...", is_public: true},
  {title: "Treasure Island", author: "Robert Louis Stevenson", isbn: nil, url: "Treasure-Island-2.pdf", summary: "Treasure Island is an adventure novel by Scottish author Robert Louis Stevenson, narrating a tale of \"buccaneers and buried gold\".", is_public: true},
  {title: "Ulysses", author: "James Joyce", isbn: nil, url: "Ulysses-2.pdf", summary: "Ulysses is a modernist novel by Irish writer James Joyce. It was first serialised in parts in the American journal The Little Review from March 1918 to December 1920, and then published in its entirety by Sylvia Beach in February 1922, in Paris.", is_public: true},
  {title: "Utopia", author: "Thomas More", isbn: nil, url: "Utopia-2.pdf", summary: "Utopia is a work of fiction and political philosophy by Thomas More published in 1516 in Latin. The book is a frame narrative primarily depicting a fictional island society and its religious, social and political customs.", is_public: true},
  {title: "Vanity Fair", author: "William Makepeace Thackeray", isbn: nil, url: "Vanity-Fair-2.pdf", summary: "Vanity Fair: A Novel without a Hero is a novel by English author William Makepeace Thackeray, first published in 1847–48, satirizing society in early 19th-century Britain.", is_public: true},
  {title: "War and Peace", author: "Leo Tolstoy", isbn: nil, url: "War-and-Peace.pdf", summary: "War and Peace is a novel by the Russian author Leo Tolstoy, first published in 1869. The work is epic in scale and is regarded as one of the most important works of world literature.", is_public: true},
  {title: "Around the World in 80 Days", author: "Jules Verne", isbn: nil, url: "Around-the-World-in-80-Days.pdf", summary: "", is_public: true},
  {title: "Dracula", author: "Bram Stoker", isbn: nil, url: "Dracula.pdf", summary: "OG Vampire", is_public: true},
  {title: "Wuthering Heights", author: "Emily Brontë", isbn: nil, url: "Wuthering-Heights-2.pdf", summary: "Wuthering Heights is the name of the farmhouse where the story unfolds. The book's core theme is the destructive effect of jealousy and vengefulness both on the jealous or vengeful individuals and on their communities.", is_public: true},
  {title: "On the Road", author: "Jack Kerouac", isbn: nil, url: "OnTheRoad.pdf", summary: "On the Road is a novel by American writer Jack Kerouac, based on the travels of Kerouac and his friends across America.", is_public: true},
  {title: "", author: "", isbn: nil, url: nil, summary: "", is_public: false}
])
UserBook.create!([
  {user_id: 5, book_id: 106},
  {user_id: 5, book_id: 107},
  {user_id: 2, book_id: nil},
  {user_id: 2, book_id: nil},
  {user_id: 7, book_id: 108}
])
