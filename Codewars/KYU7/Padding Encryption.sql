--https://www.codewars.com/kata/5943b797d8c9432eb7000066/sql
--SQL: Padding Encryption

select RPAD(md5, length(sha256), '1') md5,
       LPAD(sha1, length(sha256), '0') sha1,
       sha256
  from encryption

--Alternative solution
--  SELECT 
--  CONCAT(md5, REPEAT('1', (LENGTH(sha256) - LENGTH(md5)))) as md5,
--  CONCAT(REPEAT('0', (LENGTH(sha256) - LENGTH(sha1))), sha1) as sha1,
--  sha256
--FROM encryption