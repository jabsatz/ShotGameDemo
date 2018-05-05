a = clamp(a + (fade * 0.05), 0, 1);

if(a == 0 && fade == -1)
	instance_destroy();