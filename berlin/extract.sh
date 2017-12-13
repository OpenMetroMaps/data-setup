DIR=$(dirname $0)
source "$DIR/../paths.sh"

URL="http://download.geofabrik.de/europe/germany/brandenburg-latest.osm.pbf"
TMP="/tmp/omm"
FILENAME="brandenburg.osm.pbf"
BOUNDARY="$DIR/Berlin.extract.wkt"
EXTRACT="$DIR/berlin.pbf"
FILTERED="$DIR/berlin-filtered.pbf"

FULLPATH="$TMP/$FILENAME"

mkdir -p "$TMP"
if [ ! -f "$FULLPATH" ]; then
    wget -O "$FULLPATH" "$URL"
fi

"$OMM_CLI" osm-extract \
    --input-format pbf --output-format pbf \
    --input "$FULLPATH" --output "$EXTRACT" --boundary "$BOUNDARY"

"$OMM_CLI" osm-filter\
    --input-format pbf --output-format pbf \
    --input "$EXTRACT" --output "$FILTERED"
