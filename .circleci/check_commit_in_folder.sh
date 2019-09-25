set -e

echo "Folder to check: $1"

LATEST_COMMIT=$(git rev-parse HEAD)
FOLDER1_COMMIT=$(git log -1 --format=format:%H --full-diff Folder-1)
FOLDER2_COMMIT=$(git log -1 --format=format:%H --full-diff Folder-2)

echo "LATEST_COMMIT: "$LATEST_COMMIT
echo "FOLDER1_COMMIT: " $FOLDER1_COMMIT
echo "FOLDER2_COMMIT " $FOLDER2_COMMIT
