
-- 管理員
create table t_user(
	id int(11) primary key not null,
	username varchar(255) not null,
	password varchar(255) not null
);
-- 手机
create table t_phone(
	p_id int(11) primary key auto_increment not null, -- 手机
	p_model varchar(255) not null, -- 手机型号
	p_brand varchar(255) not null, -- 手机品牌
	p_price int(11) not null, -- 手机价格
	p_color varchar(255) not null, -- 手机颜色
	p_size varchar(255) not null, -- 手机尺寸
	p_date date not null, -- 日期
	p_describe varchar(255) not null -- 手机描述
);

-- 銷售商
create table t_retailers(
	r_id int(11) primary key auto_increment not null, -- 銷售商的 id
	r_name varchar(255) not null, -- 銷售商的名称
	r_area varchar(255) not null, -- 銷售区域
	r_principal varchar(255) not null, -- 销售负责人
	r_phone varchar(11) not null, -- 电话
	r_Id_number varchar(18) not null, -- 身份证号码
	r_site varchar(255) not null, -- 地址
	r_postcode varchar(255) not null -- 邮编
	
);

-- 销售量
create table t_sells(
	s_deta date not null, -- 销售日期
	s_sellName varchar(255) not null,
	-- 销售商名称
	s_brand varchar(255) not null, -- 手机品牌
	s_model varchar(255) not null, -- 手机型号
	s_number int(11) not null, -- 销售量
);

