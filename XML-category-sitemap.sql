SELECT
'<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd" xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">'
UNION ALL
SELECT

CONCAT ('<url>
		<loc>http://www.webisteurl.pl/',flat.`url_key`,'.html</loc>
		<lastmod>',DATE_FORMAT(flat.`updated_at`, '%Y-%m-%d'),'</lastmod>
		<changefreq>weekly</changefreq>
		<priority>0.4</priority>
	</url>')

FROM
	`catalog_category_flat_store_1` AS flat

WHERE flat.`entity_id` > 2 and flat.`is_active` > 0 and flat.store_id = 1
GROUP BY
flat.parent_id
-- cp.`product_id`
-- pm.`entity_id`
-- LIMIT 105
UNION ALL
SELECT
'</urlset>'