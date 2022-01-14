select c.nombre_categoria, count(*) as cant_posts
from categorias as c
inner join posts as p on c.id_categorias = p.categoria_id
group by c.id_categorias 
order by cant_posts desc 
-------------------------------------------------------------------
select u.nickname, count(*) as cant_posts
from usuarios as u
inner join posts as p on u.id_usuarios = p.usuario_id
group by u.id_usuarios
order by cant_posts desc 
-------------------------------------------------------------------
select u.nickname, count(*) as cant_posts, group_concat(nombre_categoria)
from usuarios as u
inner join posts as p on u.id_usuarios = p.usuario_id
inner join categorias as c on c.id_categorias= p.categoria_id
group by u.id_usuarios
order by cant_posts desc 
------------------------------------------------------------------
select * 
from usuarios
left join posts on usuarios.id_usuarios= posts.usuario_id
where posts.usuario_id  is null
