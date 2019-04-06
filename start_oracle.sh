#!/bin/bash
docker run -d -p 1521:1521 -p 5500:5500 -it --name Oracle12c --shm-size="8g" store/oracle/database-enterprise:12.2.0.1-slim
