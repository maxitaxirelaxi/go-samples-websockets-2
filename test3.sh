curl -H "Accept: application/json" -XPOST -d '{"eventName":"ev_update_vehicle","data":"{\"vehicle\":\"123\",\"status\":\"AVAIL\"}"}' localhost:8844/event
sleep 1
curl -H "Accept: application/json" -XPOST -d '{"eventName":"ev_update_vehicle","data":"{\"vehicle\":\"123\",\"status\":\"LOAD\"}"}' localhost:8844/event
sleep 1
curl -H "Accept: application/json" -XPOST -d '{"eventName":"ev_update_vehicle","data":"{\"vehicle\":\"123\",\"status\":\"BREAK\"}"}' localhost:8844/event
sleep 1
curl -H "Accept: application/json" -XPOST -d '{"eventName":"ev_update_vehicle","data":"{\"vehicle\":\"123\",\"status\":\"OUTSVC\"}"}' localhost:8844/event
sleep 1
curl -H "Accept: application/json" -XPOST -d '{"eventName":"ev_update_vehicle","data":"{\"vehicle\":\"123\",\"status\":\"ENROUTE\"}"}' localhost:8844/event
sleep 1
#curl -H "Accept: application/json" -XPOST -d '{"eventName":"ev_update_vehicle","data":"{\"vehicle\":\"123\",\"Location\":\"ENROUTE\"}"}' localhost:8844/event
#sleep 1