-- 2014-04-06 21：32 添加相应字段 在product 表中--
ALTER TABLE fm_product ADD COLUMN volume DECIMAL(15);
ALTER TABLE fm_product ADD COLUMN volume_class_id INT(11);
-- 2014-04-06 22：55 添加相应字段 在product 表中--
ALTER TABLE fm_product ADD COLUMN 3d_object VARCHAR(255);