         R   Q       ��������"�DX�X9�2�pr���x�            ufor file in *.yml; do
  f=${file%.*}
  node p.js $f > ../syntax/yats/$f.vim
done
