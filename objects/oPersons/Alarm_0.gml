var qtd_existing = instance_number(oResidues);
var inst_add = qtd_lixo - qtd_existing;

if in_pause exit;
if stopCreateEnemy exit;
if intervalWave exit;
if inst_add <= 0 exit;
if x > room_width or x < 0 exit;

instance_create_layer(x, y, "Instances", oResidues);