INSERT INTO country (country_id,name) VALUES (0,'Russia');
INSERT INTO country (country_id,name) VALUES (1,'Switzerland');
INSERT INTO country (country_id,name) VALUES (2,'France');
INSERT INTO region(region_id,name,country_id) VALUES (0,'Moscow',0);
INSERT INTO region(region_id,name,country_id) VALUES (1,'Tatarstan',0);
INSERT INTO region(region_id,name,country_id) VALUES (2,'Swiss Alps',1);
INSERT INTO region(region_id,name,country_id) VALUES (3,'Provance',2);
INSERT INTO farm(farm_id,name,number_of_animals,region_id) VALUES (0,'FarmInMoscowReg1',150,0);
INSERT INTO farm(farm_id,name,number_of_animals,region_id) VALUES (1,'FarmInMoscowReg2',200,0);
INSERT INTO farm(farm_id,name,number_of_animals,region_id) VALUES (2,'FarmInTatarstan1',180,1);
INSERT INTO farm(farm_id,name,number_of_animals,region_id) VALUES (3,'FarmInTatarstan2',150,1);
INSERT INTO farm(farm_id,name,number_of_animals,region_id) VALUES (4,'FarmInSwissReg',190,2);
INSERT INTO farm(farm_id,name,number_of_animals,region_id) VALUES (5,'FarmInProvanceReg1',170,3);
INSERT INTO farm(farm_id,name,number_of_animals,region_id) VALUES (6,'FarmInProvanceReg2',170,3);
INSERT INTO animal(animal_id,kind_of_animal,yo,product_id) VALUES (0,'cow',4,1);
INSERT INTO animal(animal_id,kind_of_animal,yo,product_id) VALUES (1,'cow',7,1);
INSERT INTO animal(animal_id,kind_of_animal,yo,product_id) VALUES (2,'cow',2,1);
INSERT INTO animal(animal_id,kind_of_animal,yo,product_id) VALUES (3,'cow',4,1);
INSERT INTO animal(animal_id,kind_of_animal,yo,product_id) VALUES (4,'chicken',2,2);
INSERT INTO animal(animal_id,kind_of_animal,yo,product_id) VALUES (5,'chicken',3,2);
INSERT INTO animal(animal_id,kind_of_animal,yo,product_id) VALUES (6,'chicken',1,2);
INSERT INTO animal(animal_id,kind_of_animal,yo,product_id) VALUES (7,'chicken',1,2);