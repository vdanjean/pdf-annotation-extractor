all:

check:
	pylint pdf_annotation_extractor
	mypy --strict pdf_annotation_extractor
