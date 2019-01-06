draw_set_text_config(fa_left, fa_center, font_demo_20, c_black);

//ガイド
draw_rectFrame(5, 5, 250, 90, c_silver);
draw_set_color(c_black);
draw_text(10, 30, "[R] リトライ");
draw_text(10, 70, "[S] ステージ選択へ");


//現在のステージ数
draw_rectFrame(730, 4, 160, 40, c_silver);
draw_set_color(c_black);
draw_text(735, 24, "ステージ"+stage);


//このステージでの死亡数
draw_rectFrame(900, 4, 120, 40, c_silver);
draw_sprite(spr_stiky_death, 0, 920, 24);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text(975, 24, string(global.stage_death));