# $Id$
distrib:
	cd data && make
	rsync -av index.html ExpandSet.cpp /home/ckarney/web/orientation/
	rsync -av data/orient.tgz data/*.quat data/*.grid data/*.euler /home/ckarney/web/orientation/data/
	rsync -av --delete /home/ckarney/web/orientation/ petrel.petrel.org:web/orientation/
