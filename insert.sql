insert into band (band_id, name)
values(4, 'Shaya Zamora');

insert into style (style_id, name)
values(1, 'other');

insert into style (style_id, name)
values(2, 'Hip-Hop'), (3, 'Rock')

insert into album (album_id , name, release_years)
values(1, 'THE MIDDLE', '25.06.2021'), (2, 'The Search', '26.07.2019'), (3, 'Before the Garden 5', '09.06.2023');

insert into tracks (track_id, "name", duration, album_id)
values(1, 'The Search', 4.08, 2), (2, 'My Stress', 4.12, 2), (3, 'Yesterday Is Gone', 2.18, 3), (4, 'Top Ten', 2.21, 1), (5, 'When I Grow Up', 3.16, 2), (6, 'ROADRUNNER!', 1.58, 1);

insert into collection (collection_id, "name", release_years)
values(1, 'NF MIX', '12.05.2022'), (2, 'Hip-Hop MIX', '20.06.2023'), (3, 'Rock MIX', '02.06.2019'), (4, 'Other', '20.04.2024');

insert into collection_create (collection_id, track_id)
values(1, 1), (1, 2), (1, 5), (2, 1), (2, 2), (2, 4), (2, 5), (2, 6), (3, 1), (3, 2), (3, 5), (4, 3), (4, 4),(4, 6);

insert into feat (band_id, album_id)
values(1, 1),(2, 2),(3, 3);

insert into style_band (band_id, style_id)
values(1, 2),(2, 2),(2, 3),(3, 1);