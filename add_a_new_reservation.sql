use www;
INSERT INTO `guests` (`guest_id`,`first_name`,`last_name`,`exp_code`,`age`,`weight`,`swimmer`,`mobile_phone`)
VALUES (NULL,'Lilly','Ludsen','3',25,120,'Yes',NULL);
INSERT INTO `reservation` (`trip_number`,`guest_id`) VALUES (562, (SELECT LAST_INSERT_ID()));

