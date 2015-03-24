create table snippets (
keyword text primary key,
message text not null default ''
);

$ \d+ snippets
                              Table "public.snippets"
 Column  | Type |         Modifiers         | Storage  | Stats target | Description
---------+------+---------------------------+----------+--------------+-------------
 keyword | text | not null                  | extended |              |
 message | text | not null default ''::text | extended |              |
Indexes:
    "snippets_pkey" PRIMARY KEY, btree (keyword)
Has OIDs: no

insert into snippets values ('insert', 'Add new rows to a table');
insert into snippets (message, keyword) values ('Add new rows to a table', 'insert');


select * from snippets;
select message from snippets;
select keyword, message from snippets where keyword='insert';

update snippets set keyword='insert into', message='Insert new rows into a table' where keyword='insert';

delete from snippets where keyword='insert into';

