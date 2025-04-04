import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_animation1/widgets/my_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //boolean
  bool isHover = false;

  //list of image data
  final List<Map<String, dynamic>> data = [
    {
      "name": "7 Up",
      "info":
          "7 Up is a classic lemon-lime flavored soft drink that has been a staple in households around the world for decades. First introduced in 1929, this non-caffeinated beverage offers a clean, crisp, and refreshing taste that sets it apart from many other soft drinks. With its signature combination of tangy lemon and zesty lime, 7 Up is the perfect choice for those seeking a light, fizzy beverage without the boldness of cola or the heaviness of cream-based sodas. It's especially popular as a mixer in cocktails and mocktails, making it a versatile drink option for social occasions. Over the years, 7 Up has been marketed with various catchy slogans, from “The Uncola” to “Feels Good to Be You,” emphasizing its unique identity in the world of sodas. Its clear color and smooth carbonation give it a refreshing mouthfeel that appeals to both children and adults. The drink is often enjoyed chilled or over ice and is commonly served with snacks, meals, or simply as a standalone treat. PepsiCo has continued to innovate the 7 Up brand by introducing sugar-free versions and various regional adaptations to cater to changing health trends and consumer preferences. Despite the evolving beverage market, 7 Up has remained a beloved choice for those who enjoy citrusy refreshment. Its green and white branding, along with the iconic red dot in the logo, is instantly recognizable and associated with purity, coolness, and upliftment. In a world full of sugary and highly caffeinated drinks, 7 Up stands as a timeless reminder that simplicity, when done right, never goes out of style.",
      "image": "assets/images/7up.png",
      'linearGradient': LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.bottomRight,
        colors: [
          Color.fromRGBO(212, 252, 220, 1),
          Color.fromRGBO(142, 240, 199, 1)
        ],
      )
    },
    {
      "name": "Coca-Cola",
      "info":
          "Coca-Cola, often simply known as Coke, is one of the most iconic and best-selling beverages in the world. Born in Atlanta, Georgia, in 1886, Coca-Cola was created by pharmacist John Stith Pemberton as a medicinal tonic before quickly gaining popularity as a soft drink. Over more than a century, it has evolved into a global cultural phenomenon, transcending borders and generations. Its unique blend of caramel flavor, mild acidity, and finely balanced sweetness offers a taste that is instantly recognizable and universally loved. Coca-Cola is more than just a drink—it represents joy, celebration, and unity, often being associated with major festivals, sporting events, and family moments. Its iconic red and white branding, along with the signature glass bottle, has made it a symbol of refreshment and happiness. Coca-Cola has also been at the forefront of advertising history, producing memorable campaigns like “Open Happiness” and the classic holiday ads featuring Santa Claus. The beverage’s formula, known as “Merchandise 7X,” is famously secret and has added to its mystique and legacy. While the original formula has remained largely unchanged, Coca-Cola has expanded its offerings to include Diet Coke, Coke Zero, and other flavored variants to meet evolving consumer demands. It is enjoyed both chilled and over ice, often paired with fast food, popcorn, or as a standalone beverage. Whether you're watching a movie, having a meal with friends, or simply cooling off on a summer day, Coca-Cola offers a reliable and deeply satisfying experience. Its lasting success is a testament to its ability to connect emotionally with consumers through both flavor and nostalgia.",
      "image": "assets/images/coca_cola.png",
      'linearGradient': LinearGradient(
        colors: [
          Color.fromRGBO(255, 78, 80, 1),
          Color.fromRGBO(31, 28, 44, .9)
        ],
      )
    },
    {
      "name": "Fanta",
      "info":
          "Fanta is a fruit-flavored carbonated soft drink with a vibrant personality and a global fanbase. Created during World War II in Germany due to the trade embargo that cut off Coca-Cola syrup supply, Fanta began as an improvisation that quickly turned into a brand of its own. Today, Fanta is known for its bold fruit flavors—most famously orange—and its youthful, playful energy. The drink is characterized by its bright color, bubbly texture, and a sweet-tangy flavor profile that makes it especially appealing to younger audiences. Fanta has expanded far beyond its original flavor, now offering a wide range of variants including grape, strawberry, pineapple, mango, and exotic regional flavors across different countries. One of the reasons for its massive appeal is its creative marketing—featuring vibrant colors, energetic music, and a fun-loving tone that makes it more than just a drink, but a lifestyle brand. Fanta Orange, in particular, is recognized for its rich citrus flavor with hints of zest and sweetness that perfectly balance out the fizz. Often consumed during summer or festive occasions, Fanta adds a splash of color and excitement to any gathering. The drink is caffeine-free and comes in various bottle and can sizes, making it accessible and enjoyable in different contexts. From school picnics to house parties, Fanta has become synonymous with fun and flavor. Coca-Cola’s commitment to localizing the taste has led to the introduction of unique Fanta versions in different countries, tailored to local preferences and cultures. Whether served chilled at a picnic or used in recipes for mocktails and punch, Fanta continues to be a favorite among those who like their beverages fruity, fizzy, and fun.",
      "image": "assets/images/fanta.png",
      'linearGradient': LinearGradient(
        colors: [
          Color.fromRGBO(255, 154, 0, 1),
          Color.fromRGBO(255, 106, 0, 1)
        ],
      )
    },
    {
      "name": "Limca",
      "info":
          "Limca is a unique lemon-lime soda that has earned its place as a beloved household name in India. Introduced in the late 1970s, it quickly became known for its cloudy appearance, fizzy texture, and incredibly refreshing citrus flavor. Unlike the clear lemon sodas found elsewhere, Limca offers a slightly salty undertone and a bold, tangy twist that sets it apart. It’s especially popular during the scorching Indian summers, offering a quick and invigorating cooldown. What makes Limca truly distinctive is its ability to strike a balance between sweet and sour, making it not just a thirst quencher but an experience. Over the decades, Limca has become a nostalgic drink for many, reminding people of carefree childhood days, road trips, and festive celebrations. Its marketing has often focused on doing more, staying fresh, and pushing boundaries, aligning with the energetic spirit of the younger generation. Limca pairs wonderfully with spicy Indian foods and is often served ice-cold at family functions and street stalls alike. The drink also appeals to health-conscious individuals due to its lower caffeine content and light composition, although it still delivers on taste and punch. Its signature cloudy look and zesty aroma immediately tell you you’re about to enjoy something familiar yet exciting. Today, Limca remains one of the few drinks that continues to hold strong emotional value for generations of Indians while also attracting newer audiences through clever campaigns and its timeless flavor. Whether you're sitting under a shady tree or at a bustling party, Limca always feels like the perfect companion.",
      "image": "assets/images/limca.png",
      'linearGradient': LinearGradient(
        colors: [
          Color.fromRGBO(240, 255, 243, 1),
          Color.fromRGBO(194, 252, 211, 1)
        ],
      )
    },
    {
      "name": "Pepsi",
      "info":
          "Pepsi is one of the most globally recognized soft drinks, celebrated for its bold, refreshing cola flavor and a legacy that spans over a century. First introduced in 1893 as 'Brad’s Drink,' it was later rebranded to Pepsi-Cola in 1898 and has since evolved into a major competitor to Coca-Cola. What makes Pepsi distinctive is its sweeter, slightly citrusy profile compared to other colas, which gives it a smoother, more rounded taste. Pepsi has always positioned itself as the youthful, dynamic alternative in the soda world, famously branding itself as 'The Choice of a New Generation.' Over the years, Pepsi has been endorsed by major celebrities, pop stars, and athletes, reinforcing its image as cool, trendy, and culturally in tune. Whether you're having it with pizza, burgers, or popcorn, Pepsi enhances the experience with its satisfying carbonation and taste. It’s especially favored by those who find regular colas too strong or acidic. Pepsi is also known for experimenting with flavors like vanilla, mango, and even zero sugar variants, offering options for all kinds of drinkers. Its signature blue can or bottle is instantly recognizable and often evokes nostalgia, especially for those who grew up during the peak of its advertising campaigns. From lunchboxes to stadiums, Pepsi continues to deliver refreshment that’s reliable, sweet, and deeply enjoyable. It’s not just a drink—it’s a part of pop culture.",
      "image": "assets/images/pepsi.png",
      'linearGradient': LinearGradient(
        colors: [
          Color.fromRGBO(0, 82, 212, 1),
          Color.fromRGBO(67, 100, 247, 1)
        ],
      )
    },
    {
      "name": "Sprite",
      "info":
          "Sprite is a lemon-lime flavored soda that's best known for its ultra-refreshing, clean, and crisp taste. With its clear appearance and caffeine-free composition, Sprite has become a go-to drink for people looking for a light, citrusy beverage without any heaviness or aftertaste. First launched in the 1960s, Sprite quickly established itself as a favorite among those who enjoy a sharp fizz and a tangy kick. Its taste is balanced perfectly—lightly sweet with a sour edge that makes it ideal for cooling down in hot weather or enjoying alongside salty snacks. Sprite has built its identity around coolness and clarity, often being featured in ads with icy visuals, young vibes, and music. It's frequently served ice-cold, often with a lemon wedge to intensify its citrus burst. Popular among all age groups, Sprite is also a staple in fast food joints, cafes, and homes. Beyond just drinking it straight, Sprite is commonly used in homemade mocktails and local mixes—especially in countries like India, where it’s blended with lemon, salt, or mint for a customized summer cooler. Despite the growing number of lemon sodas in the market, Sprite has retained its loyal fan base through consistent taste and vibrant branding. With every fizzy sip, Sprite refreshes your palate, clears your senses, and lifts your mood.",
      "image": "assets/images/sprite.png",
      'linearGradient': LinearGradient(
        colors: [
          Color.fromRGBO(208, 255, 206, 1),
          Color.fromRGBO(131, 255, 179, 1)
        ],
      )
    },
    {
      "name": "Starry",
      "info":
          "Starry is a relatively new but vibrant addition to the lemon-lime soda family, quickly making a mark with its ultra-refreshing taste and bold branding. Designed for a younger, energetic audience, Starry steps into the scene with a clear mission—to deliver crisp citrus refreshment that feels both classic and modern. Its taste is sharp, zesty, and satisfying without being overpowering, striking a perfect balance between lemon and lime. Starry offers a clean, fizzy mouthfeel that instantly awakens your senses, making it an ideal companion on hot summer days or during moments when you just want something light and flavorful. While it may resemble other lemon-lime sodas in color and style, Starry differentiates itself through a brighter, more youthful edge both in flavor and design. Its branding leans heavily into vibrance and optimism, often paired with bold visuals, futuristic fonts, and upbeat messaging. Starry isn’t just a drink—it’s a vibe that speaks to a new generation that craves freshness, simplicity, and authenticity. Whether sipped from a chilled can or poured over ice with a slice of lemon, Starry refreshes like a breeze. It's also versatile enough to be mixed with fruit juices or turned into a mocktail for social gatherings. Despite being a newcomer, Starry taps into the universal love for citrus fizz while carving its own unique space. The drink doesn’t try to be complicated—it’s straightforward, tasty, and reliable. If you’re looking for something to replace the usual lemon-lime drinks with a twist of personality and punch, Starry might just become your go-to.",
      "image": "assets/images/starry.png",
      'linearGradient': LinearGradient(
        colors: [
          Color.fromRGBO(224, 247, 250, 1),
          Color.fromRGBO(128, 222, 234, 1)
        ],
      )
    },
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/logo.png"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: TextButton(
              onPressed: () async {
                final url = Uri.parse("https://www.github.com/unim26/");
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Text(
                "View Source Code",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
              ),
            ),
          ),
        ],
        title: Text(
          "DrinkDive",
        ),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return MyCardWidget(
            gradient: data[index]['linearGradient'],
            image: data[index]['image'],
            title: data[index]['name'],
            info: data[index]['info'],
            size: size,
          );
        },
      ),
    );
  }
}
