SELECT 
    'ALTER TABLE [' +  OBJECT_SCHEMA_NAME(parent_object_id) +
    '].[' + OBJECT_NAME(parent_object_id) + 
    '] DROP CONSTRAINT [' + name + ']'
FROM sys.foreign_keys
WHERE referenced_object_id = object_id('Student')

drop table ProductCategory;
drop table ProductSubCategory;
drop table Product;
drop table Account;
drop table Addresses;
drop table Orders;
drop table OrderDetails;