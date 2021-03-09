use flipped;

-- 如果存在则先删除
drop table if exists adminInfo;

-- 后台管理员信息表
create table if not exists adminInfo(
	aid int primary key auto_increment, -- 管理员编号,自增
	aname varchar(100) not null unique, -- 管理员账号
	pwd varchar(100) not null, -- 管理员密码
	tel varchar(15) unique, -- 手机号码
	ismaster boolean not null -- 站长识别
)ENGINE=InnoDB default charset=utf8 collate=utf8_bin;

-- 提供初始管理员账号
insert into adminInfo values(0, 'Pudding', 'ztz99123', '18975009827', '1');


-- 公司表
create table if not exists companyInfo(
  comId int primary key auto_increment, -- 公司编号，自增
  comName varchar(100) not null unique, -- 公司名称
  logo varchar(500), -- 公司logo
  intro varchar(400), -- 简介
  descr text, -- 描述
  tradeId int, -- 公司行业
  addr varchar(100), -- 公司地址
  comScale varchar(100), -- 公司规模
)

-- 公司在招岗位表
create table if not exists comJobs(
 comId int, -- 公司编号
 jobId int, -- 岗位编号
 jobNums int, -- 招聘人数
 MinSalary int, -- 最低月薪
 MaxSalary int, -- 最高月薪
)

-- 职位:行业表
create table if not exists jobs_trade(
  tradeId int primary key auto_increment, -- 职位:行业编号
  tradeName varchar(100) -- 职位-行业名称
)

-- 职业:行业-细分表
create table if not exists jobs_trade_classify(
  classifyId int primary key auto_increment, -- 职位:行业-细分编号
  tradeId int, -- 职位:行业编号
  classifyName varchar(100) -- 职位:行业-细分名称
)

-- 职业:行业-细分-岗位表
create table if not exists jobs_trade_classify_job(
  jobId int primary key auto_increment, -- 职位:行业-细分-岗位编号
  classifyId int, -- 职位:行业-细分编号
  jobName varchar(100) -- 岗位名称
)


-- 求职者信息表
create table if not exists menberInfo(
	mno int primary key auto_increment, -- 用户编号，自增
	uname varchar(100) not null unique, -- 账号
	realName varchar(100), -- 真实姓名
	pwd varchar(100) not null, -- 密码
	tel varchar(15) not null unique, -- 手机号码
	email varchar(100) not null unique, -- 邮箱
	photo varchar(100), -- 头像
	regDate datetime, -- 注册日期
	status int
)ENGINE=InnoDB default charset=utf8 collate=utf8_bin;

-- 修改自增列的起始值
alter table menberInfo auto_increment=1001;

-- 企业人员信息表