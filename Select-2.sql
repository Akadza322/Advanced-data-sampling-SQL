-- ЗАДАНИЕ 2
-- 1) Название и продолжительность самого длительного трека.
select "name", duration from tracks
where duration = (select max(duration) from tracks);

-- 2) Название треков, продолжительность которых не менее 3,5 минут.
select "name", duration from tracks
where duration >= '00:03:50';

-- 3) Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select "name", release_years from collection
where release_years >= '01.01.2018' and release_years <= '31.12.2020';

-- 4) Исполнители, чьё имя состоит из одного слова.
select "name" from band  
where "name" not like '% %';

-- 5) Название треков, которые содержат слово «мой» или «my».
select "name" from tracks 
where "name" ~* '(^|[^\w])my([^\w]|$)'

-- ЗАДАНИЕ 3
-- 1) Количество исполнителей в каждом жанре.
select s."name" , count(sb.band_id) from style_band sb
join "style" s on sb.style_id = s.style_id
group by s."name";

-- 2) Количество треков, вошедших в альбомы 2019–2020 годов.
select count(t.name) from tracks t, album a 
where t.album_id = a.album_id and release_years >= '01.01.2019' and release_years <= '31.12.2020'

-- 3) Средняя продолжительность треков по каждому альбому.
select a."name", avg(t.duration) from album a, tracks t 
where t.album_id = a.album_id 
group by a."name"

-- 4) Все исполнители, которые не выпустили альбомы в 2020 году.
select b."name" from band b
where b."name" not in (
	select b2."name" from band b2
	join feat f on b2.band_id = f.band_id
	join album a on a.album_id = f.album_id
	where extract (year from a.release_years) = 2020
);

-- 5) Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select c."name" from collection c
join collection_create cc on c.collection_id = cc.collection_id
join tracks t on cc.track_id = t.track_id 
join album a on t.album_id = a.album_id
join feat f on a.album_id = f.album_id 
join band b on f.band_id = b.band_id
where b."name" like '%NF%' 
group by c."name" 