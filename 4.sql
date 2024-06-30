create role readonly;
grant select on currently.* to readonly;
create user if not exists suhanov_reader default role readonly;


GRANT INSERT, SELECT, UPDATE, ALTER ON DATABASE.stage TO read_write_role;
create user if not exists suhanov_read_write default role read_write_role;

