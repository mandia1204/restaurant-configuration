DIST_PATH=../dist
SECURITY_PATH=../restaurant-security
FRONTEND_PATH=../restaurant-frontend-react
DASHBOARD_BACKEND_PATH=../restaurant-dashboard-backend
PROXY=../restaurant-proxy
WEB_SERVER=../restaurant-webserver

(cd $SECURITY_PATH ; npm run build)
cp -r $SECURITY_PATH/dist/* $DIST_PATH/security
(cd $DIST_PATH/security ; npm install --production)

(cd $FRONTEND_PATH ; npm run build)
cp -r $FRONTEND_PATH/dist/* $DIST_PATH/frontend

(cd $DASHBOARD_BACKEND_PATH ; dotnet publish src/restaurant-dashboard-backend.csproj -c Release -o ../dist)
cp -r $DASHBOARD_BACKEND_PATH/dist/* $DIST_PATH/backend

cp $PROXY/package.json $DIST_PATH/proxy
cp $PROXY/startServer.js $DIST_PATH/proxy
(cd $DIST_PATH/proxy ; npm install --production)

cp $WEB_SERVER/package.json $DIST_PATH/webserver
cp $WEB_SERVER/startServer.js $DIST_PATH/webserver
(cd $DIST_PATH/webserver ; npm install --production)

echo DONE!!!