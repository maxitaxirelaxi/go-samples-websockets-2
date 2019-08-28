curl -H "Accept: application/json" -XPOST -d '{"eventName":"ev_update_vehicle","eventData":"{\"vehicle\":\"123\",\"status\":\"AVAIL\",\"lat\":\"40.728\",\"long\":\"-111.89\"}"}' localhost:8844/event
sleep 1
curl -H "Accept: application/json" -XPOST -d '{"eventName":"ev_update_vehicle","eventData":"{\"vehicle\":\"123\",\"status\":\"AVAIL\",\"lat\":\"40.728\",\"long\":\"-111.79\"}"}' localhost:8844/event
sleep 1
curl -H "Accept: application/json" -XPOST -d '{"eventName":"ev_update_vehicle","eventData":"{\"vehicle\":\"123\",\"status\":\"LOAD\",\"lat\":\"40.728\",\"long\":\"-111.69\"}"}' localhost:8844/event
sleep 1
curl -H "Accept: application/json" -XPOST -d '{"eventName":"ev_update_vehicle","eventData":"{\"vehicle\":\"123\",\"status\":\"BREAK\",\"lat\":\"40.728\",\"long\":\"-111.59\"}"}' localhost:8844/event
sleep 1
curl -H "Accept: application/json" -XPOST -d '{"eventName":"ev_update_vehicle","eventData":"{\"vehicle\":\"123\",\"status\":\"OUTSVC\",\"lat\":\"40.728\",\"long\":\"-111.49\"}"}' localhost:8844/event
sleep 1
curl -H "Accept: application/json" -XPOST -d '{"eventName":"ev_update_vehicle","eventData":"{\"vehicle\":\"123\",\"status\":\"ENROUTE\",\"lat\":\"40.728\",\"long\":\"-111.39\"}"}' localhost:8844/event
sleep 1
