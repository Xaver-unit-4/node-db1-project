-- Database Queries

-- Find all customers with postal code 1010

-- Find the phone number for the supplier with the id 11

-- List first 10 orders placed, sorted descending by the order date

-- Find all customers that live in London, Madrid, or Brazil

-- Add a customer record for "The Shire", the contact name is "Bilbo Baggins" the address is -"1 Hobbit-Hole" in "Bag End", postal code "111" and the country is "Middle Earth"

-- Update Bilbo Baggins record so that the postal code changes to "11122"

-- (Stretch) Find a query to discover how many different cities are stored in the Customers table. Repeats should not be double counted

-- (Stretch) Find all suppliers who have names longer than 20 characters. You can use `length(SupplierName)` to get the length of the name

Find all customers with postal code 1010. Returns 3 records.
  SELECT * FROM Customers WHERE postalcode = "1010";
- Find the phone number for the supplier with the id 11. Should be (010) 9984510.
  SELECT * FROM suppliers WHERE supplierid = 11;
- List first 10 orders placed, sorted descending by the order date. The order with date 1997-02-12 should be at the top.
  SELECT * FROM Orders ORDER BY orderdate DESC LIMIT 10
- Find all customers that live in London, Madrid, or Brazil. Returns 18 records.
  select * from customers where city IN("London", "Madrid") OR country IN("Brazil")
- Add a customer record for _"The Shire"_, the contact name is _"Bilbo Baggins"_ the address is _"1 Hobbit-Hole"_ in _"Bag End"_, postal code _"111"_ and the country is _"Middle Earth"_.
  INSERT INTO customers (CustomerName, ContactName, Address, City, PostalCode, Country) VALUES ("The Shire", "Bilbo Baggins", "1 Hobbit-Hole", "Bag End", "111", "Middle Earth");
- Update _Bilbo Baggins_ record so that the postal code changes to _"11122"_.
  UPDATE customers SET PostalCode = "11122" WHERE CustomerID = 93;