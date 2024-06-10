insert into band (band_id, "name")
values(1, 'NF'), (2, 'Santos Santana'), (3, 'Chri$tian Gate$'), (4, '2Scratch');

insert into album (album_id, "name", release_years)
values(1, 'The Search', '26.07.2019'), (2, 'Birth of Shamir', '19.06.2020'), 
(3, 'Why Do i Hear Breathing', '15.04.2023'), (4, 'Escape Plan', '02.05.2021');

insert into "style" (style_id, "name")
values(1, 'Hip-Hop'), (2, 'Rock'), (3, 'Trap'), (4, 'Other');

insert into tracks (track_id, "name", duration, album_id)
values(1, 'The Search', '00:04:08', 1), (2, 'Hate Myself', '00:04:20', 1), (3, 'My Stress', '00:04:12', 1), (4, 'No Excuses', '00:03:21', 1);

insert into tracks (track_id, "name", duration, album_id)
values(5, 'BLOOD', '00:02:24', 2), (6, 'R-34', '00:02:17', 2), (7, 'RUSSIAN RIDER', '00:01:36', 2), (8, 'FULLMOON', '00:02:38', 2);

insert into tracks (track_id, "name", duration, album_id)
values(9, 'Thing For Ya', '00:04:24', 3), (10, 'Why Do I Hear Breathing?', '00:03:17', 3),
(11, 'Dangerous State of Mind', '00:03:36', 3), (12, 'BREATHE', '00:03:38', 3);

insert into tracks (track_id, "name", duration, album_id)
values(13, 'Strobing Lights', '00:02:28', 4), (14, 'ADHD.', '00:02:42', 4), (15, 'I Will Go', '00:03:16', 4), (16, 'Show Me', '00:02:59', 4);

insert into feat (band_id, album_id)
values(1, 1), (2, 2), (3, 3), (4, 4);

insert into collection (collection_id, "name", release_years)
values(1, 'Hip-Hop mix', '20.05.2019'), (2, 'Rock mix', '20.07.2020'), (3, 'Collection of the 19-20 Years', '29.12.2020'), 
(4, 'Collection of the day','19.06.2023');

insert into style_band (band_id, style_id)
values(1, 1), (1, 2), (2, 3), (2, 4), (3, 2), (3, 4), (4, 1);

insert into collection_create (collection_id, track_id)
values(1, 1), (1, 2), (1, 3), (1, 4), 
(2, 1), (2, 3), (2, 9), (2, 10), (2, 11),
(3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6), (3, 7), (3, 8),
(4, 1), (4, 4), (4, 8), (4, 16);