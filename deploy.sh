#!/usr/bin/env bash
# Use this for local deployment
# ./deploy.sh --aws-profile dev
checkExitCode() {
    ret=$?
    if [ $1 -ne 0 ]; then
        exit 1;
    fi
}

echo "CURRENT DIRECTORY"
pwd

# Create package directory and install and move code to it
mkdir package

# Assuming the python code is in ./src, copy it to the package for deployment
cp -v -r ./src/* ./package/
pip3 install -r requirements.txt -t package/
checkExitCode $?

(cd package; zip -r ../package.zip *)
serverless deploy --stage "${STAGE_NAME}" $@
checkExitCode $?

rm -rf package
rm package.zip
