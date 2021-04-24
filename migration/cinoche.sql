-- 1 - Informations d'un film : titre année, durée (au format HH:MM) et réalisateur
SELECT nom_film, annee_de_sortie, nom_real, SEC_To_TIME(duree*60)
FROM film f, realisateur r
WHERE r.id = f.id_real

-- 2 - Liste des films dont la durée excède 2h15 classés par durée (du plus long au plus court)
SELECT nom_film
FROM film
WHERE duree >135
ORDER BY duree DESC

-- 3 - Liste des films d'un réalisateur (en précisant l'année de sortie)
SELECT nom_film, annee_de_sortie
FROM realisateur r, film f
WHERE r.id = f.real_id
AND r.id = 1

-- 4 - Nombre de films par genre (classés dans l'ordre décroissant)
SELECT COUNT(film_id) AS nbfilms, nom_genre
FROM categorie c, genre g
WHERE c.genre_id = g.id
GROUP BY nom_genre
ORDER BY nbfilms DESC

-- 5 - Nombre de films par réalisateur (classés dans l'ordre décroissant)
SELECT COUNT(f.id) AS nbfilms, nom_real
FROM film f, realisateur r  
WHERE f.real_id = r.id
GROUP BY r.id
ORDER BY nbfilms DESC

-- 6 - Casting d'un film en particulier : nom prénom des acteurs et leur sexe
SELECT nom_act, prenom_act
FROM acteur a, joue j
WHERE a.id = j.act_id
AND j.film_id = 1

-- 7 - Films tournés par un acteur en particulier avec leur rôle et l'année de sortie (du plus récent au plus ancien)
SELECT nom_act, prenom_act, nom_film, annee_de_sortie, nom_role
FROM joue j, acteur a, role r, film f
WHERE j.film_id = f.id
AND j.act_id = a.id
AND j.role_id = r.id
AND a.id = 10
ORDER BY annee_de_sortie

-- 8 - Liste des personnes à la fois acteurs et réalisateurs


-- 9 - Liste des films qui ont moins de 5 ans (classés du plus récent au plus ancien)


-- 10 - Nombre d'hommes et de femmes parmi les acteurs


-- 11 - Liste des acteurs qui ont plus de 50 ou auront 50 ans cette année


-- 12 - Acteurs ayant joué dans 3 films ou plus

