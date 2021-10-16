CREATE TABLE accounts (
`id` INT NOT NULL auto_increment,
`name` varchar(50) NOT NULL,
`accountNumber` varchar(13) NOT NULL,
`balance` double NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE savingsAccounts(
    `id` INT NOT NULL auto_increment,
    `accountId` INT NOT NULL,
    `isChristmasAccount` INT NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    FOREIGN KEY (accountId) REFERENCES accounts(id)
);

CREATE TABLE currentAccounts(
    `id` INT NOT NULL auto_increment,
    `accountId` INT NOT NULL,
    `isMoneyMarket` INT NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    FOREIGN KEY (accountId) REFERENCES accounts(id)
);


INSERT INTO `accounts` (`id`, `name`, `accountNumber`, `balance`) VALUES (1, 'Jacques Dickens', '5516284', '4947117.44');
INSERT INTO `accounts` (`id`, `name`, `accountNumber`, `balance`) VALUES (2, 'Ryann Kilback', '4515580', '161492.05');
INSERT INTO `accounts` (`id`, `name`, `accountNumber`, `balance`) VALUES (3, 'Mr. Wendell Cartwright', '2011969', '0');
INSERT INTO `accounts` (`id`, `name`, `accountNumber`, `balance`) VALUES (4, 'Pierre Jacobs', '9251141', '52.49');
INSERT INTO `accounts` (`id`, `name`, `accountNumber`, `balance`) VALUES (5, 'Narciso Eichmann', '8588005', '192.01');
INSERT INTO `accounts` (`id`, `name`, `accountNumber`, `balance`) VALUES (6, 'Prof. Khalid Hand', '3362208', '255646.68');
INSERT INTO `accounts` (`id`, `name`, `accountNumber`, `balance`) VALUES (7, 'Alysson Hackett', '4406689', '25.32');
INSERT INTO `accounts` (`id`, `name`, `accountNumber`, `balance`) VALUES (8, 'Prof. Tyreek Schroeder', '9176880', '97206489.16');
INSERT INTO `accounts` (`id`, `name`, `accountNumber`, `balance`) VALUES (9, 'Sheila Mraz', '2470144', '68858.15');
INSERT INTO `accounts` (`id`, `name`, `accountNumber`, `balance`) VALUES (10, 'Miss Natalie Heaney', '6851054', '5');
INSERT INTO `accounts` (`id`, `name`, `accountNumber`, `balance`) VALUES (11, 'Jasen Labadie', '4888873', '3.53');
INSERT INTO `accounts` (`id`, `name`, `accountNumber`, `balance`) VALUES (12, 'Dora Herzog', '9348343', '441.06');
INSERT INTO `accounts` (`id`, `name`, `accountNumber`, `balance`) VALUES (13, 'Dr. Aron Raynor DVM', '3126699', '688.22');
INSERT INTO `accounts` (`id`, `name`, `accountNumber`, `balance`) VALUES (14, 'Mrs. Justine Tillman', '5079727', '420.93');
INSERT INTO `accounts` (`id`, `name`, `accountNumber`, `balance`) VALUES (15, 'Mr. Neal Baumbach', '3757348', '14294.67');
INSERT INTO `accounts` (`id`, `name`, `accountNumber`, `balance`) VALUES (16, 'Ms. Sadye Frami', '4736641', '95.94');
INSERT INTO `accounts` (`id`, `name`, `accountNumber`, `balance`) VALUES (17, 'Dr. Hortense Jast Sr.', '3403495', '29.07');
INSERT INTO `accounts` (`id`, `name`, `accountNumber`, `balance`) VALUES (18, 'Giovanny Doyle', '6388670', '2569.22');
INSERT INTO `accounts` (`id`, `name`, `accountNumber`, `balance`) VALUES (19, 'Mrs. Autumn Schneider III', '1201023', '14.49');
INSERT INTO `accounts` (`id`, `name`, `accountNumber`, `balance`) VALUES (20, 'Reggie Leuschke', '1601391', '0');


INSERT INTO `currentAccounts` (`id`, `accountId`, `isMoneyMarket`) VALUES (1, 15, 1);
INSERT INTO `currentAccounts` (`id`, `accountId`, `isMoneyMarket`) VALUES (2, 14, 1);
INSERT INTO `currentAccounts` (`id`, `accountId`, `isMoneyMarket`) VALUES (3, 17, 1);
INSERT INTO `currentAccounts` (`id`, `accountId`, `isMoneyMarket`) VALUES (4, 18, 1);
INSERT INTO `currentAccounts` (`id`, `accountId`, `isMoneyMarket`) VALUES (5, 19, 1);
INSERT INTO `currentAccounts` (`id`, `accountId`, `isMoneyMarket`) VALUES (6, 20, 0);
INSERT INTO `currentAccounts` (`id`, `accountId`, `isMoneyMarket`) VALUES (7, 16, 1);
INSERT INTO `currentAccounts` (`id`, `accountId`, `isMoneyMarket`) VALUES (8, 11, 1);
INSERT INTO `currentAccounts` (`id`, `accountId`, `isMoneyMarket`) VALUES (9, 12, 0);
INSERT INTO `currentAccounts` (`id`, `accountId`, `isMoneyMarket`) VALUES (10, 13, 1);

INSERT INTO `savingsAccounts` (`id`, `accountId`, `isChristmasAccount`) VALUES (1, 1, 0);
INSERT INTO `savingsAccounts` (`id`, `accountId`, `isChristmasAccount`) VALUES (2, 2, 0);
INSERT INTO `savingsAccounts` (`id`, `accountId`, `isChristmasAccount`) VALUES (3, 3, 0);
INSERT INTO `savingsAccounts` (`id`, `accountId`, `isChristmasAccount`) VALUES (4, 4, 0);
INSERT INTO `savingsAccounts` (`id`, `accountId`, `isChristmasAccount`) VALUES (5, 5, 0);
INSERT INTO `savingsAccounts` (`id`, `accountId`, `isChristmasAccount`) VALUES (6, 6, 0);
INSERT INTO `savingsAccounts` (`id`, `accountId`, `isChristmasAccount`) VALUES (7, 7, 0);
INSERT INTO `savingsAccounts` (`id`, `accountId`, `isChristmasAccount`) VALUES (8, 8, 1);
INSERT INTO `savingsAccounts` (`id`, `accountId`, `isChristmasAccount`) VALUES (9, 9, 1);
INSERT INTO `savingsAccounts` (`id`, `accountId`, `isChristmasAccount`) VALUES (10, 10, 1);

DELIMITER //
CREATE PROCEDURE GetAllSavingsAccount()
BEGIN
select accounts.name, accounts.accountNumber, accounts.balance from accounts
inner join savingsAccounts on savingsAccounts.accountId = accounts.id;
END//

DELIMITER ;

Call GetAllSavingsAccount;

DELIMITER //
CREATE PROCEDURE GetAllCurrentAccounts()
BEGIN
select accounts.name, accounts.accountNumber, accounts.balance from accounts
inner join currentAccounts on currentAccounts.accountId = accounts.id;
END//

DELIMITER ;

-- Call GetAllCurrentAccounts;