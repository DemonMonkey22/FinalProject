-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: April 29, 2020 at 05:01 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(10) NOT NULL,
  `author` varchar(20) NOT NULL,
  `quote` text NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `author`, `quote`, `category`) VALUES
(1, 'Mark Twain', 'There are basically two types of people. People who accomplish things, and people who claim to have accomplished things. The first group is less crowded.\r\n', 'education '),
(2, 'Mark Twain', 'The educated Southerner has no use for an \'r\', except at the beginning of a word.\r\n', 'education '),
(3, 'Mark Twain', 'Get your facts first, then you can distort them as you please.', 'funny'),
(4, 'Mark Twain', 'the main difference between a cat and a lie is that a cat only has nine lives.', 'funny'),
(5, 'Mark Twain', 'Don\'t let schooling interfere with your education.', 'education '),
(6, 'Benjamin Franklin ', 'Without freedom of thought, there can be no such thing as wisdom - and no such thing as public liberty without freedom of speech.', 'motivational'),
(7, 'Benjamin Franklin ', 'Keep your eyes wide open before marriage, half shut afterwords.', 'funny'),
(8, 'Benjamin Franklin ', 'A countryman between two lawyers is like a fish between two cats.', 'funny'),
(9, 'Benjamin Franklin ', 'Observe all men, thyself most.', 'motivational'),
(10, 'Benjamin Franklin ', 'I didn\'t fail the test, I just found  100 ways to do it wrong.', 'funny'),
(11, 'Abraham Lincoln', 'For my part, I desire to see the time when education - and by its means, morality, sobriety, enterprise and industry - shall become much more general than at present, and should be gratified to have it in my power to contribute something to the advancement of any measure which might have a tendency to accelerate the happy period.', 'education '),
(12, 'Abraham Lincoln', 'That I am not a member of any Christian church is true; but I have never denied the truth of the Scriptures, and I have never spoken with intentional disrespect of religion in general, or of any denomination of Christians in particular.', 'Religion '),
(13, 'Abraham Lincoln', 'Sir, my concern is not whether God is on our side; my greatest concern is to be on God\'s side, for God is always right.', 'Religion'),
(14, 'Abraham Lincoln', 'Always bear in mind that your own resolution to succeed is more important than any other.', 'motivational'),
(15, 'Abraham Lincoln', 'The people themselves, and not their servants, can safely reverse their own deliberate decisions.', 'education '),
(16, 'Confucius', 'Never contract friendship with a man that is not better than thyself', 'other'),
(17, 'Confucius', 'Everything has beauty, but not everyone sees it.', 'other'),
(18, 'Confucius', 'Better a diamond with a flaw than a pebble without.', 'motivational'),
(19, 'Confucius', 'There are three methods to gaining wisdom. The first is reflection, which is the highest. The second is limitation, which is the easiest. The third is experience, which is the bitterest.', 'education '),
(20, 'Confucius', 'I hear and I forget. I see and I remember. I do and I understand.', 'other'),
(21, 'Winston Churchill', 'I may be drunk, Miss, but in the morning I will be sober and you will still be ugly.', 'funny'),
(22, 'Winston Churchill', 'You can always count on Americans to do the right thing- after they\'ve tried everything else.', 'funny'),
(23, 'Winston Churchill', 'All the great things are simple, and many can be expressed in a single word: freedom, justice, honor, duty, mercy, hope.', 'motivational'),
(24, 'Winston Churchill', 'One does not leave a convivial party before closing time.', 'other'),
(25, 'Winston Churchill', 'If you have ten thousand regulations you destroy all respect for the law.', 'education ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
