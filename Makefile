.PHONY: all festival festivalplayer clean

all: festival festivalplayer

# these are all for the USA version, no testing done on EUR/JPN and they very likely use different code.bin files

festival:
	@mkdir -p build out/00040000001BD500
	@armips src/patchfestival.s
	
	# make ips patch for RPG Maker Festival
	@flips -c codefestival.bin build/patchfestival.bin out/00040000001BD500/code.ips

festivalplayer:
	@mkdir -p build out/00040000001BD400
	@armips src/patchfestivalplayer.s
	
	# make ips patch for RPG Maker Festival Player
	@flips -c codefestivalplayer.bin build/patchfestivalplayer.bin out/00040000001BD400/code.ips

clean:
	@echo clean ...
	@rm -rf build out