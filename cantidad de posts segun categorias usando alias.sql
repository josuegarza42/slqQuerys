select c.nombre_categoria, count(*) as cant_posts
from categorias as c
inner join posts as p on c.id_categorias = p.categoria_id
group by c.id_categorias 
order by cant_posts desc 
