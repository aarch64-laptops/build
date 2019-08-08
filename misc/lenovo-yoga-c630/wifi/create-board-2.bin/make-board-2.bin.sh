#!/bin/bash

if [ \! -d qca-swiss-army-knife ]; then
        git clone https://github.com/qca/qca-swiss-army-knife.git
        exit 0
fi

JSON="bdf/board-2.json"

iter=0
echo "[" > "${JSON}"
for file in bdf/bdwlan.*; do
 [[ $file == *.txt ]] && continue

 iter=$((iter+1))
 [ $iter -ne 1 ] && echo "  }," >> "${JSON}"

 echo "  {" >> "${JSON}"
 echo "          \"data\": \"$file\"," >> "${JSON}"
 if [[ $file == */bdwlan.bin ]]; then
  file_ext="0"
 else
  file_ext="$(printf '%x\n' "$(basename "${file}" | sed -E 's:^.*\.b?([0-9a-f]*)$:0x\1:')")"
 fi
 echo "          \"names\": [\"bus=snoc,qmi-board-id=${file_ext}\"]" >> "${JSON}"
done

echo "  }" >> "${JSON}"
echo "]" >> "${JSON}"

python2 qca-swiss-army-knife/tools/scripts/ath10k/ath10k-bdencoder -c "${JSON}" -o board-2.bin
