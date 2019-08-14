import React, { Component } from 'react';
import { w3cwebsocket as W3CWebSocket } from "websocket";

const client = new W3CWebSocket('ws://localhost:8844/ws');

class App extends Component {
  constructor() {
    super();
    this.state = {
      wsMessages: [],
      vehicles: []
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
      console.info("obj.Data = " + obj.Data)

      if (obj.EventName === "ev_update_vehicle") {
        console.info("EVENT: ev_update_vehicle")
        this.state.vehicles.push(obj.Data)
      }

      //console.info("obj.EventName: " + obj.EventName)
      //console.info("wsMessages = " + this.state.wsMessages)
      console.info("vehicles=" + this.state.vehicles)
      
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