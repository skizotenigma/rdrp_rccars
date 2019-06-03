USE `essentialmode`;

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('rccar', 'RC Bandito', 1, 1, 1)
;

INSERT INTO `shops` (`store`, `item`, `price`) VALUES
('RobsLiquor', 'rccar', 2000),
('LTDgasoline', 'rccar', 2000),
('TwentyFourSeven', 'rccar', 2000)
;
