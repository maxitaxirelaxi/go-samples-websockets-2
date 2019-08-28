import React, { Component } from 'react';
import { w3cwebsocket as W3CWebSocket } from "websocket";

const client = new W3CWebSocket('ws://localhost:8844/ws');

class App extends Component {
  constructor() {
    super();
    this.state = {
      wsMessages: [],
      vehicles: [],
      vehicleMap: new Map(),
    };
  }

  componentDidMount() {
    client.onopen = () => {
      console.log('WebSocket Client Connected');
    };
    client.onmessage = (message) => {

      //TODO : figure out if this message is a valid event
      // going to assume it is
      this.state.wsMessages.push(message)

      //console.log(message);
      var obj = JSON.parse(message.data);
      console.info("obj.EventName = " + obj.EventName)
      console.info("obj.Data = " + obj.EventData)

      if (obj.EventName === "ev_update_vehicle") {
        console.info("EVENT: ev_update_vehicle")
        this.state.vehicles.push(obj.EventData)
      }

      //console.info("obj.EventName: " + obj.EventName)
      //console.info("wsMessages = " + this.state.wsMessages)
      //console.info("vehicles=" + this.state.vehicles)

      var veh = JSON.parse(obj.EventData).vehicle
      var status = JSON.parse(obj.EventData).status
      var lat = parseFloat(JSON.parse(obj.EventData).lat)
      var long =  parseFloat(JSON.parse(obj.EventData).long)
      console.info("veh#=" + veh)
      console.info("status#=" + status)
      console.info("lat#=" + lat)
      console.info("long#=" + long)
      console.info("vehicleMap=")
      console.info(this.state.vehicleMap)

      // figure out what changed
      console.info("---------------------------------------------------------")
      console.info("before: " + JSON.parse(this.state.vehicleMap.get(veh)))
      console.info(this.state.vehicleMap.get(veh))
      var statusOld = JSON.parse(this.state.vehicleMap.get(veh)).status
      var latOld = this.state.vehicleMap.get(lat).status
      var longOld = this.state.vehicleMap.get(long).status
      this.state.vehicleMap.set(veh, JSON.parse(obj.EventData))
      var statusNew = this.state.vehicleMap.get(veh).status
      var latNew = this.state.vehicleMap.get(lat).status
      var longNew = this.state.vehicleMap.get(long).status
      console.info("after: " + this.state.vehicleMap.get(veh))
      console.info(this.state.vehicleMap.get(veh))
      console.info("statusOld = " + statusOld + "  statusNew = " + statusNew)
      console.info("latOld=" + latOld + "   latNew=" + latNew)
      console.info("longOld=" + longOld + "  longNew=" + longNew)
      console.info("---------------------------------------------------------")
      
      // let's figure out what changed if anything here
      //  ie vehicle status or lat/lon position
      // is this vehicle in the map already?
      //vehicleEventDataMap.set("123", eventString);
      //this.state.vehicleMap.set(JSON.parse(obj.Data))
      
    };
  }
  
  render() {
    return (
      <div>
        Practical Intro To WebSockets.
      </div>
    );
  }
}

export default App;