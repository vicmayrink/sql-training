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

clear:
	rm *.pdf

lesson-00:
	@$(call compile_pdf,"lesson-00")

lesson-01:
	@$(call compile_pdf,"lesson-01")

lesson-02:
	@$(call compile_pdf,"lesson-02")