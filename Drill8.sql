SELECT * FROM Person.PersonPhone
SELECT * FROM Person.Person
SELECT * FROM Person.Address



CREATE PROCEDURE usp_GetContactInfoByZipCodeWithQuantity
@Zipcode VARCHAR(20),
@Quantity INT

AS

BEGIN

	SELECT TOP(@Quantity)FirstName, LastName, PersonPhone.PhoneNumber, Address.AddressLine1
	FROM Person.Person
	INNER JOIN Person.PersonPhone ON Person.PersonPhone.BusinessEntityID = Person.Person.BusinessEntityID
	INNER JOIN Person.BusinessEntity ON Person.BusinessEntity.BusinessEntityID = Person.Person.BusinessEntityID
	INNER JOIN Person.BusinessEntityAddress ON Person.BusinessEntityAddress.BusinessEntityID = Person.BusinessEntity.BusinessEntityID
	INNER JOIN Person.Address ON Person.BusinessEntityAddress.AddressID = Person.Address.AddressID 
	WHERE Address.PostalCode = @Zipcode

END

usp_GetContactInfoByZipCodeWithQuantity '98011', 10

