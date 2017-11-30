-- ----------------------------
-- Data for PlaylistTrack
-- ----------------------------
INSERT INTO PlaylistTrack(pid, tid, porder) VALUES('1','1','1');
INSERT INTO PlaylistTrack(pid, tid, porder) VALUES('1','3','2');
INSERT INTO PlaylistTrack(pid, tid, porder) VALUES('1','5','3');
INSERT INTO PlaylistTrack(pid, tid, porder) VALUES('1','11','4');
INSERT INTO PlaylistTrack(pid, tid, porder) VALUES('1','8','5');
INSERT INTO PlaylistTrack(pid, tid, porder) VALUES('1','10','6');
INSERT INTO PlaylistTrack(pid, tid, porder) VALUES('1','2','7');
INSERT INTO PlaylistTrack(pid, tid, porder) VALUES('2','11','2');
INSERT INTO PlaylistTrack(pid, tid, porder) VALUES('2','7','3');
INSERT INTO PlaylistTrack(pid, tid, porder) VALUES('2','6','4');
INSERT INTO PlaylistTrack(pid, tid, porder) VALUES('2','4','5');
INSERT INTO PlaylistTrack(pid, tid, porder) VALUES('2','2','6');
INSERT INTO PlaylistTrack(pid, tid, porder) VALUES('2','1','7');
INSERT INTO PlaylistTrack(pid, tid, porder) VALUES('2','10','1');

-- ----------------------------
-- Data for AlbumTrack
-- ----------------------------
INSERT INTO AlbumTrack(alid, tid, aorder) VALUES('1','1','1');
INSERT INTO AlbumTrack(alid, tid, aorder) VALUES('1','3','2');
INSERT INTO AlbumTrack(alid, tid, aorder) VALUES('1','7','3');
INSERT INTO AlbumTrack(alid, tid, aorder) VALUES('1','11','4');
INSERT INTO AlbumTrack(alid, tid, aorder) VALUES('1','10','5');
INSERT INTO AlbumTrack(alid, tid, aorder) VALUES('2','2','1');
INSERT INTO AlbumTrack(alid, tid, aorder) VALUES('2','4','2');
INSERT INTO AlbumTrack(alid, tid, aorder) VALUES('2','8','3');
INSERT INTO AlbumTrack(alid, tid, aorder) VALUES('2','6','4');
INSERT INTO AlbumTrack(alid, tid, aorder) VALUES('2','5','5');

-- ----------------------------
-- Data for Rate
-- ----------------------------
INSERT INTO Rate(uid, tid, score, rtimestamp) VALUES('1', '2', '3', now());
INSERT INTO Rate(uid, tid, score, rtimestamp) VALUES('1', '3', '2', now());
INSERT INTO Rate(uid, tid, score, rtimestamp) VALUES('1', '4', '1', now());
INSERT INTO Rate(uid, tid, score, rtimestamp) VALUES('2', '1', '5', now());
INSERT INTO Rate(uid, tid, score, rtimestamp) VALUES('2', '2', '4', now());
INSERT INTO Rate(uid, tid, score, rtimestamp) VALUES('2', '6', '1', now());
INSERT INTO Rate(uid, tid, score, rtimestamp) VALUES('2', '7', '3', now());
INSERT INTO Rate(uid, tid, score, rtimestamp) VALUES('3', '1', '3', now());
INSERT INTO Rate(uid, tid, score, rtimestamp) VALUES('3', '2', '5', now());

-- ----------------------------
-- Data for Like
-- ----------------------------
INSERT INTO Likes (uid, aid, ltimestamp) VALUES ('1', '1', '2017-11-11 11:11');
INSERT INTO Likes (uid, aid, ltimestamp) VALUES ('1', '2', '2017-11-11 11:11');
INSERT INTO Likes (uid, aid, ltimestamp) VALUES ('1', '3', '2017-11-11 11:11');
INSERT INTO Likes (uid, aid, ltimestamp) VALUES ('2', '1', '2017-11-11 11:11');
INSERT INTO Likes (uid, aid, ltimestamp) VALUES ('2', '2', '2017-11-11 11:11');
INSERT INTO Likes (uid, aid, ltimestamp) VALUES ('3', '1', '2017-11-11 11:11');
INSERT INTO Likes (uid, aid, ltimestamp) VALUES ('4', '1', '2017-11-11 11:11');
INSERT INTO Likes (uid, aid, ltimestamp) VALUES ('5', '1', '2017-11-11 11:11');
-- ----------------------------
-- Data for Follow
-- ----------------------------
INSERT INTO Follow (flwerid, flweeid, ftimestamp) VALUES ('1', '2', '2017-01-04 8:42');
INSERT INTO Follow (flwerid, flweeid, ftimestamp) VALUES ('2', '1', '2017-01-04 8:42');
INSERT INTO Follow (flwerid, flweeid, ftimestamp) VALUES ('1', '3', '2017-01-04 8:42');
INSERT INTO Follow (flwerid, flweeid, ftimestamp) VALUES ('3', '1', '2017-01-04 8:42');
INSERT INTO Follow (flwerid, flweeid, ftimestamp) VALUES ('3', '2', '2017-01-04 8:42');
INSERT INTO Follow (flwerid, flweeid, ftimestamp) VALUES ('2', '3', '2017-01-04 8:42');
INSERT INTO Follow (flwerid, flweeid, ftimestamp) VALUES ('1', '4', '2017-01-04 8:42');
INSERT INTO Follow (flwerid, flweeid, ftimestamp) VALUES ('2', '4', '2017-01-04 8:42');
INSERT INTO Follow (flwerid, flweeid, ftimestamp) VALUES ('1', '5', '2017-01-04 8:42');

-- ----------------------------
-- Data for Play
-- ----------------------------
-- ----------------------------
-- Data for Play
-- ----------------------------
INSERT INTO Play (uid, tid, ptype, ptimestamp) VALUES ('2', '1', 2, '2017-05-11 22:40');
INSERT INTO Play (uid, tid, ptype,ptimestamp) VALUES ('1', '1', 2, '2017-05-11 22:40');
INSERT INTO Play (uid, tid, ptype, sourceid,ptimestamp) VALUES ('1', '2', 1, '1','2017-05-11 22:40');
INSERT INTO Play (uid, tid, ptype, ptimestamp) VALUES ('2', '2', 2, '2017-05-11 22:40');
INSERT INTO Play (uid, tid, ptype, ptimestamp) VALUES ('2', '3', 2, '2017-05-11 22:40');
INSERT INTO Play (uid, tid, ptype, ptimestamp) VALUES ('2', '4', 2, '2017-05-11 22:40');
INSERT INTO Play (uid, tid, ptype,sourceid, ptimestamp) VALUES ('2', '5', 0, '2', '2017-05-11 22:40');
INSERT INTO Play (uid, tid, ptype, ptimestamp) VALUES ('2', '6', 2, '2017-05-11 22:40');
INSERT INTO Play (uid, tid, ptype,sourceid, ptimestamp) VALUES ('1', '3', 1, '1','2017-05-11 22:40');
INSERT INTO Play (uid, tid, ptype, ptimestamp) VALUES ('1', '4', 2, '2017-05-11 22:40');
INSERT INTO Play (uid, tid, ptype,sourceid, ptimestamp) VALUES ('1', '5', 1,'1', '2017-05-11 22:40');
INSERT INTO Play (uid, tid, ptype, ptimestamp) VALUES ('3', '1', 2, '2017-05-11 22:40');
INSERT INTO Play (uid, tid, ptype,sourceid, ptimestamp) VALUES ('4', '1', 1, '2','2017-05-11 22:40');
INSERT INTO Play (uid, tid, ptype, ptimestamp) VALUES ('5', '1', 2, '2017-05-11 22:40');


