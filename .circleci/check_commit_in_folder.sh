set -e

echo "Folder to check: $1"

LATEST_COMMIT=$(git rev-parse HEAD)
FOLDER_COMMIT=$(git log -1 --format=format:%H --full-diff $1)

echo "LATEST_COMMIT: "$LATEST_COMMIT
echo "FOLDER_COMMIT: " $FOLDER_COMMIT

if ["$FOLDER_COMMIT" = "$LATEST_COMMIT"];
then
    return;
else
  false;
fi
