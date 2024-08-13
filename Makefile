define compile_pdf
	docker run --rm --entrypoint sh -v "./common/:/common" -v "./lessons/$1/:/data" vicmayrink/latex /common/compile.sh $1
	mv ./lessons/$1/texfiles/$1.pdf ./$1.pdf
endef

define test
	echo $1
endef

docker-image:
	docker image build ./docker/ -t vicmayrink/latex:latest

all:
	@$(call compile_pdf,"lesson-00")
	@$(call compile_pdf,"lesson-01")
	@$(call compile_pdf,"lesson-02")
	@$(call compile_pdf,"lesson-03")

clear:
	rm *.pdf
	rm -rf ./lessons/lesson-00/texfiles
	rm -rf ./lessons/lesson-01/texfiles
	rm -rf ./lessons/lesson-02/texfiles
	rm -rf ./lessons/lesson-03/texfiles

lesson-00:
	@$(call compile_pdf,"lesson-00")

lesson-01:
	@$(call compile_pdf,"lesson-01")

lesson-02:
	@$(call compile_pdf,"lesson-02")

lesson-03:
	@$(call compile_pdf,"lesson-03")