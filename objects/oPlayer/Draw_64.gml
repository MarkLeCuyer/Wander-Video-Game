for (var i = 0; i < health_max; i += 1) {
	draw_sprite(sHeartEmpty, 0, 10 + (i * 32), 10)
}
for (var i = 0; i < health; i += 1) {
	draw_sprite(sHeart, 0, 10 + (i * 32), 10)
}