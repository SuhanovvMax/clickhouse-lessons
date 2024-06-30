create user suhanov_admin IDENTIFIED WITH sha256_password BY '123321';

GRANT ALL ON *.* TO suhanov_admin WITH GRANT OPTION;
