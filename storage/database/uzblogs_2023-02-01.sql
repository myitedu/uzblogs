# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.4.21-MariaDB)
# Database: uzblogs
# Generation Time: 2023-02-02 03:31:45 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table blogs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blogs`;

CREATE TABLE `blogs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `long_description` text DEFAULT NULL,
  `banner_image` varchar(250) DEFAULT NULL,
  `images` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;

INSERT INTO `blogs` (`id`, `user_id`, `title`, `description`, `long_description`, `banner_image`, `images`, `created_at`, `updated_at`)
VALUES
	(1,2,'5 economic challenges that await us in 2023','Despite major challenges like the potential for a recession, the arrival of 2023 isn\'t all bad news. Find out why the global economic outlook isn\'t as dire as it seems.','2022 was the year when the global economy was expected to recover from the mayhem unleashed by the COVID-19 pandemic. But then, Russia invaded Ukraine on February 24 and the economy was pushed into the throes of uncertainty.\n\nThe war in Ukraine and ensuing Western sanctions against Russia stoked geopolitical tensions, sent energy and food prices soaring to record levels and disrupted supply chains, throwing a wrench into the global recovery.\n\nAs inflation climbed to multiyear highs, central banks were forced to tighten the money taps at a frenetic pace by increasing interest rates in the face of an already slowing economy, further boosting the prospects of a recession in 2023.  \n\nA recession is, however, just one of the economic difficulties that awaits us this year. Here\'s a look at some of the biggest challenges likely to confront the global economy.\n\nAn imminent recession\n2023 is expected to be the third-worst year for global economic growth this century behind 2009, when the global financial crisis caused the Great Recession, and 2020 when COVID-19 lockdowns brought the global economy to a virtual standstill.\n\nAnalysts expect the world\'s major economies, including the United States and the United Kingdom, as well as the eurozone, to slip into a recession this year as central banks continue raising interest rates to temper demand for consumer goods and services in an effort to rein in raging inflation.\n\nThe head of International Monetary Fund, Kristalina Georgieva, has warned that a third of the global economy could be hit by a recession in 2023, which she described as a \"tougher\" year than 2022.\n\nThe eurozone, in the midst of a severe energy crisis as it looks to shed its reliance on Russian fossil fuels, and the UK are likely to witness a deeper recession than their peers.\n\n\"The severity of the coming hit to global GDP depends principally on the trajectory of the war in Ukraine,\" analysts from The Institute of International Finance wrote in a research note, adding that the conflict risked becoming a \"forever war.\"\n\nThe contraction in advanced economies and a stronger American dollar will hurt exports, spelling trouble for export-oriented Asian economies.\n\nThe consolation is that any recession will likely be short-lived and won\'t be as severe as initially feared, causing only a modest rise in unemployment.\n\n\"Since inflation now seems to be receding all over the world, central banks should be able to take their feet off the brakes before long, allowing a recovery to begin late next year [2023],\" analysts at Capital Economics said in December.\n\nA new kind of global recession: Why this time is different\n23:27\nStubborn inflation\nPrice rises will likely be moderate in 2023, helped by weakening demand, falling energy prices, easing of supply snarls and a decline in shipping costs. However, inflation will stay above central bank target levels, prompting further interest rate hikes. That means more pain for the economy, and it  risks worsening a global debt crisis.\n\nInflation in the eurozone is expected to come down more slowly than in the US. In Germany, the eurozone\'s economic engine, inflation is expected to fall thanks to measures like a cap on gas and power prices. But core inflation, which strips out volatile food and energy prices, could remain stubbornly high as a result of the government\'s cash transfers to help households deal with higher living costs.\n\n\"The resilience of the [eurozone] economy, and particularly the labor market, suggests that inflation could be higher for longer than we expect,\" said Andrew Kenningham, chief Europe economist at Capital Economics, adding that core inflation would fall more slowly as strong wage growth keeps inflation in the service sector high.\n\n\"There are several obvious risks to that forecast. \'Known unknowns\' include what happens to energy markets, which in turn depends on the course of the Ukraine war and the weather, and how German manufacturers cope with high energy prices,\" he said.\n\nADVERTISEMENT\nChina\'s COVID chaos\nJust weeks before the start of 2023, China announced an exit from its controversial zero-COVID policy. The swift pivot has left the country\'s health care system overwhelmed amid an alarming rise in COVID cases.\n\nGoing by the experience of other countries, the deluge of infections is expected to cause short-term disruption to the world\'s second-largest economy. This could deal a blow to the fragile recovery in global supply chains. There is also the risk of a new coronavirus variant emerging and spreading to other parts of the world.\n\nWhile the near-term prospects appear bleak, analysts expect the Chinese economy to end 2023 on a brighter note with a big boost resulting from Beijing\'s ditching of zero-COVID and its support for the country\'s ailing property sector, which accounts for nearly a quarter of China\'s economic output.\n\n\"Chinese recovery, combined with the regional reopening, means Asia could have a good 2023,\" Christian Nolting, Deutsche Bank\'s chief investment officer, said in a note to clients. The recovery could \"stabilize the economies of neighboring and many commodity exporting countries (such as those in Latin America) given that China is the dominant commodities consumer.\"\n\nBig Tech\'s big problems: From China to Silicon Valley\n20:06\nAn energy crisis\nThe precarious energy situation, especially in Europe, will continue giving headaches to governments in 2023. Europe might just manage to escape a complete energy crisis this winter thanks to milder-than-normal weather and consumers cutting their energy usage.\n\nThe lower demand for heating means the region\'s storage facilities, which were filled to the brim last year, might remain well-stocked at the end of this winter. That\'s likely to keep gas prices in check next spring, helping to pull down inflation. \n\nThe situation could still become challenging ahead of next winter. Having spent hundreds of billions of euros last year scouting for alternatives to Russian energy and shielding consumers, Europe might struggle to once again fill up its storage facilities. The competition for liquefied natural gas will be especially tough as China reopens and traditional Asian buyers like Japan and Korea start looking for more sources of energy.\n\nNolting said energy remains the main risk factor for the region, \"coupled with a possible shortage of gas in winter 2023/2024.\"\n\nGeopolitical tensions, technology war\nMilitary and political tensions will continue to remain among the biggest risks to the economy, much like in 2022. While there is no end in sight to Russia\'s war in Ukraine, US-China frictions over Taiwan, the world\'s top semiconductor manufacturer, and soaring tensions in the Korean Peninsula amid North Korea\'s missile testing are likely to keep investors on their toes this year. \n\n\"Solutions to end Russia\'s invasion of Ukraine remain elusive. This in turn means no solutions to the knock-on effects of this conflict on areas such as migration movements, global supplies of fossil energy commodities and food; and potential geopolitical shifts extending far beyond the region,\" said Nolting.\n\nThe battle for technological supremacy between the US and China might get more intense in 2023. Last year, Washington banned the transfer of advanced US semiconductor technology to China.\n\n\"A trade conflict has now morphed into an effort to set the applicable long-term standards in highly important fields such as 5G, artificial intelligence and chips,\" said Nolting. \"Success will expand the country\'s power base over the long term. So both sides will not want to yield ground easily.\"\n\n','https://studiousguy.com/wp-content/uploads/2018/07/Economics.jpg',NULL,'2023-02-01 22:15:54','2023-02-01 22:15:54'),
	(2,1,'What Is Bitcoin?','Bitcoin (BTC) is a cryptocurrency, a virtual currency designed to act as money and a form of payment outside the control of any one person, group, or entity, thus removing the need for third-party involvement in financial transactions. It is rewarded','Bitcoin was introduced to the public in 2009 by an anonymous developer or group of developers using the name Satoshi Nakamoto.\r\n1\r\n\r\nIt has since become the most well-known cryptocurrency in the world. Its popularity has inspired the development of many other cryptocurrencies. These competitors either attempt to replace it as a payment system or are used as utility or security tokens in other blockchains and emerging financial technologies.\r\n\r\nLearn more about the cryptocurrency that started it all—the history behind it, how it works, how to get it, and what it can be used for.\r\n\r\nKEY TAKEAWAYS\r\nLaunched in 2009, Bitcoin is the world\'s largest cryptocurrency by market capitalization.\r\nUnlike fiat currency, Bitcoin is created, distributed, traded, and stored using a decentralized ledger system known as a blockchain.\r\nBitcoin and its ledger are secured by proof-of-work (PoW) consensus, which is also the \"mining\" process that introduces new bitcoins into the system.\r\nBitcoin can be purchased via various cryptocurrency exchanges.\r\nBitcoin\'s history as a store of value has been turbulent; it has gone through several boom and bust cycles over its relatively short lifespan.\r\nAs the first decentralized virtual currency to meet widespread popularity and success, Bitcoin has inspired a host of other cryptocurrencies in its wake.\r\n1:57\r\nWhat Is Bitcoin\r\nTake the Next Step to Invest\r\nAdvertiser Disclosure\r\n\r\n\r\n\r\nUnderstanding Bitcoin\r\nIn August 2008, the domain name Bitcoin.org was registered. Today, at least, this domain is WhoisGuard Protected, meaning the identity of the person who registered it is not public information.\r\n2\r\n\r\nIn October 2008, a person or group using the false name Satoshi Nakamoto announced the Cryptography Mailing List at metzdowd.com: \"I\'ve been working on a new electronic cash system that\'s fully peer-to-peer, with no trusted third party.\" This now-famous white paper published on Bitcoin.org, entitled \"Bitcoin: A Peer-to-Peer Electronic Cash System,\" would become the Magna Carta for how Bitcoin operates today.\r\n3\r\n\r\nOn Jan. 3, 2009, the first Bitcoin block was mined—Block 0. This is also known as the \"genesis block\" and contains the text: \"The Times 03/Jan/2009 Chancellor on brink of second bailout for banks,\" perhaps proof that the block was mined on or after that date, and maybe also as relevant political commentary.\r\n4\r\n\r\nBitcoin rewards are halved every 210,000 blocks. For example, the block reward was 50 new bitcoins in 2009. On May 11, 2020, the third halving occurred, bringing the reward for each block discovery down to 6.25 bitcoins.\r\n5\r\n\r\nOne bitcoin is divisible to eight decimal places (100 millionths of one bitcoin), and this smallest unit is referred to as a satoshi. If necessary, and if the participating miners accept the change, Bitcoin could eventually be made divisible to even more decimal places.\r\n\r\nBitcoin, as a form of digital currency, isn\'t too complicated to understand. For example, if you own a bitcoin, you can use your cryptocurrency wallet to send smaller portions of that bitcoin as payment for goods or services. However, it becomes very complex when you try to understand how it works.\r\nOn Jan. 8, 2009, the first version of the Bitcoin software was announced to the Cryptography Mailing List, and on Jan. 9, 2009, Block 1 was mined, and Bitcoin mining commenced in earnest.\r\n\r\nBitcoin\'s Blockchain Technology\r\nCryptocurrencies are part of a blockchain and the network required to power it. A blockchain is a distributed ledger, a shared database that stores data. Data within the blockchain is secured by encryption methods.\r\n\r\nWhen a transaction takes place on the blockchain, information from the previous block is copied to a new block with the new data, encrypted, and the transaction is verified by validators—called miners—in the network. When a transaction is verified, a new block is opened, and a Bitcoin is created and given as a reward to the miner(s) who verified the data within the block—they are then free to use it, hold it, or sell it.\r\n\r\nBitcoin uses the SHA-256 hashing algorithm to encrypt the data stored in the blocks on the blockchain. Simply put, transaction data stored in a block is encrypted into a 256-bit hexadecimal number. That number contains all of the transaction data and information linked to the blocks before that block.\r\n\r\nData linked between blocks is what led to the ledger being called a blockchain.\r\n\r\nTransactions are placed into a queue to be validated by miners within the network. Miners in the Bitcoin blockchain network all attempt to verify the same transaction simultaneously. The mining software and hardware work to solve the nonce, a four-byte number included in the block header that miners are attempting to solve.\r\n\r\nThe block header is hashed, or randomly regenerated by a miner repeatedly until it meets a target number specified by the blockchain. The block header is \"solved,\" and a new block is created for more transactions to be encrypted and verified.\r\n\r\nHow to Mine Bitcoin\r\nA variety of hardware and software can be used to mine Bitcoin. When Bitcoin was first released, it was possible to mine it competitively on a personal computer; however, as it became more popular, more miners joined the network, which lowered the chances of being the one to solve the hash. You can still use your personal computer as a miner if it has newer hardware, but the chances of solving a hash individually are minuscule.\r\n\r\nThis is because you\'re competing with a network of miners that generate around 220 quintillion hashes (220 exa hashes) per second. Machines, called Application Specific Integrated Circuits (ASICs), have been built specifically for mining—can generate around 255 trillion hashes per second. In contrast, a computer with the latest hardware hashes around 100 mega hashes per second (100 million).\r\n6\r\n7\r\n\r\nTo successfully become a Bitcoin miner, you have several options. You can use your existing personal computer to use mining software compatible with Bitcoin and join a mining pool. Mining pools are groups of miners that combine their computational power to compete with the large ASIC mining farms.\r\n\r\nYou increase your chances of being rewarded by joining a pool, but rewards are significantly decreased because they are shared.\r\n\r\nIf you have the financial means, you could also purchase an ASIC miner. You can generally find a new one for around $20,000, but used ones are also sold by miners as they upgrade their systems. There are some significant costs such as electricity and cooling to consider if you purchase one or more ASICs.\r\n\r\nThere are several mining programs to choose from and many pools you can join. Two of the most well-known programs are CGMiner and BFGMiner. When choosing a pool, it\'s important to make sure you find out how they pay out rewards, what any fees might be, and read some mining pool reviews.\r\n\r\nHow Do You Buy Bitcoin?\r\nIf you don\'t want to mine bitcoin, it can be bought using a cryptocurrency exchange. Most people will not be able to purchase an entire BTC because of its price, but you can buy portions of BTC on these exchanges in fiat currency like U.S. dollars. For example, you can buy bitcoin on Coinbase by creating an account and funding it. You can fund your account using your bank account, credit card, or debit card. The following video explains more about buying bitcoin.','https://nairametrics.com/wp-content/uploads/2022/10/bitcoin-1.webp',NULL,'2023-01-26 16:24:02','2023-01-26 16:24:02'),
	(3,2,'Coronavirus disease (COVID-19)','Coronavirus disease (COVID-19) is an infectious disease caused by the SARS-CoV-2 virus.','Most people infected with the virus will experience mild to moderate respiratory illness and recover without requiring special treatment. However, some will become seriously ill and require medical attention. Older people and those with underlying medical conditions like cardiovascular disease, diabetes, chronic respiratory disease, or cancer are more likely to develop serious illness. Anyone can get sick with COVID-19 and become seriously ill or die at any age. \n\nThe best way to prevent and slow down transmission is to be well informed about the disease and how the virus spreads. Protect yourself and others from infection by staying at least 1 metre apart from others, wearing a properly fitted mask, and washing your hands or using an alcohol-based rub frequently. Get vaccinated when it’s your turn and follow local guidance.\n\nThe virus can spread from an infected person’s mouth or nose in small liquid particles when they cough, sneeze, speak, sing or breathe. These particles range from larger respiratory droplets to smaller aerosols. It is important to practice respiratory etiquette, for example by coughing into a flexed elbow, and to stay home and self-isolate until you recover if you feel unwell.\nTo prevent infection and to slow transmission of COVID-19, do the following: \n\nGet vaccinated when a vaccine is available to you.\nStay at least 1 metre apart from others, even if they don’t appear to be sick.\nWear a properly fitted mask when physical distancing is not possible or when in poorly ventilated settings.\nChoose open, well-ventilated spaces over closed ones. Open a window if indoors.\nWash your hands regularly with soap and water or clean them with alcohol-based hand rub.\nCover your mouth and nose when coughing or sneezing.\nIf you feel unwell, stay home and self-isolate until you recover.\nCOVID-19 affects different people in different ways. Most infected people will develop mild to moderate illness and recover without hospitalization.\n\nMost common symptoms:\n\nfever\ncough\ntiredness\nloss of taste or smell.\nLess common symptoms:\n\nsore throat\nheadache\naches and pains\ndiarrhoea\na rash on skin, or discolouration of fingers or toes\nred or irritated eyes.\n\nSerious symptoms:\n\ndifficulty breathing or shortness of breath\nloss of speech or mobility, or confusion\nchest pain.\nSeek immediate medical attention if you have serious symptoms.  Always call before visiting your doctor or health facility. \n\nPeople with mild symptoms who are otherwise healthy should manage their symptoms at home. \n\nOn average it takes 5–6 days from when someone is infected with the virus for symptoms to show, however it can take up to 14 days.','https://media.defense.gov/2020/Mar/09/2003062075/1300/700/0/200309-D-HN545-003.JPG',NULL,'2023-02-01 22:15:53','2023-02-01 22:15:53');

/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_id` (`blog_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;

INSERT INTO `comments` (`id`, `blog_id`, `user_id`, `comment`, `created_at`, `updated_at`)
VALUES
	(1,2,1,'My first comment for the blog # 2','2023-02-02 02:41:04','2023-02-02 02:41:04'),
	(2,2,1,'My second comment for the blog # 2','2023-02-02 02:42:42','2023-02-02 02:42:42'),
	(3,2,1,'aaaaaaaa','2023-02-02 02:43:29','2023-02-02 02:43:29'),
	(4,2,1,'wedwedwede','2023-02-02 02:46:12','2023-02-02 02:46:12'),
	(5,2,1,'zzzzzzz','2023-02-02 02:59:42','2023-02-02 02:59:42'),
	(6,2,1,'ccwecwecewc','2023-02-02 03:10:09','2023-02-02 03:10:09'),
	(7,3,1,'jsdfbsjldfnsldflns','2023-02-02 03:29:22','2023-02-02 03:29:22'),
	(8,3,1,'222222','2023-02-02 03:29:28','2023-02-02 03:29:28');

/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ratings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ratings`;

CREATE TABLE `ratings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ratings` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_id` (`blog_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;

INSERT INTO `ratings` (`id`, `blog_id`, `user_id`, `ratings`, `created_at`, `updated_at`)
VALUES
	(1,2,1,'1','2023-02-01 22:06:45','2023-01-28 04:19:48'),
	(2,2,2,'1','2023-02-01 22:07:01','2023-01-28 04:19:48'),
	(4,2,3,'1','2023-02-01 22:07:01','2023-01-28 04:19:48'),
	(5,2,4,'1','2023-02-01 22:07:01','2023-01-28 04:19:48');

/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `superadmin` tinyint(1) DEFAULT 0,
  `display` tinyint(4) DEFAULT 0,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `role`, `superadmin`, `display`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'',1,1,'Jon Toshmatov','jontoshmatov@yahoo.com','2021-06-21 12:38:20','$2y$10$NIYF1VyPfKX60tprnigcru3EZzh3HHWHn8yJhOclj3yIK4Su/mcFq',NULL,NULL,'2021-12-08 15:37:36',NULL),
	(2,'',0,1,'Sarvar Sayfiddinov','sarvar@gmail.com','2021-06-21 12:38:20','$2y$10$NIYF1VyPfKX60tprnigcru3EZzh3HHWHn8yJhOclj3yIK4Su/mcFq',NULL,NULL,'2021-12-08 15:37:36',NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
