#!/bin/bash

# Jenkins automation expects tests in subfolders, but this project uses a makefile with appropriate
# targets in the root directory instead.
BASE_DIR="$(dirname "$0")/../.."

# Where our virtualenv will live
ENV=".env"

cd $BASE_DIR

# Create virtualenv and install the required packages if it isn't
# done already. This ensures that we can run the tests properly.
if [ ! -d $ENV ]; then
    virtualenv --no-site-packages $ENV
fi

. $ENV/bin/activate
pip install -r requirements.txt

# And finally...run them!
make test