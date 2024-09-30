var qtd_existing = instance_number(oResidues);
var inst_add = qtd_lixo - qtd_existing;

if in_pause exit;
if stopCreateEnemy exit;
if intervalWave exit;
if instance_number(oResidues) > inst_add exit;

instance_create_layer(x, y, "Instances", oResidues);