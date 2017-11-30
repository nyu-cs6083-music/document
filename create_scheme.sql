DROP TABLE IF EXISTS `Follow`;
DROP TABLE IF EXISTS `Play`;
DROP TABLE IF EXISTS `Rate`;
DROP TABLE IF EXISTS `Likes`;
DROP TABLE IF EXISTS `PlaylistTrack`;
DROP TABLE IF EXISTS `AlbumTrack`;
DROP TABLE IF EXISTS `Album`;
DROP TABLE IF EXISTS `Playlist`;
DROP TABLE IF EXISTS `Track`;
DROP TABLE IF EXISTS `Artists`;
DROP TABLE IF EXISTS `Users`;

-- ----------------------------
-- Table structure for `Users`
-- ----------------------------

CREATE TABLE `Users` (
  `uid` INT NOT NULL AUTO_INCREMENT,
  `uname` VARCHAR(45),
  `uemail` VARCHAR(45),
  `ucity` VARCHAR(45),
  `ulogname` VARCHAR(45) NOT NULL,
  `upw` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`uid`));

-- ----------------------------
-- Records of Users
-- ----------------------------
-- INSERT INTO `Users` VALUES (1, 'Antonio Rod', 'aa@gmail.com');
-- INSERT INTO `Users` VALUES (2, 'Jerry Huang', 'b@gmail.com');
-- INSERT INTO `Users` VALUES (3, 'Brown Snow', 'c@gmail.com');
-- INSERT INTO `Users` VALUES (4, 'Guru Singh', 'd@gmail.com');

-- ----------------------------
-- Table structure for `Artists`
-- ----------------------------
CREATE TABLE `Artists` (
	`aid` INT NOT NULL AUTO_INCREMENT,
    `aname` VARCHAR(45) NOT NULL,
    `adescript` VARCHAR(200) NOT NULL,
    PRIMARY KEY (`aid`));

-- ----------------------------
-- Records of Artists
-- ----------------------------
-- INSERT INTO `Artists` VALUES ();


-- ----------------------------
-- Table structure for `Track`
-- ----------------------------
CREATE TABLE `Track` (
  `tid` INT NOT NULL AUTO_INCREMENT,
  `ttitle` VARCHAR(45) NOT NULL,
  `tduration` VARCHAR(45) NOT NULL,
  `tgenre` VARCHAR(45) NOT NULL,
  `turl` LONGTEXT NOT NULL,
  `aid` INT NOT NULL,
  PRIMARY KEY (`tid`),
  FOREIGN KEY(`aid`)
			REFERENCES `Artists` (`aid`)
            );


-- ----------------------------
-- Records of Track
-- ----------------------------
-- INSERT INTO `Track` VALUES (1, 'Teriyaki Chicken', '812 Grand St, Brooklyn, NY', 'Korean BBQ Chicken, Korean Fried Chicken ,Salad', 50);
-- INSERT INTO `Track` VALUES (2, 'Crab Club', '400 Jay Street, Brooklyn, NY', 'Crab, Lobster, Shrimp, Oyster', 30);

-- ----------------------------
-- Table structure for Playlist
-- ----------------------------
CREATE TABLE `Playlist` (
  `pid` INT NOT NULL AUTO_INCREMENT,
  `ptitle` VARCHAR(45) NOT NULL,
  `pdate` DATETIME NOT NULL,
  `uid` INT NOT NULL,
  PRIMARY KEY (`pid`),
  FOREIGN KEY (`uid`)
			REFERENCES `Users` (`uid`)
);

-- ----------------------------
-- Records of Playlist
-- ----------------------------

-- ----------------------------
-- Table structure for Album
-- ----------------------------
CREATE TABLE `Album` (
  `alid` INT NOT NULL AUTO_INCREMENT,
  `altitle` VARCHAR(45) NOT NULL,
  `aldate` DATE NOT NULL,
  `uid` INT NOT NULL,
  PRIMARY KEY (`alid`)
);


-- ----------------------------
-- Table structure for Like
-- ----------------------------
CREATE TABLE `Likes` (
  `uid` INT NOT NULL,
  `aid` INT NOT NULL,
  `ltimestamp` DATETIME NOT NULL,
  PRIMARY KEY (`uid`, `aid`),
  FOREIGN KEY (`uid`)
			REFERENCES `Users` (`uid`),
  FOREIGN KEY (`aid`)
			REFERENCES `Artists` (`aid`)
);

-- ----------------------------
-- Table structure for Rate
-- ----------------------------
CREATE TABLE `Rate` (
  `uid` INT NOT NULL,
  `tid` INT NOT NULL,
  `rtimestamp` DATETIME NOT NULL,
  `score` INT NOT NULL,
  PRIMARY KEY (`uid`, `tid`),
  FOREIGN KEY (`uid`)
			REFERENCES `Users` (`uid`),
  FOREIGN KEY (`tid`)
			REFERENCES `Track` (`tid`)
);

-- ----------------------------
-- Table structure for Play
-- ----------------------------
CREATE TABLE `Play` (
  `uid` INT NOT NULL,
  `tid` INT NOT NULL,
  `ptype` INT NOT NULL,
  `sourceid` INT,
  `ptimestamp` DATETIME NOT NULL,
  CHECK(ptype>=0 AND ptype<=2),
  PRIMARY KEY (`uid`, `tid`, `ptimestamp`),
  FOREIGN KEY (`uid`)
			REFERENCES `Users` (`uid`),
  FOREIGN KEY (`tid`)
			REFERENCES `Track` (`tid`)
);
-- ----------------------------
-- Table structure for PlaylistTrack
-- ----------------------------
CREATE TABLE `PlaylistTrack` (
  `pid` INT NOT NULL,
  `tid` INT NOT NULL,
  `porder` INT NOT NULL,
  PRIMARY KEY (`pid`, `tid`),
  FOREIGN KEY (`pid`)
			REFERENCES `Playlist` (`pid`),
  FOREIGN KEY (`tid`)
			REFERENCES `Track` (`tid`)
);

-- ----------------------------
-- Table structure for AlbumTrack
-- ----------------------------
CREATE TABLE `AlbumTrack` (
  `alid` INT NOT NULL,
  `tid` INT NOT NULL,
  `aorder` INT NOT NULL,
  PRIMARY KEY (`alid`, `tid`),
  FOREIGN KEY (`alid`)
			REFERENCES `Album` (`alid`),
  FOREIGN KEY (`tid`)
			REFERENCES `Track` (`tid`)
);

-- ----------------------------
-- Table structure for Follow
-- ----------------------------
CREATE TABLE `Follow` (
  `flwerid` INT NOT NULL,
  `flweeid` INT NOT NULL,
  `ftimestamp` DATETIME NOT NULL,
  PRIMARY KEY (`flwerid`, `flweeid`),
  FOREIGN KEY (`flwerid`)
			REFERENCES `Users` (`uid`),
  FOREIGN KEY (`flweeid`)
			REFERENCES `Users` (`uid`)
);

