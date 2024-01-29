-- Ekstrak data dari database Staging
insert into Dim_StatusOrder (IDStatus, StatusOrder, StatusOrderDesc)
select status_id, status_order, status_order_desc
from Staging.dbo.status_order