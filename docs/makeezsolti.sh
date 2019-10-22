rm -r _build
make html
python fixwebpage_for_github.py
mv _build/html/_static _build/html/static
mv _build/html/_sources _build/html/sources
mv _build/html/_images _build/html/images
cp -a _build/html/. /home/zsolt/Documents/ezsolti.github.io/tkgeom/
cd /home/zsolt/Documents/ezsolti.github.io/
git add tkgeom/
git commit -m "update tkgeom documentation"
git push origin master
cd /home/zsolt/Documents/TKworkshop/docs
