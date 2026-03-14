function msg = to_recorder_bat(msgname,type)
  if(255==type)
  msg = struct;
  msg.num=3;
  msg.list= cell(1, msg.num);
  msg.list{1}='VECTOR__INDEPENDENT_SIG_MSG';
  msg.list{2}='To_Recorder_Wheel_Velocity';
  msg.list{3}='To_Recorder';
  else 
  msg = struct;
  switch msgname 
%%
%Network Node:Vector__XXX
%Message Name:VECTOR__INDEPENDENT_SIG_MSG
%Message Number:1
case 'VECTOR__INDEPENDENT_SIG_MSG'
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG = struct;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.name = 'VECTOR__INDEPENDENT_SIG_MSG';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.description = 'VECTOR__INDEPENDENT_SIG_MSG';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.protocol  = 'ECOCAN';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.id = hex2dec('40000000');
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.idext = 'EXTENDED';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.payload_size =0;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.interval =-1;

    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{1}.name = 'RR_Torque';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{1}.units = '';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{1}.start_bit = 17;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{1}.bit_length = 16;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{1}.byte_order = 'BIG_ENDIAN';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{1}.data_type = 'SIGNED';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{1}.scale = 0.1;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{1}.offset = 0;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{1}.multiplex_type = 'Standard';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{1}.multiplex_value = 0;

    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{2}.name = 'RL_Torque';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{2}.units = '';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{2}.start_bit = 17;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{2}.bit_length = 16;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{2}.byte_order = 'BIG_ENDIAN';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{2}.data_type = 'SIGNED';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{2}.scale = 0.1;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{2}.offset = 0;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{2}.multiplex_type = 'Standard';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{2}.multiplex_value = 0;

    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{3}.name = 'RR_wheel_velocity';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{3}.units = '';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{3}.start_bit = 17;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{3}.bit_length = 16;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{3}.byte_order = 'BIG_ENDIAN';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{3}.data_type = 'SIGNED';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{3}.scale = 1;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{3}.offset = 0;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{3}.multiplex_type = 'Standard';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{3}.multiplex_value = 0;

    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{4}.name = 'RL_wheel_velocity';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{4}.units = '';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{4}.start_bit = 17;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{4}.bit_length = 16;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{4}.byte_order = 'BIG_ENDIAN';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{4}.data_type = 'SIGNED';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{4}.scale = 1;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{4}.offset = 0;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{4}.multiplex_type = 'Standard';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{4}.multiplex_value = 0;

    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{5}.name = 'RR_Torque_Set';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{5}.units = '';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{5}.start_bit = 17;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{5}.bit_length = 16;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{5}.byte_order = 'BIG_ENDIAN';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{5}.data_type = 'SIGNED';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{5}.scale = 0.1;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{5}.offset = 0;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{5}.multiplex_type = 'Standard';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{5}.multiplex_value = 0;

    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{6}.name = 'RL_Torque_Set';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{6}.units = '';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{6}.start_bit = 17;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{6}.bit_length = 16;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{6}.byte_order = 'BIG_ENDIAN';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{6}.data_type = 'SIGNED';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{6}.scale = 0.1;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{6}.offset = 0;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{6}.multiplex_type = 'Standard';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{6}.multiplex_value = 0;


%%
%Network Node:Vector__XXX
%Message Name:To_Recorder_Wheel_Velocity
%Message Number:2
case 'To_Recorder_Wheel_Velocity'
    ECOCAN.To_Recorder_Wheel_Velocity = struct;
    ECOCAN.To_Recorder_Wheel_Velocity.name = 'To_Recorder_Wheel_Velocity';
    ECOCAN.To_Recorder_Wheel_Velocity.description = 'To_Recorder_Wheel_Velocity';
    ECOCAN.To_Recorder_Wheel_Velocity.protocol  = 'ECOCAN';
    ECOCAN.To_Recorder_Wheel_Velocity.id = hex2dec('200');
    ECOCAN.To_Recorder_Wheel_Velocity.idext = 'STANDARD';
    ECOCAN.To_Recorder_Wheel_Velocity.payload_size =4;
    ECOCAN.To_Recorder_Wheel_Velocity.interval =-1;

    ECOCAN.To_Recorder_Wheel_Velocity.fields{1}.name = 'Battery_Curent';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{1}.units = '';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{1}.start_bit = 24;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{1}.bit_length = 16;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{1}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{1}.data_type = 'SIGNED';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{1}.scale = 0.1;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{1}.offset = 0;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{1}.multiplex_type = 'Standard';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{1}.multiplex_value = 0;

    ECOCAN.To_Recorder_Wheel_Velocity.fields{2}.name = 'mincellvolt';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{2}.units = '';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{2}.start_bit = 8;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{2}.bit_length = 16;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{2}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{2}.scale = 1;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{2}.offset = 0;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{2}.multiplex_type = 'Standard';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{2}.multiplex_value = 0;


%%
%Network Node:Vector__XXX
%Message Name:To_Recorder
%Message Number:3
case 'To_Recorder'
    ECOCAN.To_Recorder = struct;
    ECOCAN.To_Recorder.name = 'To_Recorder';
    ECOCAN.To_Recorder.description = 'To_Recorder';
    ECOCAN.To_Recorder.protocol  = 'ECOCAN';
    ECOCAN.To_Recorder.id = hex2dec('199');
    ECOCAN.To_Recorder.idext = 'STANDARD';
    ECOCAN.To_Recorder.payload_size =7;
    ECOCAN.To_Recorder.interval =-1;

    ECOCAN.To_Recorder.fields{1}.name = 'RR_IGBT';
    ECOCAN.To_Recorder.fields{1}.units = '';
    ECOCAN.To_Recorder.fields{1}.start_bit = 48;
    ECOCAN.To_Recorder.fields{1}.bit_length = 16;
    ECOCAN.To_Recorder.fields{1}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorder.fields{1}.data_type = 'SIGNED';
    ECOCAN.To_Recorder.fields{1}.scale = 1;
    ECOCAN.To_Recorder.fields{1}.offset = 0;
    ECOCAN.To_Recorder.fields{1}.multiplex_type = 'Standard';
    ECOCAN.To_Recorder.fields{1}.multiplex_value = 0;

    ECOCAN.To_Recorder.fields{2}.name = 'RL_IGBT';
    ECOCAN.To_Recorder.fields{2}.units = '';
    ECOCAN.To_Recorder.fields{2}.start_bit = 40;
    ECOCAN.To_Recorder.fields{2}.bit_length = 16;
    ECOCAN.To_Recorder.fields{2}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorder.fields{2}.data_type = 'SIGNED';
    ECOCAN.To_Recorder.fields{2}.scale = 1;
    ECOCAN.To_Recorder.fields{2}.offset = 0;
    ECOCAN.To_Recorder.fields{2}.multiplex_type = 'Standard';
    ECOCAN.To_Recorder.fields{2}.multiplex_value = 0;

    ECOCAN.To_Recorder.fields{3}.name = 'FR_IGBT';
    ECOCAN.To_Recorder.fields{3}.units = '';
    ECOCAN.To_Recorder.fields{3}.start_bit = 32;
    ECOCAN.To_Recorder.fields{3}.bit_length = 16;
    ECOCAN.To_Recorder.fields{3}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorder.fields{3}.data_type = 'SIGNED';
    ECOCAN.To_Recorder.fields{3}.scale = 1;
    ECOCAN.To_Recorder.fields{3}.offset = 0;
    ECOCAN.To_Recorder.fields{3}.multiplex_type = 'Standard';
    ECOCAN.To_Recorder.fields{3}.multiplex_value = 0;

    ECOCAN.To_Recorder.fields{4}.name = 'FL_IGBT';
    ECOCAN.To_Recorder.fields{4}.units = '';
    ECOCAN.To_Recorder.fields{4}.start_bit = 24;
    ECOCAN.To_Recorder.fields{4}.bit_length = 16;
    ECOCAN.To_Recorder.fields{4}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorder.fields{4}.data_type = 'SIGNED';
    ECOCAN.To_Recorder.fields{4}.scale = 1;
    ECOCAN.To_Recorder.fields{4}.offset = 0;
    ECOCAN.To_Recorder.fields{4}.multiplex_type = 'Standard';
    ECOCAN.To_Recorder.fields{4}.multiplex_value = 0;


  end
  try
    msg = ECOCAN.(msgname);
  catch
  end
end
end
