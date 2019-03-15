create schema if not exists iuhcoder_contest collate utf8_unicode_ci;

use iuhcoder_contest;

create table if not exists user_profile
(
	uid int auto_increment primary key,
	username varchar(200) not null,
	password varchar(300) null,
	full_name varchar(500) charset utf8 null,
	level int null,
	status int null,
	constraint uid_UNIQUE
		unique (uid)
)
charset=utf8;



create table if not exists submission
(
	id int auto_increment primary key,
	problem_id varchar(45) null,
	problem_name varchar(45) null,
	score varchar(45) null,
	status varchar(45) null,
	source_code text null,
	uid int null,
	constraint fk_submission_user
		foreign key (uid) references user_profile (uid)
)
charset=utf8;


INSERT INTO iuhcoder_contest.user_profile (uid, username, password, full_name, level, status) VALUES (1, 'iuh_master', 'username', 'Trần Như Thế', 5, 1);
INSERT INTO iuhcoder_contest.user_profile (uid, username, password, full_name, level, status) VALUES (2, 'tester', 'noname', 'Vũ Thanh Hải', 2, 1);
INSERT INTO iuhcoder_contest.user_profile (uid, username, password, full_name, level, status) VALUES (3, 'developer', 'onlyme', 'Nguyễn Duy Tiên', 3, 0);
INSERT INTO iuhcoder_contest.user_profile (uid, username, password, full_name, level, status) VALUES (4, 'devops', 'oooppp', 'Kibana El', 4, 1);

INSERT INTO iuhcoder_contest.submission (id, problem_id, problem_name, score, status, source_code, uid) VALUES (1, '1', 'Easy', '100', '1', '#include <iostream>

using namespace std;

int main(){
    cout>>"Hello world";

}', 1);
INSERT INTO iuhcoder_contest.submission (id, problem_id, problem_name, score, status, source_code, uid) VALUES (2, '1', 'Easy', '50', '1', '#include <iostream>

using namespace std;

int main(){
    cout>>"Hello world";

}', 2);
INSERT INTO iuhcoder_contest.submission (id, problem_id, problem_name, score, status, source_code, uid) VALUES (3, '2', 'WTF', '200', '1', '#include <iostream>

using namespace std;

int main(){
    cout>>"Hello Chicken";

}', 3);

