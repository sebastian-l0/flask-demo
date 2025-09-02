#!/bin/bash

# 设置环境变量
export FLASK_APP=app.py
export FLASK_ENV=production

echo "Starting Flask application..."
# 启动应用，使用生产服务器配置
exec gunicorn -w 4 -b 0.0.0.0:5000 app:app
