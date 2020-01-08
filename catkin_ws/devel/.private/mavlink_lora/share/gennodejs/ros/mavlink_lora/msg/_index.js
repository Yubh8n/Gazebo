
"use strict";

let mavlink_lora_attitude = require('./mavlink_lora_attitude.js');
let mavlink_lora_gps_raw = require('./mavlink_lora_gps_raw.js');
let mavlink_lora_radio_status = require('./mavlink_lora_radio_status.js');
let mavlink_lora_mission_ack = require('./mavlink_lora_mission_ack.js');
let mavlink_lora_set_position_target_local_ned = require('./mavlink_lora_set_position_target_local_ned.js');
let mavlink_lora_command_takeoff = require('./mavlink_lora_command_takeoff.js');
let mavlink_lora_command_ack = require('./mavlink_lora_command_ack.js');
let mavlink_lora_mission_list = require('./mavlink_lora_mission_list.js');
let mavlink_lora_heartbeat = require('./mavlink_lora_heartbeat.js');
let mavlink_lora_command_set_mode = require('./mavlink_lora_command_set_mode.js');
let mavlink_lora_statustext = require('./mavlink_lora_statustext.js');
let mavlink_lora_command_land = require('./mavlink_lora_command_land.js');
let mavlink_lora_status = require('./mavlink_lora_status.js');
let mavlink_lora_command_reposition = require('./mavlink_lora_command_reposition.js');
let mavlink_lora_enable_offboard = require('./mavlink_lora_enable_offboard.js');
let mavlink_lora_altitude = require('./mavlink_lora_altitude.js');
let mavlink_lora_command_message_interval = require('./mavlink_lora_command_message_interval.js');
let mavlink_lora_mission_item_int = require('./mavlink_lora_mission_item_int.js');
let mavlink_lora_msg = require('./mavlink_lora_msg.js');
let mavlink_lora_command_start_mission = require('./mavlink_lora_command_start_mission.js');
let mavlink_lora_pos = require('./mavlink_lora_pos.js');

module.exports = {
  mavlink_lora_attitude: mavlink_lora_attitude,
  mavlink_lora_gps_raw: mavlink_lora_gps_raw,
  mavlink_lora_radio_status: mavlink_lora_radio_status,
  mavlink_lora_mission_ack: mavlink_lora_mission_ack,
  mavlink_lora_set_position_target_local_ned: mavlink_lora_set_position_target_local_ned,
  mavlink_lora_command_takeoff: mavlink_lora_command_takeoff,
  mavlink_lora_command_ack: mavlink_lora_command_ack,
  mavlink_lora_mission_list: mavlink_lora_mission_list,
  mavlink_lora_heartbeat: mavlink_lora_heartbeat,
  mavlink_lora_command_set_mode: mavlink_lora_command_set_mode,
  mavlink_lora_statustext: mavlink_lora_statustext,
  mavlink_lora_command_land: mavlink_lora_command_land,
  mavlink_lora_status: mavlink_lora_status,
  mavlink_lora_command_reposition: mavlink_lora_command_reposition,
  mavlink_lora_enable_offboard: mavlink_lora_enable_offboard,
  mavlink_lora_altitude: mavlink_lora_altitude,
  mavlink_lora_command_message_interval: mavlink_lora_command_message_interval,
  mavlink_lora_mission_item_int: mavlink_lora_mission_item_int,
  mavlink_lora_msg: mavlink_lora_msg,
  mavlink_lora_command_start_mission: mavlink_lora_command_start_mission,
  mavlink_lora_pos: mavlink_lora_pos,
};
