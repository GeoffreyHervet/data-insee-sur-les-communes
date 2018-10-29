#!/bin/sh

TMP_FILE=/tmp/data-insee-sur-les-communes.xls

wget -O $TMP_FILE 'https://www.data.gouv.fr/fr/datasets/r/05cc86c4-b499-40c9-84cc-fd24d92d4a45' \
    && ssconvert $TMP_FILE data-insee-sur-les-communes.csv \
    && git add data-insee-sur-les-communes.csv \
    && git commit -m 'Update dataset' \
    && git push -u orign
