-- Lists all bands with glam rock as theirr main style, ranked by their longevity.
SELECT band_name, (IFNULL(split, '2020') - formed) AS lifespan
	FROM metal_bands
	WHERE FIND_IN_SET('Glam rock', IFNULL(STYLE, "")) > 0
	ORDER BY lifespan DESC;
