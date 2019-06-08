#!/bin/bash

if [ $# -eq 0 ];then
  sitename="https://unscrambler.github.io/unscramble"
else
  sitename=$1
fi
date=`date +%Y-%m-%d`
echo '<?xml version="1.0" encoding="UTF-8"?>'
echo '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">'

for i in `find docs/unscramble_* -print0 | xargs -0 -n1 basename`;
do echo "
 <url>
    <loc>$sitename/$i</loc>
    <lastmod>$date</lastmod>
    <changefreq>daily</changefreq>
    <priority>1.0</priority>
 </url>
"
done;

echo "</urlset>"
