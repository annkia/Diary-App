-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 08 Paź 2017, 17:32
-- Wersja serwera: 10.1.21-MariaDB
-- Wersja PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `diary`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_record` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `category`
--

INSERT INTO `category` (`id_category`, `name`, `id_user`, `id_record`) VALUES
(1, 'hobby', 0, 0),
(2, 'osobiste', 0, 0),
(3, 'podróże', 0, 0),
(4, 'rodzina', 0, 0),
(5, 'zdrowie', 0, 0),
(6, 'sport', 0, 0),
(7, 'znajomi', 0, 0),
(8, 'rozrywka', 0, 0),
(9, 'praca', 0, 0),
(10, 'brak', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `record`
--

CREATE TABLE `record` (
  `id_record` int(11) NOT NULL,
  `category` text COLLATE utf8_polish_ci NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `username` text COLLATE utf8_polish_ci NOT NULL,
  `date` date NOT NULL,
  `topic` char(40) COLLATE utf8_polish_ci NOT NULL,
  `content` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `record`
--

INSERT INTO `record` (`id_record`, `category`, `id_category`, `id_user`, `username`, `date`, `topic`, `content`) VALUES
(3, 'zdrowie', 5, 11, 'ed', '2017-08-15', 'Badania', 'Do końca grudnia wykonać badania do książeczki zdrowia.'),
(4, 'rodzina', 3, 9, 'ola', '2017-08-17', 'Spotkanie rodzinne', 'Spotkanie rodzinne odbÄ™dzie siÄ™ 12.12.2017'),
(145, 'praca', 0, 10, 'ela', '2017-09-22', 'Strona', 'Jeśli strona jest międzynarodowa, to po prostu wyszukajcie polskich miast. Większość ze społeczności ma także aktywnie prowadzone strony na facebooku.'),
(151, 'praca', 0, 14, 'olek', '0000-00-00', 'Logowanie', 'Kontrola logowania w jednym punkcie wejścia aplikacji - kontrolerze głównym'),
(154, 'praca', 0, 0, '', '2017-09-17', 'Ochrona', 'Brak koniecznoÅ›ci ochrony kaÅ¼dej strony. Grupy chronionych stron mogÄ… byÄ‡ wybrane w kontrolerze.'),
(158, 'praca', 0, 0, 'ola', '2017-09-29', 'PHP', 'W zwiÄ…zku z powyÅ¼szym, uÅ¼ywanie odpowiednich tablic jest mocno zalecane. Ostatnio twÃ³rcy PHP dodali do tego jeszcze jeden powÃ³d. PoczÄ…wszy od wersji 4.2.0, '),
(173, 'osobiste', 0, 0, 'ola', '2017-09-14', 'ZakoÅ„czenie sesji', 'ZakoÅ„czenie sesji i usuwanie zmiennych'),
(184, 'czytanie', 0, 0, 'opydmistrz', '2017-10-01', '\"zle psy\"', '\r\nprzeczytalem dzisiaj 60 stron ksiazki. jestem zadowolony z sibie. super'),
(186, 'praca', 0, 0, 'ola', '2017-10-03', 'Kolory', 'ArtykuÅ‚ zawiera spis czÄ™sto uÅ¼ywanych kolorÃ³w, zarÃ³wno w jÄ™zyku codziennym, jak i w specyficznych grupach zawodowych. W pierwszej czÄ™Å›ci pogrupowano nazwy barw alfabetycznie, z doÅ‚Ä…czonÄ… prÃ³bkÄ…, a takÅ¼e opisem RGB i w systemie szesnastkowym'),
(187, 'praca', 0, 0, 'ola', '2017-10-03', 'Tekst', 'To jest zwykÅ‚y tekst'),
(188, 'praca', 0, 0, 'ola', '2017-09-13', 'Tabele', 'Polecenie display reguluje sposÃ³b wyÅ›wietlania elementÃ³w, tworzÄ…c z nich, na Å¼Ä…danie autora strony, elementy blokowe, liniowe czy punkty wykazu, a wiÄ™c modyfikujÄ…c ich naturalne wÅ‚asnoÅ›ci - przykÅ‚adowo, akapit jako element z natury blokowy moÅ¼e zostaÄ‡ zmieniony na element liniowy, a grafika, jako element z natury liniowy, na element blokowy.'),
(189, 'zdrowie', 0, 0, 'ola', '2017-10-03', 'Homeopatia', 'Homeopatia zaczÄ™Å‚a siÄ™ rozwijaÄ‡ juÅ¼ pod koniec XVIII wieku. Na poczÄ…tku byÅ‚a czymÅ› rewolucyjnym - proponowaÅ‚a tzw. \'prawo podobieÅ„stw\'. '),
(190, 'zdrowie', 0, 0, 'ola', '2017-10-03', 'Jak w 15 minut zdiagnozowaÄ‡ zawaÅ‚', 'Brytyjczycy wymyÅ›lili, jak w 15 minut skutecznie zdiagnozowaÄ‡ zawaÅ‚ serca. Zamiast EKG - pobranie krwi.'),
(191, 'zdrowie', 0, 0, 'ela', '2017-09-28', 'Supermalaria', 'Nieuleczalna supermalaria opanowuje kolejne kraje. \"To globalne zagroÅ¼enie dla zdrowia publicznego\"'),
(192, 'zdrowie', 0, 0, 'ela', '2017-10-18', 'Orzechy: moc zdrowia i energii', 'Orzechy: moc zdrowia i energii. KtÃ³re najlepsze? W medycynie ludowej od wiekÃ³w wykorzystywano moc nasion orzecha wÅ‚oskiego, ale takÅ¼e jego liÅ›ci. Wierzono, Å¼e odwar z liÅ›ci skutecznie odstraszy owady, a takÅ¼e wyleczy krzywicÄ™ i cukrzycÄ™, zatrzyma krwotok.\r\n'),
(193, 'sport', 0, 0, 'ela', '2017-10-28', 'PiÅ‚ka rÄ™czna', 'PiÅ‚ka rÄ™czna (potocznie pol. szczypiorniak, ang. handball) â€“ zespoÅ‚owa dyscyplina sportu (gra druÅ¼ynowa), uprawiana na caÅ‚ym Å›wiecie â€“ zarÃ³wno przez kobiety, jak i przez mÄ™Å¼czyzn â€“ w ktÃ³rej biorÄ… udziaÅ‚ dwie ekipy po 7 zawodnikÃ³w kaÅ¼da. Celem gry jest wrzucenie â€“ wyÅ‚Ä…cznie za pomocÄ… rÄ…k â€“ piÅ‚ki do bramki przeciwnika. PiÅ‚ka moÅ¼e byÄ‡ rzucana, popychana, Å‚apana, uderzana i zatrzymywana.'),
(194, 'zdrowie', 0, 0, 'ela', '2017-10-20', 'Ekologiczny mus kokosowy', 'Ekologiczny mus kokosowy jest wytwarzany poprzez zmielenie miÄ…Å¼szu kokosa. W wyÅ¼szej temperaturze przyjmuje postaÄ‡ gÄ™stego kremu'),
(195, 'podrÃ³Å¼e', 0, 0, 'ela', '2017-10-06', 'Jak zaplanowaÄ‡ wycieczkÄ™?', 'Cypr â€“ sÅ‚oneczna wyspa poÅ‚oÅ¼ona na Morzu ÅšrÃ³dziemnym jest idealnym miejscem na podrÃ³Å¼e przez caÅ‚y rok. '),
(196, 'podrÃ³Å¼e', 0, 0, 'ela', '2017-10-12', 'Co zobaczyÄ‡ w Nikozji?', 'Nikozja wÅ‚aÅ›ciwie nie wyrÃ³Å¼niaÅ‚aby siÄ™ niczym szczegÃ³lnym wÅ›rÃ³d innych cypryjskich miast, gdyby nie fakt, Å¼e od ponad 50 lat, przez sam jej Å›rodek przebiega linia graniczna.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` text COLLATE utf8_polish_ci NOT NULL,
  `password` text COLLATE utf8_polish_ci NOT NULL,
  `email` text COLLATE utf8_polish_ci NOT NULL,
  `role` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `email`, `role`) VALUES
(9, 'ola', '2fe04e524ba40505a82e03a2819429cc', 'ola@gmail.com', ''),
(10, 'ela', '8100240622c5494b0cb9086f15957813', 'ela@od.p', ''),
(11, 'ed', 'b5f3729e5418905ad2b21ce186b1c01d', 'ed@onet.pl', ''),
(14, 'olek', '79f2b342d974c48e128e2c733b6417ba', 'olek@in.pl', ''),
(15, 'ania', '5f59ac736640f43e61c6070284bf1c06', 'ania@e.pl', ''),
(16, 'ala', 'e88e6128e26eeff4daf1f5db07372784', 'ala@fdf.pl', ''),
(17, 'ala', 'e88e6128e26eeff4daf1f5db07372784', 'ala@hhhh.pl', ''),
(18, 'aga', 'fea30f2213e57de1a3c985f0cad303b7', 'aga@ddd.pl', ''),
(19, 'opydmistrz', '25d55ad283aa400af464c76d713c07ad', 'o.grzes16@wp.pl', '');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id_record`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT dla tabeli `record`
--
ALTER TABLE `record`
  MODIFY `id_record` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
