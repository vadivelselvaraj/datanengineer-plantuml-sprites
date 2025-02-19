
build: clean prepare
	./create_sprites.sh -p ./sprites dataengineer

prepare:
	mogrify -resize 64x64 -background white -alpha remove -alpha off ./sprites/*.png

clean:
	find ./sprites -name "*.puml" -type f -delete