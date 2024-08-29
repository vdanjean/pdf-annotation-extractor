# pdf-annotation-extractor
A simple python script to manage (extract, strip, insert) annotations in PDF files


# Table of Contents

1.  [Installation](#org8e49854)
2.  [Usage](#org205e6ba)


<a id="org8e49854"></a>

# Installation

Install the `python3-pypdf` Debian package, which is a pure-Python
library (it should thus be very to install whichever your OS) to
manipulate PDF files. Then copy the  `pdf_annotation_extractor`
script, in a directory of your `$PATH`.


<a id="org205e6ba"></a>

# Usage

If you have already annotated a PDF document (e.g., `test.pdf`), you may extract your annotations (e.g., into `annotations.json`) as follows:

    pdf_annotation_extractor extract test.pdf annotations.json
    ls -la annotations.json

    -rw-r--r-- 1 alegrand alegrand 227348 Aug 29 14:00 annotations.json

If you haven't kept the original PDF file, your annotated PDF file may
be cleaned up from your annotations as follows:

    pdf_annotation_extractor strip test.pdf test_stripped.pdf

Finally, your annotations may be reinserted as follows:

    pdf_annotation_extractor insert --annotations=annotations.json test_stripped.pdf test_reannotated.pdf

As you may realize, the stripping operation may slightly inflate the original pdf document for some reason. This is why, although it remains reasonable, it is generally better to keep the original (un-annotated) pdf document.

    ls -la annotations.json test*pdf

    -rw-r--r-- 1 alegrand alegrand  227348 Aug 29 14:00 annotations.json
    -rw-r--r-- 1 alegrand alegrand 5441114 Aug 15 23:10 test.pdf
    -rw-r--r-- 1 alegrand alegrand 5905901 Aug 29 14:00 test_reannotated.pdf
    -rw-r--r-- 1 alegrand alegrand 5707289 Aug 29 14:00 test_stripped.pdf

