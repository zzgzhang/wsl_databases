use testdb;

CREATE TABLE IF NOT EXISTS `users`
(
`id` INT(11) AUTO_INCREMENT,
`name` VARCHAR(20) NOT NULL,
`email` VARCHAR(50) UNIQUE NOT NULL,
`created_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
`updated_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (`id`)
);

INSERT INTO `users` (`name`, `email`) VALUES ('admin', 'admin@example.com');
INSERT INTO `users` (`name`, `email`) VALUES ('testuser', 'testuser@example.com');


