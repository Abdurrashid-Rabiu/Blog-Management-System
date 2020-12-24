-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2020 at 06:45 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `hashed_password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `hashed_password`) VALUES
(1, 'Admin', '7c76320d93f3a41b9699b6d4b6e2ba2d922eef01');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `article_name` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `image` varchar(100) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `staff_id`, `article_name`, `date`, `image`, `content`) VALUES
(1, 3, 'How Elon Musk Saved SPACEX and TESLA', '2020-11-12', 'pic1.JPG', 'In the early 2000’s, Elon Musk achieved what any entrepreneur will dream of achieving, he successfully sold his company (PAYPAL to Ebay) for over a billion dollars, he personally received one hundred and sixty five million (as his share) and now this is where most people will called it quit, but for Elon this was just the beginning, he wanted to change the world for the better and one of his ideas was to send a green house to Mars in order to boost public interest in space exploration and hopefully increase NASA’s budget.\r\nThe idea was outlandishly ambitious especially because Elon wanted to spend no more than twenty million dollars ($20 million) on it, now at the time sending just 500lb (five hundred pounds) to orbit could easily cause a worth of thirty million($30 dollars). But Elon had a plan; he travelled to Russia, where he tried to buy refurbished intercontinental ballistic missiles, but the lowest price the Russians gave him was eight million dollars apiece, about fifty percent of both his budget for the rocket itself.\r\nOn his way back from Moscow, Elon did some back of the net count calculations; he figured out that the raw materials used into making of a rocket were only about three percent of the final sales price. Instantly, Elon knew what he had to do, if he wanted to send anything to Mars, he had to build himself a vertically integrated rocket company. To that end, he read several books on rocketry from the cold war, and on June 2002, he incorporated Space Exploration Technologies or SPACEX for short. He then set about recruiting the right people who could make his vision a reality, his ideal candidate was young, single, educated and ready to give up their social life for SPACEX. Elon’s recruitment strategy was very straight forward.  He basically called up anyone fitting that profile, from fresh aerospace graduate to the rising stars in BOEING and LOCKHEED MARTIN. At first people thought Elon was making pranks, but within a year, he had assembled some of the brightest engineers in America. Together they will design almost everything for SPACEX, from the engines and rocket bodies to even the small details like the circuitry. In many cases the engineers could build stronger and more lightweight components at just a fraction of the regular price, these components will be used to build the MERLIN engine (MERLIN 1A), which in turn will power Elon’s first rocket; the FALCON 1. Development was far from smooth of course, but nevertheless progress was being made.\r\nBut then Elon decided to off the ante-game, in early 2004 (February 2004), he participated in the funding round of a new electric car company called TESLA, he personally invested a little over six million ($6.35 million) and in return became the chairman of the company’s board. Right off the bat, Elon began applying his experience from SPACEX at TESLA; the company’s logo for example was created by the same people that made the logo for SPACEX and of course Elon was quick to use the same aggressive hiring strategy he used to assemble the SPACEX team, this time however, instead of poaching employees from BOEING, he was hiring from APPLE. Before long, the TESLA team was working on the first electric car; the TESLA ROADSTER.\r\nBack at SPACEX, engineers were clocking in sixty hour (60 hour) work weeks, while Elon was promising very ambitious timelines. In fact his original estimate was to launch the FALCON 1 in November 2003; just eighteen (18) month after the company was founded. Of course that estimate was pushed back, and the FALCON 1 wouldn’t lift off until March 2006 (24 March, 2006), when it spend a total of forty one seconds (41 seconds) in the air before crashing down violently.\r\nLike for SPACEX, 2006 was a big year for TESLA, in July the TESLA ROADSTER made it first official appearance and recorded one hundred (100) pre-orders in its first day, but like with the FALCON 1, the actual production wasn’t going very well, TESLA’s CEO at the time was Martin Eberhard and like Elon he was promising unrealistic timeframes. At first, the idea was to deliver the ROADSTER in early 2007, but an escalating series of production issues push the release date farther-farther away. In the end, Martin’s mismanagement of the ROADSTER project got him ousted from the very company he had founded leaving Elon in charge of everything. With full responsibility over both companies, the stress was starting to pile up.\r\nElon witnessed the second failure of the FALCON 1 rocket which didn’t complete its only 2007 flight. At TESLA, Elon struggled fixing the mess left behind by Eberhard, and in fact the ROADSTER’s production will not begin until March 2008 (March 17, 2008), but then things got worse. In August, Elon launched his third FALCON 1 which never made it to orbit, and then just one month later his wife publicly announced their divorce. Both of Elon’s companies were struggling to make a viable product and were running out of money fast. In fact, by late October TESLA had only nine million dollars ($9 million) left to fund the entire company. Salaries were being delayed, and Elon was faced with a choice, he had already spent seventy million dollars ($70 million) on TESLA and a hundred million ($100 million) on SPACEX. With what little he had left, Elon had to choose whether to fund and secure the future of one company or to risk everything and gamble on saving both, faith gave Elon little time to think.\r\nThe fourth and potentially final flight of the FALCON 1 was approaching, on September (September 28th) 2008, Elon got ready for his last chance to survive; he stood into SPACEX control center in LA and waited in silence. Then the rocket took off, the center boost out in a static applause, SPACEX had finally deliver a working product; the FALCON1 became the first privately developed rocket to go into orbit around the earth, but Elon wasn’t clear just yet. A working product will mean nothing if the company behind it went bankrupt. In a frantic scramble, Elon had to figure out funding solutions for both his companies before the end of 2008 and the timing couldn’t have been worse; one of the largest American banks; LEHMAN BROTHERS had collapsed and the global economy was heading towards disaster. In the midst of this, Elon was raising all the personal funds he could to save TESLA; he liquidated his few remaining assets and even got his cousins to poach in, but getting investors on-board doesn’t happen overnight and December was creeping in. Elon had managed to scrape together twenty million dollars ($20 million) himself, another twenty million ($20 million) from various investors and fifty million ($50 million) from the German car company DAIMLER. Days before Christmas, it seems as if only TESLA was going to make it, but then on December 23rd Elon receive a very unexpected call; NASA had awarded SPACEX with a one point six billion dollar ($1.6 billion) contract to resupply the International Space Station. Then, on Christmas Eve, the TESLA deal went through; Elon had successfully saved both companies from bankruptcy.\r\nIn later interviews, he recalled these final days in December in painful detail.\r\n So regardless of the struggles Elon might be facing today, it is worth noting that ten years ago he overcame the impossible.'),
(3, 3, 'How Big Is SOFTBANK', '2020-11-20', 'Capture4.JPG', 'SoftBank is one of those companies that we hear a lot about but we were never really sure what they actually do. As it turns out answering that question “what do they do?” is surprisingly complicated. Today, we are going to see how SoftBank’s founder Masayoshi Son was a business prodigy and from the start he’s always had an eye for opportunity especially when it comes to technology and the future.\r\nPrelude:\r\nSon was born in Japan in 1957 and his grand-parents were immigrants from Korea, his family walked the way out of poverty when he was a young teenager. At age 16, he read a book by Den Fujita (Founder of Japan’s Mc Donald), the book had such an influence on him that he decided to meet the popular entrepreneur. Son’s causing letters went ignored:\r\nHe resolved to follow Fujita’s advice and study both Computer Science and English, those skills were quickly put to use when he moved to San-Francisco and pulled through high school in just three weeks, he did this by studying insanely hard and attempting the college entrance exam almost as soon as he got there and he passed all six subjects. Here is a quote from Son at the time:\r\nAfter passing the test, he could enter American University. Masayoshi Son decided to study Computer Science and Economics. While he was still a student in 1976, Son started his first business enterprise. Here is an interview with son explaining the story of how he did it:\r\nAfter this, Son sold the technology to electronics giant (SHARP) for $1.7 million, he was just nineteen (19) years old. While most of people would have taken the year off perhaps on cocktails and on sunny beaches, Son made another $1.5 million dollars by importing used video game machines from Japan. Son graduated in 1980 and although he’d already had some great success in his early few years in America, he decided that the Japanese work ethics and staff loyalty were valuable assets for any company, so he move back to Japan and started looking for opportunities. Unlike many business founders who have a fixed passion turned down to a business, Son took much more analytical approach; he setup a matrix and ranked every potential business against his own fixed criteria, this included things like:\r\n1.	He must love the business for fifty (50) years.\r\n2.	 It must be unique.\r\n3.	And He must become a market leader within ten (10) years.\r\nHe looked to a broad range of options from obvious choices such as software development to completely new industries like health care management, in the end he chose something close to his expertise; in 1981 Japan’s SoftBank was formed. Son saw a big gap in the market, many PC’s needed software to run on their systems but the software developers lack the money and sales skills to reach hardware manufacturers. He quickly won a contract with the country’s largest PC retailer (Joshin Co.) making SoftBank their exclusive software purchaser. Within a year, the company was selling over two million dollars ($2 million) of software a month. Son quickly diversified, in May of 1982, they started a publishing monthly computer magazine, they took heavy losses at the beginning, but by the 90’s, SoftBank dominated the market for high & tech magazines. They would use the magazines to heavily promote their own products, so cross promotions was very valuable. To reflect its increasingly diverse portfolio, SoftBank was renamed SoftBank hold in 1990 and the following decade saw them become a huge negotiator in tech-base business deals, it was this decade that will see somebody named “The Bill Gate of Japan”. In the 90’s, the company began to grow every facets of their businesses. For the magazines, they bought a publishers in the United States and took control of many major trade shows including COMDEX; the largest computer expert at the time. For hardware, they bought a majority stake in the memory card maker “KINGSTON” and bought shares in media companies and satellite broadcasting companies in Australia and Japan.\r\nThe next big step was to join the “dot com boom”, in 1996 SOFTBANK became the biggest shareholder in YAHOO and setup “YAHOO Japan”, this ended up being a common tactic, investing in U.S companies and then setting up a Japanese version, Son has stated that he believed that localizing this businesses made them more likely to succeed. Yahoo Japan till this day is still the country’s most widely used search engine even though it is not powered by Google. However, all this internet investment meant that SOFTBANK was seriously exposed when the dot com bubble popped at the turn of the millennium, Son himself has just pass Bill Gate to have the highest net worth in the world, but suddenly in just one day it all imploded, he dropped from a net worth of seventy eight billion dollars ($78 billion) to just eight billion dollars ($8 billion) overnight.\r\nWhile others may have thrown in the town, Son simply just went to look for more opportunities even saying that maybe this was a good thing because now he was able to find rock bond in prices. SOFTBANK invested in broadband providers, telecom companies such as VODAFONE and spent thirty million dollars ($30 million) on an unknown Chinese startup called ALIBABA. This original thirty million dollars stake is now worth close to one hundred and fifty billion dollars ($150 billion).\r\nSo that leads us to today, what about the rest of their portfolio?, what do SOFTBANK do currently?. Today the SOFTBANK group has an annual revenue of eighty two billion dollars ($82 billion) making them the seventy second (72nd) largest company in the world and the seventh (7th) largest in Japan. In addition to the companies mentioned before, SOFTBANK also owns SPRINT corporation; a company that made over thirty billion dollars ($30 billion) in revenue last year, and also owns BOOST mobile and VIRGIN mobile. SOFTBANK group also owns the micro-processor design company ARM; ARM processors are designed to be light on power, cost effective, and very efficient, for this reasons ARM processors are the basis for pretty much all of our mobile devices from the iPhone 10 to the iPad to SAMSUNG devices and the Google pixel line up, in fact over one hundred billion ARM chips have been sold to date.\r\nBut perhaps the most fascinating area is their full range of robotics, if any of you have seen the atlas robot or the sport mini robot, you probably know that they are made by BOSTON DYNAMICS, well BOSTON DYNAMICS is owned by SOFTBANK. When you combined this with their commercially available Pepper robot that went on sale in 2015, then you pretty much have a company that is very prepared for robots to be a part of daily life. There are already hundreds of thousands of robots in use across Japan. Pepper already works in many customer service positions for example.\r\nSOFTBANK approach to the future is a much more long term vision than any other company. Son have setup a plan for how SOFTBANK will continue to grow for the next three hundred years, this is filled by the SOFTBANK Vision Fund, they have multiple investors in the fund, with big heeders like APPLE, the Saudi government, and FOXCONN, they enter race one hundred billion dollars ($100 billion) in 2017 and came close to raising ninety three billion ($93 billion), a third of that money had already been invested. The vision fund have a fifteen percent (15%) share in UBER, twenty percent (20%) share in FLIPKART , five percent (5%) share in NVIDIA, and another five percent (5%) share in the messaging app SLACK as well as various other shares in about a thousand companies. SOFTBANK has even spent three hundred million dollars ($300 million) on a walking dog service called WAG. The other areas that they are looking into include; bio-tech, financial systems, mobile apps, Internet of Things devices, and almost anything with a technological element to it. So SOFTBANK strength is in its diversity and the fact that they are getting earlier in many different industries. Looking at all the stuffs they are investing in, it seems that Son’s three hundred year plan doesn’t seem so quiet crazy.');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `news_name` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `image` varchar(100) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `staff_id`, `news_name`, `date`, `image`, `content`) VALUES
(1, 3, 'The New Boeing 777X', '2020-11-14', 'pic3.JPG', 'In 2011, Boeing refined its response to the revamped Airbus A350 XWB with three 777X models, targeting a firm configuration in 2015, flying in late 2017 or 2018, and entering service by 2019. The 407–passenger 777-9X should stretch the 777-300ER by four frames to 250 ft 11 in (76.48 m) in length, for a 759,000 lb (344 t) maximum take-off weight (MTOW) and powered by 99,500 lbf (443 kN) engines, targeting per-seat 21% better fuel burn and 16% better operating cost. The smaller 353-seat 777-8X was to stretch the 777-200ER by ten frames to 228 ft 2 in (69.55 m), with a 694,000 lb (315 t) MTOW and 88,000 lbf (390 kN) turbofans to compete with the A350-900 with improvements over the -200ER like the 777-9X over the 777-300ER. A 8LX with the 9X MTOW would have a 9,480 nmi (10,910 mi; 17,560 km) range. The current 777-200LR/300ER have a 775,000 lb (352 t) MTOW.\r\nThe General Electric GE90-115B of the earlier 777-200LR and -300ER variants has a 42:1 overall pressure ratio and 23:1 HP compressor ratio. Rolls-Royce Plc proposed its RB3025 concept with a 132 in (335 cm) fan diameter, a 12:1 bypass ratio, and a 62:1 overall pressure ratio, targeting a fuel burn of more than 10% lower than the GE90-115B and 15% lower than its Trent 800 powering the 777; the RB3025 concept has a composite fan, a core derived from the Trent 1000, and advanced HP materials. Pratt & Whitney responded with a 100,000 lbf (440 kN) thrust PW1000G architecture. GE Aviation proposed the GE9X with a 128 in (325 cm) diameter fan, a 10:1 bypass ratio, a 60:1 overall pressure ratio, and 27:1 HP compressor ratio for a 10% fuel burn reduction.\r\nIn December 2014, Boeing began construction on a new 367,000 sq ft (34,100 m2) composites facility in St. Louis to be completed in 2016, to build 777X parts with six autoclaves for the wing and empennage parts, starting in 2017\r\nEngines were installed by early January 2019. The first 777-9 body join happened in February for a delivery planned in summer 2020 to Lufthansa. The roll-out of the prototype occurred on March 13, 2019, in a low-key employees-only event overshadowed by the crash of an Ethiopian Airlines 737 MAX 8 on March 10.[45]\r\n\r\nAs part of an investigation by the FAA into the fatal crashes of the Boeing 737 MAX aircraft, emails were released that showed that a problematic supplier of parts for the 737 MAX flight simulators was still being used for 777X simulators, on an even more aggressive schedule. The first flight of the 777X was scheduled for January 24, 2020, but was delayed a day due to weather conditions. The test flight took place on January 25, 2020, at 10:09 a.m. from Paine Field in Everett, and landed in Boeing Field in Seattle after 3 hours and 52 minutes.\r\nThe 777X has a new longer composite wing with folding wingtips. Based on the 787 wing but with less sweep, the new wing has a higher lift-to-drag ratio, an aspect ratio increased from 9:1 to 10:1, an area increased from 4,702 to 5,562 sq ft (436.8 to 516.7 m2), and usable fuel capacity increased from 320,863 to 350,410 lb (145,541 to 158,943 kg).');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `username` varchar(70) NOT NULL,
  `hashed_password` varchar(40) NOT NULL,
  `image` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `admin_id`, `username`, `hashed_password`, `image`) VALUES
(3, 1, 'Abdurrashid', '7c4a8d09ca3762af61e59520943dc26494f8941b', '91798194_1262897403900786_713223793887150080_n.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
