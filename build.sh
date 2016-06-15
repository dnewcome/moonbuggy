if ! `hash openscad 2>/dev/null` 
then
	if [ -e "/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD" ]
	then
		echo "pointing to OpenSCAD installed under /Applications"
		openscad=/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD
	fi
else
	echo "openscad cannot be found"
fi

if [ ! -e  build ] 
then
	mkdir build
fi

for i in *.scad; do
	$openscad -o ${i%.*}.dxf $i
done

mv *.dxf build/
