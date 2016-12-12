'use strict';

const net = require('net');
const state = require('./state');
const codes = require('./codes');

module.exports = {
  init
};

const connectedClients = [];

function init(cb) {

  const server = net.createServer((socket) => {
    connectedClients.push(socket);
    socket.on('close', () => {
      const socketIndex = connectedClients.indexOf(socket);
      if (socketIndex === -1) {
        throw new Error('Could not find socket in connected sockets list');
      }
      connectedClients.splice(socketIndex, 1);
      state.clientDisconnected();
    });
    state.clientConnected();
    updateAll();
  }).on('error', (err) => {
    console.error(err);
  });

  server.listen(3000, () => {
    state.on('brightness', updateBrightness);
    state.on('preset', updatePreset);
    state.on('value', updateValue);
    updateAll();
  });
}

function updateAll() {
  const settings = state.getSettings();
  updateBrightness(settings.brightness);
  updatePreset(settings.preset);
}

function updateAllValues() {
  const settings = state.getSettings();
  for (const value in settings.values[settings.preset]) {
    updateValue({
      code: codes.value[settings.preset][value],
      value: settings.values[settings.preset][value]
    });
  }
}

function updateBrightness(brightness) {
  console.log(`Setting brightness to ${brightness}`);
  write(Buffer.from([ codes.messageTypes.SET_BRIGHTNESS, brightness ]));
}

function updatePreset(preset) {
  console.log(`Setting preset to ${preset}`);
  write(Buffer.from([ codes.messageTypes.SET_PRESER, preset ]));
  updateAllValues();
}

function updateValue({ code, value }) {
  console.log(`Setting value ${code} to ${value}`);
  write(Buffer.from([ codes.messageTypes.SET_VALUE, code, value ]));
}

function write(buffer) {
  for (const connectedClient of connectedClients) {
    connectedClient.write(buffer);
  }
}
