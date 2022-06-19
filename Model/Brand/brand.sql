 
CREATE TABLE `bakcodt_brand` (
  `Id` varchar(50) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `Alias` varchar(500) NOT NULL,
  `Images` text NOT NULL,
  `Note` text NOT NULL,
  `Desc` text NOT NULL,
  `Title` varchar(500) NOT NULL,
  `Keyword` varchar(500) NOT NULL,
  `isDelete` int(11) NOT NULL,
  `Arrange` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
INSERT INTO `bakcodt_brand` (`Id`, `Name`, `Alias`, `Images`, `Note`, `Desc`, `Title`, `Keyword`, `isDelete`, `Arrange`) VALUES
('0d402400-583c-4847-a7dc-15c782479262', 'Local Brand', '', '/public/img/images/Brand/local%20brand.png', '', 'Local Brand', 'Local Brand', 'Local Brand', 1, 0),
('12ec016f-e6d0-11eb-998b-005056b633ed', 'No Brand', 'Không Có Thương Hiệu', '/public/img/images/Brand/sitemgr_photo_22941_1.png', ' ', 'No Brand', 'No Brand', 'No Brand', 0, 0),
('1e2d0dd3-604f-4b5a-8a4e-ce4c3a2fdc1f', 'MARC', '', '/public/img/images/Brand/marc.png', '', 'MARC', 'MARC', 'MARC', 0, 0),
('23c99ee1-ff7d-414e-aac8-c2bcad6ac5ec', 'Zara', 'zara', '/public/img/images/Brand/Zara-logo-1024x555.jpg', '', 'Zara', 'Zara', 'Zara', 0, 0),
('4d3e8978-aef0-4a42-ad01-30db3252a669', 'Lép', '', '/public/img/images/Brand/59859821_1924298484343428_7407326651400323072_n.png', '', 'Lép', 'Lép', 'Lép', 1, 0);
 
ALTER TABLE `bakcodt_brand`
  ADD PRIMARY KEY (`Id`);
COMMIT; 