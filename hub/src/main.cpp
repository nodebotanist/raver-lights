/*
Copyright (c) 2017 Bryan Hughes <bryan@nebri.us>

This file is part of Raver Lights.

Raver Lights is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Raver Lights is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Raver Lights.  If not, see <http://www.gnu.org/licenses/>.
*/

#include <Arduino.h>
#include <RVL-ESP.h>
#ifdef HAS_UI
#include "./ui/ui.h"
#endif
#ifdef HAS_LIGHTS
#include "./lights.h"
#endif
#include "./state.h"
#include "./config.h"

RVLLogging logger;

void setup() {
  delay(200);

  logger = RVLESPInitLogging(RVLLoggingLevel::Debug, SERIAL_BAUDRATE);
  RVLESPInitNetwork(WIFI_SSID, WIFI_PASSPHRASE, SERVER_PORT);

  logger->info("Initializing");
  State::init();
#ifdef HAS_UI
  UI::init();
#endif
#ifdef HAS_LIGHTS
  Lights::init();
#endif
  logger->info("Running");
}

#define NUM_LOOP_SAMPLES 60
uint8 loopTimes[NUM_LOOP_SAMPLES];
uint8 loopIndex = 0;

void loop() {
  uint32 startTime = millis();
  State::loop();
#ifdef HAS_UI
  UI::loop();
#endif
  RVLESPLoop();
#ifdef HAS_LIGHTS
  Lights::loop();
#endif
  uint32 now = millis();
  loopTimes[loopIndex++] = now - startTime;
  if (loopIndex == NUM_LOOP_SAMPLES) {
    loopIndex = 0;
    uint16 sum = 0;
    uint8 min = 255;
    uint8 max = 0;
    for (uint8 i = 0; i < NUM_LOOP_SAMPLES; i++) {
      sum += loopTimes[i];
      if (loopTimes[i] < min) {
        min = loopTimes[i];
      }
      if (loopTimes[i] > max) {
        max = loopTimes[i];
      }
    }
    logger->info("Performance stats: Avg=%d Min=%d Max=%d", sum / NUM_LOOP_SAMPLES, min, max);
  }
  if (now - startTime > UPDATE_RATE) {
    logger->info("Warning: system loop took %dms longer than the update rate", now - startTime - UPDATE_RATE);
    delay(1);
  } else {
    delay(UPDATE_RATE - (millis() - startTime));
  }
}
