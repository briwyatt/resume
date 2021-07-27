build: build-standard build-stackoverflow build-slick build-flat build-class

test: validate analyze

build-standard:
	hackmyresume BUILD resume.json TO out/standard/resume.all

build-stackoverflow:
	hackmyresume BUILD resume.json TO out/stackoverflow/resume.all -t node_modules/jsonresume-theme-stackoverflow

build-slick:
	hackmyresume BUILD resume.json TO out/slick/resume.all -t node_modules/jsonresume-theme-slick

build-flat:
	hackmyresume BUILD resume.json TO out/flat/resume.all -t node_modules/jsonresume-theme-flat

build-class:
	hackmyresume BUILD resume.json TO out/class/resume.all -t node_modules/jsonresume-theme-class

validate:
	hackmyresume VALIDATE resume.json

analyze:
	hackmyresume ANALYZE resume.json

clean:
	rm -rf out/
