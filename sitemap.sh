#!/bin/bash

date=`date +%Y-%m-%d`
echo "<?xml version="1.0" encoding="UTF-8"?>"
echo '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">'

for i in `ls docs/*.html|xargs basename`;
do echo "
 <url>
    <loc>$1/$i</loc>
    <lastmod>$date</lastmod>
    <changefreq>daily</changefreq>
    <priority>1.0</priority>
 </url>
"
done;

echo "</urlset>"
