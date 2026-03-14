function msg = pedal(msgname,type)
  if(255==type)
  msg = struct;
  msg.num=3;
  msg.list= cell(1, msg.num);
  msg.list{1}='pedal';
  msg.list{2}='To_Recorder_Wheel_Velocity';
  msg.list{3}='To_Recorder';
  else 
  msg = struct;
  switch msgname 
%%
%Network Node:Vector__XXX
%Message Name:pedal
%Message Number:1
case 'pedal'
    ECOCAN.pedal = struct;
    ECOCAN.pedal.name = 'pedal';
    ECOCAN.pedal.description = 'pedal';
    ECOCAN.pedal.protocol  = 'ECOCAN';
    ECOCAN.pedal.id = hex2dec('123');
    ECOCAN.pedal.idext = 'STANDARD';
    ECOCAN.pedal.payload_size =2;
    ECOCAN.pedal.interval =-1;

    ECOCAN.pedal.fields{1}.name = 'PedalA';
    ECOCAN.pedal.fields{1}.units = '';
    ECOCAN.pedal.fields{1}.start_bit = 0;
    ECOCAN.pedal.fields{1}.bit_length = 16;
    ECOCAN.pedal.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.pedal.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.pedal.fields{1}.scale = 1;
    ECOCAN.pedal.fields{1}.offset = 0;
    ECOCAN.pedal.fields{1}.multiplex_type = 'Standard';
    ECOCAN.pedal.fields{1}.multiplex_value = 0;


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
    ECOCAN.To_Recorder_Wheel_Velocity.payload_size =8;
    ECOCAN.To_Recorder_Wheel_Velocity.interval =-1;

    ECOCAN.To_Recorder_Wheel_Velocity.fields{1}.name = 'RR_Torque';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{1}.units = '';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{1}.start_bit = 56;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{1}.bit_length = 16;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{1}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{1}.data_type = 'SIGNED';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{1}.scale = 0.1;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{1}.offset = 0;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{1}.multiplex_type = 'Standard';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{1}.multiplex_value = 0;

    ECOCAN.To_Recorder_Wheel_Velocity.fields{2}.name = 'RL_Torque';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{2}.units = '';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{2}.start_bit = 40;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{2}.bit_length = 16;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{2}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{2}.data_type = 'SIGNED';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{2}.scale = 0.1;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{2}.offset = 0;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{2}.multiplex_type = 'Standard';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{2}.multiplex_value = 0;

    ECOCAN.To_Recorder_Wheel_Velocity.fields{3}.name = 'RR_wheel_velocity';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{3}.units = '';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{3}.start_bit = 24;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{3}.bit_length = 16;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{3}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{3}.data_type = 'SIGNED';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{3}.scale = 1;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{3}.offset = 0;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{3}.multiplex_type = 'Standard';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{3}.multiplex_value = 0;

    ECOCAN.To_Recorder_Wheel_Velocity.fields{4}.name = 'RL_wheel_velocity';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{4}.units = '';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{4}.start_bit = 8;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{4}.bit_length = 16;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{4}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{4}.data_type = 'SIGNED';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{4}.scale = 1;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{4}.offset = 0;
    ECOCAN.To_Recorder_Wheel_Velocity.fields{4}.multiplex_type = 'Standard';
    ECOCAN.To_Recorder_Wheel_Velocity.fields{4}.multiplex_value = 0;


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
    ECOCAN.To_Recorder.payload_size =6;
    ECOCAN.To_Recorder.interval =-1;

    ECOCAN.To_Recorder.fields{1}.name = 'RR_Torque_Set';
    ECOCAN.To_Recorder.fields{1}.units = '';
    ECOCAN.To_Recorder.fields{1}.start_bit = 40;
    ECOCAN.To_Recorder.fields{1}.bit_length = 16;
    ECOCAN.To_Recorder.fields{1}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorder.fields{1}.data_type = 'SIGNED';
    ECOCAN.To_Recorder.fields{1}.scale = 0.1;
    ECOCAN.To_Recorder.fields{1}.offset = 0;
    ECOCAN.To_Recorder.fields{1}.multiplex_type = 'Standard';
    ECOCAN.To_Recorder.fields{1}.multiplex_value = 0;

    ECOCAN.To_Recorder.fields{2}.name = 'RL_Torque_Set';
    ECOCAN.To_Recorder.fields{2}.units = '';
    ECOCAN.To_Recorder.fields{2}.start_bit = 24;
    ECOCAN.To_Recorder.fields{2}.bit_length = 16;
    ECOCAN.To_Recorder.fields{2}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorder.fields{2}.data_type = 'SIGNED';
    ECOCAN.To_Recorder.fields{2}.scale = 0.1;
    ECOCAN.To_Recorder.fields{2}.offset = 0;
    ECOCAN.To_Recorder.fields{2}.multiplex_type = 'Standard';
    ECOCAN.To_Recorder.fields{2}.multiplex_value = 0;

    ECOCAN.To_Recorder.fields{3}.name = 'Battery_Curent';
    ECOCAN.To_Recorder.fields{3}.units = '';
    ECOCAN.To_Recorder.fields{3}.start_bit = 8;
    ECOCAN.To_Recorder.fields{3}.bit_length = 16;
    ECOCAN.To_Recorder.fields{3}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorder.fields{3}.data_type = 'SIGNED';
    ECOCAN.To_Recorder.fields{3}.scale = 0.1;
    ECOCAN.To_Recorder.fields{3}.offset = 0;
    ECOCAN.To_Recorder.fields{3}.multiplex_type = 'Standard';
    ECOCAN.To_Recorder.fields{3}.multiplex_value = 0;


  end
  try
    msg = ECOCAN.(msgname);
  catch
  end
end
end
