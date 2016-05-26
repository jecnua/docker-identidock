#!/bin/bash
set -e

echo $ENV
exit
# if ["$ENV" = 'DEV']; then
#     echo "Running Development Server"
#     exec python "identidock.py"
# else
#   echo "Running production environment"
#   exec uwsgi --http 0.0.0.0:9090 --wsgi-file /app/identidock.py --callable app --stats 0.0.0.0:9191
# fi
