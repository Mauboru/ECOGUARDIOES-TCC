audio_group_load(music_group);
audio_group_load(sfx_group);

objects = ds_list_create();
ds_list_add(objects, oTruck);
ds_list_add(objects, oPersons);

destroyed = false;