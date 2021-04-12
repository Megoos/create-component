#!/usr/bin/env bash
TEMPLATE_NAME="templateName"
TEMPLATE_PATH="`dirname "$0"`/template"
NAME=$1
DIR_PATH="$PWD/$NAME"

mkdir $DIR_PATH

cp "$TEMPLATE_PATH/index.ts" "$DIR_PATH/index.ts"
cp "$TEMPLATE_PATH/$TEMPLATE_NAME.tsx" "$DIR_PATH/$NAME.tsx"
cp "$TEMPLATE_PATH/$TEMPLATE_NAME.test.ts" "$DIR_PATH/$NAME.test.ts"

sed -i '' "s/{{ componentName }}/${NAME}/g" $DIR_PATH/*.*