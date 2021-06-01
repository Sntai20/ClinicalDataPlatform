/* 1. Equipment due for service this month with service provider’s contact information  */

select e.equipment_id, equipment_type, equipment_manufacturer, equipment_model,
p.service_provider_id, service_provider_phone_number, service_provider_email, service_due_date
from equipment e join service_history s on e.equipment_id = s.equipment_id
join service_provider p on s.service_provider_id = p.service_provider_id
where service_due_date between '2021-05-01' and '2021-08-31';

/* 2. competency due date  */
select t.technician_id, technician_last_name, technician_first_name,
		c.competency_id, c.compentency_due_date
from technician t join technician_has_competency h on t.technician_id = h.technician_id
join competency c on h.competency_id = c.competency_id
Where c.compentency_due_date between '2021-05-01' and '2021-08-31';


/* 3. view all element of clinical test*/
select * from clinical_test
where clinical_test_id = '1044';

/* 4. Verify that technician was competent on a test when they performed it */
select c.clinical_test_id, t.technician_id, technician_last_name, technician_first_name,
competency_id, technician_has_competency_date
from technician t join technician_has_competency h on t.technician_id = h.technician_id
join clinical_test c on c.technician_id = t.technician_id
where c.clinical_test_id = '1044';

/* 5. Verify equipment history  */
select s.equipment_id, equipment_purchase_date, equipment_service_interval, service_date, service_type, service_provider_id
from equipment e join service_history s on e.equipment_id = s.equipment_id
join clinical_test c on c.equipment_id = e.equipment_id
where c.clinical_test_id = '1044';

/* 6. budget */
select round(sum(equipment_price), 2) as "Total equipment purchases in 2020 : "
from equipment where equipment_purchase_date between '2020-01-01' and '2021-12-31';

/* 7. Purchase history from 2020-2021 */
select equipment_id, equipment_type, equipment_serial_number, equipment_manufacturer,
equipment_price, equipment_purchase_date from equipment where equipment_purchase_date between
'2020-01-01' and '2021-12-31';

/* 8. view all tests performed on certain patient */
select patient_last_name, patient_first_name, patient_initial, patient_DOB,
physician_last_name, physician_first_name, ph.physician_id, test_type
from patient p join physician ph on p.physician_id = ph.physician_id
join clinical_test t on p.patient_id = t.patient_id
where p.patient_id = '21169';

/* 9. view all technician competent on certain test */
select competency_id, h.technician_id, technician_first_name, technician_last_name
from technician t join technician_has_competency h on t.technician_id = h.technician_id
where competency_id = 'Urinalysis';

/* 10. Inventory */
select m.material_id, material_description, material_manufacturer,
sum(clinical_tests_uses_materials_quantity_used) as "total quantity used" from
materials m join clinical_test_uses_materials c on m.material_id = c.material_id
group by m.material_id;

/* 11 Stored procedure */
mysql > delimiter //
create procedure upd_eq_service (in eq_id varchar(45), in serv_date datetime,
	in provider_id varchar(45), in serv_type varchar(45), in serv_due datetime)
begin
	insert into service_history(equipment_id, service_date, service_provider_id, service_type, service_due_date)
    values (eq_id, serv_date, provider_id, serv_type, serv_due);
end
mysql> delimiter ;

call upd_eq_service('FC001', '2021-06-05', 'Beckman Coulter', 'preventative maintenance', '2022-06-05');

select * from service_history where equipment_id = 'FC001';

