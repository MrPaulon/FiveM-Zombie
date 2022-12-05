CREATE TABLE IF NOT EXISTS `disc_ammo` (
    id varchar(100) PRIMARY KEY,
    owner longtext NOT NULL,
    hash longtext NOT NULL,
    count numeric(1) DEFAULT 0 NOT NULL
);


INSERT INTO items (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('disc_ammo_pistol', 'Pistol Ammo', 1, 0, 1);
INSERT INTO items (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('disc_ammo_pistol_large', 'Pistol Ammo Large', 1, 0, 1);
INSERT INTO items (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('disc_ammo_rifle', 'Rifle Ammo', 1, 0, 1);
INSERT INTO items (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('disc_ammo_rifle_large', 'Rifle Ammo Large', 1, 0, 1);
INSERT INTO items (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('disc_ammo_shotgun', 'Shotgun Shells', 1, 0, 1);
INSERT INTO items (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('disc_ammo_shotgun_large', 'Shotgun Shells Large', 1, 0, 1);
INSERT INTO items (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('disc_ammo_smg', 'SMG Ammo', 1, 0, 1);
INSERT INTO items (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('disc_ammo_smg_large', 'SMG Ammo Large', 1, 0, 1);
INSERT INTO items (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('disc_ammo_snp', 'Sniper Ammo', 1, 0, 1);
INSERT INTO items (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('disc_ammo_snp_large', 'Sniper Ammo Large', 1, 0, 1);