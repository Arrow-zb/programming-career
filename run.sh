#!/bin/bash
ENV_NOW="."
if [ $ENV_SYSTEM != '' ]
then
  if [ $ENV_SYSTEM == 'prod' ]
  then
    ENV_NOW="."
  else
    ENV_NOW=".${ENV_SYSTEM}."
  fi
fi

# mac 下
# sed -i '' "s/.ENV_NOW./$ENV_NOW/g" ./src/api.js
# 其他linux下
sed -i "s/.ENV_NOW./$ENV_NOW/g" ./src/api.js

npm i
npm run build