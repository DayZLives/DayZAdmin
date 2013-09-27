SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `user` varchar(255) NOT NULL DEFAULT '',
  `timestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=221 ;

CREATE TABLE IF NOT EXISTS `object_classes` (
  `Classname` varchar(128) NOT NULL DEFAULT '',
  `Type` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`Classname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `object_classes` (`Classname`, `Type`) VALUES
	('ATV_CZ_EP1', 'atv'),
	('car_hatchback', 'car'),
	('datsun1_civil_3_open', 'car'),
	('Fishing_Boat', 'largeboat'),
	('S1203_TK_CIV_EP1', 'bus'),
	('Tractor', 'farmvehicle'),
	('BAF_Offroad_D', 'car'),
	('UAZ_Unarmed_TK_EP1', 'car'),
	('UH1H_DZ', 'helicopter'),
	('UralCivil2', 'truck'),
	('V3S_Civ', 'truck'),
	('Volha_1_TK_CIV_EP1', 'car'),
	('Volha_2_TK_CIV_EP1', 'car'),
	('Ikarus', 'bus'),
	('ATV_US_EP1', 'atv'),
	('BAF_Offroad_W', 'car'),
	('car_sedan', 'car'),
	('hilux1_civil_1_open', 'car'),
	('hilux1_civil_2_covered', 'car'),
	('hilux1_civil_3_open', 'car'),
	('Ikarus_TK_CIV_EP1', 'bus'),
	('LandRover_TK_CIV_EP1', 'car'),
	('MH6J_EP1', 'helicopter'),
	('MH6J_DZ', 'helicopter'),
	('Old_bike_TK_CIV_EP1', 'bike'),
	('Old_bike_TK_INS_EP1', 'bike'),
	('PBX', 'smallboat'),
	('Skoda', 'car'),
	('SkodaBlue', 'car'),
	('SkodaGreen', 'car'),
	('Smallboat_1', 'mediumboat'),
	('Smallboat_2', 'mediumboat'),
	('SUV_TK_CIV_EP1', 'car'),
	('TentStorage', 'tent'),
	('TT650_Ins', 'motorcycle'),
	('TT650_TK_CIV_EP1', 'motorcycle'),
	('TT650_TK_EP1', 'motorcycle'),
	('UAZ_INS', 'car'),
	('UAZ_RU', 'car'),
	('UAZ_Unarmed_TK_CIV_EP1', 'car'),
	('UAZ_Unarmed_UN_EP1', 'car'),
	('UralCivil', 'truck'),
	('Mi17_DZ', 'helicopter'),
	('AN2_DZ', 'plane'),
	('Hedgehog_DZ', 'hedgehog'),
	('Wire_cat1', 'wire'),
	('Sandbag1_DZ', 'sandbag'),
	('AH6X_DZ', 'helicopter'),
	('datsun1_civil_1_open', 'car'),
	('Lada1_TK_CIV_EP1', 'car'),
	('M1030', 'motorcycle'),
	('SUV_TK_EP1', 'car'),
	('VolhaLimo_TK_CIV_EP1', 'car'),
	('Lada2', 'car'),
	('hilux1_civil_3_open_EP1', 'car'),
	('LandRover_CZ_EP1', 'car'),
	('C130J','plane'),
	('datsun1_civil_2_covered','car'),
	('Fishing_Boat_DZ','largeboat'),
	('HMMWV_DES_EP1','truck'),
	('HMMWV_DZ','truck'),
	('Lada1','car'),
	('Lada2_TK_CIV_EP1','car'),
	('LadaLM','car'),
	('M1030_US_DES_EP1','motorcycle'),
	('Mi17_Civilian_DZ','helicopter'),
	('MMT_Civ','bike'),
	('Old_moto_TK_Civ_EP1','motorcycle'),
	('PBX_DZ','smallboat'),
	('Pickup_PK_DZ','car'),
	('Roket_Maule_M7_STD','plane'),
	('SkodaRed','car'),
	('Smallboat_1_DZ','mediumboat'),
	('Smallboat_2_DZ','mediumboat'),
	('SUV_Blue','car'),
	('SUV_Charcoal','car'),
	('SUV_Green','car'),
	('SUV_Orange','car'),
	('SUV_Pink','car'),
	('SUV_Red','car'),
	('SUV_Silver','car'),
	('SUV_Special','car'),
	('SUV_White','car'),
	('SUV_Yellow','car'),
	('SUV_DZ','car'),
	('TowingTractor','farmvehicle'),
	('TT650_Civ','motorcycle'),
	('TT650_Gue','motorcycle'),
	('UAZ_MG_DZ','car'),
	('UralRefuel_INS','truck'),
	('Ural_INS','truck'),
	('VWGolf','car'),
	('Zodiac_DZ','smallboat');

CREATE TABLE IF NOT EXISTS `users` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `accesslvl` varchar(16) NULL DEFAULT '', 
  `salt` char(3) NOT NULL DEFAULT '',
  `lastlogin` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

INSERT INTO `users` (`id`, `login`, `password`, `accesslvl`, `salt`, `lastlogin`) VALUES
(1, 'admin', 'e818f0d38a7dadb1ec1d839d46e0b5ca', 'full','5yu', NULL);

CREATE TABLE IF NOT EXISTS `accesslvl` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `access` varchar(128) NOT NULL DEFAULT '[]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `accesslvl` (`id`, `name`, `access`) VALUES
	(1, 'full', '["true", "true", "true", "true", "true", "true", "true"]'),
	(2, 'semi', '["false", "false", "true", "false", "true", "true", "false"]');
