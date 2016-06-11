#!/bin/bash

#reference:
#https://buffer.github.io/thug/doc/build.html

installLibraries() {
	installPython
	installBoost
	installPyVeight
	installLibemu
	installMongo
	installGraphviz
	installRabbitMQ
	installSsdeep
#	installThug
	installBeautifulSoup4
	installHtml5lib
	installJsbeautifier
	installPylibemu
	installPEfile
	installYara
	installYaraPython
        installLxml
	installChardet
	installPySocks
	installCssutils
	installZopeInterface
	installPyparsing
	installPygraphviz
	installPythonMagic
	installRarfile
	installNetworkX
	installPyMongo
	installAndroguard
	installPythonSsdeep
}

installUtilities() {
	echo "Installing Git"
	sudo apt-get install git
	echo "Installing easy_install"
	sudo apt-get install python-setuptools
	echo "Installing pip\n"
	sudo easy_install pip
}

installPython() {
	echo "Installing Python 2.7"
	sudo apt-get install software-properties-common
	sudo add-apt-repository ppa:fkrull/deadsnakes
	sudo apt-get update
	sudo apt-get install python2.7
}

installBoost() {
	echo "Installing Boost"
        sudo apt-get install libboost-all-dev
}

installPyVeight() {
	echo "Installing Google V8/PyV8"
	cd ~/
	sudo git clone https://github.com/buffer/pyv8.git
	cd pyv8
	sudo apt-get install build-essential autoconf libtool pkg-config python-opengl python-imaging python-pyrex python-pyside.qtopengl idle-python2.7 qt4-dev-tools qt4-designer libqtgui4 libqtcore4 libqt4-xml libqt4-test libqt4-script libqt4-network libqt4-dbus python-qt4 python-qt4-gl libgle3 python-dev
	sudo easy_install greenlet
	sudo easy_install gevent
	python setup.py build
	sudo python setup.py install
}

installLibemu() {
	echo "Installing Libemu"
	cd ~/
	git clone https://github.com/buffer/libemu.git
	cd libemu
	autoreconf -v -i
	./configure --prefix=/opt/libemu
	sudo make install
}

installMongo() {
	echo -n "Install MongoDB?(y/n): "
	read response
	if [ "$response" = "y" ]; then
		echo "Installing MongoDB & PyMongo..."
		sudo apt-get install mongodb
	fi
}

installGraphviz() {
	echo "Installing Graphviz"
	sudo apt-get install graphviz graphviz-dev
}

installRabbitMQ() {
	echo -n "Install RabbitMQ?(y/n): "
	read response
	if [ "$response" = "y" ]; then
		echo "Installing RabbitMQ & pika..."
		sudo apt-get install rabbitmq-server
		sudo pip install pika
	fi
}

installSsdeep() {
	echo -n "Install Ssdeep?(y/n): "
        read response
        if [ "$response" = "y" ]; then
                echo "Installing Ssdeep..."
                sudo apt-get install ssdeep
        fi
}

installBeautifulSoup4() {
        echo "Installing BeautifulSoup4"
        sudo pip install beautifulsoup4
}

installHtml5lib() {
	echo "Installing Html5lib"
	sudo pip install html5lib
}

installJsbeautifier() {
	echo "Installing Jsbeautifier"
	sudo pip install jsbeautifier
}

installPylibemu() {
	echo "Installing Pylibemu"
	sudo pip install pylibemu
}

installPEfile() {
	echo "Installing PEfile"
	sudo pip install pefile
}

installYara() {
	echo "Installing Yara"
	sudo apt-get install yara
}

installYaraPython() {
	echo "Installing Yara-Python"
	git clone --recursive https://github.com/plusvic/yara-python
	cd yara-python
	python setup.py build
	sudo python setup.py install
}

installLxml() {
        echo "Installing Lxml"
        sudo apt-get install libxml2-dev libxslt1-dev
        sudo pip install lxml
}

installChardet() {
	echo "Installing Chardet"
	sudo pip install chardet
}

installPySocks() {
	echo "Installing PySocks"
	sudo pip install PySocks
}

installCssutils() {
	echo "Installing Cssutils"
	sudo pip install cssutils
}

installZopeInterface() {
	echo "Installing Zope.interface"
	sudo pip install zope.interface
}

installPyparsing() {
	echo "Installing Pyparsing"
	sudo pip install pyparsing
}

installPygraphviz() {
	echo "Installing Pygraphviz"
	cd ~/
	git clone https://github.com/pygraphviz/pygraphviz.git
	cd pygraphviz/
	sudo python setup.py install
}

installPythonMagic() {
	echo "Installing Python-Magic"
	sudo pip install python-magic
}

installRarfile() {
	echo "Installing Rarfile"
	sudo pip install rarfile
}

installNetworkX() {
	echo -n "Install NetworkX?(y/n): "
        read response
        if [ "$response" = "y" ]; then
                echo "Installing NetworkX..."
                sudo pip install networkx
        fi
}

installPyMongo() {
	echo -n "Install PyMongo?(y/n): "
        read response
        if [ "$response" = "y" ]; then
                echo "Installing PyMongo..."
                sudo pip install pymongo
        fi
}

installAndroguard() {
	echo -n "Install Androguard?(y/n): "
        read response
        if [ "$response" = "y" ]; then
                echo "Installing Androguard..."
                sudo pip install androguard
        fi
}

installPythonSsdeep() {
	echo -n "Install Python-Ssdeep?(y/n): "
        read response
        if [ "$response" = "y" ]; then
                echo "Installing Python-Ssdeep..."
		sudo apt-get install libffi-dev libfuzzy-dev
                sudo pip install ssdeep
        fi
}

installThug() {
        echo "Installing Thug"
        cd ~/
        git clone https://github.com/buffer/thug.git
        cd thug/src
        pip install -r requirements.txt
}

echo "Built for Ubuntu 14.04 LTS"
#installLibraries
