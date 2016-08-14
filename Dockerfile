# It will be simple python3 out-of-the-box http server on heroku
from python:3

# Copy data to /opt/webapp
add ./data /opt/webapp

# Set it as workdir
WORKDIR /opt/webapp

# Start server
# Here heroku will set required $PORT value
cmd python -m http.server $PORT
