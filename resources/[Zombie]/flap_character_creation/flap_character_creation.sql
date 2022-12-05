ALTER TABLE `users`
    ADD COLUMN `skin` LONGTEXT NULL DEFAULT NULL,
	ADD COLUMN `firstname` VARCHAR(50) NULL DEFAULT '',
	ADD COLUMN `lastname` VARCHAR(50) NULL DEFAULT '',
	ADD COLUMN `dateofbirth` VARCHAR(25) NULL DEFAULT '',
	ADD COLUMN `sex` VARCHAR(10) NULL DEFAULT ''
;

CREATE TABLE `user`(
    `identifier` VARCHAR(100) PRIMARY KEY,
	`firstname` VARCHAR(50) NULL DEFAULT '',
	`lastname` VARCHAR(50) NULL DEFAULT '',
	`dateofbirth` VARCHAR(25) NULL DEFAULT '',
	`sex` VARCHAR(10) NULL DEFAULT ''
);