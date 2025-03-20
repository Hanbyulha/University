USE odbo;

CREATE TABLE IF NOT EXISTS members(
	id VARCHAR(20) PRIMARY KEY,
	passwd VARCHAR(20),
	email VARCHAR(50),
	signuptime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
	);
	
	
insert into members(id, passwd, email)
values('cskisa', '123456', 'cskisa@lime-view.com');

insert into members(id, passwd, email)
values('sbs123', '557788', 'sbs123@spacezone.kr');

insert into members(id, passwd, email)
values('space', '123456', 'aaa@bbb');

insert into members(id, passwd, email)
values('김태린', '888888', 'korea@spacezone.kr');