GS_VERSION=2.15.2
WAR_URL='https://liquidtelecom.dl.sourceforge.net/project/geoserver/GeoServer/'${GS_VERSION}'/geoserver-'${GS_VERSION}'-war.zip'
PLUGIN_GDAL='https://liquidtelecom.dl.sourceforge.net/project/geoserver/GeoServer/'${GS_VERSION}'/extensions/geoserver-'${GS_VERSION}'-gdal-plugin.zip'
PLUGIN_VECTOR='https://liquidtelecom.dl.sourceforge.net/project/geoserver/GeoServer/'${GS_VERSION}'/extensions/geoserver-'${GS_VERSION}'-vectortiles-plugin.zip'

apt-get update -y
apt-get -y install zip unzip wget

# Geoserver War
cd /
wget $WAR_URL
unzip geoserver-*
unzip geoserver.war -d gs
mv /web.xml gs/WEB-INF/web.xml
cd /gs/WEB-INF/lib
wget $PLUGIN_GDAL
wget $PLUGIN_VECTOR
unzip -o "*.zip"
rm -rf *.zip
cd /gs
zip -r ../geoserver.war .

# Naksha War
cd /
git clone https://github.com/strandls/naksha
cd /naksha
./gradlew war

