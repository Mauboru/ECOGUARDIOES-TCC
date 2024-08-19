event_inherited();

if dialog.count() == 1 and isShowingSpriteCutscene == false{
	fn_cutscene_sequence(seq_cutscene01);
	isShowingSpriteCutscene = true;
}
if dialog.count() == 0 oTrash.image_index = 3;
if dialog.count() == 0 oResidueCutscene.image_index = 0;