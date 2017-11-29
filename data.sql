-- ----------------------------
-- Data for Users
-- ----------------------------
INSERT INTO Users(uid, uname, uemail, ucity, ulogname, upw) VALUES ('1', 'NancyInQueens', 'niq@gmail.com', 'NY', 'nancyinqueens', '123456');
INSERT INTO Users(uid, uname, uemail, ucity, ulogname, upw) VALUES ('2', 'Antonio Rod', 'aa@gmail.com', 'SD', 'antoniorod', '123456');
INSERT INTO Users(uid, uname, uemail, ucity, ulogname, upw) VALUES ('3', 'Jerry Huang', 'b@gmail.com', 'LA', 'jerryhuang', '123456');
INSERT INTO Users(uid, uname, uemail, ucity, ulogname, upw) VALUES ('4', 'Brown Snow', 'c@gmail.com', 'DC', 'brownsnow', '123');
INSERT INTO Users(uid, uname, uemail, ucity, ulogname, upw) VALUES ('5', 'Guru Singh', 'd@gmail.com', 'BOS', 'gurusingh','123');
-- ----------------------------
-- Data for Artist
-- ----------------------------
INSERT INTO Artist (aid, aname, adescription) VALUES ('1', 'Eason Chen', 'Super star in Asia');
INSERT INTO Artist (aid, aname, adescription) VALUES ('2', 'Mary J. Blige', 'defined a new era for R&B');
INSERT INTO Artist (aid, aname, adescription) VALUES ('3', 'Stevie Nicks', 'has provided the color and texture for songs ranging from smooth and mysterious Fleetwood ');
INSERT INTO Artist (aid, aname, adescription) VALUES ('4', 'Joe Cocker', 'He brought Ray Charles to the mix as an influence on rock & roll');
INSERT INTO Artist (aid, aname, adescription) VALUES ('5', 'B.B. King', 'King brought a new level of nuance to blues vocals, ');
INSERT INTO Artist (aid, aname, adescription) VALUES ('6', 'Patti LaBelle', 'She has inspired generations of soul singers');
INSERT INTO Artist (aid, aname, adescription) VALUES ('7', 'Karen Carpenter', 'she died of anorexia in 1983');
-- ----------------------------
-- Data for Track
-- ----------------------------
INSERT INTO Track (tid, ttitle, tduration, tgenre, turl, aid) VALUES ('1', 'the best moment', '226', 'pop', 'https://preview.s3.envato.com/files/145241575/preview.mp3?response-content-disposition=attachment%3Bfilename%3D12469552_the-best-moments-in-life_by_audioctane_preview.mp3&Expires=1512374760&Signature=YQO-2eppRZE3nx03DWegb3G1x~qlDhfaL5rgOm-sHUVd-z5U0XmtSM3sr4t72yoAWxE2BInGYWj1J1fLz53FZ6qS4gwRwzkGzsFEGAB7Gl74pbxCrcgGYlCY~S5gGIm9VgQ5RF9OKQmGz2RnV-sLdtxGD1uk4TuAK366xz0JIjdslLn8k5I2ugYP5IZOedKqaSqGqlD7aCQXmo07ql0WMT~9qDXbhPcsMjwxAiDo-D-wu8ManiuuOvhOfxu-e3ZsDVn8umwEaJRGk0wn5uuTbUAq3egJfzAfs30azs76MXoWK-SR2ArQ5iF0NdfzOkkPP0kykW~pRpd~6BDOek7zZw__&Key-Pair-Id=APKAIEEC7ZU2JC6FKENA', '1');
INSERT INTO Track (tid, ttitle, tduration, tgenre, turl, aid) VALUES ('2', 'the best moment', '205', 'pop', 'http://www.170mv.com/kw/other.web.ra01.sycdn.kuwo.cn/resource/n2/128/16/91/3161183637.mp3', '1');
INSERT INTO Track (tid, ttitle, tduration, tgenre, turl, aid) VALUES ('3', 'xixihaha', '205', 'freestyle', '', '2');
INSERT INTO Track (tid, ttitle, tduration, tgenre, turl, aid) VALUES ('4', 'xixihaha', '205', 'freestyle', '', '3');
INSERT INTO Track (tid, ttitle, tduration, tgenre, turl, aid) VALUES ('5', 'xixihaha', '205', 'freestyle', '', '4');
INSERT INTO Track (tid, ttitle, tduration, tgenre, turl, aid) VALUES ('6', 'xixihaha', '205', 'freestyle', '', '5');
INSERT INTO Track (tid, ttitle, tduration, tgenre, turl, aid) VALUES ('7', 'xixihaha', '205', 'freestyle', '', '6');
INSERT INTO Track (tid, ttitle, tduration, tgenre, turl, aid) VALUES ('8', 'xixihaha', '205', 'freestyle', '', '7');
INSERT INTO Track (tid, ttitle, tduration, tgenre, turl, aid) VALUES ('9', 'Better man', '205', 'Jazz', '', '3');
INSERT INTO Track (tid, ttitle, tduration, tgenre, turl, aid) VALUES ('10', 'Nature Boy', '223', 'Jazz', '', '4');
INSERT INTO Track (tid, ttitle, tduration, tgenre, turl, aid) VALUES ('11', 'Lover Man', '110', 'Jazz', '', '5');
-- ----------------------------
-- Data for Playlist
-- ----------------------------
INSERT INTO Playlist (pid, ptitle, pdate, uid) VALUES ('1', 'famous', '2017-03-11', '1');
INSERT INTO Playlist (pid, ptitle, pdate, uid) VALUES ('2', 'happy', '2017-11-11', '2');
-- ----------------------------
-- Data for Album
-- ----------------------------
INSERT INTO Album (pid, ptitle, pdate, uid) VALUES ('1', 'hope', '2017-03-11', '1');
INSERT INTO Album (pid, ptitle, pdate, uid) VALUES ('2', 'fun', '2017-03-11', '1');
-- ----------------------------
-- Data for Like
-- ----------------------------
INSERT INTO Like (uid, aid, ltimestamp) VALUES ('1', '1', '2017-11-11 11:11');
-- ----------------------------
-- Data for Follow
-- ----------------------------
INSERT INTO Follow (flwerid, flweeid, ftimestamp) VALUES ('1', '2', '2017-01-04 8:42');
-- ----------------------------
-- Data for Play
-- ----------------------------
INSERT INTO Play (uid, tid, ptype, ptimestamp) VALUES ('2', '1', 2, '2017-05-11 22:40');


-- ----------------------------
-- Data for PlaylistTrack
-- ----------------------------


-- ----------------------------
-- Data for AlbumTrack
-- ----------------------------



-- ----------------------------
-- Data for Rate
-- ----------------------------
INSERT INTO Rate(uid, tid, score, rtimestamp) VALUES('1', '1', '5', now());
