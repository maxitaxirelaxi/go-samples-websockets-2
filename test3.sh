curl -H "Accept: application/json" -XPOST -d '{"eventName":"ev_update_vehicle","data":"{\"vehicle\":\"123\",\"status\":\"AVAIL\",\"lat\":\"-111.89\",\"long\":\"40.728\"}}"}' localhost:8844/event
sleep 1
curl -H "Accept: application/json" -XPOST -d '{"eventName":"ev_update_vehicle","data":"{\"vehicle\":\"123\",\"status\":\"AVAIL\",\"lat\":\"-111.79\",\"long\":\"40.728\"}"}' localhost:8844/event
sleep 1
curl -H "Accept: application/json" -XPOST -d '{"eventName":"ev_update_vehicle","data":"{\"vehicle\":\"123\",\"status\":\"LOAD\",\"lat\":\"-111.69\",\"long\":\"40.728\"}"}' localhost:8844/event
sleep 1
curl -H "Accept: application/json" -XPOST -d '{"eventName":"ev_update_vehicle","data":"{\"vehicle\":\"123\",\"status\":\"BREAK\",\"lat\":\"-111.59\",\"long\":\"40.728\"}"}' localhost:8844/event
sleep 1
curl -H "Accept: application/json" -XPOST -d '{"eventName":"ev_update_vehicle","data":"{\"vehicle\":\"123\",\"status\":\"OUTSVC\",\"lat\":\"-111.49\",\"long\":\"40.728\"}"}' localhost:8844/event
sleep 1
curl -H "Accept: application/json" -XPOST -d '{"eventName":"ev_update_vehicle","data":"{\"vehicle\":\"123\",\"status\":\"ENROUTE\",\"lat\":\"-111.39\",\"long\":\"40.728\"}"}' localhost:8844/event
sleep 1
