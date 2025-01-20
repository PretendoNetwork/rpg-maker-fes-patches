// jump to trampoline
.org setUrl + 0x34
	b setUrlTrampoline // b instead of bl is fine here because the
					   // original function uses b (it's at the end of the function so it's fine)
	
.org blankData
	setUrlTrampoline:
		ldr r0, =url
		b strncpy
	url:
	// https://rtk3dsf-lb01-1291588867.us-east-1.elb.amazonaws.com/api/
		.ascii "https://rpgmakerfes.pretendo.cc/api/", 0
		.pool