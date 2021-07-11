-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2021 at 09:28 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(18, 'java'),
(19, 'Mysql'),
(20, 'Python'),
(21, 'Ruby'),
(23, 'Nodejs'),
(24, 'js'),
(26, 'c++'),
(28, 'NLP');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(8, 10, 'nur', 'nur@gmail.com', 'best artical', 'unapproved', '2021-05-30'),
(9, 11, 'Avik', 'abro45172018@gmail.com', 'hii', 'approved', '2021-05-30'),
(10, 11, 'midya', 'midya301@gmail.com', 'ok', 'approved', '2021-05-30'),
(11, 11, 'midya', 'Anu@gmail.com', 'hol', 'unapproved', '2021-05-30'),
(12, 11, 'Avik', 'abro45172018@gmail.com', 'hi', 'unapproved', '2021-06-05'),
(13, 11, 'ai', 'abro45172018@gmail.com', 'hii', 'unapproved', '2021-06-07'),
(15, 25, 'ai', 'abro45172018@gmail.com', 'gggggggggggggggggg', 'unapproved', '2021-06-07'),
(16, 21, 'ruby', 'abro45172018@gmail.com', 'ggg', 'unapproved', '2021-06-18'),
(17, 26, 'safar', 'safar@gmail.com', 'good', 'unapproved', '2021-06-18'),
(18, 26, 'safar', 'safar45172018@gmail.com', 'good', 'unapproved', '2021-06-23'),
(19, 29, 'risav', 'risav@gmail.com', 'ggg', 'unapproved', '2021-07-05'),
(20, 29, 'risav', 'risav@gmail.com', 'ggg', 'unapproved', '2021-07-05'),
(21, 29, 'risav', 'risav@gmail.com', 'ggg', 'unapproved', '2021-07-05'),
(22, 29, 'risav', 'gg@gnail.co', 'yy', 'unapproved', '2021-07-05'),
(23, 21, 'risav', 'gg@gnail.co', 'gg', 'approved', '2021-07-05');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(10, 18, '    Nodejs First Application', '    Avi', '2021-07-05', 'Node_logo_NodeJS.png', '<p>Before creating an actual \"Hello, World!\" application using Node.js, let us see the components of a Node.js application. A Node.js application consists of the following three important components.We use the require directive to load the http module and store the returned HTTP instance into an http variable as follows Node.js is an open source, cross-platform runtime environment for developing server-side and networking applications. Node.js applications are written in JavaScript, and can be run within the Node.js runtime on OS X, Microsoft Windows, and Linux. Node.js also provides a rich library of various JavaScript modules which simplifies the development of web applications using Node.js to a great extent.<strong>bghjjj</strong>ghghyyyyyyyyyyyyyyyyyyyyyyyyyyyy</p>', '    Nodejs  ', 1, 'published       '),
(11, 19, ' VARCHAR and TEXT ', 'Robert Gravelle', '2021-06-07', 'sql.jpg', '<p>One of the changes in MySQL version 5.0.3 included an increase to the maximum length of VARCHAR fields from 255 to 65,535 characters. That made the VARCHAR type more similar to TEXT than ever before. o go with.Some Differences Between VARCHAR and TEXT While both data types share a maximum length of 65,535 characters, there are still a few differences: The VAR in VARCHAR means that you can set the max size to anything between 1 and 65,535. TEXT fields have a fixed max size of 65,535 characters. A VARCHAR can be part of an index whereas a TEXT field requires you to specify a prefix length, which can be part of an index. VARCHAR is stored inline with the table (at least for the MyISAM storage engine), making it potentially faster when the size is reasonable. Of course, how much faster depends on both your data and your hardware. Meanwhile, TEXT is stored off table with the table having a pointer to the location of the actual storage. Using a TEXT column in a sort will require the use of a disk-based temporary table, as the MEMORY (HEAP) storage engine.</p>', 'Mysql ', 4, 'published   '),
(12, 20, 'Object Oriented Programming in Python', 'Avi', '2021-06-07', 'OIP.jpg', '<p>Object: The object is an entity that has a state and behavior associated with it.It may be any real-world object like the mouse, keyboard, chair, table, pen, etc. Integers, strings, floating-point numbers, even arrays, and dictionaries, are all objects. More specifically, any single integer or any single string is an object. The number 12 is an object, the string “Hello, world” is an object, a list is an object that can hold other objects, and so on. You’ve been using objects all along and may not even realize it. Class: A class is a blueprint that defines the variables and the methods (Characteristics) common to all objects of a certain kind. Example: If Car is a class, then Audi A6 is an object of the Car class. All cars share similar features like 4 wheels, 1 steering wheel, windows, breaks etc. Audi A6 (The Car object) has all these features.</p>', 'python,oop', 0, 'draft '),
(21, 21, ' Ruby:)', 'Rubymaster', '2021-06-18', 'download (1).png', '<p>Rubyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy</p>', 'ruby', 0, 'published '),
(25, 18, ' Introduction to Java', '   Robert Gravelle', '2021-07-05', 'download.png', '<p><strong>JAVA</strong> was developed by James Gosling at <strong>Sun Microsystems</strong> Inc in the year <strong>1991</strong>,&nbsp;later acquired by Oracle Corporation. It is a simple programming language. Java makes writing, compiling, and debugging programming easy.&nbsp;It helps to create reusable code and modular programs.</p><p><a href=\"https://www.geeksforgeeks.org/java/\">Java</a> is a class-based, object-oriented programming language and is designed to have as few implementation dependencies as possible. A general-purpose programming language made for developers to <i>write once run anywhere</i> that is compiled Java code can run on all platforms that support Java. Java applications are compiled to byte code that can run on any Java Virtual Machine. The syntax of Java is similar to c/c++.</p><h3>History</h3><p>Java’s history is very interesting. It is a programming language created in 1991.<strong> </strong>James Gosling, Mike Sheridan, and Patrick Naughton, a team of Sun engineers known as the <strong>Green team </strong>initiated the Java language in 1991. <strong>Sun Microsystems</strong> released its first public implementation in 1996 as <strong>Java 1.0</strong>. It provides no-cost -run-times on popular platforms. Java1.0 compiler was re-written in Java by Arthur Van Hoff to strictly comply with its specifications. With the arrival of Java 2, new versions had multiple configurations built for different types of platforms.</p><p>In 1997, Sun Microsystems approached the ISO standards body and later formalized Java, but it soon withdrew from the process. At one time, Sun made most of its Java implementations available without charge, despite their proprietary software status. Sun generated revenue from Java through the selling of licenses for specialized products such as the Java Enterprise System.</p><p>On November 13, 2006, Sun released much of its Java virtual machine as free, open-source software. On May 8, 2007, Sun finished the process, making all of its JVM’s core code available under open-source distribution terms.<br>&nbsp;</p><p>The principles for creating java were simple, robust, secured, high performance, portable, multi-threaded, interpreted, dynamic, etc. <strong>James </strong>Gosling in 1995 developed Java, who is known as the Father of Java. Currently, Java is used in mobile devices, internet programming, games, e-business, etc.</p><h3>Java programming language is named JAVA. Why?</h3><p>After the name OAK, the team decided to give a new name to it and the suggested words were Silk, Jolt, revolutionary, DNA, dynamic, etc. These all names were easy to spell and fun to say, but they all wanted the name to reflect the essence of technology. In accordance with James Gosling, <strong>Java</strong> the among the top names along with <strong>Silk</strong>, and since java was a unique name so most of them preferred it.</p><p>Java is the name of an <strong>island</strong> in Indonesia where the first coffee(named java coffee) was produced. And this name was chosen by James Gosling while having coffee near his office. Note that Java is just a name, not an acronym.</p><h3>Java Terminology</h3><p>Before learning Java, one must be familiar with these common terms of Java.</p><p><strong>1. &nbsp;Java Virtual Machine(JVM):&nbsp;</strong> This is generally referred to as <a href=\"https://www.geeksforgeeks.org/jvm-works-jvm-architecture/#:~:text=JVM(Java%20Virtual%20Machine)%20acts,(Write%20Once%20Run%20Anywhere).\">JVM</a>. There are three execution phases of a program. They are written, compile and run the program.</p><ul><li>Writing a program is done by a java programmer like you and me.</li><li>The compilation is done by the <strong>JAVAC</strong> compiler which is a primary Java compiler included in the Java development kit (JDK). It takes Java program as input and generates bytecode as output.</li><li>In the Running<strong> </strong>phase of a program,<strong> JVM</strong> executes the bytecode generated by the compiler.</li></ul><p>Now, we understood that the function of Java Virtual Machine is to execute the bytecode produced by the compiler. Every Operating System has a different JVM but the output they produce after the execution of bytecode is the same across all the operating systems. This is why Java is known as a<strong> platform-independent language.</strong></p><p><strong>2. Bytecode in </strong>the <strong>Development process: &nbsp;</strong>As discussed, the Javac compiler of JDK compiles the java source code into bytecode so that it can be executed by JVM. It is saved as <strong>.class</strong> file by the compiler. To view the bytecode, a disassembler like <a href=\"https://www.geeksforgeeks.org/javap-tool-in-java-with-examples/\">javap</a> can be used.</p><p><strong>3. Java Development Kit(JDK): </strong>While we were using the term JDK, when we learn about bytecode and JVM . So, as the name suggests, it is a complete Java development kit that includes everything including compiler, Java Runtime Environment (JRE), java debuggers, java docs, etc. For the program to execute in java, we need to install JDK on our computer in order to create, compile and run the java program.</p>', ' java', 0, 'published'),
(26, 26, 'C++ with DSA', 'c++master', '2021-06-18', 'download.jpg', '<p><strong>C++</strong> is a general-purpose programming language that was developed as an enhancement of the C language to include object-oriented paradigm. It is an imperative and a <strong>compiled</strong> language.&nbsp;</p><p>Some of the <i><strong>features &amp; key-points</strong></i> to note about the programming language are as follows:</p><ul><li><strong>Simple</strong>: It is a simple language in the sense that programs can be broken down into logical units and parts, has a rich library support and a variety of data-types.</li><li><strong>Machine Independent but Platform Dependent</strong>: A C++ executable is not platform-independent (compiled programs on Linux won’t run on Windows), however they are machine independent.</li><li><strong>Mid-level language</strong>: It is a mid-level language as we can do both systems-programming (drivers, kernels, networking etc.) and build large-scale user applications (Media Players, Photoshop, Game Engines etc.)</li><li><strong>Rich library support</strong>: Has a rich library support (Both standard ~ built-in data structures, algorithms etc.) as well 3rd party libraries (e.g. Boost libraries) for fast and rapid development.</li><li><strong>Speed of execution</strong>: C++ programs excel in execution speed. Since, it is a compiled language, and also hugely procedural. Newer languages have extra in-built default features such as garbage-collection, dynamic typing etc. which slow the execution of the program overall. Since there is no additional processing overhead like this in C++, it is blazing fast.</li><li><strong>Pointer and direct Memory-Access</strong>: C++ provides pointer support which aids users to directly manipulate storage address. This helps in doing low-level programming (where one might need to have explicit control on the storage of variables).</li><li><strong>Object-Oriented</strong>: One of the strongest points of the language which sets it apart from C. Object-Oriented support helps C++ to make maintainable and extensible programs. i.e. Large-scale applications can be built. Procedural code becomes difficult to maintain as code-size grows.</li><li><strong>Compiled Language</strong>: C++ is a compiled language, contributing to its speed.</li></ul><p><strong>Applications of C++:</strong>&nbsp;<br>C++ finds varied usage in applications such as:</p><ul><li>Operating Systems &amp; Systems Programming. e.g. <i>Linux-based OS (Ubuntu etc.)</i></li><li>Browsers <i>(Chrome &amp; Firefox)</i></li><li>Graphics &amp; Game engines <i>(Photoshop, Blender, Unreal-Engine)</i></li><li>Database Engines <i>(MySQL, MongoDB, Redis etc.)</i></li><li>Cloud/Distributed Systems</li></ul>', 'c++', 0, 'published '),
(27, 19, ' VARCHAR and TEXT ', 'Robert Gravelle', '2021-06-18', 'sql.jpg', '<p>One of the changes in MySQL version 5.0.3 included an increase to the maximum length of VARCHAR fields from 255 to 65,535 characters. That made the VARCHAR type more similar to TEXT than ever before. o go with.Some Differences Between VARCHAR and TEXT While both data types share a maximum length of 65,535 characters, there are still a few differences: The VAR in VARCHAR means that you can set the max size to anything between 1 and 65,535. TEXT fields have a fixed max size of 65,535 characters. A VARCHAR can be part of an index whereas a TEXT field requires you to specify a prefix length, which can be part of an index. VARCHAR is stored inline with the table (at least for the MyISAM storage engine), making it potentially faster when the size is reasonable. Of course, how much faster depends on both your data and your hardware. Meanwhile, TEXT is stored off table with the table having a pointer to the location of the actual storage. Using a TEXT column in a sort will require the use of a disk-based temporary table, as the MEMORY (HEAP) storage engine.</p>', 'Mysql ', 0, 'published'),
(28, 19, ' VARCHAR and TEXT ', 'Robert Gravelle', '2021-07-05', 'sql.jpg', '<p>One of the changes in MySQL version 5.0.3 included an increase to the maximum length of VARCHAR fields from 255 to 65,535 characters. That made the VARCHAR type more similar to TEXT than ever before. o go with.Some Differences Between VARCHAR and TEXT While both data types share a maximum length of 65,535 characters, there are still a few differences: The VAR in VARCHAR means that you can set the max size to anything between 1 and 65,535. TEXT fields have a fixed max size of 65,535 characters. A VARCHAR can be part of an index whereas a TEXT field requires you to specify a prefix length, which can be part of an index. VARCHAR is stored inline with the table (at least for the MyISAM storage engine), making it potentially faster when the size is reasonable. Of course, how much faster depends on both your data and your hardware. Meanwhile, TEXT is stored off table with the table having a pointer to the location of the actual storage. Using a TEXT column in a sort will require the use of a disk-based temporary table, as the MEMORY (HEAP) storage engine.</p>', 'Mysql ', 0, 'published'),
(29, 18, 'DSA', 'A', '2021-07-05', '', '<p>dsaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>', 'dsa', 0, 'published');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(5, 'Anu', '693', 'Anu', 'Das', 'Anu@gmail.com', '', 'admin', ''),
(22, 'f', '44', '', '', 'fol@gmail.com', '', 'admin', '$2y$10$iusesomecrazystring22'),
(24, 'xor', '999', '', '', 'xor@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(25, 'avi', '567', 'Avijit', 'Barik', 'Avijit@gnail.com', '', 'admin', ''),
(26, 'demo21', '12', '', '', 'demo21@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(27, 'xx1', '890', '', '', 'xx1@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(28, 'avk', 'fgh', 'Abhijit', 'Barik', 'abro45172018@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrings22'),
(29, 'sub', '789', '', '', 'sub@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(30, 'Abhijit Barik', '123', '', '', 'abhijit@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
