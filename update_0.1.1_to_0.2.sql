# updates from versions 0.1 and 0.1.1 to version 0.2

ALTER TABLE `experiments`
	DROP KEY `name`,
	ADD COLUMN `parent_id` int(11), 
	ADD FOREIGN KEY `fk_exp_parent` (`parent_id`) 
		REFERENCES `experiments` (`id`) 
		ON DELETE CASCADE ON UPDATE CASCADE,
	ADD UNIQUE KEY `uniq_experiment_name` (`name`,`parent_id`);


# changes this version:
# * multivariate experiments are simply "parent" experiments with no treatments.