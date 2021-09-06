-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2021 at 01:27 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

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
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `position` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `number_of_clicks` int(11) NOT NULL,
  `period_of_view` int(11) NOT NULL,
  `img` varchar(535) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(535) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `position`, `number_of_clicks`, `period_of_view`, `img`, `link`, `owner`) VALUES
(1, 'Right', 0, 0, '..//asset/images/ads/611ae3cdc57de7.35638435.png', 'http://www.mtn.com.ng', 'lorem'),
(2, 'Right', 0, 0, '..//asset/ads/611ae488bbca60.85169625.png', 'http://www.mtn.com.ng', 'lorem'),
(3, 'Right', 0, 0, '..//asset/ads/611ae4bb5925e5.96059641.png', 'http://www.mtn.com.ng', 'lorem'),
(4, 'Right', 0, 0, '..//asset/ads/611ae59bcebac6.90725343.png', 'http://www.mtn.com.ng', 'lorem'),
(5, 'Left', 0, 0, '..//asset/ads/611ae80f8c50e6.51170916.png', 'http://www.mtn.com.ng', 'lorem');

-- --------------------------------------------------------

--
-- Table structure for table `adsposition`
--

CREATE TABLE `adsposition` (
  `id` int(11) NOT NULL,
  `position` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adsposition`
--

INSERT INTO `adsposition` (`id`, `position`) VALUES
(1, 'Top'),
(2, 'Left'),
(3, 'Right'),
(4, 'Bottom');

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
(55, 'fantasy update'),
(56, 'latest news'),
(57, 'national team'),
(58, 'continental'),
(59, 'lorem');

-- --------------------------------------------------------

--
-- Table structure for table `coaches`
--

CREATE TABLE `coaches` (
  `coach_id` int(11) NOT NULL,
  `coach_name` text NOT NULL,
  `coach_photo` text NOT NULL,
  `age` text NOT NULL,
  `nationality` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coaches`
--

INSERT INTO `coaches` (`coach_id`, `coach_name`, `coach_photo`, `age`, `nationality`) VALUES
(1, 'john doe', '..//asset/images/coaches/BRO829985.png', '52', 'Nigerian');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_date` date NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_date`, `comment_author`, `comment_email`, `comment_content`, `comment_status`) VALUES
(39, 55, '2020-04-25', 'ayava2142', 'Chang@gmail.com', 'WOW', 'approved'),
(40, 58, '2020-04-25', 'ayava2142', 'Chang@gmail.com', 'C# IS 1', 'approved'),
(41, 55, '2020-04-25', 'Marshall', 'Kajetan@gmail.com', 'NOTBAD', 'approved'),
(42, 58, '2020-04-25', 'Marshall', 'Kajetan@gmail.com', 'NAH', 'approved'),
(43, 58, '2020-04-25', 'Forster', 'Forster@gmail.com', 'NICW', 'approved'),
(44, 55, '2020-04-25', 'shadi', 'shadibadria@gmail.com', 'صضثضصث', 'approved'),
(47, 55, '2020-05-02', 'shadi', 'shadibadria@gmail.com', '', 'pending'),
(48, 55, '2020-05-02', 'shadi', 'shadibadria@gmail.com', '', 'pending'),
(49, 55, '2020-05-02', 'shadi', 'shadibadria@gmail.com', '', 'pending'),
(50, 55, '2020-05-02', 'shadi', 'shadibadria@gmail.com', '', 'pending'),
(51, 55, '2020-05-02', 'shadi', 'shadibadria@gmail.com', '', 'pending'),
(52, 55, '2020-05-02', 'shadi', 'shadibadria@gmail.com', 'a', 'pending'),
(53, 55, '2020-05-02', 'shadi', 'shadibadria@gmail.com', '', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `filepath` text NOT NULL,
  `uploaded_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `title`, `description`, `filepath`, `uploaded_date`, `status`) VALUES
(1, 'lorem ipsum', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', '..//asset/images/gallery/pexels-artem-saranin-1091435.jpg', '2021-09-04 00:39:53', 'draft'),
(2, 'lorem ipsum', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', '..//asset/images/gallery/pexels-artem-saranin-1055844.jpg', '2021-09-04 00:40:26', 'draft'),
(3, 'lorem ipsum', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', '..//asset/images/gallery/pexels-pixabay-46792.jpg', '2021-09-04 00:40:40', 'draft'),
(4, 'lorem ipsum', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', '..//asset/images/gallery/pexels-pixabay-270085.jpg', '2021-09-04 00:40:58', 'draft'),
(5, 'lorem ipsum', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', '..//asset/images/gallery/pexels-carlos-césar-2291073.jpg', '2021-09-04 00:41:22', 'draft'),
(6, 'lorem ipsum', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', '..//asset/images/gallery/pexels-kelly-lacy-2935982.jpg', '2021-09-04 00:41:43', 'draft'),
(7, 'lorem ipsum', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', '..//asset/images/gallery/pexels-johannes-plenio-1103969.jpg', '2021-09-04 00:42:28', 'draft'),
(8, 'lorem ipsum', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', '..//asset/images/gallery/pexels-pixabay-50713.jpg', '2021-09-04 00:44:01', 'draft'),
(9, 'lorem ipsum', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', '..//asset/images/gallery/pexels-pixabay-262506.jpg', '2021-09-04 00:44:14', 'draft');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_category_id` varchar(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tag` text NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `for_carousel` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tag`, `post_status`, `for_carousel`) VALUES
(1, '55', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'john doe', '2021-09-03', 'md-mahdi-lQpFRPrepQ8-unsplash.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi ipsa vel beatae impedit, alias aliquid rerum accusantium laboriosam cupiditate nihil voluptates ea unde magnam sint velit perspiciatis soluta numquam nemo nam, eaque autem tempore non. Enim ducimus reiciendis, harum eius corrupti dolor nemo numquam assumenda culpa fugiat, ea cum. Consequuntur asperiores nisi iure praesentium culpa illum ex, reprehenderit nulla, pariatur eum, velit aperiam. Provident magni omnis ut quasi nihil excepturi. Sapiente ducimus maiores totam aspernatur voluptas quaerat dolore sit accusantium magni blanditiis aliquid et ullam ipsum distinctio quasi explicabo minima, dolorem vitae laborum debitis. Corporis odio earum facere vitae iusto labore voluptatum delectus tempore sed sequi architecto voluptatem eveniet explicabo repellat asperiores exercitationem aliquid, ea facilis consequuntur cum fugiat quibusdam. Eos, nostrum unde expedita, voluptatum vel veritatis at impedit sed adipisci ut ullam, nulla perspiciatis voluptate aspernatur esse earum neque illum deleniti! Nisi eligendi esse vel reiciendis voluptatibus at cupiditate quod saepe laborum fugit nobis explicabo quis quos dignissimos est ex labore veritatis ipsum tempore, quam, neque expedita delectus numquam. Distinctio id doloribus, nobis minus iste facilis aperiam, reprehenderit architecto iusto facere quidem! Inventore minus numquam voluptatibus. Officiis iste libero placeat, voluptas in at obcaecati temporibus mollitia, esse culpa quisquam aspernatur architecto magni quasi sapiente, nostrum labore! Aliquid eos consectetur perferendis iusto asperiores architecto praesentium odit sint porro quidem repudiandae accusamus nostrum atque eius, possimus, eum ea numquam autem tempore suscipit distinctio temporibus consequuntur. Aut corrupti, assumenda dignissimos minus consequuntur fugit odit veritatis dolorum deserunt sint maxime iure vel nostrum rem at. Reiciendis quos nihil, qui voluptatem dicta tempora ipsum sunt atque repellat animi nemo deleniti, maiores et nisi eum ad voluptatibus mollitia quae aliquid. Praesentium ea reiciendis, saepe inventore ullam sapiente error, obcaecati animi dolores impedit harum. Atque perferendis maxime nemo eius quo provident aut alias odit amet natus, eveniet, rem molestias dicta illum quas quasi voluptate ipsam quaerat dolore recusandae. Error sunt dolore soluta perferendis laboriosam, debitis sapiente harum quasi delectus facere, perspiciatis nihil. Esse assumenda nulla neque ea eligendi quod eaque dolor sed explicabo deleniti sit quos, deserunt earum beatae aliquid in nihil aspernatur porro eum vero non animi? Nihil ullam veritatis, ipsa distinctio reiciendis impedit laboriosam qui asperiores animi aliquam voluptatibus laborum, enim totam rerum repellendus. Distinctio architecto blanditiis quisquam hic aliquid tempore commodi id cumque. Culpa, excepturi voluptatem reiciendis ullam eveniet beatae! Distinctio, maxime, velit laboriosam fugiat excepturi dolores vitae quod a accusantium non expedita.', 'lorem ipsum', 'Publish', 0),
(2, '55', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'john doe', '2021-09-03', 'omar-ram-V9vEuDmbyVI-unsplash.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi ipsa vel beatae impedit, alias aliquid rerum accusantium laboriosam cupiditate nihil voluptates ea unde magnam sint velit perspiciatis soluta numquam nemo nam, eaque autem tempore non. Enim ducimus reiciendis, harum eius corrupti dolor nemo numquam assumenda culpa fugiat, ea cum. Consequuntur asperiores nisi iure praesentium culpa illum ex, reprehenderit nulla, pariatur eum, velit aperiam. Provident magni omnis ut quasi nihil excepturi. Sapiente ducimus maiores totam aspernatur voluptas quaerat dolore sit accusantium magni blanditiis aliquid et ullam ipsum distinctio quasi explicabo minima, dolorem vitae laborum debitis. Corporis odio earum facere vitae iusto labore voluptatum delectus tempore sed sequi architecto voluptatem eveniet explicabo repellat asperiores exercitationem aliquid, ea facilis consequuntur cum fugiat quibusdam. Eos, nostrum unde expedita, voluptatum vel veritatis at impedit sed adipisci ut ullam, nulla perspiciatis voluptate aspernatur esse earum neque illum deleniti! Nisi eligendi esse vel reiciendis voluptatibus at cupiditate quod saepe laborum fugit nobis explicabo quis quos dignissimos est ex labore veritatis ipsum tempore, quam, neque expedita delectus numquam. Distinctio id doloribus, nobis minus iste facilis aperiam, reprehenderit architecto iusto facere quidem! Inventore minus numquam voluptatibus. Officiis iste libero placeat, voluptas in at obcaecati temporibus mollitia, esse culpa quisquam aspernatur architecto magni quasi sapiente, nostrum labore! Aliquid eos consectetur perferendis iusto asperiores architecto praesentium odit sint porro quidem repudiandae accusamus nostrum atque eius, possimus, eum ea numquam autem tempore suscipit distinctio temporibus consequuntur. Aut corrupti, assumenda dignissimos minus consequuntur fugit odit veritatis dolorum deserunt sint maxime iure vel nostrum rem at. Reiciendis quos nihil, qui voluptatem dicta tempora ipsum sunt atque repellat animi nemo deleniti, maiores et nisi eum ad voluptatibus mollitia quae aliquid. Praesentium ea reiciendis, saepe inventore ullam sapiente error, obcaecati animi dolores impedit harum. Atque perferendis maxime nemo eius quo provident aut alias odit amet natus, eveniet, rem molestias dicta illum quas quasi voluptate ipsam quaerat dolore recusandae. Error sunt dolore soluta perferendis laboriosam, debitis sapiente harum quasi delectus facere, perspiciatis nihil. Esse assumenda nulla neque ea eligendi quod eaque dolor sed explicabo deleniti sit quos, deserunt earum beatae aliquid in nihil aspernatur porro eum vero non animi? Nihil ullam veritatis, ipsa distinctio reiciendis impedit laboriosam qui asperiores animi aliquam voluptatibus laborum, enim totam rerum repellendus. Distinctio architecto blanditiis quisquam hic aliquid tempore commodi id cumque. Culpa, excepturi voluptatem reiciendis ullam eveniet beatae! Distinctio, maxime, velit laboriosam fugiat excepturi dolores vitae quod a accusantium non expedita.', 'lorem ipsum', 'Publish', 0),
(3, '55', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'jane doe', '2021-09-03', 'pexels-artem-saranin-1055844.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi ipsa vel beatae impedit, alias aliquid rerum accusantium laboriosam cupiditate nihil voluptates ea unde magnam sint velit perspiciatis soluta numquam nemo nam, eaque autem tempore non. Enim ducimus reiciendis, harum eius corrupti dolor nemo numquam assumenda culpa fugiat, ea cum. Consequuntur asperiores nisi iure praesentium culpa illum ex, reprehenderit nulla, pariatur eum, velit aperiam. Provident magni omnis ut quasi nihil excepturi. Sapiente ducimus maiores totam aspernatur voluptas quaerat dolore sit accusantium magni blanditiis aliquid et ullam ipsum distinctio quasi explicabo minima, dolorem vitae laborum debitis. Corporis odio earum facere vitae iusto labore voluptatum delectus tempore sed sequi architecto voluptatem eveniet explicabo repellat asperiores exercitationem aliquid, ea facilis consequuntur cum fugiat quibusdam. Eos, nostrum unde expedita, voluptatum vel veritatis at impedit sed adipisci ut ullam, nulla perspiciatis voluptate aspernatur esse earum neque illum deleniti! Nisi eligendi esse vel reiciendis voluptatibus at cupiditate quod saepe laborum fugit nobis explicabo quis quos dignissimos est ex labore veritatis ipsum tempore, quam, neque expedita delectus numquam. Distinctio id doloribus, nobis minus iste facilis aperiam, reprehenderit architecto iusto facere quidem! Inventore minus numquam voluptatibus. Officiis iste libero placeat, voluptas in at obcaecati temporibus mollitia, esse culpa quisquam aspernatur architecto magni quasi sapiente, nostrum labore! Aliquid eos consectetur perferendis iusto asperiores architecto praesentium odit sint porro quidem repudiandae accusamus nostrum atque eius, possimus, eum ea numquam autem tempore suscipit distinctio temporibus consequuntur. Aut corrupti, assumenda dignissimos minus consequuntur fugit odit veritatis dolorum deserunt sint maxime iure vel nostrum rem at. Reiciendis quos nihil, qui voluptatem dicta tempora ipsum sunt atque repellat animi nemo deleniti, maiores et nisi eum ad voluptatibus mollitia quae aliquid. Praesentium ea reiciendis, saepe inventore ullam sapiente error, obcaecati animi dolores impedit harum. Atque perferendis maxime nemo eius quo provident aut alias odit amet natus, eveniet, rem molestias dicta illum quas quasi voluptate ipsam quaerat dolore recusandae. Error sunt dolore soluta perferendis laboriosam, debitis sapiente harum quasi delectus facere, perspiciatis nihil. Esse assumenda nulla neque ea eligendi quod eaque dolor sed explicabo deleniti sit quos, deserunt earum beatae aliquid in nihil aspernatur porro eum vero non animi? Nihil ullam veritatis, ipsa distinctio reiciendis impedit laboriosam qui asperiores animi aliquam voluptatibus laborum, enim totam rerum repellendus. Distinctio architecto blanditiis quisquam hic aliquid tempore commodi id cumque. Culpa, excepturi voluptatem reiciendis ullam eveniet beatae! Distinctio, maxime, velit laboriosam fugiat excepturi dolores vitae quod a accusantium non expedita.', 'lorem ipsum', 'Publish', 0),
(4, '55', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'jane doe', '2021-09-03', 'pexels-artem-saranin-1091435.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi ipsa vel beatae impedit, alias aliquid rerum accusantium laboriosam cupiditate nihil voluptates ea unde magnam sint velit perspiciatis soluta numquam nemo nam, eaque autem tempore non. Enim ducimus reiciendis, harum eius corrupti dolor nemo numquam assumenda culpa fugiat, ea cum. Consequuntur asperiores nisi iure praesentium culpa illum ex, reprehenderit nulla, pariatur eum, velit aperiam. Provident magni omnis ut quasi nihil excepturi. Sapiente ducimus maiores totam aspernatur voluptas quaerat dolore sit accusantium magni blanditiis aliquid et ullam ipsum distinctio quasi explicabo minima, dolorem vitae laborum debitis. Corporis odio earum facere vitae iusto labore voluptatum delectus tempore sed sequi architecto voluptatem eveniet explicabo repellat asperiores exercitationem aliquid, ea facilis consequuntur cum fugiat quibusdam. Eos, nostrum unde expedita, voluptatum vel veritatis at impedit sed adipisci ut ullam, nulla perspiciatis voluptate aspernatur esse earum neque illum deleniti! Nisi eligendi esse vel reiciendis voluptatibus at cupiditate quod saepe laborum fugit nobis explicabo quis quos dignissimos est ex labore veritatis ipsum tempore, quam, neque expedita delectus numquam. Distinctio id doloribus, nobis minus iste facilis aperiam, reprehenderit architecto iusto facere quidem! Inventore minus numquam voluptatibus. Officiis iste libero placeat, voluptas in at obcaecati temporibus mollitia, esse culpa quisquam aspernatur architecto magni quasi sapiente, nostrum labore! Aliquid eos consectetur perferendis iusto asperiores architecto praesentium odit sint porro quidem repudiandae accusamus nostrum atque eius, possimus, eum ea numquam autem tempore suscipit distinctio temporibus consequuntur. Aut corrupti, assumenda dignissimos minus consequuntur fugit odit veritatis dolorum deserunt sint maxime iure vel nostrum rem at. Reiciendis quos nihil, qui voluptatem dicta tempora ipsum sunt atque repellat animi nemo deleniti, maiores et nisi eum ad voluptatibus mollitia quae aliquid. Praesentium ea reiciendis, saepe inventore ullam sapiente error, obcaecati animi dolores impedit harum. Atque perferendis maxime nemo eius quo provident aut alias odit amet natus, eveniet, rem molestias dicta illum quas quasi voluptate ipsam quaerat dolore recusandae. Error sunt dolore soluta perferendis laboriosam, debitis sapiente harum quasi delectus facere, perspiciatis nihil. Esse assumenda nulla neque ea eligendi quod eaque dolor sed explicabo deleniti sit quos, deserunt earum beatae aliquid in nihil aspernatur porro eum vero non animi? Nihil ullam veritatis, ipsa distinctio reiciendis impedit laboriosam qui asperiores animi aliquam voluptatibus laborum, enim totam rerum repellendus. Distinctio architecto blanditiis quisquam hic aliquid tempore commodi id cumque. Culpa, excepturi voluptatem reiciendis ullam eveniet beatae! Distinctio, maxime, velit laboriosam fugiat excepturi dolores vitae quod a accusantium non expedita.', 'lorem ipsum', 'Publish', 1),
(5, '55', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'john doe', '2021-09-03', 'pexels-carlos-césar-2291073.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi ipsa vel beatae impedit, alias aliquid rerum accusantium laboriosam cupiditate nihil voluptates ea unde magnam sint velit perspiciatis soluta numquam nemo nam, eaque autem tempore non. Enim ducimus reiciendis, harum eius corrupti dolor nemo numquam assumenda culpa fugiat, ea cum. Consequuntur asperiores nisi iure praesentium culpa illum ex, reprehenderit nulla, pariatur eum, velit aperiam. Provident magni omnis ut quasi nihil excepturi. Sapiente ducimus maiores totam aspernatur voluptas quaerat dolore sit accusantium magni blanditiis aliquid et ullam ipsum distinctio quasi explicabo minima, dolorem vitae laborum debitis. Corporis odio earum facere vitae iusto labore voluptatum delectus tempore sed sequi architecto voluptatem eveniet explicabo repellat asperiores exercitationem aliquid, ea facilis consequuntur cum fugiat quibusdam. Eos, nostrum unde expedita, voluptatum vel veritatis at impedit sed adipisci ut ullam, nulla perspiciatis voluptate aspernatur esse earum neque illum deleniti! Nisi eligendi esse vel reiciendis voluptatibus at cupiditate quod saepe laborum fugit nobis explicabo quis quos dignissimos est ex labore veritatis ipsum tempore, quam, neque expedita delectus numquam. Distinctio id doloribus, nobis minus iste facilis aperiam, reprehenderit architecto iusto facere quidem! Inventore minus numquam voluptatibus. Officiis iste libero placeat, voluptas in at obcaecati temporibus mollitia, esse culpa quisquam aspernatur architecto magni quasi sapiente, nostrum labore! Aliquid eos consectetur perferendis iusto asperiores architecto praesentium odit sint porro quidem repudiandae accusamus nostrum atque eius, possimus, eum ea numquam autem tempore suscipit distinctio temporibus consequuntur. Aut corrupti, assumenda dignissimos minus consequuntur fugit odit veritatis dolorum deserunt sint maxime iure vel nostrum rem at. Reiciendis quos nihil, qui voluptatem dicta tempora ipsum sunt atque repellat animi nemo deleniti, maiores et nisi eum ad voluptatibus mollitia quae aliquid. Praesentium ea reiciendis, saepe inventore ullam sapiente error, obcaecati animi dolores impedit harum. Atque perferendis maxime nemo eius quo provident aut alias odit amet natus, eveniet, rem molestias dicta illum quas quasi voluptate ipsam quaerat dolore recusandae. Error sunt dolore soluta perferendis laboriosam, debitis sapiente harum quasi delectus facere, perspiciatis nihil. Esse assumenda nulla neque ea eligendi quod eaque dolor sed explicabo deleniti sit quos, deserunt earum beatae aliquid in nihil aspernatur porro eum vero non animi? Nihil ullam veritatis, ipsa distinctio reiciendis impedit laboriosam qui asperiores animi aliquam voluptatibus laborum, enim totam rerum repellendus. Distinctio architecto blanditiis quisquam hic aliquid tempore commodi id cumque. Culpa, excepturi voluptatem reiciendis ullam eveniet beatae! Distinctio, maxime, velit laboriosam fugiat excepturi dolores vitae quod a accusantium non expedita.', 'lorem ipsum', 'Publish', 0),
(6, '55', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'jane doe', '2021-09-03', 'pexels-dominika-roseclay-3074920.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi ipsa vel beatae impedit, alias aliquid rerum accusantium laboriosam cupiditate nihil voluptates ea unde magnam sint velit perspiciatis soluta numquam nemo nam, eaque autem tempore non. Enim ducimus reiciendis, harum eius corrupti dolor nemo numquam assumenda culpa fugiat, ea cum. Consequuntur asperiores nisi iure praesentium culpa illum ex, reprehenderit nulla, pariatur eum, velit aperiam. Provident magni omnis ut quasi nihil excepturi. Sapiente ducimus maiores totam aspernatur voluptas quaerat dolore sit accusantium magni blanditiis aliquid et ullam ipsum distinctio quasi explicabo minima, dolorem vitae laborum debitis. Corporis odio earum facere vitae iusto labore voluptatum delectus tempore sed sequi architecto voluptatem eveniet explicabo repellat asperiores exercitationem aliquid, ea facilis consequuntur cum fugiat quibusdam. Eos, nostrum unde expedita, voluptatum vel veritatis at impedit sed adipisci ut ullam, nulla perspiciatis voluptate aspernatur esse earum neque illum deleniti! Nisi eligendi esse vel reiciendis voluptatibus at cupiditate quod saepe laborum fugit nobis explicabo quis quos dignissimos est ex labore veritatis ipsum tempore, quam, neque expedita delectus numquam. Distinctio id doloribus, nobis minus iste facilis aperiam, reprehenderit architecto iusto facere quidem! Inventore minus numquam voluptatibus. Officiis iste libero placeat, voluptas in at obcaecati temporibus mollitia, esse culpa quisquam aspernatur architecto magni quasi sapiente, nostrum labore! Aliquid eos consectetur perferendis iusto asperiores architecto praesentium odit sint porro quidem repudiandae accusamus nostrum atque eius, possimus, eum ea numquam autem tempore suscipit distinctio temporibus consequuntur. Aut corrupti, assumenda dignissimos minus consequuntur fugit odit veritatis dolorum deserunt sint maxime iure vel nostrum rem at. Reiciendis quos nihil, qui voluptatem dicta tempora ipsum sunt atque repellat animi nemo deleniti, maiores et nisi eum ad voluptatibus mollitia quae aliquid. Praesentium ea reiciendis, saepe inventore ullam sapiente error, obcaecati animi dolores impedit harum. Atque perferendis maxime nemo eius quo provident aut alias odit amet natus, eveniet, rem molestias dicta illum quas quasi voluptate ipsam quaerat dolore recusandae. Error sunt dolore soluta perferendis laboriosam, debitis sapiente harum quasi delectus facere, perspiciatis nihil. Esse assumenda nulla neque ea eligendi quod eaque dolor sed explicabo deleniti sit quos, deserunt earum beatae aliquid in nihil aspernatur porro eum vero non animi? Nihil ullam veritatis, ipsa distinctio reiciendis impedit laboriosam qui asperiores animi aliquam voluptatibus laborum, enim totam rerum repellendus. Distinctio architecto blanditiis quisquam hic aliquid tempore commodi id cumque. Culpa, excepturi voluptatem reiciendis ullam eveniet beatae! Distinctio, maxime, velit laboriosam fugiat excepturi dolores vitae quod a accusantium non expedita.', 'lorem ipsum', 'Publish', 0),
(7, '55', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'john doe', '2021-09-03', 'pexels-johannes-plenio-1103969.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi ipsa vel beatae impedit, alias aliquid rerum accusantium laboriosam cupiditate nihil voluptates ea unde magnam sint velit perspiciatis soluta numquam nemo nam, eaque autem tempore non. Enim ducimus reiciendis, harum eius corrupti dolor nemo numquam assumenda culpa fugiat, ea cum. Consequuntur asperiores nisi iure praesentium culpa illum ex, reprehenderit nulla, pariatur eum, velit aperiam. Provident magni omnis ut quasi nihil excepturi. Sapiente ducimus maiores totam aspernatur voluptas quaerat dolore sit accusantium magni blanditiis aliquid et ullam ipsum distinctio quasi explicabo minima, dolorem vitae laborum debitis. Corporis odio earum facere vitae iusto labore voluptatum delectus tempore sed sequi architecto voluptatem eveniet explicabo repellat asperiores exercitationem aliquid, ea facilis consequuntur cum fugiat quibusdam. Eos, nostrum unde expedita, voluptatum vel veritatis at impedit sed adipisci ut ullam, nulla perspiciatis voluptate aspernatur esse earum neque illum deleniti! Nisi eligendi esse vel reiciendis voluptatibus at cupiditate quod saepe laborum fugit nobis explicabo quis quos dignissimos est ex labore veritatis ipsum tempore, quam, neque expedita delectus numquam. Distinctio id doloribus, nobis minus iste facilis aperiam, reprehenderit architecto iusto facere quidem! Inventore minus numquam voluptatibus. Officiis iste libero placeat, voluptas in at obcaecati temporibus mollitia, esse culpa quisquam aspernatur architecto magni quasi sapiente, nostrum labore! Aliquid eos consectetur perferendis iusto asperiores architecto praesentium odit sint porro quidem repudiandae accusamus nostrum atque eius, possimus, eum ea numquam autem tempore suscipit distinctio temporibus consequuntur. Aut corrupti, assumenda dignissimos minus consequuntur fugit odit veritatis dolorum deserunt sint maxime iure vel nostrum rem at. Reiciendis quos nihil, qui voluptatem dicta tempora ipsum sunt atque repellat animi nemo deleniti, maiores et nisi eum ad voluptatibus mollitia quae aliquid. Praesentium ea reiciendis, saepe inventore ullam sapiente error, obcaecati animi dolores impedit harum. Atque perferendis maxime nemo eius quo provident aut alias odit amet natus, eveniet, rem molestias dicta illum quas quasi voluptate ipsam quaerat dolore recusandae. Error sunt dolore soluta perferendis laboriosam, debitis sapiente harum quasi delectus facere, perspiciatis nihil. Esse assumenda nulla neque ea eligendi quod eaque dolor sed explicabo deleniti sit quos, deserunt earum beatae aliquid in nihil aspernatur porro eum vero non animi? Nihil ullam veritatis, ipsa distinctio reiciendis impedit laboriosam qui asperiores animi aliquam voluptatibus laborum, enim totam rerum repellendus. Distinctio architecto blanditiis quisquam hic aliquid tempore commodi id cumque. Culpa, excepturi voluptatem reiciendis ullam eveniet beatae! Distinctio, maxime, velit laboriosam fugiat excepturi dolores vitae quod a accusantium non expedita.', 'lorem ipsum', 'Publish', 1),
(8, '55', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'john doe', '2021-09-03', 'pexels-jonathan-petersson-399187.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi ipsa vel beatae impedit, alias aliquid rerum accusantium laboriosam cupiditate nihil voluptates ea unde magnam sint velit perspiciatis soluta numquam nemo nam, eaque autem tempore non. Enim ducimus reiciendis, harum eius corrupti dolor nemo numquam assumenda culpa fugiat, ea cum. Consequuntur asperiores nisi iure praesentium culpa illum ex, reprehenderit nulla, pariatur eum, velit aperiam. Provident magni omnis ut quasi nihil excepturi. Sapiente ducimus maiores totam aspernatur voluptas quaerat dolore sit accusantium magni blanditiis aliquid et ullam ipsum distinctio quasi explicabo minima, dolorem vitae laborum debitis. Corporis odio earum facere vitae iusto labore voluptatum delectus tempore sed sequi architecto voluptatem eveniet explicabo repellat asperiores exercitationem aliquid, ea facilis consequuntur cum fugiat quibusdam. Eos, nostrum unde expedita, voluptatum vel veritatis at impedit sed adipisci ut ullam, nulla perspiciatis voluptate aspernatur esse earum neque illum deleniti! Nisi eligendi esse vel reiciendis voluptatibus at cupiditate quod saepe laborum fugit nobis explicabo quis quos dignissimos est ex labore veritatis ipsum tempore, quam, neque expedita delectus numquam. Distinctio id doloribus, nobis minus iste facilis aperiam, reprehenderit architecto iusto facere quidem! Inventore minus numquam voluptatibus. Officiis iste libero placeat, voluptas in at obcaecati temporibus mollitia, esse culpa quisquam aspernatur architecto magni quasi sapiente, nostrum labore! Aliquid eos consectetur perferendis iusto asperiores architecto praesentium odit sint porro quidem repudiandae accusamus nostrum atque eius, possimus, eum ea numquam autem tempore suscipit distinctio temporibus consequuntur. Aut corrupti, assumenda dignissimos minus consequuntur fugit odit veritatis dolorum deserunt sint maxime iure vel nostrum rem at. Reiciendis quos nihil, qui voluptatem dicta tempora ipsum sunt atque repellat animi nemo deleniti, maiores et nisi eum ad voluptatibus mollitia quae aliquid. Praesentium ea reiciendis, saepe inventore ullam sapiente error, obcaecati animi dolores impedit harum. Atque perferendis maxime nemo eius quo provident aut alias odit amet natus, eveniet, rem molestias dicta illum quas quasi voluptate ipsam quaerat dolore recusandae. Error sunt dolore soluta perferendis laboriosam, debitis sapiente harum quasi delectus facere, perspiciatis nihil. Esse assumenda nulla neque ea eligendi quod eaque dolor sed explicabo deleniti sit quos, deserunt earum beatae aliquid in nihil aspernatur porro eum vero non animi? Nihil ullam veritatis, ipsa distinctio reiciendis impedit laboriosam qui asperiores animi aliquam voluptatibus laborum, enim totam rerum repellendus. Distinctio architecto blanditiis quisquam hic aliquid tempore commodi id cumque. Culpa, excepturi voluptatem reiciendis ullam eveniet beatae! Distinctio, maxime, velit laboriosam fugiat excepturi dolores vitae quod a accusantium non expedita.', 'lorem ipsum', 'Publish', 1),
(9, '55', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'jane doe', '2021-09-03', 'pexels-kafeel-ahmed-4785491.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi ipsa vel beatae impedit, alias aliquid rerum accusantium laboriosam cupiditate nihil voluptates ea unde magnam sint velit perspiciatis soluta numquam nemo nam, eaque autem tempore non. Enim ducimus reiciendis, harum eius corrupti dolor nemo numquam assumenda culpa fugiat, ea cum. Consequuntur asperiores nisi iure praesentium culpa illum ex, reprehenderit nulla, pariatur eum, velit aperiam. Provident magni omnis ut quasi nihil excepturi. Sapiente ducimus maiores totam aspernatur voluptas quaerat dolore sit accusantium magni blanditiis aliquid et ullam ipsum distinctio quasi explicabo minima, dolorem vitae laborum debitis. Corporis odio earum facere vitae iusto labore voluptatum delectus tempore sed sequi architecto voluptatem eveniet explicabo repellat asperiores exercitationem aliquid, ea facilis consequuntur cum fugiat quibusdam. Eos, nostrum unde expedita, voluptatum vel veritatis at impedit sed adipisci ut ullam, nulla perspiciatis voluptate aspernatur esse earum neque illum deleniti! Nisi eligendi esse vel reiciendis voluptatibus at cupiditate quod saepe laborum fugit nobis explicabo quis quos dignissimos est ex labore veritatis ipsum tempore, quam, neque expedita delectus numquam. Distinctio id doloribus, nobis minus iste facilis aperiam, reprehenderit architecto iusto facere quidem! Inventore minus numquam voluptatibus. Officiis iste libero placeat, voluptas in at obcaecati temporibus mollitia, esse culpa quisquam aspernatur architecto magni quasi sapiente, nostrum labore! Aliquid eos consectetur perferendis iusto asperiores architecto praesentium odit sint porro quidem repudiandae accusamus nostrum atque eius, possimus, eum ea numquam autem tempore suscipit distinctio temporibus consequuntur. Aut corrupti, assumenda dignissimos minus consequuntur fugit odit veritatis dolorum deserunt sint maxime iure vel nostrum rem at. Reiciendis quos nihil, qui voluptatem dicta tempora ipsum sunt atque repellat animi nemo deleniti, maiores et nisi eum ad voluptatibus mollitia quae aliquid. Praesentium ea reiciendis, saepe inventore ullam sapiente error, obcaecati animi dolores impedit harum. Atque perferendis maxime nemo eius quo provident aut alias odit amet natus, eveniet, rem molestias dicta illum quas quasi voluptate ipsam quaerat dolore recusandae. Error sunt dolore soluta perferendis laboriosam, debitis sapiente harum quasi delectus facere, perspiciatis nihil. Esse assumenda nulla neque ea eligendi quod eaque dolor sed explicabo deleniti sit quos, deserunt earum beatae aliquid in nihil aspernatur porro eum vero non animi? Nihil ullam veritatis, ipsa distinctio reiciendis impedit laboriosam qui asperiores animi aliquam voluptatibus laborum, enim totam rerum repellendus. Distinctio architecto blanditiis quisquam hic aliquid tempore commodi id cumque. Culpa, excepturi voluptatem reiciendis ullam eveniet beatae! Distinctio, maxime, velit laboriosam fugiat excepturi dolores vitae quod a accusantium non expedita.', 'lorem ipsum', 'Publish', 1),
(10, '55', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'john doe', '2021-09-03', 'pexels-kelly-lacy-2935982.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi ipsa vel beatae impedit, alias aliquid rerum accusantium laboriosam cupiditate nihil voluptates ea unde magnam sint velit perspiciatis soluta numquam nemo nam, eaque autem tempore non. Enim ducimus reiciendis, harum eius corrupti dolor nemo numquam assumenda culpa fugiat, ea cum. Consequuntur asperiores nisi iure praesentium culpa illum ex, reprehenderit nulla, pariatur eum, velit aperiam. Provident magni omnis ut quasi nihil excepturi. Sapiente ducimus maiores totam aspernatur voluptas quaerat dolore sit accusantium magni blanditiis aliquid et ullam ipsum distinctio quasi explicabo minima, dolorem vitae laborum debitis. Corporis odio earum facere vitae iusto labore voluptatum delectus tempore sed sequi architecto voluptatem eveniet explicabo repellat asperiores exercitationem aliquid, ea facilis consequuntur cum fugiat quibusdam. Eos, nostrum unde expedita, voluptatum vel veritatis at impedit sed adipisci ut ullam, nulla perspiciatis voluptate aspernatur esse earum neque illum deleniti! Nisi eligendi esse vel reiciendis voluptatibus at cupiditate quod saepe laborum fugit nobis explicabo quis quos dignissimos est ex labore veritatis ipsum tempore, quam, neque expedita delectus numquam. Distinctio id doloribus, nobis minus iste facilis aperiam, reprehenderit architecto iusto facere quidem! Inventore minus numquam voluptatibus. Officiis iste libero placeat, voluptas in at obcaecati temporibus mollitia, esse culpa quisquam aspernatur architecto magni quasi sapiente, nostrum labore! Aliquid eos consectetur perferendis iusto asperiores architecto praesentium odit sint porro quidem repudiandae accusamus nostrum atque eius, possimus, eum ea numquam autem tempore suscipit distinctio temporibus consequuntur. Aut corrupti, assumenda dignissimos minus consequuntur fugit odit veritatis dolorum deserunt sint maxime iure vel nostrum rem at. Reiciendis quos nihil, qui voluptatem dicta tempora ipsum sunt atque repellat animi nemo deleniti, maiores et nisi eum ad voluptatibus mollitia quae aliquid. Praesentium ea reiciendis, saepe inventore ullam sapiente error, obcaecati animi dolores impedit harum. Atque perferendis maxime nemo eius quo provident aut alias odit amet natus, eveniet, rem molestias dicta illum quas quasi voluptate ipsam quaerat dolore recusandae. Error sunt dolore soluta perferendis laboriosam, debitis sapiente harum quasi delectus facere, perspiciatis nihil. Esse assumenda nulla neque ea eligendi quod eaque dolor sed explicabo deleniti sit quos, deserunt earum beatae aliquid in nihil aspernatur porro eum vero non animi? Nihil ullam veritatis, ipsa distinctio reiciendis impedit laboriosam qui asperiores animi aliquam voluptatibus laborum, enim totam rerum repellendus. Distinctio architecto blanditiis quisquam hic aliquid tempore commodi id cumque. Culpa, excepturi voluptatem reiciendis ullam eveniet beatae! Distinctio, maxime, velit laboriosam fugiat excepturi dolores vitae quod a accusantium non expedita.', 'lorem ipsum', 'Publish', 1),
(11, '55', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'john doe', '2021-09-03', 'pexels-nmr-hrd-3571065.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi ipsa vel beatae impedit, alias aliquid rerum accusantium laboriosam cupiditate nihil voluptates ea unde magnam sint velit perspiciatis soluta numquam nemo nam, eaque autem tempore non. Enim ducimus reiciendis, harum eius corrupti dolor nemo numquam assumenda culpa fugiat, ea cum. Consequuntur asperiores nisi iure praesentium culpa illum ex, reprehenderit nulla, pariatur eum, velit aperiam. Provident magni omnis ut quasi nihil excepturi. Sapiente ducimus maiores totam aspernatur voluptas quaerat dolore sit accusantium magni blanditiis aliquid et ullam ipsum distinctio quasi explicabo minima, dolorem vitae laborum debitis. Corporis odio earum facere vitae iusto labore voluptatum delectus tempore sed sequi architecto voluptatem eveniet explicabo repellat asperiores exercitationem aliquid, ea facilis consequuntur cum fugiat quibusdam. Eos, nostrum unde expedita, voluptatum vel veritatis at impedit sed adipisci ut ullam, nulla perspiciatis voluptate aspernatur esse earum neque illum deleniti! Nisi eligendi esse vel reiciendis voluptatibus at cupiditate quod saepe laborum fugit nobis explicabo quis quos dignissimos est ex labore veritatis ipsum tempore, quam, neque expedita delectus numquam. Distinctio id doloribus, nobis minus iste facilis aperiam, reprehenderit architecto iusto facere quidem! Inventore minus numquam voluptatibus. Officiis iste libero placeat, voluptas in at obcaecati temporibus mollitia, esse culpa quisquam aspernatur architecto magni quasi sapiente, nostrum labore! Aliquid eos consectetur perferendis iusto asperiores architecto praesentium odit sint porro quidem repudiandae accusamus nostrum atque eius, possimus, eum ea numquam autem tempore suscipit distinctio temporibus consequuntur. Aut corrupti, assumenda dignissimos minus consequuntur fugit odit veritatis dolorum deserunt sint maxime iure vel nostrum rem at. Reiciendis quos nihil, qui voluptatem dicta tempora ipsum sunt atque repellat animi nemo deleniti, maiores et nisi eum ad voluptatibus mollitia quae aliquid. Praesentium ea reiciendis, saepe inventore ullam sapiente error, obcaecati animi dolores impedit harum. Atque perferendis maxime nemo eius quo provident aut alias odit amet natus, eveniet, rem molestias dicta illum quas quasi voluptate ipsam quaerat dolore recusandae. Error sunt dolore soluta perferendis laboriosam, debitis sapiente harum quasi delectus facere, perspiciatis nihil. Esse assumenda nulla neque ea eligendi quod eaque dolor sed explicabo deleniti sit quos, deserunt earum beatae aliquid in nihil aspernatur porro eum vero non animi? Nihil ullam veritatis, ipsa distinctio reiciendis impedit laboriosam qui asperiores animi aliquam voluptatibus laborum, enim totam rerum repellendus. Distinctio architecto blanditiis quisquam hic aliquid tempore commodi id cumque. Culpa, excepturi voluptatem reiciendis ullam eveniet beatae! Distinctio, maxime, velit laboriosam fugiat excepturi dolores vitae quod a accusantium non expedita.', 'lorem ipsum', 'Publish', 0),
(12, '55', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'jane doe', '2021-09-03', 'pexels-pixabay-46792.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi ipsa vel beatae impedit, alias aliquid rerum accusantium laboriosam cupiditate nihil voluptates ea unde magnam sint velit perspiciatis soluta numquam nemo nam, eaque autem tempore non. Enim ducimus reiciendis, harum eius corrupti dolor nemo numquam assumenda culpa fugiat, ea cum. Consequuntur asperiores nisi iure praesentium culpa illum ex, reprehenderit nulla, pariatur eum, velit aperiam. Provident magni omnis ut quasi nihil excepturi. Sapiente ducimus maiores totam aspernatur voluptas quaerat dolore sit accusantium magni blanditiis aliquid et ullam ipsum distinctio quasi explicabo minima, dolorem vitae laborum debitis. Corporis odio earum facere vitae iusto labore voluptatum delectus tempore sed sequi architecto voluptatem eveniet explicabo repellat asperiores exercitationem aliquid, ea facilis consequuntur cum fugiat quibusdam. Eos, nostrum unde expedita, voluptatum vel veritatis at impedit sed adipisci ut ullam, nulla perspiciatis voluptate aspernatur esse earum neque illum deleniti! Nisi eligendi esse vel reiciendis voluptatibus at cupiditate quod saepe laborum fugit nobis explicabo quis quos dignissimos est ex labore veritatis ipsum tempore, quam, neque expedita delectus numquam. Distinctio id doloribus, nobis minus iste facilis aperiam, reprehenderit architecto iusto facere quidem! Inventore minus numquam voluptatibus. Officiis iste libero placeat, voluptas in at obcaecati temporibus mollitia, esse culpa quisquam aspernatur architecto magni quasi sapiente, nostrum labore! Aliquid eos consectetur perferendis iusto asperiores architecto praesentium odit sint porro quidem repudiandae accusamus nostrum atque eius, possimus, eum ea numquam autem tempore suscipit distinctio temporibus consequuntur. Aut corrupti, assumenda dignissimos minus consequuntur fugit odit veritatis dolorum deserunt sint maxime iure vel nostrum rem at. Reiciendis quos nihil, qui voluptatem dicta tempora ipsum sunt atque repellat animi nemo deleniti, maiores et nisi eum ad voluptatibus mollitia quae aliquid. Praesentium ea reiciendis, saepe inventore ullam sapiente error, obcaecati animi dolores impedit harum. Atque perferendis maxime nemo eius quo provident aut alias odit amet natus, eveniet, rem molestias dicta illum quas quasi voluptate ipsam quaerat dolore recusandae. Error sunt dolore soluta perferendis laboriosam, debitis sapiente harum quasi delectus facere, perspiciatis nihil. Esse assumenda nulla neque ea eligendi quod eaque dolor sed explicabo deleniti sit quos, deserunt earum beatae aliquid in nihil aspernatur porro eum vero non animi? Nihil ullam veritatis, ipsa distinctio reiciendis impedit laboriosam qui asperiores animi aliquam voluptatibus laborum, enim totam rerum repellendus. Distinctio architecto blanditiis quisquam hic aliquid tempore commodi id cumque. Culpa, excepturi voluptatem reiciendis ullam eveniet beatae! Distinctio, maxime, velit laboriosam fugiat excepturi dolores vitae quod a accusantium non expedita.', 'lorem ipsum', 'Publish', 1),
(13, '56', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'john doe', '2021-09-03', 'pexels-pixabay-50713.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi ipsa vel beatae impedit, alias aliquid rerum accusantium laboriosam cupiditate nihil voluptates ea unde magnam sint velit perspiciatis soluta numquam nemo nam, eaque autem tempore non. Enim ducimus reiciendis, harum eius corrupti dolor nemo numquam assumenda culpa fugiat, ea cum. Consequuntur asperiores nisi iure praesentium culpa illum ex, reprehenderit nulla, pariatur eum, velit aperiam. Provident magni omnis ut quasi nihil excepturi. Sapiente ducimus maiores totam aspernatur voluptas quaerat dolore sit accusantium magni blanditiis aliquid et ullam ipsum distinctio quasi explicabo minima, dolorem vitae laborum debitis. Corporis odio earum facere vitae iusto labore voluptatum delectus tempore sed sequi architecto voluptatem eveniet explicabo repellat asperiores exercitationem aliquid, ea facilis consequuntur cum fugiat quibusdam. Eos, nostrum unde expedita, voluptatum vel veritatis at impedit sed adipisci ut ullam, nulla perspiciatis voluptate aspernatur esse earum neque illum deleniti! Nisi eligendi esse vel reiciendis voluptatibus at cupiditate quod saepe laborum fugit nobis explicabo quis quos dignissimos est ex labore veritatis ipsum tempore, quam, neque expedita delectus numquam. Distinctio id doloribus, nobis minus iste facilis aperiam, reprehenderit architecto iusto facere quidem! Inventore minus numquam voluptatibus. Officiis iste libero placeat, voluptas in at obcaecati temporibus mollitia, esse culpa quisquam aspernatur architecto magni quasi sapiente, nostrum labore! Aliquid eos consectetur perferendis iusto asperiores architecto praesentium odit sint porro quidem repudiandae accusamus nostrum atque eius, possimus, eum ea numquam autem tempore suscipit distinctio temporibus consequuntur. Aut corrupti, assumenda dignissimos minus consequuntur fugit odit veritatis dolorum deserunt sint maxime iure vel nostrum rem at. Reiciendis quos nihil, qui voluptatem dicta tempora ipsum sunt atque repellat animi nemo deleniti, maiores et nisi eum ad voluptatibus mollitia quae aliquid. Praesentium ea reiciendis, saepe inventore ullam sapiente error, obcaecati animi dolores impedit harum. Atque perferendis maxime nemo eius quo provident aut alias odit amet natus, eveniet, rem molestias dicta illum quas quasi voluptate ipsam quaerat dolore recusandae. Error sunt dolore soluta perferendis laboriosam, debitis sapiente harum quasi delectus facere, perspiciatis nihil. Esse assumenda nulla neque ea eligendi quod eaque dolor sed explicabo deleniti sit quos, deserunt earum beatae aliquid in nihil aspernatur porro eum vero non animi? Nihil ullam veritatis, ipsa distinctio reiciendis impedit laboriosam qui asperiores animi aliquam voluptatibus laborum, enim totam rerum repellendus. Distinctio architecto blanditiis quisquam hic aliquid tempore commodi id cumque. Culpa, excepturi voluptatem reiciendis ullam eveniet beatae! Distinctio, maxime, velit laboriosam fugiat excepturi dolores vitae quod a accusantium non expedita.', 'lorem ipsum', 'Publish', 1),
(14, '56', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'john doe', '2021-09-03', 'pexels-pixabay-262506.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi ipsa vel beatae impedit, alias aliquid rerum accusantium laboriosam cupiditate nihil voluptates ea unde magnam sint velit perspiciatis soluta numquam nemo nam, eaque autem tempore non. Enim ducimus reiciendis, harum eius corrupti dolor nemo numquam assumenda culpa fugiat, ea cum. Consequuntur asperiores nisi iure praesentium culpa illum ex, reprehenderit nulla, pariatur eum, velit aperiam. Provident magni omnis ut quasi nihil excepturi. Sapiente ducimus maiores totam aspernatur voluptas quaerat dolore sit accusantium magni blanditiis aliquid et ullam ipsum distinctio quasi explicabo minima, dolorem vitae laborum debitis. Corporis odio earum facere vitae iusto labore voluptatum delectus tempore sed sequi architecto voluptatem eveniet explicabo repellat asperiores exercitationem aliquid, ea facilis consequuntur cum fugiat quibusdam. Eos, nostrum unde expedita, voluptatum vel veritatis at impedit sed adipisci ut ullam, nulla perspiciatis voluptate aspernatur esse earum neque illum deleniti! Nisi eligendi esse vel reiciendis voluptatibus at cupiditate quod saepe laborum fugit nobis explicabo quis quos dignissimos est ex labore veritatis ipsum tempore, quam, neque expedita delectus numquam. Distinctio id doloribus, nobis minus iste facilis aperiam, reprehenderit architecto iusto facere quidem! Inventore minus numquam voluptatibus. Officiis iste libero placeat, voluptas in at obcaecati temporibus mollitia, esse culpa quisquam aspernatur architecto magni quasi sapiente, nostrum labore! Aliquid eos consectetur perferendis iusto asperiores architecto praesentium odit sint porro quidem repudiandae accusamus nostrum atque eius, possimus, eum ea numquam autem tempore suscipit distinctio temporibus consequuntur. Aut corrupti, assumenda dignissimos minus consequuntur fugit odit veritatis dolorum deserunt sint maxime iure vel nostrum rem at. Reiciendis quos nihil, qui voluptatem dicta tempora ipsum sunt atque repellat animi nemo deleniti, maiores et nisi eum ad voluptatibus mollitia quae aliquid. Praesentium ea reiciendis, saepe inventore ullam sapiente error, obcaecati animi dolores impedit harum. Atque perferendis maxime nemo eius quo provident aut alias odit amet natus, eveniet, rem molestias dicta illum quas quasi voluptate ipsam quaerat dolore recusandae. Error sunt dolore soluta perferendis laboriosam, debitis sapiente harum quasi delectus facere, perspiciatis nihil. Esse assumenda nulla neque ea eligendi quod eaque dolor sed explicabo deleniti sit quos, deserunt earum beatae aliquid in nihil aspernatur porro eum vero non animi? Nihil ullam veritatis, ipsa distinctio reiciendis impedit laboriosam qui asperiores animi aliquam voluptatibus laborum, enim totam rerum repellendus. Distinctio architecto blanditiis quisquam hic aliquid tempore commodi id cumque. Culpa, excepturi voluptatem reiciendis ullam eveniet beatae! Distinctio, maxime, velit laboriosam fugiat excepturi dolores vitae quod a accusantium non expedita.', 'lorem ipsum', '', 1),
(15, '56', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'jane doe', '2021-09-03', 'pexels-pixabay-270085.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi ipsa vel beatae impedit, alias aliquid rerum accusantium laboriosam cupiditate nihil voluptates ea unde magnam sint velit perspiciatis soluta numquam nemo nam, eaque autem tempore non. Enim ducimus reiciendis, harum eius corrupti dolor nemo numquam assumenda culpa fugiat, ea cum. Consequuntur asperiores nisi iure praesentium culpa illum ex, reprehenderit nulla, pariatur eum, velit aperiam. Provident magni omnis ut quasi nihil excepturi. Sapiente ducimus maiores totam aspernatur voluptas quaerat dolore sit accusantium magni blanditiis aliquid et ullam ipsum distinctio quasi explicabo minima, dolorem vitae laborum debitis. Corporis odio earum facere vitae iusto labore voluptatum delectus tempore sed sequi architecto voluptatem eveniet explicabo repellat asperiores exercitationem aliquid, ea facilis consequuntur cum fugiat quibusdam. Eos, nostrum unde expedita, voluptatum vel veritatis at impedit sed adipisci ut ullam, nulla perspiciatis voluptate aspernatur esse earum neque illum deleniti! Nisi eligendi esse vel reiciendis voluptatibus at cupiditate quod saepe laborum fugit nobis explicabo quis quos dignissimos est ex labore veritatis ipsum tempore, quam, neque expedita delectus numquam. Distinctio id doloribus, nobis minus iste facilis aperiam, reprehenderit architecto iusto facere quidem! Inventore minus numquam voluptatibus. Officiis iste libero placeat, voluptas in at obcaecati temporibus mollitia, esse culpa quisquam aspernatur architecto magni quasi sapiente, nostrum labore! Aliquid eos consectetur perferendis iusto asperiores architecto praesentium odit sint porro quidem repudiandae accusamus nostrum atque eius, possimus, eum ea numquam autem tempore suscipit distinctio temporibus consequuntur. Aut corrupti, assumenda dignissimos minus consequuntur fugit odit veritatis dolorum deserunt sint maxime iure vel nostrum rem at. Reiciendis quos nihil, qui voluptatem dicta tempora ipsum sunt atque repellat animi nemo deleniti, maiores et nisi eum ad voluptatibus mollitia quae aliquid. Praesentium ea reiciendis, saepe inventore ullam sapiente error, obcaecati animi dolores impedit harum. Atque perferendis maxime nemo eius quo provident aut alias odit amet natus, eveniet, rem molestias dicta illum quas quasi voluptate ipsam quaerat dolore recusandae. Error sunt dolore soluta perferendis laboriosam, debitis sapiente harum quasi delectus facere, perspiciatis nihil. Esse assumenda nulla neque ea eligendi quod eaque dolor sed explicabo deleniti sit quos, deserunt earum beatae aliquid in nihil aspernatur porro eum vero non animi? Nihil ullam veritatis, ipsa distinctio reiciendis impedit laboriosam qui asperiores animi aliquam voluptatibus laborum, enim totam rerum repellendus. Distinctio architecto blanditiis quisquam hic aliquid tempore commodi id cumque. Culpa, excepturi voluptatem reiciendis ullam eveniet beatae! Distinctio, maxime, velit laboriosam fugiat excepturi dolores vitae quod a accusantium non expedita.', 'lorem ipsum', '', 0);
INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tag`, `post_status`, `for_carousel`) VALUES
(16, '56', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'john doe', '2021-09-03', 'pexels-skytoner-4019598.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi ipsa vel beatae impedit, alias aliquid rerum accusantium laboriosam cupiditate nihil voluptates ea unde magnam sint velit perspiciatis soluta numquam nemo nam, eaque autem tempore non. Enim ducimus reiciendis, harum eius corrupti dolor nemo numquam assumenda culpa fugiat, ea cum. Consequuntur asperiores nisi iure praesentium culpa illum ex, reprehenderit nulla, pariatur eum, velit aperiam. Provident magni omnis ut quasi nihil excepturi. Sapiente ducimus maiores totam aspernatur voluptas quaerat dolore sit accusantium magni blanditiis aliquid et ullam ipsum distinctio quasi explicabo minima, dolorem vitae laborum debitis. Corporis odio earum facere vitae iusto labore voluptatum delectus tempore sed sequi architecto voluptatem eveniet explicabo repellat asperiores exercitationem aliquid, ea facilis consequuntur cum fugiat quibusdam. Eos, nostrum unde expedita, voluptatum vel veritatis at impedit sed adipisci ut ullam, nulla perspiciatis voluptate aspernatur esse earum neque illum deleniti! Nisi eligendi esse vel reiciendis voluptatibus at cupiditate quod saepe laborum fugit nobis explicabo quis quos dignissimos est ex labore veritatis ipsum tempore, quam, neque expedita delectus numquam. Distinctio id doloribus, nobis minus iste facilis aperiam, reprehenderit architecto iusto facere quidem! Inventore minus numquam voluptatibus. Officiis iste libero placeat, voluptas in at obcaecati temporibus mollitia, esse culpa quisquam aspernatur architecto magni quasi sapiente, nostrum labore! Aliquid eos consectetur perferendis iusto asperiores architecto praesentium odit sint porro quidem repudiandae accusamus nostrum atque eius, possimus, eum ea numquam autem tempore suscipit distinctio temporibus consequuntur. Aut corrupti, assumenda dignissimos minus consequuntur fugit odit veritatis dolorum deserunt sint maxime iure vel nostrum rem at. Reiciendis quos nihil, qui voluptatem dicta tempora ipsum sunt atque repellat animi nemo deleniti, maiores et nisi eum ad voluptatibus mollitia quae aliquid. Praesentium ea reiciendis, saepe inventore ullam sapiente error, obcaecati animi dolores impedit harum. Atque perferendis maxime nemo eius quo provident aut alias odit amet natus, eveniet, rem molestias dicta illum quas quasi voluptate ipsam quaerat dolore recusandae. Error sunt dolore soluta perferendis laboriosam, debitis sapiente harum quasi delectus facere, perspiciatis nihil. Esse assumenda nulla neque ea eligendi quod eaque dolor sed explicabo deleniti sit quos, deserunt earum beatae aliquid in nihil aspernatur porro eum vero non animi? Nihil ullam veritatis, ipsa distinctio reiciendis impedit laboriosam qui asperiores animi aliquam voluptatibus laborum, enim totam rerum repellendus. Distinctio architecto blanditiis quisquam hic aliquid tempore commodi id cumque. Culpa, excepturi voluptatem reiciendis ullam eveniet beatae! Distinctio, maxime, velit laboriosam fugiat excepturi dolores vitae quod a accusantium non expedita.', 'lorem ipsum', 'Publish', 0),
(17, '56', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'jane doe', '2021-09-03', 'pexels-thirdman-5247207.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi ipsa vel beatae impedit, alias aliquid rerum accusantium laboriosam cupiditate nihil voluptates ea unde magnam sint velit perspiciatis soluta numquam nemo nam, eaque autem tempore non. Enim ducimus reiciendis, harum eius corrupti dolor nemo numquam assumenda culpa fugiat, ea cum. Consequuntur asperiores nisi iure praesentium culpa illum ex, reprehenderit nulla, pariatur eum, velit aperiam. Provident magni omnis ut quasi nihil excepturi. Sapiente ducimus maiores totam aspernatur voluptas quaerat dolore sit accusantium magni blanditiis aliquid et ullam ipsum distinctio quasi explicabo minima, dolorem vitae laborum debitis. Corporis odio earum facere vitae iusto labore voluptatum delectus tempore sed sequi architecto voluptatem eveniet explicabo repellat asperiores exercitationem aliquid, ea facilis consequuntur cum fugiat quibusdam. Eos, nostrum unde expedita, voluptatum vel veritatis at impedit sed adipisci ut ullam, nulla perspiciatis voluptate aspernatur esse earum neque illum deleniti! Nisi eligendi esse vel reiciendis voluptatibus at cupiditate quod saepe laborum fugit nobis explicabo quis quos dignissimos est ex labore veritatis ipsum tempore, quam, neque expedita delectus numquam. Distinctio id doloribus, nobis minus iste facilis aperiam, reprehenderit architecto iusto facere quidem! Inventore minus numquam voluptatibus. Officiis iste libero placeat, voluptas in at obcaecati temporibus mollitia, esse culpa quisquam aspernatur architecto magni quasi sapiente, nostrum labore! Aliquid eos consectetur perferendis iusto asperiores architecto praesentium odit sint porro quidem repudiandae accusamus nostrum atque eius, possimus, eum ea numquam autem tempore suscipit distinctio temporibus consequuntur. Aut corrupti, assumenda dignissimos minus consequuntur fugit odit veritatis dolorum deserunt sint maxime iure vel nostrum rem at. Reiciendis quos nihil, qui voluptatem dicta tempora ipsum sunt atque repellat animi nemo deleniti, maiores et nisi eum ad voluptatibus mollitia quae aliquid. Praesentium ea reiciendis, saepe inventore ullam sapiente error, obcaecati animi dolores impedit harum. Atque perferendis maxime nemo eius quo provident aut alias odit amet natus, eveniet, rem molestias dicta illum quas quasi voluptate ipsam quaerat dolore recusandae. Error sunt dolore soluta perferendis laboriosam, debitis sapiente harum quasi delectus facere, perspiciatis nihil. Esse assumenda nulla neque ea eligendi quod eaque dolor sed explicabo deleniti sit quos, deserunt earum beatae aliquid in nihil aspernatur porro eum vero non animi? Nihil ullam veritatis, ipsa distinctio reiciendis impedit laboriosam qui asperiores animi aliquam voluptatibus laborum, enim totam rerum repellendus. Distinctio architecto blanditiis quisquam hic aliquid tempore commodi id cumque. Culpa, excepturi voluptatem reiciendis ullam eveniet beatae! Distinctio, maxime, velit laboriosam fugiat excepturi dolores vitae quod a accusantium non expedita.', 'lorem ipsum', 'Publish', 1),
(18, '56', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'john doe', '2021-09-03', 'spikeball-4_lKX4E844U-unsplash.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi ipsa vel beatae impedit, alias aliquid rerum accusantium laboriosam cupiditate nihil voluptates ea unde magnam sint velit perspiciatis soluta numquam nemo nam, eaque autem tempore non. Enim ducimus reiciendis, harum eius corrupti dolor nemo numquam assumenda culpa fugiat, ea cum. Consequuntur asperiores nisi iure praesentium culpa illum ex, reprehenderit nulla, pariatur eum, velit aperiam. Provident magni omnis ut quasi nihil excepturi. Sapiente ducimus maiores totam aspernatur voluptas quaerat dolore sit accusantium magni blanditiis aliquid et ullam ipsum distinctio quasi explicabo minima, dolorem vitae laborum debitis. Corporis odio earum facere vitae iusto labore voluptatum delectus tempore sed sequi architecto voluptatem eveniet explicabo repellat asperiores exercitationem aliquid, ea facilis consequuntur cum fugiat quibusdam. Eos, nostrum unde expedita, voluptatum vel veritatis at impedit sed adipisci ut ullam, nulla perspiciatis voluptate aspernatur esse earum neque illum deleniti! Nisi eligendi esse vel reiciendis voluptatibus at cupiditate quod saepe laborum fugit nobis explicabo quis quos dignissimos est ex labore veritatis ipsum tempore, quam, neque expedita delectus numquam. Distinctio id doloribus, nobis minus iste facilis aperiam, reprehenderit architecto iusto facere quidem! Inventore minus numquam voluptatibus. Officiis iste libero placeat, voluptas in at obcaecati temporibus mollitia, esse culpa quisquam aspernatur architecto magni quasi sapiente, nostrum labore! Aliquid eos consectetur perferendis iusto asperiores architecto praesentium odit sint porro quidem repudiandae accusamus nostrum atque eius, possimus, eum ea numquam autem tempore suscipit distinctio temporibus consequuntur. Aut corrupti, assumenda dignissimos minus consequuntur fugit odit veritatis dolorum deserunt sint maxime iure vel nostrum rem at. Reiciendis quos nihil, qui voluptatem dicta tempora ipsum sunt atque repellat animi nemo deleniti, maiores et nisi eum ad voluptatibus mollitia quae aliquid. Praesentium ea reiciendis, saepe inventore ullam sapiente error, obcaecati animi dolores impedit harum. Atque perferendis maxime nemo eius quo provident aut alias odit amet natus, eveniet, rem molestias dicta illum quas quasi voluptate ipsam quaerat dolore recusandae. Error sunt dolore soluta perferendis laboriosam, debitis sapiente harum quasi delectus facere, perspiciatis nihil. Esse assumenda nulla neque ea eligendi quod eaque dolor sed explicabo deleniti sit quos, deserunt earum beatae aliquid in nihil aspernatur porro eum vero non animi? Nihil ullam veritatis, ipsa distinctio reiciendis impedit laboriosam qui asperiores animi aliquam voluptatibus laborum, enim totam rerum repellendus. Distinctio architecto blanditiis quisquam hic aliquid tempore commodi id cumque. Culpa, excepturi voluptatem reiciendis ullam eveniet beatae! Distinctio, maxime, velit laboriosam fugiat excepturi dolores vitae quod a accusantium non expedita.', 'lorem ipsum', 'Publish', 1),
(19, '55', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'jane doe', '2021-09-03', 'md-mahdi-lQpFRPrepQ8-unsplash.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi ipsa vel beatae impedit, alias aliquid rerum accusantium laboriosam cupiditate nihil voluptates ea unde magnam sint velit perspiciatis soluta numquam nemo nam, eaque autem tempore non. Enim ducimus reiciendis, harum eius corrupti dolor nemo numquam assumenda culpa fugiat, ea cum. Consequuntur asperiores nisi iure praesentium culpa illum ex, reprehenderit nulla, pariatur eum, velit aperiam. Provident magni omnis ut quasi nihil excepturi. Sapiente ducimus maiores totam aspernatur voluptas quaerat dolore sit accusantium magni blanditiis aliquid et ullam ipsum distinctio quasi explicabo minima, dolorem vitae laborum debitis. Corporis odio earum facere vitae iusto labore voluptatum delectus tempore sed sequi architecto voluptatem eveniet explicabo repellat asperiores exercitationem aliquid, ea facilis consequuntur cum fugiat quibusdam. Eos, nostrum unde expedita, voluptatum vel veritatis at impedit sed adipisci ut ullam, nulla perspiciatis voluptate aspernatur esse earum neque illum deleniti! Nisi eligendi esse vel reiciendis voluptatibus at cupiditate quod saepe laborum fugit nobis explicabo quis quos dignissimos est ex labore veritatis ipsum tempore, quam, neque expedita delectus numquam. Distinctio id doloribus, nobis minus iste facilis aperiam, reprehenderit architecto iusto facere quidem! Inventore minus numquam voluptatibus. Officiis iste libero placeat, voluptas in at obcaecati temporibus mollitia, esse culpa quisquam aspernatur architecto magni quasi sapiente, nostrum labore! Aliquid eos consectetur perferendis iusto asperiores architecto praesentium odit sint porro quidem repudiandae accusamus nostrum atque eius, possimus, eum ea numquam autem tempore suscipit distinctio temporibus consequuntur. Aut corrupti, assumenda dignissimos minus consequuntur fugit odit veritatis dolorum deserunt sint maxime iure vel nostrum rem at. Reiciendis quos nihil, qui voluptatem dicta tempora ipsum sunt atque repellat animi nemo deleniti, maiores et nisi eum ad voluptatibus mollitia quae aliquid. Praesentium ea reiciendis, saepe inventore ullam sapiente error, obcaecati animi dolores impedit harum. Atque perferendis maxime nemo eius quo provident aut alias odit amet natus, eveniet, rem molestias dicta illum quas quasi voluptate ipsam quaerat dolore recusandae. Error sunt dolore soluta perferendis laboriosam, debitis sapiente harum quasi delectus facere, perspiciatis nihil. Esse assumenda nulla neque ea eligendi quod eaque dolor sed explicabo deleniti sit quos, deserunt earum beatae aliquid in nihil aspernatur porro eum vero non animi? Nihil ullam veritatis, ipsa distinctio reiciendis impedit laboriosam qui asperiores animi aliquam voluptatibus laborum, enim totam rerum repellendus. Distinctio architecto blanditiis quisquam hic aliquid tempore commodi id cumque. Culpa, excepturi voluptatem reiciendis ullam eveniet beatae! Distinctio, maxime, velit laboriosam fugiat excepturi dolores vitae quod a accusantium non expedita.', 'lorem ipsum', 'Publish', 0),
(20, '56', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'john doe', '2021-09-03', 'omar-ram-V9vEuDmbyVI-unsplash.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi ipsa vel beatae impedit, alias aliquid rerum accusantium laboriosam cupiditate nihil voluptates ea unde magnam sint velit perspiciatis soluta numquam nemo nam, eaque autem tempore non. Enim ducimus reiciendis, harum eius corrupti dolor nemo numquam assumenda culpa fugiat, ea cum. Consequuntur asperiores nisi iure praesentium culpa illum ex, reprehenderit nulla, pariatur eum, velit aperiam. Provident magni omnis ut quasi nihil excepturi. Sapiente ducimus maiores totam aspernatur voluptas quaerat dolore sit accusantium magni blanditiis aliquid et ullam ipsum distinctio quasi explicabo minima, dolorem vitae laborum debitis. Corporis odio earum facere vitae iusto labore voluptatum delectus tempore sed sequi architecto voluptatem eveniet explicabo repellat asperiores exercitationem aliquid, ea facilis consequuntur cum fugiat quibusdam. Eos, nostrum unde expedita, voluptatum vel veritatis at impedit sed adipisci ut ullam, nulla perspiciatis voluptate aspernatur esse earum neque illum deleniti! Nisi eligendi esse vel reiciendis voluptatibus at cupiditate quod saepe laborum fugit nobis explicabo quis quos dignissimos est ex labore veritatis ipsum tempore, quam, neque expedita delectus numquam. Distinctio id doloribus, nobis minus iste facilis aperiam, reprehenderit architecto iusto facere quidem! Inventore minus numquam voluptatibus. Officiis iste libero placeat, voluptas in at obcaecati temporibus mollitia, esse culpa quisquam aspernatur architecto magni quasi sapiente, nostrum labore! Aliquid eos consectetur perferendis iusto asperiores architecto praesentium odit sint porro quidem repudiandae accusamus nostrum atque eius, possimus, eum ea numquam autem tempore suscipit distinctio temporibus consequuntur. Aut corrupti, assumenda dignissimos minus consequuntur fugit odit veritatis dolorum deserunt sint maxime iure vel nostrum rem at. Reiciendis quos nihil, qui voluptatem dicta tempora ipsum sunt atque repellat animi nemo deleniti, maiores et nisi eum ad voluptatibus mollitia quae aliquid. Praesentium ea reiciendis, saepe inventore ullam sapiente error, obcaecati animi dolores impedit harum. Atque perferendis maxime nemo eius quo provident aut alias odit amet natus, eveniet, rem molestias dicta illum quas quasi voluptate ipsam quaerat dolore recusandae. Error sunt dolore soluta perferendis laboriosam, debitis sapiente harum quasi delectus facere, perspiciatis nihil. Esse assumenda nulla neque ea eligendi quod eaque dolor sed explicabo deleniti sit quos, deserunt earum beatae aliquid in nihil aspernatur porro eum vero non animi? Nihil ullam veritatis, ipsa distinctio reiciendis impedit laboriosam qui asperiores animi aliquam voluptatibus laborum, enim totam rerum repellendus. Distinctio architecto blanditiis quisquam hic aliquid tempore commodi id cumque. Culpa, excepturi voluptatem reiciendis ullam eveniet beatae! Distinctio, maxime, velit laboriosam fugiat excepturi dolores vitae quod a accusantium non expedita.', 'lorem ipsum', '', 0),
(21, '55', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'john doe', '2021-09-03', 'pexels-artem-saranin-1055844.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi ipsa vel beatae impedit, alias aliquid rerum accusantium laboriosam cupiditate nihil voluptates ea unde magnam sint velit perspiciatis soluta numquam nemo nam, eaque autem tempore non. Enim ducimus reiciendis, harum eius corrupti dolor nemo numquam assumenda culpa fugiat, ea cum. Consequuntur asperiores nisi iure praesentium culpa illum ex, reprehenderit nulla, pariatur eum, velit aperiam. Provident magni omnis ut quasi nihil excepturi. Sapiente ducimus maiores totam aspernatur voluptas quaerat dolore sit accusantium magni blanditiis aliquid et ullam ipsum distinctio quasi explicabo minima, dolorem vitae laborum debitis. Corporis odio earum facere vitae iusto labore voluptatum delectus tempore sed sequi architecto voluptatem eveniet explicabo repellat asperiores exercitationem aliquid, ea facilis consequuntur cum fugiat quibusdam. Eos, nostrum unde expedita, voluptatum vel veritatis at impedit sed adipisci ut ullam, nulla perspiciatis voluptate aspernatur esse earum neque illum deleniti! Nisi eligendi esse vel reiciendis voluptatibus at cupiditate quod saepe laborum fugit nobis explicabo quis quos dignissimos est ex labore veritatis ipsum tempore, quam, neque expedita delectus numquam. Distinctio id doloribus, nobis minus iste facilis aperiam, reprehenderit architecto iusto facere quidem! Inventore minus numquam voluptatibus. Officiis iste libero placeat, voluptas in at obcaecati temporibus mollitia, esse culpa quisquam aspernatur architecto magni quasi sapiente, nostrum labore! Aliquid eos consectetur perferendis iusto asperiores architecto praesentium odit sint porro quidem repudiandae accusamus nostrum atque eius, possimus, eum ea numquam autem tempore suscipit distinctio temporibus consequuntur. Aut corrupti, assumenda dignissimos minus consequuntur fugit odit veritatis dolorum deserunt sint maxime iure vel nostrum rem at. Reiciendis quos nihil, qui voluptatem dicta tempora ipsum sunt atque repellat animi nemo deleniti, maiores et nisi eum ad voluptatibus mollitia quae aliquid. Praesentium ea reiciendis, saepe inventore ullam sapiente error, obcaecati animi dolores impedit harum. Atque perferendis maxime nemo eius quo provident aut alias odit amet natus, eveniet, rem molestias dicta illum quas quasi voluptate ipsam quaerat dolore recusandae. Error sunt dolore soluta perferendis laboriosam, debitis sapiente harum quasi delectus facere, perspiciatis nihil. Esse assumenda nulla neque ea eligendi quod eaque dolor sed explicabo deleniti sit quos, deserunt earum beatae aliquid in nihil aspernatur porro eum vero non animi? Nihil ullam veritatis, ipsa distinctio reiciendis impedit laboriosam qui asperiores animi aliquam voluptatibus laborum, enim totam rerum repellendus. Distinctio architecto blanditiis quisquam hic aliquid tempore commodi id cumque. Culpa, excepturi voluptatem reiciendis ullam eveniet beatae! Distinctio, maxime, velit laboriosam fugiat excepturi dolores vitae quod a accusantium non expedita.', 'lorem ipsum', '', 0),
(22, '56', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'jane doe', '2021-09-03', 'pexels-artem-saranin-1091435.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi ipsa vel beatae impedit, alias aliquid rerum accusantium laboriosam cupiditate nihil voluptates ea unde magnam sint velit perspiciatis soluta numquam nemo nam, eaque autem tempore non. Enim ducimus reiciendis, harum eius corrupti dolor nemo numquam assumenda culpa fugiat, ea cum. Consequuntur asperiores nisi iure praesentium culpa illum ex, reprehenderit nulla, pariatur eum, velit aperiam. Provident magni omnis ut quasi nihil excepturi. Sapiente ducimus maiores totam aspernatur voluptas quaerat dolore sit accusantium magni blanditiis aliquid et ullam ipsum distinctio quasi explicabo minima, dolorem vitae laborum debitis. Corporis odio earum facere vitae iusto labore voluptatum delectus tempore sed sequi architecto voluptatem eveniet explicabo repellat asperiores exercitationem aliquid, ea facilis consequuntur cum fugiat quibusdam. Eos, nostrum unde expedita, voluptatum vel veritatis at impedit sed adipisci ut ullam, nulla perspiciatis voluptate aspernatur esse earum neque illum deleniti! Nisi eligendi esse vel reiciendis voluptatibus at cupiditate quod saepe laborum fugit nobis explicabo quis quos dignissimos est ex labore veritatis ipsum tempore, quam, neque expedita delectus numquam. Distinctio id doloribus, nobis minus iste facilis aperiam, reprehenderit architecto iusto facere quidem! Inventore minus numquam voluptatibus. Officiis iste libero placeat, voluptas in at obcaecati temporibus mollitia, esse culpa quisquam aspernatur architecto magni quasi sapiente, nostrum labore! Aliquid eos consectetur perferendis iusto asperiores architecto praesentium odit sint porro quidem repudiandae accusamus nostrum atque eius, possimus, eum ea numquam autem tempore suscipit distinctio temporibus consequuntur. Aut corrupti, assumenda dignissimos minus consequuntur fugit odit veritatis dolorum deserunt sint maxime iure vel nostrum rem at. Reiciendis quos nihil, qui voluptatem dicta tempora ipsum sunt atque repellat animi nemo deleniti, maiores et nisi eum ad voluptatibus mollitia quae aliquid. Praesentium ea reiciendis, saepe inventore ullam sapiente error, obcaecati animi dolores impedit harum. Atque perferendis maxime nemo eius quo provident aut alias odit amet natus, eveniet, rem molestias dicta illum quas quasi voluptate ipsam quaerat dolore recusandae. Error sunt dolore soluta perferendis laboriosam, debitis sapiente harum quasi delectus facere, perspiciatis nihil. Esse assumenda nulla neque ea eligendi quod eaque dolor sed explicabo deleniti sit quos, deserunt earum beatae aliquid in nihil aspernatur porro eum vero non animi? Nihil ullam veritatis, ipsa distinctio reiciendis impedit laboriosam qui asperiores animi aliquam voluptatibus laborum, enim totam rerum repellendus. Distinctio architecto blanditiis quisquam hic aliquid tempore commodi id cumque. Culpa, excepturi voluptatem reiciendis ullam eveniet beatae! Distinctio, maxime, velit laboriosam fugiat excepturi dolores vitae quod a accusantium non expedita.', 'lorem ipsum', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stadiums`
--

CREATE TABLE `stadiums` (
  `stad_id` int(11) NOT NULL,
  `stad_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stadiums`
--

INSERT INTO `stadiums` (`stad_id`, `stad_name`) VALUES
(1, 'adamasingba'),
(2, 'teslim balogun'),
(3, 'adamasingba'),
(4, 'teslim balogun');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdateDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdateDate`) VALUES
(1, 'admin', '$2y$12$i4LMfeFPQpGSNPTaccIkKuwxAkJ4PhBr3JND7FpXwWFjRvchQn17C', 'admin@gmail.com', 1, '2021-05-27 16:51:00', '2021-08-24 17:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `team_id` int(100) NOT NULL,
  `team_name` varchar(150) NOT NULL,
  `logo` text NOT NULL,
  `coach_id` int(11) NOT NULL,
  `stadium_id` int(11) NOT NULL,
  `home_kit` text NOT NULL,
  `away_kit` text NOT NULL,
  `date_found` text NOT NULL,
  `championships` varchar(255) NOT NULL DEFAULT 'N/A',
  `website` varchar(255) NOT NULL DEFAULT 'N/A',
  `twitter` varchar(255) NOT NULL DEFAULT 'N/A',
  `facebook` varchar(255) NOT NULL DEFAULT 'N/A',
  `insta` text NOT NULL DEFAULT 'N/A',
  `relegated` varchar(10) NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`team_id`, `team_name`, `logo`, `coach_id`, `stadium_id`, `home_kit`, `away_kit`, `date_found`, `championships`, `website`, `twitter`, `facebook`, `insta`, `relegated`) VALUES
(5, 'new england patriots', 'T_NE.gif', 1, 2, 'NE.png', 'NOTEAM.png', '1975', '1985, 2002, 2003', '-', '-', '-', '', ''),
(6, 'new england patriots', 'T_NE.gif', 1, 2, 'NE.png', 'NOTEAM.png', '1975', '1985, 2002, 2003', '-', '-', '-', '', ''),
(7, 'minesota vikings', 'T_MIN.gif', 1, 4, 'MIN.png', 'NOTEAM.png', '1975', '1985, 2002, 2003', '-', '-', '-', '-', ''),
(8, 'tenesse titans', 'T_TEN.gif', 1, 1, 'TEN.png', 'NOTEAM.png', '1975', '2005, 2009', '-', '-', '-', '-', ''),
(9, 'tenesse titans', 'T_TEN.gif', 1, 1, 'TEN.png', 'NOTEAM.png', '1975', '2005, 2009', '-', '-', '-', '-', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_username` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randsalt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_password`, `user_username`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randsalt`) VALUES
(24, '$2y$10$LL6zsWUdYIjPN4uW7KNup.Em1mwebmAb7FpISXwXA2NEoNMyEfREC', 'admin', 'admin', 'aa', 'admin@gmail.com', '', 'admin', ''),
(25, '$2y$10$y4TsrKMOL/H/Psem6ko1OuOpL8u6qbMpU.JVmhIV.pPw00NyRIBlK', 'ayava2142', 'Alayna ', 'Chang', 'Chang@gmail.com', '', 'subscriber', ''),
(26, '$2y$10$vi3U6hf/gVIoRTUcDy9VCuVRqfPPd3FDcMA320v5F5jF4tQz8hLZq', 'Marshall', 'Kajetan', 'Marshall', 'Kajetan@gmail.com', '', 'subscriber', ''),
(27, '$2y$10$ViFpmOB0G5bGJ.61zIEI5e2nOMwz77SSIL9CtM2Y8xWtPANU9IMD6', 'Kavanagh', 'Victor ', 'Kavanagh', 'Kavanagh@gmail.com', '', 'subscriber', ''),
(28, '$2y$10$77Q/KuYgVigj8BSyisZHbeXySQG6mxzsHV4xiG9KGE0RzS/Wc7C1W', 'Forster', 'Jaden ', 'Forster', 'Forster@gmail.com', '', 'subscriber', ''),
(29, '$2y$10$w8KgvUUxYL.E.hD5b8hZeeMbAdWP6l6JFKnHaWSuGEE80Muh1n2Ri', 'Ferguson', 'Anushka', 'Ferguson', 'subscriber@gmail.com', '', 'subscriber', ''),
(30, '$2y$10$c76AwqKqsbo0MjDbF2xB2.su2/xgakW7s1HI2Kd3vZQz.eCIBnAdS', 'shadi badr', 'shadi', 'badria', 'shadi5@gmail.com', '', 'subscriber', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adsposition`
--
ALTER TABLE `adsposition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `coaches`
--
ALTER TABLE `coaches`
  ADD PRIMARY KEY (`coach_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `stadiums`
--
ALTER TABLE `stadiums`
  ADD PRIMARY KEY (`stad_id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adsposition`
--
ALTER TABLE `adsposition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `coaches`
--
ALTER TABLE `coaches`
  MODIFY `coach_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `stadiums`
--
ALTER TABLE `stadiums`
  MODIFY `stad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
