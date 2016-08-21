

#!/bin/bash
gunicorn -w 4 -b 127.0.0.1:4000 /source/app/app:app
service nginx start