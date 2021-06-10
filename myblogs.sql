-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 01:54 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'Vairag', '12345678910', 'First Post is really amazing!', '2021-05-26 20:27:38', 'abc@gmail.com'),
(2, 'Hanishi', '1234567876', 'The contents added are inspiring and accurate!', '2021-05-27 12:12:21', 'abc@gmail.com'),
(3, 'Darshan', '123456789', 'hello,nice contents and well framed.', '2021-06-10 15:32:27', 'dXys@gmail.com'),
(4, 'Manoj', '123456789', 'hello, can you add articles related to Engineering fields.', '2021-06-10 15:35:44', 'xyz@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(0, 'All you need  to know about India', 'YehMeraIndia', 'india', ' India (Hindi: Bhārat), officially the Republic of India (Hindi: Bhārat Gaṇarājya),is a country in South Asia. It is the second-most populous country, the seventh-largest country by land area, and the most populous democracy in the world. Bounded by the Indian Ocean on the south, the Arabian Sea on the southwest, and the Bay of Bengal on the southeast, it shares land borders with Pakistan to the west;China, Nepal, and Bhutan to the north; and Bangladesh and Myanmar to the east. In the Indian Ocean, India is in the vicinity of Sri Lanka and the Maldives; its Andaman and Nicobar Islands share a maritime border with Thailand, Myanmar and Indonesia.\r\n\r\nModern humans arrived on the Indian subcontinent from Africa no later than 55,000 years ago.Their long occupation, initially in varying forms of isolation as hunter-gatherers, has made the region highly diverse, second only to Africa in human genetic diversity. Settled life emerged on the subcontinent in the western margins of the Indus river basin 9,000 years ago, evolving gradually into the Indus Valley Civilisation of the third millennium BCE.By 1200 BCE, an archaic form of Sanskrit, an Indo-European language, had diffused into India from the northwest, unfolding as the language of the Rigveda, and recording the dawning of Hinduism in India.The Dravidian languages of India were supplanted in the northern and western regions. By 400 BCE, stratification and exclusion by caste had emerged within Hinduism, and Buddhism and Jainism had arisen, proclaiming social orders unlinked to heredity. Early political consolidations gave rise to the loose-knit Maurya and Gupta Empires based in the Ganges Basin. Their collective era was suffused with wide-ranging creativity, but also marked by the declining status of women, and the incorporation of untouchability into an organised system of belief.In South India, the Middle kingdoms exported Dravidian-languages scripts and religious cultures to the kingdoms of Southeast Asia.\r\n\r\nIn the early medieval era, Christianity, Islam, Judaism, and Zoroastrianism put down roots on India\'s southern and western coasts.Muslim armies from Central Asia intermittently overran India\'s northern plains, eventually establishing the Delhi Sultanate, and drawing northern India into the cosmopolitan networks of medieval Islam.In the 15th century, the Vijayanagara Empire created a long-lasting composite Hindu culture in south India. In the Punjab, Sikhism emerged, rejecting institutionalised religion. The Mughal Empire, in 1526, ushered in two centuries of relative peace,leaving a legacy of luminous architecture.Gradually expanding rule of the British East India Company followed, turning India into a colonial economy, but also consolidating its sovereignty.British Crown rule began in 1858. The rights promised to Indians were granted slowly,but technological changes were introduced, and ideas of education, modernity and the public life took root. A pioneering and influential nationalist movement emerged, which was noted for nonviolent resistance and became the major factor in ending British rule.In 1947 the British Indian Empire was partitioned into two independent dominions, a Hindu-majority Dominion of India and a Muslim-majority Dominion of Pakistan, amid large-scale loss of life and an unprecedented migration.\r\n\r\nIndia has been a federal republic since 1950, governed in a democratic parliamentary system. It is a pluralistic, multilingual and multi-ethnic society. India\'s population grew from 361 million in 1951 to 1.211 billion in 2011.During the same time, its nominal per capita income increased from US$64 annually to US$1,498, and its literacy rate from 16.6% to 74%. From being a comparatively destitute country in 1951, India has become a fast-growing major economy and a hub for information technology services, with an expanding middle class. It has a space programme which includes several planned or completed extraterrestrial missions. Indian movies, music, and spiritual teachings play an increasing role in global culture. India has substantially reduced its rate of poverty, though at the cost of increasing economic inequality.India is a nuclear-weapon state, which ranks high in military expenditure. It has disputes over Kashmir with its neighbours, Pakistan and China, unresolved since the mid-20th century. Among the socio-economic challenges India faces are gender inequality, child malnutrition,and rising levels of air pollution. India\'s land is megadiverse, with four biodiversity hotspots. Its forest cover comprises 21.7% of its area.India\'s wildlife, which has traditionally been viewed with tolerance in India\'s culture,is supported among these forests, and elsewhere, in protected habitats.', 'india.jpg', '2021-06-10 17:17:33'),
(1, 'What is AI?', 'The future of technology!', 'ai', 'Artificial intelligence (AI) is intelligence demonstrated by machines, unlike the natural intelligence displayed by humans and animals, which involves consciousness and emotionality. The distinction between the former and the latter categories is often revealed by the acronym chosen. \'Strong\' AI is usually labelled as artificial general intelligence (AGI) while attempts to emulate \'natural\' intelligence have been called artificial biological intelligence (ABI). Leading AI textbooks define the field as the study of \"intelligent agents\": any device that perceives its environment and takes actions that maximize its chance of achieving its goals. Colloquially, the term \"artificial intelligence\" is often used to describe machines that mimic \"cognitive\" functions that humans associate with the human mind, such as \"learning\" and \"problem solving\".\r\n\r\nAs machines become increasingly capable, tasks considered to require \"intelligence\" are often removed from the definition of AI, a phenomenon known as the AI effect.A quip in Tesler\'s Theorem says \"AI is whatever hasn\'t been done yet.\" For instance, optical character recognition is frequently excluded from things considered to be AI,having become a routine technology. Modern machine capabilities generally classified as AI include successfully understanding human speech,competing at the highest level in strategic game systems (such as chess and Go),and also imperfect-information games like poker, self-driving cars, intelligent routing in content delivery networks, and military simulations.', 'ai.jpg', '2021-06-10 01:03:34'),
(2, 'Are you vaccinated?', 'vaccine the savior', 'vaccine', 'A COVID‑19 vaccine is a vaccine intended to provide acquired immunity against severe acute respiratory syndrome coronavirus 2 (SARS‑CoV‑2), the virus causing coronavirus disease 2019 (COVID‑19). Prior to the COVID‑19 pandemic, there was an established body of knowledge about the structure and function of coronaviruses causing diseases like severe acute respiratory syndrome (SARS) and Middle East respiratory syndrome (MERS), which enabled accelerated development of various vaccine technologies during early 2020.[1] On 10 January 2020, the SARS-CoV-2 genetic sequence data was shared through GISAID, and by 19 March, the global pharmaceutical industry announced a major commitment to address COVID-19.\r\n\r\nIn Phase III trials, several COVID‑19 vaccines have demonstrated efficacy as high as 95% in preventing symptomatic COVID‑19 infections. As of April 2021, 16 vaccines are authorized by at least one national regulatory authority for public use: three RNA vaccines (Pfizer–BioNTech and Moderna), seven conventional inactivated vaccines (BBIBP-CorV, CoronaVac, Covaxin, WIBP-CorV, CoviVac, Minhai-Kangtai and QazVac), five viral vector vaccines (Sputnik Light, Sputnik V, Oxford–AstraZeneca, Convidecia, and Johnson & Johnson), and two protein subunit vaccines (EpiVacCorona and RBD-Dimer). In total, as of March 2021, 308 vaccine candidates are in various stages of development, with 73 in clinical research, including 24 in Phase I trials, 33 in Phase I–II trials, and 16 in Phase III development.\r\n\r\nMany countries have implemented phased distribution plans that prioritize those at highest risk of complications, such as the elderly, and those at high risk of exposure and transmission, such as healthcare workers.Single dose interim use is under consideration in order to extend vaccination to as many people as possible until vaccine availability improves.\r\n\r\nAs of 6 June 2021, 2.15 billion doses of COVID‑19 vaccine have been administered worldwide based on official reports from national health agencies.AstraZeneca anticipates producing 3 billion doses in 2021, Pfizer–BioNTech 1.3 billion doses, and Sputnik V, Sinopharm, Sinovac, and Johnson & Johnson 1 billion doses each. Moderna targets producing 600 million doses and Convidecia 500 million doses in 2021.By December 2020, more than 10 billion vaccine doses had been preordered by countries, with about half of the doses purchased by high-income countries comprising 14% of the world\'s population.', 'vaccine.jpg', '2021-06-10 15:57:16'),
(3, 'Did you heard about Bitcoin?', 'The era of digital currency...', 'bitcoin', 'Bitcoin (₿) is a decentralized digital currency, without a central bank or single administrator, that can be sent from user to user on the peer-to-peer bitcoin network without the need for intermediaries.Transactions are verified by network nodes through cryptography and recorded in a public distributed ledger called a blockchain. The cryptocurrency was invented in 2008 by an unknown person or group of people using the name Satoshi Nakamoto. The currency began use in 2009 when its implementation was released as open-source software.\r\n\r\nBitcoins are created as a reward for a process known as mining. They can be exchanged for other currencies, products, and services, but the real-world value of the coins is extremely volatile.Research produced by the University of Cambridge estimated that in 2017, there were 2.9 to 5.8 million unique users using a cryptocurrency wallet, most of them using bitcoin. Users choose to participate in the digital currency for a number of reasons: ideologies such as commitment to anarchism, decentralization and libertarianism, convenience, using the currency as an investment and pseudonymity of transactions. Increased use has led to a desire among governments for regulation in order to tax, facilitate legal use in trade and for other reasons (such as investigations for money laundering and price manipulation).\r\n\r\nBitcoin has been criticized for its use in illegal transactions, the large amount of electricity (and thus carbon footprint) used by mining, price volatility, and thefts from exchanges. Some economists and commentators have characterized it as a speculative bubble at various times. Bitcoin has also been used as an investment, although several regulatory agencies have issued investor alerts about bitcoin.\r\n\r\nThe word bitcoin was defined in a white paper published on 31 October 2008. It is a compound of the words bit and coin. No uniform convention for bitcoin capitalization exists; some sources use Bitcoin, capitalized, to refer to the technology and network and bitcoin, lowercase, for the unit of account. The Wall Street Journal, The Chronicle of Higher Education, and the Oxford English Dictionary advocate the use of lowercase bitcoin in all cases.', 'bitcoin.jpg', '2021-06-09 15:16:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
