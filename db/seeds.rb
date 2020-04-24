Product.delete_all
# . . .

for i in 0..5

Product.create!(title: 'POKEMON PLAMO COLLECTION NO.45 SELECT SERIES GENGAR ' + (i+1).to_s,
description:
%{<p>
<strong>This is an injection-plastic kit of a science-fiction/anime item.</strong>
</p>
<p>
The popular ghost type Pokemon Gengar is now available in Bandai's Pokemon Plamo Select Series! In addition to touch gate and snap fit technology, the number of stickers have been greatly reduced, and assembly is easy! Gengar comes with movable joints for posing and different facial and mouth parts. Catch this Pokemon for your collection today!
</p>
<p>
    <strong>[Set Contents]</strong>
</p>
<ul>
    <li>Face parts x 2</li>
    <li>Tongue parts x 2</li>
    <li>Foil seal x 2</li>
</ul>
},
image_url: 'https://www.hlj.com/media/catalog/product/cache/image/700x700/e9c3970ab036de70892d86c6d221abfe/b/a/bans60441_0.jpg',
price: 422.42)
# . . .

end