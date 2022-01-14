select posts.titulo, group_concat(nombre_etiquetas)
from posts
inner join post_etiquetas on posts.id_posts = post_etiquetas.post_id
inner join etiquetas on etiquetas.id_etiquetas = post_etiquetas.etiqueta_id -- union 3 tablas, post, post etiquetas, etiquetas
group by posts.id_posts
