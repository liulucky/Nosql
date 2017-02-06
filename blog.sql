--博客菜单

create table blog_menu(
  id int unsigned not null primary key auto_increment,
  menu_name varchar(15) not null comment '菜单名',
  status tinyint unsigned not null default 1  comment '菜单状态,1启用，2禁用',
  menu_href varchar(150) not null default '#' comment '菜单路径',
  menu_weight int unsigned not null default 1 comment '菜单权重，决定菜单先后顺序',
  key (menu_name),
  key (menu_weight)
)engine=innodb default charset=utf8;

--插入测试数据
insert into blog_menu(menu_name,menu_href,menu_weight) values('首页','http://www.3maio.com',1);
insert into blog_menu(menu_name,menu_href,menu_weight) values('PHP','http://3maio.com/html/php/safe.html',2);
