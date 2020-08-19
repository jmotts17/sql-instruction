/* Let's test the maintenance sql 
We should test CRUD in the order of:
- Select (Read)
- Insert (Create)
- Update (Update)
- Delete (Delete)
*/

select * from movie;

INSERT INTO movie values 
(21, 'Dummy Movie', 2020 , 'G', 'John Doe');

UPDATE movie
	SET title = 'Dummy Movie 2'
    WHERE id = 21;
    
DELETE FROM movie
WHERE id = 21;