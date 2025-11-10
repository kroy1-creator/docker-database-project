INSERT INTO loginsign (ls_id, ls_t_id, ls_sub_id, user_name, username, password, email) VALUES
(1, 1, 3, 'Derp', 'derp123', 'sushiwushi11', 'derp25@umbc.edu'),
(2, 3, 2, 'Sophie', 'sophie456', 'pollens36', 'sophie21@umbc.edu'),
(3, 2, 1, 'Link', 'link789', 'triforce3', 'link33@umbc.edu');


INSERT INTO submitlog (sl_id, item_name, location, item_type, item_desc) VALUES
(1, 'credit card', 'Commons', 'Identification', 'Light blue card with name and number'),
(2, 'social security card', 'Commons', 'Visa credit card with bank logo', 'Used for conducting digital transactions.'),
(3, 'house keys', 'Commons', 'Keys with a green keychain', 'Access to entering a home.');


INSERT INTO searchdisplay (sd_id, sl_id_FK, ls_id_FK, keyword) VALUES
(1, 2, 1, 'credit card'),
(2, 1, 3, 'social security card'),
(3, 3, 2, 'house keys');

INSERT INTO sub (sub_id, service, cost) VALUES
(1, '3 Months Subscription Plan', 30),
(2, '6 Months Subscription Plan', 60),
(3, '1 Year Subscription Plan', 90);

INSERT INTO ticket (t_id, confirmation) VALUES
(1, 'Confirmed'),
(2, 'Pending'),
(3, 'Cancelled');