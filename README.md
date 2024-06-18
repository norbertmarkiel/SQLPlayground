# SQLPlayground

## Joins

- (INNER) JOIN: Returns records that have matching values in both tables
- LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
- RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
- FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table
- LATERAL JOIN - Subqueries appearing in `FROM` can be preceded by the key word `LATERAL`. This allows them to reference columns provided by preceding `FROM` items. (Without `LATERAL`, each subquery is evaluated independently and so cannot cross-reference any other `FROM` item


## WITH 
- The clause is used for defining a temporary relation such that the output of this temporary relation is available and is used by the query that is associated with the WITH clause.
- Queries that have an associated WITH clause can also be written using nested sub-queries but doing so add more complexity to read/debug the SQL query.
- WITH clause is not supported by all database system.
- The name assigned to the sub-query is treated as though it was an inline view or table
- The SQL WITH clause was introduced by Oracle in the Oracle 9i release 2 database.


## Other

### Statements

### DISTINCT 
The `SELECT DISTINCT` statement is used to return only distinct (different) values.
```sql
SELECT DISTINCT Country FROM Customers;
```
### Functions
#### REPEAT()
- Repeat word e.g. REPEAT(name, 3) AS name
```sql
SELECT REPEAT("SQL Tutorial", 3);
```
#### REVERSE()
- Reverse(characteristics) AS characteristics
```sql 
SELECT REVERSE('SQL Tutorial');
```

#### COALESCE
Returns the first non-null value in a list.
```sql
SELECT COALESCE(NULL, 1, 2, 3);
--result: 1
```

#### LPAD()
The LPAD() function left-pads a string with another string, to a certain length.
LPAD(_string_, _length_, _lpad_string_)

```sql
SELECT LPAD("InputString", 10, "A");
```

#### RPAD()
The RPAD() function right-pads a string with another string, to a certain length.
RPAD(_string_, _length_, _rpad_string_)

```sql
SELECT RPAD("InputString", 10, "A");
```

### Expressions
#### CASE
```sql
SELECT OrderID, Quantity,  
CASE  
    WHEN Quantity > 30 THEN 'The quantity is greater than 30'  
    WHEN Quantity = 30 THEN 'The quantity is 30'  
    ELSE 'The quantity is under 30'  
END AS QuantityText  
FROM OrderDetails;
```