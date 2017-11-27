INSERT INTO Users(uid, uname, uemail, ucity, ulogname, upw) values('1', 'NancyInQueens', 'niq@gmail.com', 'NY', 'nancyinqueens', '123456');

SELECT art.aid, art.name, COUNT(Track.tid)
FROM Artists as art, Track
WHERE art.aid = Track.aid
GROUP BY art.aid;

SELECT art.aid
FROM Artists as art, Track
WHERE Track.aid = art.aid
AND Track.tgenre='Jazz'
GROUP BY Track.aid
HAVING 2*SUM(Track.tid) >= (
    SELECT SUM(t.tid)
    FROM Artist as a, Track as t
    WHERE a.aid = t.aid AND a.aid = Track.aid
    GROUP BY t.aid
    );

SELECT pl.pid, pl.ptitle, pl.uid
FROM Playlist as pl, User
WHERE pl.uid = User.uid
AND User.uid IN (
    SELECT Follow.flwerid
    FROM Follow, User AS u
    WHERE u.uname = 'NancyInQueens'
    AND u.uid = Follow.flweeid
    );


SELECT a1.aid, a2.aid
FROM Artists AS a1, Artists AS a2, Like AS l1, Like AS l2
WHERE a1.aid = l1.aid AND a2.aid = l2.aid AND l1.uid = l2.uid
GROUP BY a1.aid, a2.aid
HAVING 2*SUM(l1.uid) >= (
    SELECT SUM(l3.uid)
    FROM Like AS l3
    WHERE a1.aid = l3.aid
    GROUP BY a1.aid
    ) + (
    SELECT SUM(l4.uid)
    FROM Like AS l4
    WHERE a2.aid = l4.aid
    GROUP BY a2.aid
    );
