function msg = the_different_total_power(msgname,type)
  if(255==type)
  msg = struct;
  msg.num=11;
  msg.list= cell(1, msg.num);
  msg.list{1}='VECTOR__INDEPENDENT_SIG_MSG';
  msg.list{2}='total_power';
  msg.list{3}='Systerm_ready';
  msg.list{4}='brake_volt';
  msg.list{5}='To_Recorde_pedal2';
  msg.list{6}='error_info';
  msg.list{7}='pedal_velocity';
  msg.list{8}='To_Record_SC';
  msg.list{9}='To_Record_pedal1';
  msg.list{10}='To_Recorder_Battery';
  msg.list{11}='To_Recorder_wheel_velocity';
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

    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{1}.name = 'MaxTemp';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{1}.units = '';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{1}.start_bit = 9;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{1}.bit_length = 8;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{1}.byte_order = 'BIG_ENDIAN';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{1}.scale = 1;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{1}.offset = -40;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{1}.multiplex_type = 'Standard';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{1}.multiplex_value = 0;

    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{2}.name = 'RR_Torque';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{2}.units = '';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{2}.start_bit = 17;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{2}.bit_length = 16;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{2}.byte_order = 'BIG_ENDIAN';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{2}.data_type = 'SIGNED';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{2}.scale = 0.1;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{2}.offset = 0;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{2}.multiplex_type = 'Standard';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{2}.multiplex_value = 0;

    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{3}.name = 'RL_Torque';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{3}.units = '';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{3}.start_bit = 17;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{3}.bit_length = 16;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{3}.byte_order = 'BIG_ENDIAN';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{3}.data_type = 'SIGNED';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{3}.scale = 0.1;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{3}.offset = 0;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{3}.multiplex_type = 'Standard';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{3}.multiplex_value = 0;

    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{4}.name = 'RR_Torque_Set';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{4}.units = '';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{4}.start_bit = 17;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{4}.bit_length = 16;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{4}.byte_order = 'BIG_ENDIAN';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{4}.data_type = 'SIGNED';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{4}.scale = 0.1;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{4}.offset = 0;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{4}.multiplex_type = 'Standard';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{4}.multiplex_value = 0;

    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{5}.name = 'RL_Torque_Set';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{5}.units = '';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{5}.start_bit = 17;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{5}.bit_length = 16;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{5}.byte_order = 'BIG_ENDIAN';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{5}.data_type = 'SIGNED';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{5}.scale = 0.1;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{5}.offset = 0;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{5}.multiplex_type = 'Standard';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{5}.multiplex_value = 0;

    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{6}.name = 'MinCellVolt';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{6}.units = '';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{6}.start_bit = 17;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{6}.bit_length = 16;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{6}.byte_order = 'BIG_ENDIAN';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{6}.data_type = 'UNSIGNED';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{6}.scale = 1;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{6}.offset = 0;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{6}.multiplex_type = 'Standard';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{6}.multiplex_value = 0;

    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{7}.name = 'MaxCellVolt';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{7}.units = '';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{7}.start_bit = 17;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{7}.bit_length = 16;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{7}.byte_order = 'BIG_ENDIAN';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{7}.data_type = 'UNSIGNED';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{7}.scale = 1;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{7}.offset = 0;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{7}.multiplex_type = 'Standard';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{7}.multiplex_value = 0;

    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{8}.name = 'pid_out';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{8}.units = '';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{8}.start_bit = 17;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{8}.bit_length = 16;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{8}.byte_order = 'BIG_ENDIAN';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{8}.data_type = 'UNSIGNED';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{8}.scale = 1;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{8}.offset = 0;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{8}.multiplex_type = 'Standard';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{8}.multiplex_value = 0;

    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{9}.name = 'pedal_number';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{9}.units = '';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{9}.start_bit = 17;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{9}.bit_length = 16;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{9}.byte_order = 'BIG_ENDIAN';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{9}.data_type = 'UNSIGNED';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{9}.scale = 1;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{9}.offset = 0;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{9}.multiplex_type = 'Standard';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{9}.multiplex_value = 0;

    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{10}.name = 'pedal_defference';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{10}.units = '';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{10}.start_bit = 17;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{10}.bit_length = 16;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{10}.byte_order = 'BIG_ENDIAN';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{10}.data_type = 'UNSIGNED';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{10}.scale = 1;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{10}.offset = 0;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{10}.multiplex_type = 'Standard';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{10}.multiplex_value = 0;

    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{11}.name = 'R_velocity_aver';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{11}.units = '';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{11}.start_bit = 17;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{11}.bit_length = 16;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{11}.byte_order = 'BIG_ENDIAN';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{11}.data_type = 'UNSIGNED';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{11}.scale = 1;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{11}.offset = 0;
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{11}.multiplex_type = 'Standard';
    ECOCAN.VECTOR__INDEPENDENT_SIG_MSG.fields{11}.multiplex_value = 0;


%%
%Network Node:Vector__XXX
%Message Name:total_power
%Message Number:2
case 'total_power'
    ECOCAN.total_power = struct;
    ECOCAN.total_power.name = 'total_power';
    ECOCAN.total_power.description = 'total_power';
    ECOCAN.total_power.protocol  = 'ECOCAN';
    ECOCAN.total_power.id = hex2dec('141');
    ECOCAN.total_power.idext = 'STANDARD';
    ECOCAN.total_power.payload_size =4;
    ECOCAN.total_power.interval =-1;

    ECOCAN.total_power.fields{1}.name = 'total_power2';
    ECOCAN.total_power.fields{1}.units = '';
    ECOCAN.total_power.fields{1}.start_bit = 24;
    ECOCAN.total_power.fields{1}.bit_length = 16;
    ECOCAN.total_power.fields{1}.byte_order = 'BIG_ENDIAN';
    ECOCAN.total_power.fields{1}.data_type = 'SIGNED';
    ECOCAN.total_power.fields{1}.scale = 1;
    ECOCAN.total_power.fields{1}.offset = 0;
    ECOCAN.total_power.fields{1}.multiplex_type = 'Standard';
    ECOCAN.total_power.fields{1}.multiplex_value = 0;

    ECOCAN.total_power.fields{2}.name = 'total_power1';
    ECOCAN.total_power.fields{2}.units = '';
    ECOCAN.total_power.fields{2}.start_bit = 8;
    ECOCAN.total_power.fields{2}.bit_length = 16;
    ECOCAN.total_power.fields{2}.byte_order = 'BIG_ENDIAN';
    ECOCAN.total_power.fields{2}.data_type = 'SIGNED';
    ECOCAN.total_power.fields{2}.scale = 1;
    ECOCAN.total_power.fields{2}.offset = 0;
    ECOCAN.total_power.fields{2}.multiplex_type = 'Standard';
    ECOCAN.total_power.fields{2}.multiplex_value = 0;


%%
%Network Node:Vector__XXX
%Message Name:Systerm_ready
%Message Number:3
case 'Systerm_ready'
    ECOCAN.Systerm_ready = struct;
    ECOCAN.Systerm_ready.name = 'Systerm_ready';
    ECOCAN.Systerm_ready.description = 'Systerm_ready';
    ECOCAN.Systerm_ready.protocol  = 'ECOCAN';
    ECOCAN.Systerm_ready.id = hex2dec('136');
    ECOCAN.Systerm_ready.idext = 'STANDARD';
    ECOCAN.Systerm_ready.payload_size =1;
    ECOCAN.Systerm_ready.interval =-1;

    ECOCAN.Systerm_ready.fields{1}.name = 'rl_systerm_ready';
    ECOCAN.Systerm_ready.fields{1}.units = '';
    ECOCAN.Systerm_ready.fields{1}.start_bit = 56;
    ECOCAN.Systerm_ready.fields{1}.bit_length = 16;
    ECOCAN.Systerm_ready.fields{1}.byte_order = 'BIG_ENDIAN';
    ECOCAN.Systerm_ready.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.Systerm_ready.fields{1}.scale = 1;
    ECOCAN.Systerm_ready.fields{1}.offset = 0;
    ECOCAN.Systerm_ready.fields{1}.multiplex_type = 'Standard';
    ECOCAN.Systerm_ready.fields{1}.multiplex_value = 0;

    ECOCAN.Systerm_ready.fields{2}.name = 'rr_systerm_ready';
    ECOCAN.Systerm_ready.fields{2}.units = '';
    ECOCAN.Systerm_ready.fields{2}.start_bit = 40;
    ECOCAN.Systerm_ready.fields{2}.bit_length = 16;
    ECOCAN.Systerm_ready.fields{2}.byte_order = 'BIG_ENDIAN';
    ECOCAN.Systerm_ready.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.Systerm_ready.fields{2}.scale = 1;
    ECOCAN.Systerm_ready.fields{2}.offset = 0;
    ECOCAN.Systerm_ready.fields{2}.multiplex_type = 'Standard';
    ECOCAN.Systerm_ready.fields{2}.multiplex_value = 0;

    ECOCAN.Systerm_ready.fields{3}.name = 'fl_systerm_ready';
    ECOCAN.Systerm_ready.fields{3}.units = '';
    ECOCAN.Systerm_ready.fields{3}.start_bit = 24;
    ECOCAN.Systerm_ready.fields{3}.bit_length = 16;
    ECOCAN.Systerm_ready.fields{3}.byte_order = 'BIG_ENDIAN';
    ECOCAN.Systerm_ready.fields{3}.data_type = 'UNSIGNED';
    ECOCAN.Systerm_ready.fields{3}.scale = 1;
    ECOCAN.Systerm_ready.fields{3}.offset = 0;
    ECOCAN.Systerm_ready.fields{3}.multiplex_type = 'Standard';
    ECOCAN.Systerm_ready.fields{3}.multiplex_value = 0;

    ECOCAN.Systerm_ready.fields{4}.name = 'fr_systerm_ready';
    ECOCAN.Systerm_ready.fields{4}.units = '';
    ECOCAN.Systerm_ready.fields{4}.start_bit = 8;
    ECOCAN.Systerm_ready.fields{4}.bit_length = 16;
    ECOCAN.Systerm_ready.fields{4}.byte_order = 'BIG_ENDIAN';
    ECOCAN.Systerm_ready.fields{4}.data_type = 'UNSIGNED';
    ECOCAN.Systerm_ready.fields{4}.scale = 1;
    ECOCAN.Systerm_ready.fields{4}.offset = 0;
    ECOCAN.Systerm_ready.fields{4}.multiplex_type = 'Standard';
    ECOCAN.Systerm_ready.fields{4}.multiplex_value = 0;


%%
%Network Node:Vector__XXX
%Message Name:brake_volt
%Message Number:4
case 'brake_volt'
    ECOCAN.brake_volt = struct;
    ECOCAN.brake_volt.name = 'brake_volt';
    ECOCAN.brake_volt.description = 'brake_volt';
    ECOCAN.brake_volt.protocol  = 'ECOCAN';
    ECOCAN.brake_volt.id = hex2dec('130');
    ECOCAN.brake_volt.idext = 'STANDARD';
    ECOCAN.brake_volt.payload_size =4;
    ECOCAN.brake_volt.interval =-1;

    ECOCAN.brake_volt.fields{1}.name = 'brake_pedal_volt_rear';
    ECOCAN.brake_volt.fields{1}.units = '';
    ECOCAN.brake_volt.fields{1}.start_bit = 24;
    ECOCAN.brake_volt.fields{1}.bit_length = 16;
    ECOCAN.brake_volt.fields{1}.byte_order = 'BIG_ENDIAN';
    ECOCAN.brake_volt.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.brake_volt.fields{1}.scale = 1;
    ECOCAN.brake_volt.fields{1}.offset = 0;
    ECOCAN.brake_volt.fields{1}.multiplex_type = 'Standard';
    ECOCAN.brake_volt.fields{1}.multiplex_value = 0;

    ECOCAN.brake_volt.fields{2}.name = 'brake_pedal_volt_front';
    ECOCAN.brake_volt.fields{2}.units = '';
    ECOCAN.brake_volt.fields{2}.start_bit = 8;
    ECOCAN.brake_volt.fields{2}.bit_length = 16;
    ECOCAN.brake_volt.fields{2}.byte_order = 'BIG_ENDIAN';
    ECOCAN.brake_volt.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.brake_volt.fields{2}.scale = 1;
    ECOCAN.brake_volt.fields{2}.offset = 0;
    ECOCAN.brake_volt.fields{2}.multiplex_type = 'Standard';
    ECOCAN.brake_volt.fields{2}.multiplex_value = 0;


%%
%Network Node:Vector__XXX
%Message Name:To_Recorde_pedal2
%Message Number:5
case 'To_Recorde_pedal2'
    ECOCAN.To_Recorde_pedal2 = struct;
    ECOCAN.To_Recorde_pedal2.name = 'To_Recorde_pedal2';
    ECOCAN.To_Recorde_pedal2.description = 'To_Recorde_pedal2';
    ECOCAN.To_Recorde_pedal2.protocol  = 'ECOCAN';
    ECOCAN.To_Recorde_pedal2.id = hex2dec('132');
    ECOCAN.To_Recorde_pedal2.idext = 'STANDARD';
    ECOCAN.To_Recorde_pedal2.payload_size =6;
    ECOCAN.To_Recorde_pedal2.interval =-1;

    ECOCAN.To_Recorde_pedal2.fields{1}.name = 'pedal2_volt';
    ECOCAN.To_Recorde_pedal2.fields{1}.units = '';
    ECOCAN.To_Recorde_pedal2.fields{1}.start_bit = 8;
    ECOCAN.To_Recorde_pedal2.fields{1}.bit_length = 16;
    ECOCAN.To_Recorde_pedal2.fields{1}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorde_pedal2.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.To_Recorde_pedal2.fields{1}.scale = 1;
    ECOCAN.To_Recorde_pedal2.fields{1}.offset = 0;
    ECOCAN.To_Recorde_pedal2.fields{1}.multiplex_type = 'Standard';
    ECOCAN.To_Recorde_pedal2.fields{1}.multiplex_value = 0;

    ECOCAN.To_Recorde_pedal2.fields{2}.name = 'pedal2_max';
    ECOCAN.To_Recorde_pedal2.fields{2}.units = '';
    ECOCAN.To_Recorde_pedal2.fields{2}.start_bit = 24;
    ECOCAN.To_Recorde_pedal2.fields{2}.bit_length = 16;
    ECOCAN.To_Recorde_pedal2.fields{2}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorde_pedal2.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.To_Recorde_pedal2.fields{2}.scale = 1;
    ECOCAN.To_Recorde_pedal2.fields{2}.offset = 0;
    ECOCAN.To_Recorde_pedal2.fields{2}.multiplex_type = 'Standard';
    ECOCAN.To_Recorde_pedal2.fields{2}.multiplex_value = 0;

    ECOCAN.To_Recorde_pedal2.fields{3}.name = 'pedal2_min';
    ECOCAN.To_Recorde_pedal2.fields{3}.units = '';
    ECOCAN.To_Recorde_pedal2.fields{3}.start_bit = 40;
    ECOCAN.To_Recorde_pedal2.fields{3}.bit_length = 16;
    ECOCAN.To_Recorde_pedal2.fields{3}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorde_pedal2.fields{3}.data_type = 'UNSIGNED';
    ECOCAN.To_Recorde_pedal2.fields{3}.scale = 1;
    ECOCAN.To_Recorde_pedal2.fields{3}.offset = 0;
    ECOCAN.To_Recorde_pedal2.fields{3}.multiplex_type = 'Standard';
    ECOCAN.To_Recorde_pedal2.fields{3}.multiplex_value = 0;


%%
%Network Node:Vector__XXX
%Message Name:error_info
%Message Number:6
case 'error_info'
    ECOCAN.error_info = struct;
    ECOCAN.error_info.name = 'error_info';
    ECOCAN.error_info.description = 'error_info';
    ECOCAN.error_info.protocol  = 'ECOCAN';
    ECOCAN.error_info.id = hex2dec('135');
    ECOCAN.error_info.idext = 'STANDARD';
    ECOCAN.error_info.payload_size =8;
    ECOCAN.error_info.interval =-1;

    ECOCAN.error_info.fields{1}.name = 'rl_error';
    ECOCAN.error_info.fields{1}.units = '';
    ECOCAN.error_info.fields{1}.start_bit = 56;
    ECOCAN.error_info.fields{1}.bit_length = 16;
    ECOCAN.error_info.fields{1}.byte_order = 'BIG_ENDIAN';
    ECOCAN.error_info.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.error_info.fields{1}.scale = 1;
    ECOCAN.error_info.fields{1}.offset = 0;
    ECOCAN.error_info.fields{1}.multiplex_type = 'Standard';
    ECOCAN.error_info.fields{1}.multiplex_value = 0;

    ECOCAN.error_info.fields{2}.name = 'rr_error';
    ECOCAN.error_info.fields{2}.units = '';
    ECOCAN.error_info.fields{2}.start_bit = 40;
    ECOCAN.error_info.fields{2}.bit_length = 16;
    ECOCAN.error_info.fields{2}.byte_order = 'BIG_ENDIAN';
    ECOCAN.error_info.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.error_info.fields{2}.scale = 1;
    ECOCAN.error_info.fields{2}.offset = 0;
    ECOCAN.error_info.fields{2}.multiplex_type = 'Standard';
    ECOCAN.error_info.fields{2}.multiplex_value = 0;

    ECOCAN.error_info.fields{3}.name = 'fl_error';
    ECOCAN.error_info.fields{3}.units = '';
    ECOCAN.error_info.fields{3}.start_bit = 24;
    ECOCAN.error_info.fields{3}.bit_length = 16;
    ECOCAN.error_info.fields{3}.byte_order = 'BIG_ENDIAN';
    ECOCAN.error_info.fields{3}.data_type = 'UNSIGNED';
    ECOCAN.error_info.fields{3}.scale = 1;
    ECOCAN.error_info.fields{3}.offset = 0;
    ECOCAN.error_info.fields{3}.multiplex_type = 'Standard';
    ECOCAN.error_info.fields{3}.multiplex_value = 0;

    ECOCAN.error_info.fields{4}.name = 'fr_error';
    ECOCAN.error_info.fields{4}.units = '';
    ECOCAN.error_info.fields{4}.start_bit = 8;
    ECOCAN.error_info.fields{4}.bit_length = 16;
    ECOCAN.error_info.fields{4}.byte_order = 'BIG_ENDIAN';
    ECOCAN.error_info.fields{4}.data_type = 'UNSIGNED';
    ECOCAN.error_info.fields{4}.scale = 1;
    ECOCAN.error_info.fields{4}.offset = 0;
    ECOCAN.error_info.fields{4}.multiplex_type = 'Standard';
    ECOCAN.error_info.fields{4}.multiplex_value = 0;


%%
%Network Node:Vector__XXX
%Message Name:pedal_velocity
%Message Number:7
case 'pedal_velocity'
    ECOCAN.pedal_velocity = struct;
    ECOCAN.pedal_velocity.name = 'pedal_velocity';
    ECOCAN.pedal_velocity.description = 'pedal_velocity';
    ECOCAN.pedal_velocity.protocol  = 'ECOCAN';
    ECOCAN.pedal_velocity.id = hex2dec('134');
    ECOCAN.pedal_velocity.idext = 'STANDARD';
    ECOCAN.pedal_velocity.payload_size =4;
    ECOCAN.pedal_velocity.interval =-1;

    ECOCAN.pedal_velocity.fields{1}.name = 'pedel_percent';
    ECOCAN.pedal_velocity.fields{1}.units = '';
    ECOCAN.pedal_velocity.fields{1}.start_bit = 24;
    ECOCAN.pedal_velocity.fields{1}.bit_length = 16;
    ECOCAN.pedal_velocity.fields{1}.byte_order = 'BIG_ENDIAN';
    ECOCAN.pedal_velocity.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.pedal_velocity.fields{1}.scale = 1;
    ECOCAN.pedal_velocity.fields{1}.offset = 0;
    ECOCAN.pedal_velocity.fields{1}.multiplex_type = 'Standard';
    ECOCAN.pedal_velocity.fields{1}.multiplex_value = 0;

    ECOCAN.pedal_velocity.fields{2}.name = 'wheel_velocity';
    ECOCAN.pedal_velocity.fields{2}.units = '';
    ECOCAN.pedal_velocity.fields{2}.start_bit = 8;
    ECOCAN.pedal_velocity.fields{2}.bit_length = 16;
    ECOCAN.pedal_velocity.fields{2}.byte_order = 'BIG_ENDIAN';
    ECOCAN.pedal_velocity.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.pedal_velocity.fields{2}.scale = 1;
    ECOCAN.pedal_velocity.fields{2}.offset = 0;
    ECOCAN.pedal_velocity.fields{2}.multiplex_type = 'Standard';
    ECOCAN.pedal_velocity.fields{2}.multiplex_value = 0;


%%
%Network Node:Vector__XXX
%Message Name:To_Record_SC
%Message Number:8
case 'To_Record_SC'
    ECOCAN.To_Record_SC = struct;
    ECOCAN.To_Record_SC.name = 'To_Record_SC';
    ECOCAN.To_Record_SC.description = 'To_Record_SC';
    ECOCAN.To_Record_SC.protocol  = 'ECOCAN';
    ECOCAN.To_Record_SC.id = hex2dec('133');
    ECOCAN.To_Record_SC.idext = 'STANDARD';
    ECOCAN.To_Record_SC.payload_size =6;
    ECOCAN.To_Record_SC.interval =-1;

    ECOCAN.To_Record_SC.fields{1}.name = 'LV_volt';
    ECOCAN.To_Record_SC.fields{1}.units = '';
    ECOCAN.To_Record_SC.fields{1}.start_bit = 40;
    ECOCAN.To_Record_SC.fields{1}.bit_length = 16;
    ECOCAN.To_Record_SC.fields{1}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Record_SC.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.To_Record_SC.fields{1}.scale = 1;
    ECOCAN.To_Record_SC.fields{1}.offset = 0;
    ECOCAN.To_Record_SC.fields{1}.multiplex_type = 'Standard';
    ECOCAN.To_Record_SC.fields{1}.multiplex_value = 0;

    ECOCAN.To_Record_SC.fields{2}.name = 'MinCellVolt';
    ECOCAN.To_Record_SC.fields{2}.units = '';
    ECOCAN.To_Record_SC.fields{2}.start_bit = 24;
    ECOCAN.To_Record_SC.fields{2}.bit_length = 16;
    ECOCAN.To_Record_SC.fields{2}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Record_SC.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.To_Record_SC.fields{2}.scale = 1;
    ECOCAN.To_Record_SC.fields{2}.offset = 0;
    ECOCAN.To_Record_SC.fields{2}.multiplex_type = 'Standard';
    ECOCAN.To_Record_SC.fields{2}.multiplex_value = 0;

    ECOCAN.To_Record_SC.fields{3}.name = 'SC_Statement';
    ECOCAN.To_Record_SC.fields{3}.units = '';
    ECOCAN.To_Record_SC.fields{3}.start_bit = 8;
    ECOCAN.To_Record_SC.fields{3}.bit_length = 16;
    ECOCAN.To_Record_SC.fields{3}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Record_SC.fields{3}.data_type = 'UNSIGNED';
    ECOCAN.To_Record_SC.fields{3}.scale = 1;
    ECOCAN.To_Record_SC.fields{3}.offset = 0;
    ECOCAN.To_Record_SC.fields{3}.multiplex_type = 'Standard';
    ECOCAN.To_Record_SC.fields{3}.multiplex_value = 0;


%%
%Network Node:Vector__XXX
%Message Name:To_Record_pedal1
%Message Number:9
case 'To_Record_pedal1'
    ECOCAN.To_Record_pedal1 = struct;
    ECOCAN.To_Record_pedal1.name = 'To_Record_pedal1';
    ECOCAN.To_Record_pedal1.description = 'To_Record_pedal1';
    ECOCAN.To_Record_pedal1.protocol  = 'ECOCAN';
    ECOCAN.To_Record_pedal1.id = hex2dec('131');
    ECOCAN.To_Record_pedal1.idext = 'STANDARD';
    ECOCAN.To_Record_pedal1.payload_size =6;
    ECOCAN.To_Record_pedal1.interval =-1;

    ECOCAN.To_Record_pedal1.fields{1}.name = 'pedal1_min';
    ECOCAN.To_Record_pedal1.fields{1}.units = '';
    ECOCAN.To_Record_pedal1.fields{1}.start_bit = 40;
    ECOCAN.To_Record_pedal1.fields{1}.bit_length = 16;
    ECOCAN.To_Record_pedal1.fields{1}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Record_pedal1.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.To_Record_pedal1.fields{1}.scale = 1;
    ECOCAN.To_Record_pedal1.fields{1}.offset = 0;
    ECOCAN.To_Record_pedal1.fields{1}.multiplex_type = 'Standard';
    ECOCAN.To_Record_pedal1.fields{1}.multiplex_value = 0;

    ECOCAN.To_Record_pedal1.fields{2}.name = 'pedal1_max';
    ECOCAN.To_Record_pedal1.fields{2}.units = '';
    ECOCAN.To_Record_pedal1.fields{2}.start_bit = 24;
    ECOCAN.To_Record_pedal1.fields{2}.bit_length = 16;
    ECOCAN.To_Record_pedal1.fields{2}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Record_pedal1.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.To_Record_pedal1.fields{2}.scale = 1;
    ECOCAN.To_Record_pedal1.fields{2}.offset = 0;
    ECOCAN.To_Record_pedal1.fields{2}.multiplex_type = 'Standard';
    ECOCAN.To_Record_pedal1.fields{2}.multiplex_value = 0;

    ECOCAN.To_Record_pedal1.fields{3}.name = 'pedal1_volt';
    ECOCAN.To_Record_pedal1.fields{3}.units = '';
    ECOCAN.To_Record_pedal1.fields{3}.start_bit = 8;
    ECOCAN.To_Record_pedal1.fields{3}.bit_length = 16;
    ECOCAN.To_Record_pedal1.fields{3}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Record_pedal1.fields{3}.data_type = 'UNSIGNED';
    ECOCAN.To_Record_pedal1.fields{3}.scale = 1;
    ECOCAN.To_Record_pedal1.fields{3}.offset = 0;
    ECOCAN.To_Record_pedal1.fields{3}.multiplex_type = 'Standard';
    ECOCAN.To_Record_pedal1.fields{3}.multiplex_value = 0;


%%
%Network Node:Vector__XXX
%Message Name:To_Recorder_Battery
%Message Number:10
case 'To_Recorder_Battery'
    ECOCAN.To_Recorder_Battery = struct;
    ECOCAN.To_Recorder_Battery.name = 'To_Recorder_Battery';
    ECOCAN.To_Recorder_Battery.description = 'To_Recorder_Battery';
    ECOCAN.To_Recorder_Battery.protocol  = 'ECOCAN';
    ECOCAN.To_Recorder_Battery.id = hex2dec('124');
    ECOCAN.To_Recorder_Battery.idext = 'STANDARD';
    ECOCAN.To_Recorder_Battery.payload_size =6;
    ECOCAN.To_Recorder_Battery.interval =-1;

    ECOCAN.To_Recorder_Battery.fields{1}.name = 'i_sensor';
    ECOCAN.To_Recorder_Battery.fields{1}.units = '';
    ECOCAN.To_Recorder_Battery.fields{1}.start_bit = 40;
    ECOCAN.To_Recorder_Battery.fields{1}.bit_length = 16;
    ECOCAN.To_Recorder_Battery.fields{1}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorder_Battery.fields{1}.data_type = 'SIGNED';
    ECOCAN.To_Recorder_Battery.fields{1}.scale = 1;
    ECOCAN.To_Recorder_Battery.fields{1}.offset = 0;
    ECOCAN.To_Recorder_Battery.fields{1}.multiplex_type = 'Standard';
    ECOCAN.To_Recorder_Battery.fields{1}.multiplex_value = 0;

    ECOCAN.To_Recorder_Battery.fields{2}.name = 'BatVoltage';
    ECOCAN.To_Recorder_Battery.fields{2}.units = '';
    ECOCAN.To_Recorder_Battery.fields{2}.start_bit = 24;
    ECOCAN.To_Recorder_Battery.fields{2}.bit_length = 16;
    ECOCAN.To_Recorder_Battery.fields{2}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorder_Battery.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.To_Recorder_Battery.fields{2}.scale = 0.1;
    ECOCAN.To_Recorder_Battery.fields{2}.offset = 0;
    ECOCAN.To_Recorder_Battery.fields{2}.multiplex_type = 'Standard';
    ECOCAN.To_Recorder_Battery.fields{2}.multiplex_value = 0;

    ECOCAN.To_Recorder_Battery.fields{3}.name = 'Battery_Curent';
    ECOCAN.To_Recorder_Battery.fields{3}.units = '';
    ECOCAN.To_Recorder_Battery.fields{3}.start_bit = 8;
    ECOCAN.To_Recorder_Battery.fields{3}.bit_length = 16;
    ECOCAN.To_Recorder_Battery.fields{3}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorder_Battery.fields{3}.data_type = 'UNSIGNED';
    ECOCAN.To_Recorder_Battery.fields{3}.scale = 0.1;
    ECOCAN.To_Recorder_Battery.fields{3}.offset = -1000;
    ECOCAN.To_Recorder_Battery.fields{3}.multiplex_type = 'Standard';
    ECOCAN.To_Recorder_Battery.fields{3}.multiplex_value = 0;


%%
%Network Node:Vector__XXX
%Message Name:To_Recorder_wheel_velocity
%Message Number:11
case 'To_Recorder_wheel_velocity'
    ECOCAN.To_Recorder_wheel_velocity = struct;
    ECOCAN.To_Recorder_wheel_velocity.name = 'To_Recorder_wheel_velocity';
    ECOCAN.To_Recorder_wheel_velocity.description = 'To_Recorder_wheel_velocity';
    ECOCAN.To_Recorder_wheel_velocity.protocol  = 'ECOCAN';
    ECOCAN.To_Recorder_wheel_velocity.id = hex2dec('125');
    ECOCAN.To_Recorder_wheel_velocity.idext = 'STANDARD';
    ECOCAN.To_Recorder_wheel_velocity.payload_size =8;
    ECOCAN.To_Recorder_wheel_velocity.interval =-1;

    ECOCAN.To_Recorder_wheel_velocity.fields{1}.name = 'RR_wheel_velocity';
    ECOCAN.To_Recorder_wheel_velocity.fields{1}.units = '';
    ECOCAN.To_Recorder_wheel_velocity.fields{1}.start_bit = 56;
    ECOCAN.To_Recorder_wheel_velocity.fields{1}.bit_length = 16;
    ECOCAN.To_Recorder_wheel_velocity.fields{1}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorder_wheel_velocity.fields{1}.data_type = 'SIGNED';
    ECOCAN.To_Recorder_wheel_velocity.fields{1}.scale = 1;
    ECOCAN.To_Recorder_wheel_velocity.fields{1}.offset = 0;
    ECOCAN.To_Recorder_wheel_velocity.fields{1}.multiplex_type = 'Standard';
    ECOCAN.To_Recorder_wheel_velocity.fields{1}.multiplex_value = 0;

    ECOCAN.To_Recorder_wheel_velocity.fields{2}.name = 'RL_wheel_velocity';
    ECOCAN.To_Recorder_wheel_velocity.fields{2}.units = '';
    ECOCAN.To_Recorder_wheel_velocity.fields{2}.start_bit = 40;
    ECOCAN.To_Recorder_wheel_velocity.fields{2}.bit_length = 16;
    ECOCAN.To_Recorder_wheel_velocity.fields{2}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorder_wheel_velocity.fields{2}.data_type = 'SIGNED';
    ECOCAN.To_Recorder_wheel_velocity.fields{2}.scale = 1;
    ECOCAN.To_Recorder_wheel_velocity.fields{2}.offset = 0;
    ECOCAN.To_Recorder_wheel_velocity.fields{2}.multiplex_type = 'Standard';
    ECOCAN.To_Recorder_wheel_velocity.fields{2}.multiplex_value = 0;

    ECOCAN.To_Recorder_wheel_velocity.fields{3}.name = 'FR_wheel_velocity';
    ECOCAN.To_Recorder_wheel_velocity.fields{3}.units = '';
    ECOCAN.To_Recorder_wheel_velocity.fields{3}.start_bit = 24;
    ECOCAN.To_Recorder_wheel_velocity.fields{3}.bit_length = 16;
    ECOCAN.To_Recorder_wheel_velocity.fields{3}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorder_wheel_velocity.fields{3}.data_type = 'SIGNED';
    ECOCAN.To_Recorder_wheel_velocity.fields{3}.scale = 1;
    ECOCAN.To_Recorder_wheel_velocity.fields{3}.offset = 0;
    ECOCAN.To_Recorder_wheel_velocity.fields{3}.multiplex_type = 'Standard';
    ECOCAN.To_Recorder_wheel_velocity.fields{3}.multiplex_value = 0;

    ECOCAN.To_Recorder_wheel_velocity.fields{4}.name = 'FL_wheel_velocity';
    ECOCAN.To_Recorder_wheel_velocity.fields{4}.units = '';
    ECOCAN.To_Recorder_wheel_velocity.fields{4}.start_bit = 8;
    ECOCAN.To_Recorder_wheel_velocity.fields{4}.bit_length = 16;
    ECOCAN.To_Recorder_wheel_velocity.fields{4}.byte_order = 'BIG_ENDIAN';
    ECOCAN.To_Recorder_wheel_velocity.fields{4}.data_type = 'SIGNED';
    ECOCAN.To_Recorder_wheel_velocity.fields{4}.scale = 1;
    ECOCAN.To_Recorder_wheel_velocity.fields{4}.offset = 0;
    ECOCAN.To_Recorder_wheel_velocity.fields{4}.multiplex_type = 'Standard';
    ECOCAN.To_Recorder_wheel_velocity.fields{4}.multiplex_value = 0;


  end
  try
    msg = ECOCAN.(msgname);
  catch
  end
end
end
