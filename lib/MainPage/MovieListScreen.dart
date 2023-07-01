import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'MainMoviePosterCarousel.dart';
import 'Movie.dart';
import 'MovieDetailScreen.dart';

class MovieListScreen extends StatefulWidget {
  @override
  _MovieListScreenState createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {
  final List<Movie> movies = [
    Movie(
      'assets/Poster2.jpg',
      'Fast X',
      'Action, Race, Romantic, Thriller',
      '2023',
      'Vin Diesel, Michelle Rodriguez, Tyrese Gibson, Ludacris, John Cena',
      'Fast X is the tenth installment in the Fast and Furious franchise. The story follows a group of skilled street racers as they face new challenges and undertake high-stakes heists, using their driving skills and teamwork to outsmart their enemies.',
    ),
    Movie(
      'assets/Poster3.jpg',
      'Black Clover: Sword of the Wizard King',
      'Anime, Fantasy',
      '2021',
      '(voice cast): Gakuto Kajiwara, Nobunaga Shimazaki, Junichi Suwabe',
      'Based on the popular manga and anime series, Black Clover: Sword of the Wizard King follows Asta, a young boy born without magic in a world where magical abilities are common. Asta aims to become the Wizard King and protect the Clover Kingdom from evil forces.',
    ),
    Movie(
      'assets/Poster5.jpg',
      'Spider-Man: Across The Spider-Verse',
      'Superhero, Animation',
      '2022',
      '(voice cast): Shameik Moore, Hailee Steinfeld',
      'This animated film is a sequel to Spider-Man: Into the Spider-Verse. It continues the story of Miles Morales, a young Spider-Man from an alternate universe, as he teams up with other versions of Spider-Man to battle powerful enemies and save the multiverse.',
    ),
    Movie(
      'assets/Poster1.jpg',
      'Extraction 2',
      'Action, Thriller',
      '2022',
      'Chris Hemsworth, Randeep Hooda',
      'A sequel to the action-packed film Extraction, Extraction 2 follows a black-market mercenary named Tyler Rake, who finds himself in another dangerous mission to rescue someone important while facing ruthless enemies.',
    ),
    Movie(
      'assets/Poster16.jpg',
      'Demon Slayer',
      'Action, Fantasy, Anime',
      '2020',
      'Natsuki Hanae, Akari Kitō, Yoshitsugu Matsuoka',
      'Demon Slayer (Kimetsu no Yaiba) is based on the manga series by Koyoharu Gotouge. It tells the story of Tanjiro Kamado, a young boy who becomes a demon slayer after his family is killed by demons. Tanjiro seeks revenge while protecting his sister, who has turned into a demon.',
    ),
    Movie(
      'assets/Poster8.jpg',
      'Evil Dead Rise',
      'Horror',
      '2023',
      'Hemsworth, Randeep',
      'Evil Dead Rise is the latest installment in the Evil Dead franchise. The film follows a new group of characters who discover the Book of the Dead and must face a terrifying onslaught of demonic forces.',
    ),
    Movie(
      'assets/Poster17.jpg',
      'The Flash',
      'Superhero, Action',
      '2022',
      'Ezra Miller, Ben Affleck, Michael Keaton',
      'The Flash is a DC Comics superhero film that follows the story of Barry Allen, aka The Flash, who gains superhuman speed and uses his abilities to navigate the multiverse and prevent a catastrophic event.',
    ),
    Movie(
      'assets/Poster18.jpg',
      'Black Mirror',
      'Sci-Fi, Anthology',
      '2011',
      'Various actors for each episode',
      'Black Mirror is a British anthology series created by Charlie Brooker. Each episode explores the dark side of technology and its impact on society, presenting thought-provoking and often dystopian stories set in the near future.',
    ),
    Movie(
      'assets/Poster4.jpg',
      'John Wick: Chapter 4',
      'Action, Thriller',
      '2023',
      'Keanu Reeves',
      'John Wick: Chapter 4 continues the story of the legendary hitman John Wick, who finds himself on the run from assassins after a series of events that occurred in the previous films.',
    ),
    Movie(
      'assets/Poster19.jpg',
      'Peaky Blinders',
      'Crime, Drama',
      '2019',
      'Cillian Murphy, Paul Anderson, Helen McCrory',
      ' Peaky Blinders is a British crime drama series set in post-World War I Birmingham, England. It follows the exploits of the Shelby crime family, led by Tommy Shelby, as they navigate the world of organized crime and deal with rival gangs and the authorities.',
    ),
    Movie(
      'assets/Poster20.jpg',
      'Alchemy Of Souls',
      'Fantasy, Drama',
      '2023',
      'Actor F, Actor G',
      'Alchemy Of Souls" is a fantasy drama that follows the journey of a young alchemist who discovers a hidden world filled with magical beings and mystical forces. As he delves deeper into the secrets of alchemy, he uncovers a dark plot that could have far-reaching consequences for both the human and supernatural realms.',
    ),
    Movie(
      'assets/Poster21.jpg',
      'Blood Hounds',
      'Thriller, Mystery',
      '2022',
      'Actor F, Actor G',
      '"Blood Hounds" is a thrilling mystery movie that revolves around a group of detectives investigating a series of gruesome murders. As they dig deeper into the case, they uncover a web of deceit and betrayal, leading them on a dangerous path where the line between hunter and hunted becomes blurred.',
    ),
    Movie(
      'assets/Poster22.jpg',
      'Doctor Strange In The Multiverse of Madness',
      'Superhero, Fantasy, Adventure',
      '2022',
      'Benedict Cumberbatch, Elizabeth Olsen, Chiwetel Ejiofor, Rachel McAdams, Benedict Wong',
      'In "Doctor Strange In The Multiverse of Madness," the sorcerer supreme, Doctor Strange, teams up with Scarlet Witch to navigate through alternate dimensions and unravel the mysteries of the multiverse. As they face powerful new threats, they must confront their own inner demons and protect reality from collapsing into chaos.',
    ),
    Movie(
      'assets/Poster23.jpg',
      'Tailed of The Nine Tailed 1938',
      'Fantasy, Historical',
      '2021',
      'Actor F, Actor G',
      'Please note that the movie "Tailed of The Nine Tailed 1938" does not match any known title in my database. Its possible that this movie is either very obscure or doesnt exist. Could you provide more information or clarify the title?',
    ),
    Movie(
      'assets/Poster24.jpg',
      'Lucifer',
      'Fantasy, Crime, Drama',
      '2023',
      'Tom Ellis, Lauren German, Kevin Alejandro, D.B. Woodside, Lesley-Ann Brandt',
      '"Lucifer" is a television series that follows the story of Lucifer Morningstar, the devil himself, who abandons Hell for Los Angeles and opens a nightclub called Lux. He becomes involved in solving crimes alongside LAPD detective Chloe Decker and begins to question his own existence and morality.',
    ),
    Movie(
      'assets/Poster25.jpg',
      'Interstellar',
      'Science Fiction, Adventure, Drama',
      '2021',
      'Matthew McConaughey, Anne Hathaway, Jessica Chastain, Michael Caine',
      '"Interstellar" is a thought-provoking science fiction film set in a future where Earths resources are dwindling. A group of astronauts embarks on a space mission to find a new habitable planet and ensure the survival of humanity. They face numerous challenges, including time dilation and the mysteries of a black hole, as they push the boundaries of human exploration.',
    ),
    Movie(
      'assets/Poster26.jpg',
      'Money Heist',
      'Crime, Thriller, Drama',
      '2021',
      'Álvaro Morte, Úrsula Corberó, Pedro Alonso, Alba Flores',
      '"Money Heist" (original Spanish title: "La Casa de Papel") is a popular Spanish television series about a criminal mastermind known as "The Professor" who recruits a group of eight skilled criminals to carry out a meticulously planned heist on the Royal Mint of Spain. As the heist unfolds, the group faces unexpected challenges and intense psychological battles.',
    ),
    Movie(
      'assets/Poster27.jpg',
      'Ejen Ali: The Movie',
      'Animation, Action, Adventure',
      '2021',
      'Ida Rahayu Yusoff, Shafiq Isa, Noorhayati Maslini, Mohd Fathi Diaz',
      '"Ejen Ali: The Movie" is an animated action-adventure film that follows the young secret agent Ejen Ali as he faces his biggest challenge yet. Ali must retrieve a powerful device called I.R.I.S. from a criminal organization that threatens the security of the nation. Along the way, he uncovers a deep conspiracy that puts his skills and loyalty to the test.',
    ),


    // Add more movies as needed
  ];
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.amber,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Align(
          alignment: Alignment.bottomCenter, // Adjust the alignment as needed
          child: Image.asset(
            'assets/TextLogIn4.png',
            width: 100, // Adjust the width as needed
            height: 140, // Adjust the height as needed
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined),
            color: Colors.amber,
            onPressed: () {
              // Perform favorite action
            },
          ),
        ],
      ),

      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainMoviePosterCarousel(
              movies: [],
              onPosterTapped: (index) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MovieDetailScreen(movie: movies[index]),
                  ),
                );
              },
            ),
            SizedBox(height: 2.0),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 2 / 4, // Adjust the aspect ratio as needed
              ),
              itemCount: movies.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            MovieDetailScreen(movie: movies[index]),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            movies[index].poster,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          movies[index].title,
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          movies[index].genre,
                          style: TextStyle(color: Colors.white70),
                          textAlign: TextAlign.center,
                        ),

                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),

    );
  }
}

/*appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('New Movie'),
        titleTextStyle: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        centerTitle: true,
        leading: IconButton(
          color: Colors.amber,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            color: Colors.amber,
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement the action when the search button is pressed
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                _buildMoviePoster(
                  'assets/Poster2.jpg',
                  'Fast X',
                  '10.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster3.jpg',
                  '\t\t\t\t\t\t\t\t\t\t\t\tBlack Clover: \nSword of The Wizard King',
                  '15.00',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster5.jpg',
                  '\t\t\t\t\t\t\t\t\t\t\tSpiderMan: \nAcross The Spider Verse',
                  '25.00',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster1.jpg',
                  'Extraction 2',
                  '20.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster16.jpg',
                  'Demon Slayer',
                  '18.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster8.jpg',
                  'Evil Dead Rise',
                  '25.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster17.jpg',
                  'The Flash',
                  '22.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster18.jpg',
                  'Black Mirror',
                  '20.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster4.jpg',
                  'John Wick: Chapter 4',
                  '30.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster19.jpg',
                  'Peaky Blinders',
                  '25.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster20.jpg',
                  'Alchemy Of Souls',
                  '30.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster21.jpg',
                  'Blood Hounds',
                  '30.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster22.jpg',
                  '\t\t\t\t\t\t\t\t\t\t\t\t\tDoctor Strange\nIn The Multiverse of Madnes',
                  '20.00',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster23.jpg',
                  '\t\t\t\t\t\t\t\t\t\t\t\tTailed of \nThe Nine Tailed 1938',
                  '25.00',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster24.jpg',
                  'Lucifer',
                  '15.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster25.jpg',
                  'Interstellar',
                  '30.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster26.jpg',
                  'Money Heist',
                  '15.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster27.jpg',
                  'Ejen Ali: The Movie',
                  '15.00\n',
                  context,
                ),
                // Add more movie posters
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMoviePoster(
      String assetPath,
      String movieTitle,
      String price,
      BuildContext context,
      ) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Image.asset(
            assetPath,
            width: 200,
            height: 200,
          ),
          SizedBox(height: 8),
          Text(
            movieTitle,
            style: TextStyle(fontSize: 16,color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(
            'RM\t$price',
            style: TextStyle(fontSize: 14,color: Colors.white),
          ),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaymentMethod(),
                ),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red), // Set the desired background color
            ),
            child: Text('Purchase'),
          ),
        ],
      ),
    );
  }
}*/
