# READ ME

### 메모
로그인 하고 들어가면 당연히 principal 값이 있으니까 굳이 Integer userId는 적지 말것
img는 사진업로드 테스트 코드!!
.
## 4. 테이블 생성

```sql
USE blogdb;


create table user(--유저(사용자)--
     user_id int primary KEY auto_increment,
     username VARCHAR(20) NOT NULL UNIQUE,
	 password varchar(20) NOT NULL,
     nick_name varchar(20) NOT NULL,
     email VARCHAR(50) NOT NULL UNIQUE,
     created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

create table category(
	 category_id INT primary KEY auto_increment,
     category_title VARCHAR(50) NOT NULL, 
	 user_id INT NOT null,
     created_at TIMESTAMP NOT NULL DEFAULT current_timestamp
);

create table post(--포스팅--
	 post_id INT primary KEY auto_increment,
	 post_title varchar(20) NOT null,
     post_content longtext NOT null,
     post_thumnail longtext,
     category_id INT NOT NULL, 
	 user_id INT NOT null,
	 updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE current_timestamp,
     created_at TIMESTAMP NOT NULL DEFAULT current_timestamp
);

create table love(--좋아요--
	 love_id INT primary KEY auto_increment,
	 post_id INT NOT null,
	 user_id INT NOT null,
	 updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE current_timestamp,
     created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
     UNIQUE uk_loves (user_id,post_id)
);
create table subscribe(--구독--
	 subscribe_id INT primary KEY auto_increment,
	 user_id INT NOT NULL, -- 구독하는 유저 -- 
	 opponent_id INT NOT NULL,-- 구독당하는 유저 --  
     created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
     );

create table comment(--댓글--
	 comment_id int primary KEY,
	 user_id int NOT NULL,
	 post_id INT NOT NULL,
	 comment_content longtext NOT null,
	 updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE current_timestamp,
	 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
	

--테스트 코드--
create table img( 
	 id INT primary KEY AUTO_INCREMENT,
	 title VARCHAR(100) NOT null,
	 imgName longtext NOT null,
	 content longtext NOT null,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);




```
.
</br>
</br>
## 5. 더미데이터
</br>

```sql
INSERT INTO user(username, password,email,nick_name,created_at) 
VALUES('ssar','1234','ssar@nate.com','ssar',NOW());
INSERT INTO user(username, password,email,nick_name,created_at) 
VALUES('cos','1234','cos@nate.com','cos',NOW());
INSERT INTO user(username, password,email,nick_name,created_at) 
VALUES('hong','1234','hong@nate.com','hong',NOW());

INSERT INTO category(category_title, user_id, created_at) 
VALUES('1번 타이틀 더미 데이터',1,NOW());
INSERT INTO category(category_title, user_id, created_at) 
VALUES('2번 타이틀 더미 데이터',1,NOW());
INSERT INTO category(category_title, user_id, created_at) 
VALUES('3번 타이틀 더미 데이터',1,NOW());


```
.
</br>
</br>
## 6. 결과
![메인](https://user-images.githubusercontent.com/108706248/222045274-5ca0bdc9-aca5-49e5-a63a-681965df1957.png)
![로그인](https://user-images.githubusercontent.com/108706248/222045286-92369390-b724-41d5-89be-03bc93d66bae.png)
![구독목록](https://user-images.githubusercontent.com/108706248/222045292-58437ee0-55e0-4166-8031-53f99853ec93.png)
![내블로그](https://user-images.githubusercontent.com/108706248/222045296-f8c58a5f-3ec6-4f0e-b6bb-e1646cde5bd7.png)
![계정관리 비밀번호 확인](https://user-images.githubusercontent.com/108706248/222045299-8e75ab17-afe8-4b46-8695-bb14c170960a.png)
![정보수정](https://user-images.githubusercontent.com/108706248/222045302-f08952fe-0c55-48e4-bab4-e48e31f36c2e.png)
![카테고리등록](https://user-images.githubusercontent.com/108706248/222045306-22b16ed0-2f4c-40b3-8c76-3f9179718c0e.png)
![블로그회원가입](https://user-images.githubusercontent.com/108706248/222045307-a85bf116-5149-44d6-af3f-9ecd37adafc6.png)
![포스팅 작성](https://user-images.githubusercontent.com/108706248/222045309-6a1db310-2ce2-4dbe-96b3-b85c858de121.png)
![블로그 상세보기 댓글, 좋아요](https://user-images.githubusercontent.com/108706248/222045312-2f1fa160-e1c1-48d1-ac1a-2ff45da30d14.png)
![포스팅 주인이 보는 상세보기](https://user-images.githubusercontent.com/108706248/222045313-0f19ee13-ba18-40d1-b030-067c5fb78fc1.png)
![내블로그 수정](https://user-images.githubusercontent.com/108706248/222045333-42f9c66f-ac43-450f-aadc-5b09bc299a31.png)
![블로그 상세보기](https://user-images.githubusercontent.com/108706248/222045346-0f3f0953-79a8-4477-86e8-967742d274be.png)
![댓글쓴 사람이 수정 삭제](https://user-images.githubusercontent.com/108706248/222045359-e8ff9bcc-9cac-4a6c-8a2b-7bd61e7a0653.png)
![댓글수정](https://user-images.githubusercontent.com/108706248/222045361-ea121009-aaf3-42a8-b751-a5abc9f2c4fb.png)
