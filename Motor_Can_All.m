function msg = Motor_Can_All(msgname,type)
  if(255==type)
  msg = struct;
  msg.num=12;
  msg.list= cell(1, msg.num);
  msg.list{1}='VCU_0x189_RR';
  msg.list{2}='VCU_0x188_RL';
  msg.list{3}='VCU_0x185_FR';
  msg.list{4}='VCU_0x184_FL';
  msg.list{5}='MCU_28A_RR';
  msg.list{6}='MCU_289_RL';
  msg.list{7}='MCU_288_RR';
  msg.list{8}='MCU_287_RL';
  msg.list{9}='MCU_286_FR';
  msg.list{10}='MCU_284_FR';
  msg.list{11}='MCU_285_FL';
  msg.list{12}='MCU_283_FL';
  else 
  msg = struct;
  switch msgname 
%%
%Network Node:VCU4
%Message Name:VCU_0x189_RR
%Message Number:1
case 'VCU_0x189_RR'
    ECOCAN.VCU_0x189_RR = struct;
    ECOCAN.VCU_0x189_RR.name = 'VCU_0x189_RR';
    ECOCAN.VCU_0x189_RR.description = 'VCU_0x189_RR';
    ECOCAN.VCU_0x189_RR.protocol  = 'ECOCAN';
    ECOCAN.VCU_0x189_RR.id = hex2dec('189');
    ECOCAN.VCU_0x189_RR.idext = 'STANDARD';
    ECOCAN.VCU_0x189_RR.payload_size =8;
    ECOCAN.VCU_0x189_RR.interval =10;

    ECOCAN.VCU_0x189_RR.fields{1}.name = 'VCU_TorqueLimitNegativ';
    ECOCAN.VCU_0x189_RR.fields{1}.units = '0.1%';
    ECOCAN.VCU_0x189_RR.fields{1}.start_bit = 48;
    ECOCAN.VCU_0x189_RR.fields{1}.bit_length = 16;
    ECOCAN.VCU_0x189_RR.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x189_RR.fields{1}.data_type = 'SIGNED';
    ECOCAN.VCU_0x189_RR.fields{1}.scale = 1;
    ECOCAN.VCU_0x189_RR.fields{1}.offset = 0;
    ECOCAN.VCU_0x189_RR.fields{1}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x189_RR.fields{1}.multiplex_value = 0;

    ECOCAN.VCU_0x189_RR.fields{2}.name = 'VCU_DcOn';
    ECOCAN.VCU_0x189_RR.fields{2}.units = '';
    ECOCAN.VCU_0x189_RR.fields{2}.start_bit = 9;
    ECOCAN.VCU_0x189_RR.fields{2}.bit_length = 1;
    ECOCAN.VCU_0x189_RR.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x189_RR.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.VCU_0x189_RR.fields{2}.scale = 1;
    ECOCAN.VCU_0x189_RR.fields{2}.offset = 0;
    ECOCAN.VCU_0x189_RR.fields{2}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x189_RR.fields{2}.multiplex_value = 0;

    ECOCAN.VCU_0x189_RR.fields{3}.name = 'VCU_ErrorReset';
    ECOCAN.VCU_0x189_RR.fields{3}.units = '';
    ECOCAN.VCU_0x189_RR.fields{3}.start_bit = 11;
    ECOCAN.VCU_0x189_RR.fields{3}.bit_length = 1;
    ECOCAN.VCU_0x189_RR.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x189_RR.fields{3}.data_type = 'UNSIGNED';
    ECOCAN.VCU_0x189_RR.fields{3}.scale = 1;
    ECOCAN.VCU_0x189_RR.fields{3}.offset = 0;
    ECOCAN.VCU_0x189_RR.fields{3}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x189_RR.fields{3}.multiplex_value = 0;

    ECOCAN.VCU_0x189_RR.fields{4}.name = 'VCU_Enable';
    ECOCAN.VCU_0x189_RR.fields{4}.units = '';
    ECOCAN.VCU_0x189_RR.fields{4}.start_bit = 10;
    ECOCAN.VCU_0x189_RR.fields{4}.bit_length = 1;
    ECOCAN.VCU_0x189_RR.fields{4}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x189_RR.fields{4}.data_type = 'UNSIGNED';
    ECOCAN.VCU_0x189_RR.fields{4}.scale = 1;
    ECOCAN.VCU_0x189_RR.fields{4}.offset = 0;
    ECOCAN.VCU_0x189_RR.fields{4}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x189_RR.fields{4}.multiplex_value = 0;

    ECOCAN.VCU_0x189_RR.fields{5}.name = 'VCU_InverterOn';
    ECOCAN.VCU_0x189_RR.fields{5}.units = '';
    ECOCAN.VCU_0x189_RR.fields{5}.start_bit = 8;
    ECOCAN.VCU_0x189_RR.fields{5}.bit_length = 1;
    ECOCAN.VCU_0x189_RR.fields{5}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x189_RR.fields{5}.data_type = 'UNSIGNED';
    ECOCAN.VCU_0x189_RR.fields{5}.scale = 1;
    ECOCAN.VCU_0x189_RR.fields{5}.offset = 0;
    ECOCAN.VCU_0x189_RR.fields{5}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x189_RR.fields{5}.multiplex_value = 0;

    ECOCAN.VCU_0x189_RR.fields{6}.name = 'VCU_TargetTorque';
    ECOCAN.VCU_0x189_RR.fields{6}.units = '0.1%';
    ECOCAN.VCU_0x189_RR.fields{6}.start_bit = 16;
    ECOCAN.VCU_0x189_RR.fields{6}.bit_length = 16;
    ECOCAN.VCU_0x189_RR.fields{6}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x189_RR.fields{6}.data_type = 'SIGNED';
    ECOCAN.VCU_0x189_RR.fields{6}.scale = 1;
    ECOCAN.VCU_0x189_RR.fields{6}.offset = 0;
    ECOCAN.VCU_0x189_RR.fields{6}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x189_RR.fields{6}.multiplex_value = 0;

    ECOCAN.VCU_0x189_RR.fields{7}.name = 'VCU_TorqueLimitPositiv';
    ECOCAN.VCU_0x189_RR.fields{7}.units = '0.1%';
    ECOCAN.VCU_0x189_RR.fields{7}.start_bit = 32;
    ECOCAN.VCU_0x189_RR.fields{7}.bit_length = 16;
    ECOCAN.VCU_0x189_RR.fields{7}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x189_RR.fields{7}.data_type = 'SIGNED';
    ECOCAN.VCU_0x189_RR.fields{7}.scale = 1;
    ECOCAN.VCU_0x189_RR.fields{7}.offset = 0;
    ECOCAN.VCU_0x189_RR.fields{7}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x189_RR.fields{7}.multiplex_value = 0;


%%
%Network Node:VCU4
%Message Name:VCU_0x188_RL
%Message Number:2
case 'VCU_0x188_RL'
    ECOCAN.VCU_0x188_RL = struct;
    ECOCAN.VCU_0x188_RL.name = 'VCU_0x188_RL';
    ECOCAN.VCU_0x188_RL.description = 'VCU_0x188_RL';
    ECOCAN.VCU_0x188_RL.protocol  = 'ECOCAN';
    ECOCAN.VCU_0x188_RL.id = hex2dec('188');
    ECOCAN.VCU_0x188_RL.idext = 'STANDARD';
    ECOCAN.VCU_0x188_RL.payload_size =8;
    ECOCAN.VCU_0x188_RL.interval =10;

    ECOCAN.VCU_0x188_RL.fields{1}.name = 'VCU_TorqueLimitNegativ';
    ECOCAN.VCU_0x188_RL.fields{1}.units = '0.1%';
    ECOCAN.VCU_0x188_RL.fields{1}.start_bit = 48;
    ECOCAN.VCU_0x188_RL.fields{1}.bit_length = 16;
    ECOCAN.VCU_0x188_RL.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x188_RL.fields{1}.data_type = 'SIGNED';
    ECOCAN.VCU_0x188_RL.fields{1}.scale = 1;
    ECOCAN.VCU_0x188_RL.fields{1}.offset = 0;
    ECOCAN.VCU_0x188_RL.fields{1}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x188_RL.fields{1}.multiplex_value = 0;

    ECOCAN.VCU_0x188_RL.fields{2}.name = 'VCU_DcOn';
    ECOCAN.VCU_0x188_RL.fields{2}.units = '';
    ECOCAN.VCU_0x188_RL.fields{2}.start_bit = 9;
    ECOCAN.VCU_0x188_RL.fields{2}.bit_length = 1;
    ECOCAN.VCU_0x188_RL.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x188_RL.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.VCU_0x188_RL.fields{2}.scale = 1;
    ECOCAN.VCU_0x188_RL.fields{2}.offset = 0;
    ECOCAN.VCU_0x188_RL.fields{2}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x188_RL.fields{2}.multiplex_value = 0;

    ECOCAN.VCU_0x188_RL.fields{3}.name = 'VCU_ErrorReset';
    ECOCAN.VCU_0x188_RL.fields{3}.units = '';
    ECOCAN.VCU_0x188_RL.fields{3}.start_bit = 11;
    ECOCAN.VCU_0x188_RL.fields{3}.bit_length = 1;
    ECOCAN.VCU_0x188_RL.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x188_RL.fields{3}.data_type = 'UNSIGNED';
    ECOCAN.VCU_0x188_RL.fields{3}.scale = 1;
    ECOCAN.VCU_0x188_RL.fields{3}.offset = 0;
    ECOCAN.VCU_0x188_RL.fields{3}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x188_RL.fields{3}.multiplex_value = 0;

    ECOCAN.VCU_0x188_RL.fields{4}.name = 'VCU_Enable';
    ECOCAN.VCU_0x188_RL.fields{4}.units = '';
    ECOCAN.VCU_0x188_RL.fields{4}.start_bit = 10;
    ECOCAN.VCU_0x188_RL.fields{4}.bit_length = 1;
    ECOCAN.VCU_0x188_RL.fields{4}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x188_RL.fields{4}.data_type = 'UNSIGNED';
    ECOCAN.VCU_0x188_RL.fields{4}.scale = 1;
    ECOCAN.VCU_0x188_RL.fields{4}.offset = 0;
    ECOCAN.VCU_0x188_RL.fields{4}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x188_RL.fields{4}.multiplex_value = 0;

    ECOCAN.VCU_0x188_RL.fields{5}.name = 'VCU_InverterOn';
    ECOCAN.VCU_0x188_RL.fields{5}.units = '';
    ECOCAN.VCU_0x188_RL.fields{5}.start_bit = 8;
    ECOCAN.VCU_0x188_RL.fields{5}.bit_length = 1;
    ECOCAN.VCU_0x188_RL.fields{5}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x188_RL.fields{5}.data_type = 'UNSIGNED';
    ECOCAN.VCU_0x188_RL.fields{5}.scale = 1;
    ECOCAN.VCU_0x188_RL.fields{5}.offset = 0;
    ECOCAN.VCU_0x188_RL.fields{5}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x188_RL.fields{5}.multiplex_value = 0;

    ECOCAN.VCU_0x188_RL.fields{6}.name = 'VCU_TargetTorque';
    ECOCAN.VCU_0x188_RL.fields{6}.units = '0.1%';
    ECOCAN.VCU_0x188_RL.fields{6}.start_bit = 16;
    ECOCAN.VCU_0x188_RL.fields{6}.bit_length = 16;
    ECOCAN.VCU_0x188_RL.fields{6}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x188_RL.fields{6}.data_type = 'SIGNED';
    ECOCAN.VCU_0x188_RL.fields{6}.scale = 1;
    ECOCAN.VCU_0x188_RL.fields{6}.offset = 0;
    ECOCAN.VCU_0x188_RL.fields{6}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x188_RL.fields{6}.multiplex_value = 0;

    ECOCAN.VCU_0x188_RL.fields{7}.name = 'VCU_TorqueLimitPositiv';
    ECOCAN.VCU_0x188_RL.fields{7}.units = '0.1%';
    ECOCAN.VCU_0x188_RL.fields{7}.start_bit = 32;
    ECOCAN.VCU_0x188_RL.fields{7}.bit_length = 16;
    ECOCAN.VCU_0x188_RL.fields{7}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x188_RL.fields{7}.data_type = 'SIGNED';
    ECOCAN.VCU_0x188_RL.fields{7}.scale = 1;
    ECOCAN.VCU_0x188_RL.fields{7}.offset = 0;
    ECOCAN.VCU_0x188_RL.fields{7}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x188_RL.fields{7}.multiplex_value = 0;


%%
%Network Node:VCU4
%Message Name:VCU_0x185_FR
%Message Number:3
case 'VCU_0x185_FR'
    ECOCAN.VCU_0x185_FR = struct;
    ECOCAN.VCU_0x185_FR.name = 'VCU_0x185_FR';
    ECOCAN.VCU_0x185_FR.description = 'VCU_0x185_FR';
    ECOCAN.VCU_0x185_FR.protocol  = 'ECOCAN';
    ECOCAN.VCU_0x185_FR.id = hex2dec('185');
    ECOCAN.VCU_0x185_FR.idext = 'STANDARD';
    ECOCAN.VCU_0x185_FR.payload_size =8;
    ECOCAN.VCU_0x185_FR.interval =10;

    ECOCAN.VCU_0x185_FR.fields{1}.name = 'VCU_TorqueLimitNegativ';
    ECOCAN.VCU_0x185_FR.fields{1}.units = '0.1%';
    ECOCAN.VCU_0x185_FR.fields{1}.start_bit = 48;
    ECOCAN.VCU_0x185_FR.fields{1}.bit_length = 16;
    ECOCAN.VCU_0x185_FR.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x185_FR.fields{1}.data_type = 'SIGNED';
    ECOCAN.VCU_0x185_FR.fields{1}.scale = 1;
    ECOCAN.VCU_0x185_FR.fields{1}.offset = 0;
    ECOCAN.VCU_0x185_FR.fields{1}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x185_FR.fields{1}.multiplex_value = 0;

    ECOCAN.VCU_0x185_FR.fields{2}.name = 'VCU_DcOn';
    ECOCAN.VCU_0x185_FR.fields{2}.units = '';
    ECOCAN.VCU_0x185_FR.fields{2}.start_bit = 9;
    ECOCAN.VCU_0x185_FR.fields{2}.bit_length = 1;
    ECOCAN.VCU_0x185_FR.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x185_FR.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.VCU_0x185_FR.fields{2}.scale = 1;
    ECOCAN.VCU_0x185_FR.fields{2}.offset = 0;
    ECOCAN.VCU_0x185_FR.fields{2}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x185_FR.fields{2}.multiplex_value = 0;

    ECOCAN.VCU_0x185_FR.fields{3}.name = 'VCU_ErrorReset';
    ECOCAN.VCU_0x185_FR.fields{3}.units = '';
    ECOCAN.VCU_0x185_FR.fields{3}.start_bit = 11;
    ECOCAN.VCU_0x185_FR.fields{3}.bit_length = 1;
    ECOCAN.VCU_0x185_FR.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x185_FR.fields{3}.data_type = 'UNSIGNED';
    ECOCAN.VCU_0x185_FR.fields{3}.scale = 1;
    ECOCAN.VCU_0x185_FR.fields{3}.offset = 0;
    ECOCAN.VCU_0x185_FR.fields{3}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x185_FR.fields{3}.multiplex_value = 0;

    ECOCAN.VCU_0x185_FR.fields{4}.name = 'VCU_Enable';
    ECOCAN.VCU_0x185_FR.fields{4}.units = '';
    ECOCAN.VCU_0x185_FR.fields{4}.start_bit = 10;
    ECOCAN.VCU_0x185_FR.fields{4}.bit_length = 1;
    ECOCAN.VCU_0x185_FR.fields{4}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x185_FR.fields{4}.data_type = 'UNSIGNED';
    ECOCAN.VCU_0x185_FR.fields{4}.scale = 1;
    ECOCAN.VCU_0x185_FR.fields{4}.offset = 0;
    ECOCAN.VCU_0x185_FR.fields{4}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x185_FR.fields{4}.multiplex_value = 0;

    ECOCAN.VCU_0x185_FR.fields{5}.name = 'VCU_InverterOn';
    ECOCAN.VCU_0x185_FR.fields{5}.units = '';
    ECOCAN.VCU_0x185_FR.fields{5}.start_bit = 8;
    ECOCAN.VCU_0x185_FR.fields{5}.bit_length = 1;
    ECOCAN.VCU_0x185_FR.fields{5}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x185_FR.fields{5}.data_type = 'UNSIGNED';
    ECOCAN.VCU_0x185_FR.fields{5}.scale = 1;
    ECOCAN.VCU_0x185_FR.fields{5}.offset = 0;
    ECOCAN.VCU_0x185_FR.fields{5}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x185_FR.fields{5}.multiplex_value = 0;

    ECOCAN.VCU_0x185_FR.fields{6}.name = 'VCU_TargetTorque';
    ECOCAN.VCU_0x185_FR.fields{6}.units = '0.1%';
    ECOCAN.VCU_0x185_FR.fields{6}.start_bit = 16;
    ECOCAN.VCU_0x185_FR.fields{6}.bit_length = 16;
    ECOCAN.VCU_0x185_FR.fields{6}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x185_FR.fields{6}.data_type = 'SIGNED';
    ECOCAN.VCU_0x185_FR.fields{6}.scale = 1;
    ECOCAN.VCU_0x185_FR.fields{6}.offset = 0;
    ECOCAN.VCU_0x185_FR.fields{6}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x185_FR.fields{6}.multiplex_value = 0;

    ECOCAN.VCU_0x185_FR.fields{7}.name = 'VCU_TorqueLimitPositiv';
    ECOCAN.VCU_0x185_FR.fields{7}.units = '0.1%';
    ECOCAN.VCU_0x185_FR.fields{7}.start_bit = 32;
    ECOCAN.VCU_0x185_FR.fields{7}.bit_length = 16;
    ECOCAN.VCU_0x185_FR.fields{7}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x185_FR.fields{7}.data_type = 'SIGNED';
    ECOCAN.VCU_0x185_FR.fields{7}.scale = 1;
    ECOCAN.VCU_0x185_FR.fields{7}.offset = 0;
    ECOCAN.VCU_0x185_FR.fields{7}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x185_FR.fields{7}.multiplex_value = 0;


%%
%Network Node:VCU4
%Message Name:VCU_0x184_FL
%Message Number:4
case 'VCU_0x184_FL'
    ECOCAN.VCU_0x184_FL = struct;
    ECOCAN.VCU_0x184_FL.name = 'VCU_0x184_FL';
    ECOCAN.VCU_0x184_FL.description = 'VCU_0x184_FL';
    ECOCAN.VCU_0x184_FL.protocol  = 'ECOCAN';
    ECOCAN.VCU_0x184_FL.id = hex2dec('184');
    ECOCAN.VCU_0x184_FL.idext = 'STANDARD';
    ECOCAN.VCU_0x184_FL.payload_size =8;
    ECOCAN.VCU_0x184_FL.interval =10;

    ECOCAN.VCU_0x184_FL.fields{1}.name = 'VCU_TorqueLimitNegativ';
    ECOCAN.VCU_0x184_FL.fields{1}.units = '0.1%';
    ECOCAN.VCU_0x184_FL.fields{1}.start_bit = 48;
    ECOCAN.VCU_0x184_FL.fields{1}.bit_length = 16;
    ECOCAN.VCU_0x184_FL.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x184_FL.fields{1}.data_type = 'SIGNED';
    ECOCAN.VCU_0x184_FL.fields{1}.scale = 1;
    ECOCAN.VCU_0x184_FL.fields{1}.offset = 0;
    ECOCAN.VCU_0x184_FL.fields{1}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x184_FL.fields{1}.multiplex_value = 0;

    ECOCAN.VCU_0x184_FL.fields{2}.name = 'VCU_DcOn';
    ECOCAN.VCU_0x184_FL.fields{2}.units = '';
    ECOCAN.VCU_0x184_FL.fields{2}.start_bit = 9;
    ECOCAN.VCU_0x184_FL.fields{2}.bit_length = 1;
    ECOCAN.VCU_0x184_FL.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x184_FL.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.VCU_0x184_FL.fields{2}.scale = 1;
    ECOCAN.VCU_0x184_FL.fields{2}.offset = 0;
    ECOCAN.VCU_0x184_FL.fields{2}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x184_FL.fields{2}.multiplex_value = 0;

    ECOCAN.VCU_0x184_FL.fields{3}.name = 'VCU_ErrorReset';
    ECOCAN.VCU_0x184_FL.fields{3}.units = '';
    ECOCAN.VCU_0x184_FL.fields{3}.start_bit = 11;
    ECOCAN.VCU_0x184_FL.fields{3}.bit_length = 1;
    ECOCAN.VCU_0x184_FL.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x184_FL.fields{3}.data_type = 'UNSIGNED';
    ECOCAN.VCU_0x184_FL.fields{3}.scale = 1;
    ECOCAN.VCU_0x184_FL.fields{3}.offset = 0;
    ECOCAN.VCU_0x184_FL.fields{3}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x184_FL.fields{3}.multiplex_value = 0;

    ECOCAN.VCU_0x184_FL.fields{4}.name = 'VCU_Enable';
    ECOCAN.VCU_0x184_FL.fields{4}.units = '';
    ECOCAN.VCU_0x184_FL.fields{4}.start_bit = 10;
    ECOCAN.VCU_0x184_FL.fields{4}.bit_length = 1;
    ECOCAN.VCU_0x184_FL.fields{4}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x184_FL.fields{4}.data_type = 'UNSIGNED';
    ECOCAN.VCU_0x184_FL.fields{4}.scale = 1;
    ECOCAN.VCU_0x184_FL.fields{4}.offset = 0;
    ECOCAN.VCU_0x184_FL.fields{4}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x184_FL.fields{4}.multiplex_value = 0;

    ECOCAN.VCU_0x184_FL.fields{5}.name = 'VCU_InverterOn';
    ECOCAN.VCU_0x184_FL.fields{5}.units = '';
    ECOCAN.VCU_0x184_FL.fields{5}.start_bit = 8;
    ECOCAN.VCU_0x184_FL.fields{5}.bit_length = 1;
    ECOCAN.VCU_0x184_FL.fields{5}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x184_FL.fields{5}.data_type = 'UNSIGNED';
    ECOCAN.VCU_0x184_FL.fields{5}.scale = 1;
    ECOCAN.VCU_0x184_FL.fields{5}.offset = 0;
    ECOCAN.VCU_0x184_FL.fields{5}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x184_FL.fields{5}.multiplex_value = 0;

    ECOCAN.VCU_0x184_FL.fields{6}.name = 'VCU_TargetTorque';
    ECOCAN.VCU_0x184_FL.fields{6}.units = '0.1%';
    ECOCAN.VCU_0x184_FL.fields{6}.start_bit = 16;
    ECOCAN.VCU_0x184_FL.fields{6}.bit_length = 16;
    ECOCAN.VCU_0x184_FL.fields{6}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x184_FL.fields{6}.data_type = 'SIGNED';
    ECOCAN.VCU_0x184_FL.fields{6}.scale = 1;
    ECOCAN.VCU_0x184_FL.fields{6}.offset = 0;
    ECOCAN.VCU_0x184_FL.fields{6}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x184_FL.fields{6}.multiplex_value = 0;

    ECOCAN.VCU_0x184_FL.fields{7}.name = 'VCU_TorqueLimitPositiv';
    ECOCAN.VCU_0x184_FL.fields{7}.units = '0.1%';
    ECOCAN.VCU_0x184_FL.fields{7}.start_bit = 32;
    ECOCAN.VCU_0x184_FL.fields{7}.bit_length = 16;
    ECOCAN.VCU_0x184_FL.fields{7}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCU_0x184_FL.fields{7}.data_type = 'SIGNED';
    ECOCAN.VCU_0x184_FL.fields{7}.scale = 1;
    ECOCAN.VCU_0x184_FL.fields{7}.offset = 0;
    ECOCAN.VCU_0x184_FL.fields{7}.multiplex_type = 'Standard';
    ECOCAN.VCU_0x184_FL.fields{7}.multiplex_value = 0;


%%
%Network Node:MCU4
%Message Name:MCU_28A_RR
%Message Number:5
case 'MCU_28A_RR'
    ECOCAN.MCU_28A_RR = struct;
    ECOCAN.MCU_28A_RR.name = 'MCU_28A_RR';
    ECOCAN.MCU_28A_RR.description = 'MCU_28A_RR';
    ECOCAN.MCU_28A_RR.protocol  = 'ECOCAN';
    ECOCAN.MCU_28A_RR.id = hex2dec('28A');
    ECOCAN.MCU_28A_RR.idext = 'STANDARD';
    ECOCAN.MCU_28A_RR.payload_size =8;
    ECOCAN.MCU_28A_RR.interval =100;

    ECOCAN.MCU_28A_RR.fields{1}.name = 'MCU_ErrorInfo';
    ECOCAN.MCU_28A_RR.fields{1}.units = '';
    ECOCAN.MCU_28A_RR.fields{1}.start_bit = 32;
    ECOCAN.MCU_28A_RR.fields{1}.bit_length = 16;
    ECOCAN.MCU_28A_RR.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_28A_RR.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.MCU_28A_RR.fields{1}.scale = 1;
    ECOCAN.MCU_28A_RR.fields{1}.offset = 0;
    ECOCAN.MCU_28A_RR.fields{1}.multiplex_type = 'Standard';
    ECOCAN.MCU_28A_RR.fields{1}.multiplex_value = 0;

    ECOCAN.MCU_28A_RR.fields{2}.name = 'MCU_TempIGBT';
    ECOCAN.MCU_28A_RR.fields{2}.units = '¡æ';
    ECOCAN.MCU_28A_RR.fields{2}.start_bit = 48;
    ECOCAN.MCU_28A_RR.fields{2}.bit_length = 16;
    ECOCAN.MCU_28A_RR.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_28A_RR.fields{2}.data_type = 'SIGNED';
    ECOCAN.MCU_28A_RR.fields{2}.scale = 0.1;
    ECOCAN.MCU_28A_RR.fields{2}.offset = 0;
    ECOCAN.MCU_28A_RR.fields{2}.multiplex_type = 'Standard';
    ECOCAN.MCU_28A_RR.fields{2}.multiplex_value = 0;

    ECOCAN.MCU_28A_RR.fields{3}.name = 'MCU_TempInverter';
    ECOCAN.MCU_28A_RR.fields{3}.units = '¡æ';
    ECOCAN.MCU_28A_RR.fields{3}.start_bit = 16;
    ECOCAN.MCU_28A_RR.fields{3}.bit_length = 16;
    ECOCAN.MCU_28A_RR.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_28A_RR.fields{3}.data_type = 'SIGNED';
    ECOCAN.MCU_28A_RR.fields{3}.scale = 0.1;
    ECOCAN.MCU_28A_RR.fields{3}.offset = 0;
    ECOCAN.MCU_28A_RR.fields{3}.multiplex_type = 'Standard';
    ECOCAN.MCU_28A_RR.fields{3}.multiplex_value = 0;

    ECOCAN.MCU_28A_RR.fields{4}.name = 'MCU_TempMotor';
    ECOCAN.MCU_28A_RR.fields{4}.units = '¡æ';
    ECOCAN.MCU_28A_RR.fields{4}.start_bit = 0;
    ECOCAN.MCU_28A_RR.fields{4}.bit_length = 16;
    ECOCAN.MCU_28A_RR.fields{4}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_28A_RR.fields{4}.data_type = 'SIGNED';
    ECOCAN.MCU_28A_RR.fields{4}.scale = 0.1;
    ECOCAN.MCU_28A_RR.fields{4}.offset = 0;
    ECOCAN.MCU_28A_RR.fields{4}.multiplex_type = 'Standard';
    ECOCAN.MCU_28A_RR.fields{4}.multiplex_value = 0;


%%
%Network Node:MCU4
%Message Name:MCU_289_RL
%Message Number:6
case 'MCU_289_RL'
    ECOCAN.MCU_289_RL = struct;
    ECOCAN.MCU_289_RL.name = 'MCU_289_RL';
    ECOCAN.MCU_289_RL.description = 'MCU_289_RL';
    ECOCAN.MCU_289_RL.protocol  = 'ECOCAN';
    ECOCAN.MCU_289_RL.id = hex2dec('289');
    ECOCAN.MCU_289_RL.idext = 'STANDARD';
    ECOCAN.MCU_289_RL.payload_size =8;
    ECOCAN.MCU_289_RL.interval =100;

    ECOCAN.MCU_289_RL.fields{1}.name = 'MCU_ErrorInfo';
    ECOCAN.MCU_289_RL.fields{1}.units = '';
    ECOCAN.MCU_289_RL.fields{1}.start_bit = 32;
    ECOCAN.MCU_289_RL.fields{1}.bit_length = 16;
    ECOCAN.MCU_289_RL.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_289_RL.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.MCU_289_RL.fields{1}.scale = 1;
    ECOCAN.MCU_289_RL.fields{1}.offset = 0;
    ECOCAN.MCU_289_RL.fields{1}.multiplex_type = 'Standard';
    ECOCAN.MCU_289_RL.fields{1}.multiplex_value = 0;

    ECOCAN.MCU_289_RL.fields{2}.name = 'MCU_TempIGBT';
    ECOCAN.MCU_289_RL.fields{2}.units = '¡æ';
    ECOCAN.MCU_289_RL.fields{2}.start_bit = 48;
    ECOCAN.MCU_289_RL.fields{2}.bit_length = 16;
    ECOCAN.MCU_289_RL.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_289_RL.fields{2}.data_type = 'SIGNED';
    ECOCAN.MCU_289_RL.fields{2}.scale = 0.1;
    ECOCAN.MCU_289_RL.fields{2}.offset = 0;
    ECOCAN.MCU_289_RL.fields{2}.multiplex_type = 'Standard';
    ECOCAN.MCU_289_RL.fields{2}.multiplex_value = 0;

    ECOCAN.MCU_289_RL.fields{3}.name = 'MCU_TempInverter';
    ECOCAN.MCU_289_RL.fields{3}.units = '¡æ';
    ECOCAN.MCU_289_RL.fields{3}.start_bit = 16;
    ECOCAN.MCU_289_RL.fields{3}.bit_length = 16;
    ECOCAN.MCU_289_RL.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_289_RL.fields{3}.data_type = 'SIGNED';
    ECOCAN.MCU_289_RL.fields{3}.scale = 0.1;
    ECOCAN.MCU_289_RL.fields{3}.offset = 0;
    ECOCAN.MCU_289_RL.fields{3}.multiplex_type = 'Standard';
    ECOCAN.MCU_289_RL.fields{3}.multiplex_value = 0;

    ECOCAN.MCU_289_RL.fields{4}.name = 'MCU_TempMotor';
    ECOCAN.MCU_289_RL.fields{4}.units = '¡æ';
    ECOCAN.MCU_289_RL.fields{4}.start_bit = 0;
    ECOCAN.MCU_289_RL.fields{4}.bit_length = 16;
    ECOCAN.MCU_289_RL.fields{4}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_289_RL.fields{4}.data_type = 'SIGNED';
    ECOCAN.MCU_289_RL.fields{4}.scale = 0.1;
    ECOCAN.MCU_289_RL.fields{4}.offset = 0;
    ECOCAN.MCU_289_RL.fields{4}.multiplex_type = 'Standard';
    ECOCAN.MCU_289_RL.fields{4}.multiplex_value = 0;


%%
%Network Node:MCU4
%Message Name:MCU_288_RR
%Message Number:7
case 'MCU_288_RR'
    ECOCAN.MCU_288_RR = struct;
    ECOCAN.MCU_288_RR.name = 'MCU_288_RR';
    ECOCAN.MCU_288_RR.description = 'MCU_288_RR';
    ECOCAN.MCU_288_RR.protocol  = 'ECOCAN';
    ECOCAN.MCU_288_RR.id = hex2dec('288');
    ECOCAN.MCU_288_RR.idext = 'STANDARD';
    ECOCAN.MCU_288_RR.payload_size =8;
    ECOCAN.MCU_288_RR.interval =100;

    ECOCAN.MCU_288_RR.fields{1}.name = 'MCU_MagnetizingCurrent';
    ECOCAN.MCU_288_RR.fields{1}.units = 'Arms';
    ECOCAN.MCU_288_RR.fields{1}.start_bit = 48;
    ECOCAN.MCU_288_RR.fields{1}.bit_length = 16;
    ECOCAN.MCU_288_RR.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_288_RR.fields{1}.data_type = 'SIGNED';
    ECOCAN.MCU_288_RR.fields{1}.scale = 1;
    ECOCAN.MCU_288_RR.fields{1}.offset = 0;
    ECOCAN.MCU_288_RR.fields{1}.multiplex_type = 'Standard';
    ECOCAN.MCU_288_RR.fields{1}.multiplex_value = 0;

    ECOCAN.MCU_288_RR.fields{2}.name = 'MCU_TorqueFeedBack';
    ECOCAN.MCU_288_RR.fields{2}.units = '0.1%';
    ECOCAN.MCU_288_RR.fields{2}.start_bit = 32;
    ECOCAN.MCU_288_RR.fields{2}.bit_length = 16;
    ECOCAN.MCU_288_RR.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_288_RR.fields{2}.data_type = 'SIGNED';
    ECOCAN.MCU_288_RR.fields{2}.scale = 1;
    ECOCAN.MCU_288_RR.fields{2}.offset = 0;
    ECOCAN.MCU_288_RR.fields{2}.multiplex_type = 'Standard';
    ECOCAN.MCU_288_RR.fields{2}.multiplex_value = 0;

    ECOCAN.MCU_288_RR.fields{3}.name = 'MCU_ActualVelocity';
    ECOCAN.MCU_288_RR.fields{3}.units = 'rpm';
    ECOCAN.MCU_288_RR.fields{3}.start_bit = 16;
    ECOCAN.MCU_288_RR.fields{3}.bit_length = 16;
    ECOCAN.MCU_288_RR.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_288_RR.fields{3}.data_type = 'SIGNED';
    ECOCAN.MCU_288_RR.fields{3}.scale = 1;
    ECOCAN.MCU_288_RR.fields{3}.offset = 0;
    ECOCAN.MCU_288_RR.fields{3}.multiplex_type = 'Standard';
    ECOCAN.MCU_288_RR.fields{3}.multiplex_value = 0;

    ECOCAN.MCU_288_RR.fields{4}.name = 'MCU_DcOn';
    ECOCAN.MCU_288_RR.fields{4}.units = '';
    ECOCAN.MCU_288_RR.fields{4}.start_bit = 12;
    ECOCAN.MCU_288_RR.fields{4}.bit_length = 1;
    ECOCAN.MCU_288_RR.fields{4}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_288_RR.fields{4}.data_type = 'UNSIGNED';
    ECOCAN.MCU_288_RR.fields{4}.scale = 1;
    ECOCAN.MCU_288_RR.fields{4}.offset = 0;
    ECOCAN.MCU_288_RR.fields{4}.multiplex_type = 'Standard';
    ECOCAN.MCU_288_RR.fields{4}.multiplex_value = 0;

    ECOCAN.MCU_288_RR.fields{5}.name = 'MCU_QuitInverterOn';
    ECOCAN.MCU_288_RR.fields{5}.units = '';
    ECOCAN.MCU_288_RR.fields{5}.start_bit = 13;
    ECOCAN.MCU_288_RR.fields{5}.bit_length = 1;
    ECOCAN.MCU_288_RR.fields{5}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_288_RR.fields{5}.data_type = 'UNSIGNED';
    ECOCAN.MCU_288_RR.fields{5}.scale = 1;
    ECOCAN.MCU_288_RR.fields{5}.offset = 0;
    ECOCAN.MCU_288_RR.fields{5}.multiplex_type = 'Standard';
    ECOCAN.MCU_288_RR.fields{5}.multiplex_value = 0;

    ECOCAN.MCU_288_RR.fields{6}.name = 'MCU_Error';
    ECOCAN.MCU_288_RR.fields{6}.units = '';
    ECOCAN.MCU_288_RR.fields{6}.start_bit = 9;
    ECOCAN.MCU_288_RR.fields{6}.bit_length = 1;
    ECOCAN.MCU_288_RR.fields{6}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_288_RR.fields{6}.data_type = 'UNSIGNED';
    ECOCAN.MCU_288_RR.fields{6}.scale = 1;
    ECOCAN.MCU_288_RR.fields{6}.offset = 0;
    ECOCAN.MCU_288_RR.fields{6}.multiplex_type = 'Standard';
    ECOCAN.MCU_288_RR.fields{6}.multiplex_value = 0;

    ECOCAN.MCU_288_RR.fields{7}.name = 'MCU_QuitDcOn';
    ECOCAN.MCU_288_RR.fields{7}.units = '';
    ECOCAN.MCU_288_RR.fields{7}.start_bit = 11;
    ECOCAN.MCU_288_RR.fields{7}.bit_length = 1;
    ECOCAN.MCU_288_RR.fields{7}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_288_RR.fields{7}.data_type = 'UNSIGNED';
    ECOCAN.MCU_288_RR.fields{7}.scale = 1;
    ECOCAN.MCU_288_RR.fields{7}.offset = 0;
    ECOCAN.MCU_288_RR.fields{7}.multiplex_type = 'Standard';
    ECOCAN.MCU_288_RR.fields{7}.multiplex_value = 0;

    ECOCAN.MCU_288_RR.fields{8}.name = 'MCU_InverterOn';
    ECOCAN.MCU_288_RR.fields{8}.units = '';
    ECOCAN.MCU_288_RR.fields{8}.start_bit = 14;
    ECOCAN.MCU_288_RR.fields{8}.bit_length = 1;
    ECOCAN.MCU_288_RR.fields{8}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_288_RR.fields{8}.data_type = 'UNSIGNED';
    ECOCAN.MCU_288_RR.fields{8}.scale = 1;
    ECOCAN.MCU_288_RR.fields{8}.offset = 0;
    ECOCAN.MCU_288_RR.fields{8}.multiplex_type = 'Standard';
    ECOCAN.MCU_288_RR.fields{8}.multiplex_value = 0;

    ECOCAN.MCU_288_RR.fields{9}.name = 'MCU_SystemReady';
    ECOCAN.MCU_288_RR.fields{9}.units = '';
    ECOCAN.MCU_288_RR.fields{9}.start_bit = 8;
    ECOCAN.MCU_288_RR.fields{9}.bit_length = 1;
    ECOCAN.MCU_288_RR.fields{9}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_288_RR.fields{9}.data_type = 'UNSIGNED';
    ECOCAN.MCU_288_RR.fields{9}.scale = 1;
    ECOCAN.MCU_288_RR.fields{9}.offset = 0;
    ECOCAN.MCU_288_RR.fields{9}.multiplex_type = 'Standard';
    ECOCAN.MCU_288_RR.fields{9}.multiplex_value = 0;

    ECOCAN.MCU_288_RR.fields{10}.name = 'MCU_Warning';
    ECOCAN.MCU_288_RR.fields{10}.units = '';
    ECOCAN.MCU_288_RR.fields{10}.start_bit = 10;
    ECOCAN.MCU_288_RR.fields{10}.bit_length = 1;
    ECOCAN.MCU_288_RR.fields{10}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_288_RR.fields{10}.data_type = 'UNSIGNED';
    ECOCAN.MCU_288_RR.fields{10}.scale = 1;
    ECOCAN.MCU_288_RR.fields{10}.offset = 0;
    ECOCAN.MCU_288_RR.fields{10}.multiplex_type = 'Standard';
    ECOCAN.MCU_288_RR.fields{10}.multiplex_value = 0;

    ECOCAN.MCU_288_RR.fields{11}.name = 'MCU_Derating';
    ECOCAN.MCU_288_RR.fields{11}.units = '';
    ECOCAN.MCU_288_RR.fields{11}.start_bit = 15;
    ECOCAN.MCU_288_RR.fields{11}.bit_length = 1;
    ECOCAN.MCU_288_RR.fields{11}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_288_RR.fields{11}.data_type = 'UNSIGNED';
    ECOCAN.MCU_288_RR.fields{11}.scale = 1;
    ECOCAN.MCU_288_RR.fields{11}.offset = 0;
    ECOCAN.MCU_288_RR.fields{11}.multiplex_type = 'Standard';
    ECOCAN.MCU_288_RR.fields{11}.multiplex_value = 0;


%%
%Network Node:MCU4
%Message Name:MCU_287_RL
%Message Number:8
case 'MCU_287_RL'
    ECOCAN.MCU_287_RL = struct;
    ECOCAN.MCU_287_RL.name = 'MCU_287_RL';
    ECOCAN.MCU_287_RL.description = 'MCU_287_RL';
    ECOCAN.MCU_287_RL.protocol  = 'ECOCAN';
    ECOCAN.MCU_287_RL.id = hex2dec('287');
    ECOCAN.MCU_287_RL.idext = 'STANDARD';
    ECOCAN.MCU_287_RL.payload_size =8;
    ECOCAN.MCU_287_RL.interval =100;

    ECOCAN.MCU_287_RL.fields{1}.name = 'MCU_MagnetizingCurrent';
    ECOCAN.MCU_287_RL.fields{1}.units = 'Arms';
    ECOCAN.MCU_287_RL.fields{1}.start_bit = 48;
    ECOCAN.MCU_287_RL.fields{1}.bit_length = 16;
    ECOCAN.MCU_287_RL.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_287_RL.fields{1}.data_type = 'SIGNED';
    ECOCAN.MCU_287_RL.fields{1}.scale = 1;
    ECOCAN.MCU_287_RL.fields{1}.offset = 0;
    ECOCAN.MCU_287_RL.fields{1}.multiplex_type = 'Standard';
    ECOCAN.MCU_287_RL.fields{1}.multiplex_value = 0;

    ECOCAN.MCU_287_RL.fields{2}.name = 'MCU_TorqueFeedBack';
    ECOCAN.MCU_287_RL.fields{2}.units = '0.1%';
    ECOCAN.MCU_287_RL.fields{2}.start_bit = 32;
    ECOCAN.MCU_287_RL.fields{2}.bit_length = 16;
    ECOCAN.MCU_287_RL.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_287_RL.fields{2}.data_type = 'SIGNED';
    ECOCAN.MCU_287_RL.fields{2}.scale = 1;
    ECOCAN.MCU_287_RL.fields{2}.offset = 0;
    ECOCAN.MCU_287_RL.fields{2}.multiplex_type = 'Standard';
    ECOCAN.MCU_287_RL.fields{2}.multiplex_value = 0;

    ECOCAN.MCU_287_RL.fields{3}.name = 'MCU_ActualVelocity';
    ECOCAN.MCU_287_RL.fields{3}.units = 'rpm';
    ECOCAN.MCU_287_RL.fields{3}.start_bit = 16;
    ECOCAN.MCU_287_RL.fields{3}.bit_length = 16;
    ECOCAN.MCU_287_RL.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_287_RL.fields{3}.data_type = 'SIGNED';
    ECOCAN.MCU_287_RL.fields{3}.scale = 1;
    ECOCAN.MCU_287_RL.fields{3}.offset = 0;
    ECOCAN.MCU_287_RL.fields{3}.multiplex_type = 'Standard';
    ECOCAN.MCU_287_RL.fields{3}.multiplex_value = 0;

    ECOCAN.MCU_287_RL.fields{4}.name = 'MCU_DcOn';
    ECOCAN.MCU_287_RL.fields{4}.units = '';
    ECOCAN.MCU_287_RL.fields{4}.start_bit = 12;
    ECOCAN.MCU_287_RL.fields{4}.bit_length = 1;
    ECOCAN.MCU_287_RL.fields{4}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_287_RL.fields{4}.data_type = 'UNSIGNED';
    ECOCAN.MCU_287_RL.fields{4}.scale = 1;
    ECOCAN.MCU_287_RL.fields{4}.offset = 0;
    ECOCAN.MCU_287_RL.fields{4}.multiplex_type = 'Standard';
    ECOCAN.MCU_287_RL.fields{4}.multiplex_value = 0;

    ECOCAN.MCU_287_RL.fields{5}.name = 'MCU_QuitInverterOn';
    ECOCAN.MCU_287_RL.fields{5}.units = '';
    ECOCAN.MCU_287_RL.fields{5}.start_bit = 13;
    ECOCAN.MCU_287_RL.fields{5}.bit_length = 1;
    ECOCAN.MCU_287_RL.fields{5}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_287_RL.fields{5}.data_type = 'UNSIGNED';
    ECOCAN.MCU_287_RL.fields{5}.scale = 1;
    ECOCAN.MCU_287_RL.fields{5}.offset = 0;
    ECOCAN.MCU_287_RL.fields{5}.multiplex_type = 'Standard';
    ECOCAN.MCU_287_RL.fields{5}.multiplex_value = 0;

    ECOCAN.MCU_287_RL.fields{6}.name = 'MCU_Error';
    ECOCAN.MCU_287_RL.fields{6}.units = '';
    ECOCAN.MCU_287_RL.fields{6}.start_bit = 9;
    ECOCAN.MCU_287_RL.fields{6}.bit_length = 1;
    ECOCAN.MCU_287_RL.fields{6}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_287_RL.fields{6}.data_type = 'UNSIGNED';
    ECOCAN.MCU_287_RL.fields{6}.scale = 1;
    ECOCAN.MCU_287_RL.fields{6}.offset = 0;
    ECOCAN.MCU_287_RL.fields{6}.multiplex_type = 'Standard';
    ECOCAN.MCU_287_RL.fields{6}.multiplex_value = 0;

    ECOCAN.MCU_287_RL.fields{7}.name = 'MCU_QuitDcOn';
    ECOCAN.MCU_287_RL.fields{7}.units = '';
    ECOCAN.MCU_287_RL.fields{7}.start_bit = 11;
    ECOCAN.MCU_287_RL.fields{7}.bit_length = 1;
    ECOCAN.MCU_287_RL.fields{7}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_287_RL.fields{7}.data_type = 'UNSIGNED';
    ECOCAN.MCU_287_RL.fields{7}.scale = 1;
    ECOCAN.MCU_287_RL.fields{7}.offset = 0;
    ECOCAN.MCU_287_RL.fields{7}.multiplex_type = 'Standard';
    ECOCAN.MCU_287_RL.fields{7}.multiplex_value = 0;

    ECOCAN.MCU_287_RL.fields{8}.name = 'MCU_InverterOn';
    ECOCAN.MCU_287_RL.fields{8}.units = '';
    ECOCAN.MCU_287_RL.fields{8}.start_bit = 14;
    ECOCAN.MCU_287_RL.fields{8}.bit_length = 1;
    ECOCAN.MCU_287_RL.fields{8}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_287_RL.fields{8}.data_type = 'UNSIGNED';
    ECOCAN.MCU_287_RL.fields{8}.scale = 1;
    ECOCAN.MCU_287_RL.fields{8}.offset = 0;
    ECOCAN.MCU_287_RL.fields{8}.multiplex_type = 'Standard';
    ECOCAN.MCU_287_RL.fields{8}.multiplex_value = 0;

    ECOCAN.MCU_287_RL.fields{9}.name = 'MCU_SystemReady';
    ECOCAN.MCU_287_RL.fields{9}.units = '';
    ECOCAN.MCU_287_RL.fields{9}.start_bit = 8;
    ECOCAN.MCU_287_RL.fields{9}.bit_length = 1;
    ECOCAN.MCU_287_RL.fields{9}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_287_RL.fields{9}.data_type = 'UNSIGNED';
    ECOCAN.MCU_287_RL.fields{9}.scale = 1;
    ECOCAN.MCU_287_RL.fields{9}.offset = 0;
    ECOCAN.MCU_287_RL.fields{9}.multiplex_type = 'Standard';
    ECOCAN.MCU_287_RL.fields{9}.multiplex_value = 0;

    ECOCAN.MCU_287_RL.fields{10}.name = 'MCU_Warning';
    ECOCAN.MCU_287_RL.fields{10}.units = '';
    ECOCAN.MCU_287_RL.fields{10}.start_bit = 10;
    ECOCAN.MCU_287_RL.fields{10}.bit_length = 1;
    ECOCAN.MCU_287_RL.fields{10}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_287_RL.fields{10}.data_type = 'UNSIGNED';
    ECOCAN.MCU_287_RL.fields{10}.scale = 1;
    ECOCAN.MCU_287_RL.fields{10}.offset = 0;
    ECOCAN.MCU_287_RL.fields{10}.multiplex_type = 'Standard';
    ECOCAN.MCU_287_RL.fields{10}.multiplex_value = 0;

    ECOCAN.MCU_287_RL.fields{11}.name = 'MCU_Derating';
    ECOCAN.MCU_287_RL.fields{11}.units = '';
    ECOCAN.MCU_287_RL.fields{11}.start_bit = 15;
    ECOCAN.MCU_287_RL.fields{11}.bit_length = 1;
    ECOCAN.MCU_287_RL.fields{11}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_287_RL.fields{11}.data_type = 'UNSIGNED';
    ECOCAN.MCU_287_RL.fields{11}.scale = 1;
    ECOCAN.MCU_287_RL.fields{11}.offset = 0;
    ECOCAN.MCU_287_RL.fields{11}.multiplex_type = 'Standard';
    ECOCAN.MCU_287_RL.fields{11}.multiplex_value = 0;


%%
%Network Node:MCU4
%Message Name:MCU_286_FR
%Message Number:9
case 'MCU_286_FR'
    ECOCAN.MCU_286_FR = struct;
    ECOCAN.MCU_286_FR.name = 'MCU_286_FR';
    ECOCAN.MCU_286_FR.description = 'MCU_286_FR';
    ECOCAN.MCU_286_FR.protocol  = 'ECOCAN';
    ECOCAN.MCU_286_FR.id = hex2dec('286');
    ECOCAN.MCU_286_FR.idext = 'STANDARD';
    ECOCAN.MCU_286_FR.payload_size =8;
    ECOCAN.MCU_286_FR.interval =100;

    ECOCAN.MCU_286_FR.fields{1}.name = 'MCU_ErrorInfo';
    ECOCAN.MCU_286_FR.fields{1}.units = '';
    ECOCAN.MCU_286_FR.fields{1}.start_bit = 32;
    ECOCAN.MCU_286_FR.fields{1}.bit_length = 16;
    ECOCAN.MCU_286_FR.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_286_FR.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.MCU_286_FR.fields{1}.scale = 1;
    ECOCAN.MCU_286_FR.fields{1}.offset = 0;
    ECOCAN.MCU_286_FR.fields{1}.multiplex_type = 'Standard';
    ECOCAN.MCU_286_FR.fields{1}.multiplex_value = 0;

    ECOCAN.MCU_286_FR.fields{2}.name = 'MCU_TempIGBT';
    ECOCAN.MCU_286_FR.fields{2}.units = '¡æ';
    ECOCAN.MCU_286_FR.fields{2}.start_bit = 48;
    ECOCAN.MCU_286_FR.fields{2}.bit_length = 16;
    ECOCAN.MCU_286_FR.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_286_FR.fields{2}.data_type = 'SIGNED';
    ECOCAN.MCU_286_FR.fields{2}.scale = 0.1;
    ECOCAN.MCU_286_FR.fields{2}.offset = 0;
    ECOCAN.MCU_286_FR.fields{2}.multiplex_type = 'Standard';
    ECOCAN.MCU_286_FR.fields{2}.multiplex_value = 0;

    ECOCAN.MCU_286_FR.fields{3}.name = 'MCU_TempInverter';
    ECOCAN.MCU_286_FR.fields{3}.units = '¡æ';
    ECOCAN.MCU_286_FR.fields{3}.start_bit = 16;
    ECOCAN.MCU_286_FR.fields{3}.bit_length = 16;
    ECOCAN.MCU_286_FR.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_286_FR.fields{3}.data_type = 'SIGNED';
    ECOCAN.MCU_286_FR.fields{3}.scale = 0.1;
    ECOCAN.MCU_286_FR.fields{3}.offset = 0;
    ECOCAN.MCU_286_FR.fields{3}.multiplex_type = 'Standard';
    ECOCAN.MCU_286_FR.fields{3}.multiplex_value = 0;

    ECOCAN.MCU_286_FR.fields{4}.name = 'MCU_TempMotor';
    ECOCAN.MCU_286_FR.fields{4}.units = '¡æ';
    ECOCAN.MCU_286_FR.fields{4}.start_bit = 0;
    ECOCAN.MCU_286_FR.fields{4}.bit_length = 16;
    ECOCAN.MCU_286_FR.fields{4}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_286_FR.fields{4}.data_type = 'SIGNED';
    ECOCAN.MCU_286_FR.fields{4}.scale = 0.1;
    ECOCAN.MCU_286_FR.fields{4}.offset = 0;
    ECOCAN.MCU_286_FR.fields{4}.multiplex_type = 'Standard';
    ECOCAN.MCU_286_FR.fields{4}.multiplex_value = 0;


%%
%Network Node:MCU4
%Message Name:MCU_284_FR
%Message Number:10
case 'MCU_284_FR'
    ECOCAN.MCU_284_FR = struct;
    ECOCAN.MCU_284_FR.name = 'MCU_284_FR';
    ECOCAN.MCU_284_FR.description = 'MCU_284_FR';
    ECOCAN.MCU_284_FR.protocol  = 'ECOCAN';
    ECOCAN.MCU_284_FR.id = hex2dec('284');
    ECOCAN.MCU_284_FR.idext = 'STANDARD';
    ECOCAN.MCU_284_FR.payload_size =8;
    ECOCAN.MCU_284_FR.interval =100;

    ECOCAN.MCU_284_FR.fields{1}.name = 'MCU_MagnetizingCurrent';
    ECOCAN.MCU_284_FR.fields{1}.units = 'Arms';
    ECOCAN.MCU_284_FR.fields{1}.start_bit = 48;
    ECOCAN.MCU_284_FR.fields{1}.bit_length = 16;
    ECOCAN.MCU_284_FR.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_284_FR.fields{1}.data_type = 'SIGNED';
    ECOCAN.MCU_284_FR.fields{1}.scale = 1;
    ECOCAN.MCU_284_FR.fields{1}.offset = 0;
    ECOCAN.MCU_284_FR.fields{1}.multiplex_type = 'Standard';
    ECOCAN.MCU_284_FR.fields{1}.multiplex_value = 0;

    ECOCAN.MCU_284_FR.fields{2}.name = 'MCU_TorqueFeedBack';
    ECOCAN.MCU_284_FR.fields{2}.units = '0.1%';
    ECOCAN.MCU_284_FR.fields{2}.start_bit = 32;
    ECOCAN.MCU_284_FR.fields{2}.bit_length = 16;
    ECOCAN.MCU_284_FR.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_284_FR.fields{2}.data_type = 'SIGNED';
    ECOCAN.MCU_284_FR.fields{2}.scale = 1;
    ECOCAN.MCU_284_FR.fields{2}.offset = 0;
    ECOCAN.MCU_284_FR.fields{2}.multiplex_type = 'Standard';
    ECOCAN.MCU_284_FR.fields{2}.multiplex_value = 0;

    ECOCAN.MCU_284_FR.fields{3}.name = 'MCU_ActualVelocity';
    ECOCAN.MCU_284_FR.fields{3}.units = 'rpm';
    ECOCAN.MCU_284_FR.fields{3}.start_bit = 16;
    ECOCAN.MCU_284_FR.fields{3}.bit_length = 16;
    ECOCAN.MCU_284_FR.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_284_FR.fields{3}.data_type = 'SIGNED';
    ECOCAN.MCU_284_FR.fields{3}.scale = 1;
    ECOCAN.MCU_284_FR.fields{3}.offset = 0;
    ECOCAN.MCU_284_FR.fields{3}.multiplex_type = 'Standard';
    ECOCAN.MCU_284_FR.fields{3}.multiplex_value = 0;

    ECOCAN.MCU_284_FR.fields{4}.name = 'MCU_DcOn';
    ECOCAN.MCU_284_FR.fields{4}.units = '';
    ECOCAN.MCU_284_FR.fields{4}.start_bit = 12;
    ECOCAN.MCU_284_FR.fields{4}.bit_length = 1;
    ECOCAN.MCU_284_FR.fields{4}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_284_FR.fields{4}.data_type = 'UNSIGNED';
    ECOCAN.MCU_284_FR.fields{4}.scale = 1;
    ECOCAN.MCU_284_FR.fields{4}.offset = 0;
    ECOCAN.MCU_284_FR.fields{4}.multiplex_type = 'Standard';
    ECOCAN.MCU_284_FR.fields{4}.multiplex_value = 0;

    ECOCAN.MCU_284_FR.fields{5}.name = 'MCU_QuitInverterOn';
    ECOCAN.MCU_284_FR.fields{5}.units = '';
    ECOCAN.MCU_284_FR.fields{5}.start_bit = 13;
    ECOCAN.MCU_284_FR.fields{5}.bit_length = 1;
    ECOCAN.MCU_284_FR.fields{5}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_284_FR.fields{5}.data_type = 'UNSIGNED';
    ECOCAN.MCU_284_FR.fields{5}.scale = 1;
    ECOCAN.MCU_284_FR.fields{5}.offset = 0;
    ECOCAN.MCU_284_FR.fields{5}.multiplex_type = 'Standard';
    ECOCAN.MCU_284_FR.fields{5}.multiplex_value = 0;

    ECOCAN.MCU_284_FR.fields{6}.name = 'MCU_Error';
    ECOCAN.MCU_284_FR.fields{6}.units = '';
    ECOCAN.MCU_284_FR.fields{6}.start_bit = 9;
    ECOCAN.MCU_284_FR.fields{6}.bit_length = 1;
    ECOCAN.MCU_284_FR.fields{6}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_284_FR.fields{6}.data_type = 'UNSIGNED';
    ECOCAN.MCU_284_FR.fields{6}.scale = 1;
    ECOCAN.MCU_284_FR.fields{6}.offset = 0;
    ECOCAN.MCU_284_FR.fields{6}.multiplex_type = 'Standard';
    ECOCAN.MCU_284_FR.fields{6}.multiplex_value = 0;

    ECOCAN.MCU_284_FR.fields{7}.name = 'MCU_QuitDcOn';
    ECOCAN.MCU_284_FR.fields{7}.units = '';
    ECOCAN.MCU_284_FR.fields{7}.start_bit = 11;
    ECOCAN.MCU_284_FR.fields{7}.bit_length = 1;
    ECOCAN.MCU_284_FR.fields{7}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_284_FR.fields{7}.data_type = 'UNSIGNED';
    ECOCAN.MCU_284_FR.fields{7}.scale = 1;
    ECOCAN.MCU_284_FR.fields{7}.offset = 0;
    ECOCAN.MCU_284_FR.fields{7}.multiplex_type = 'Standard';
    ECOCAN.MCU_284_FR.fields{7}.multiplex_value = 0;

    ECOCAN.MCU_284_FR.fields{8}.name = 'MCU_InverterOn';
    ECOCAN.MCU_284_FR.fields{8}.units = '';
    ECOCAN.MCU_284_FR.fields{8}.start_bit = 14;
    ECOCAN.MCU_284_FR.fields{8}.bit_length = 1;
    ECOCAN.MCU_284_FR.fields{8}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_284_FR.fields{8}.data_type = 'UNSIGNED';
    ECOCAN.MCU_284_FR.fields{8}.scale = 1;
    ECOCAN.MCU_284_FR.fields{8}.offset = 0;
    ECOCAN.MCU_284_FR.fields{8}.multiplex_type = 'Standard';
    ECOCAN.MCU_284_FR.fields{8}.multiplex_value = 0;

    ECOCAN.MCU_284_FR.fields{9}.name = 'MCU_SystemReady';
    ECOCAN.MCU_284_FR.fields{9}.units = '';
    ECOCAN.MCU_284_FR.fields{9}.start_bit = 8;
    ECOCAN.MCU_284_FR.fields{9}.bit_length = 1;
    ECOCAN.MCU_284_FR.fields{9}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_284_FR.fields{9}.data_type = 'UNSIGNED';
    ECOCAN.MCU_284_FR.fields{9}.scale = 1;
    ECOCAN.MCU_284_FR.fields{9}.offset = 0;
    ECOCAN.MCU_284_FR.fields{9}.multiplex_type = 'Standard';
    ECOCAN.MCU_284_FR.fields{9}.multiplex_value = 0;

    ECOCAN.MCU_284_FR.fields{10}.name = 'MCU_Warning';
    ECOCAN.MCU_284_FR.fields{10}.units = '';
    ECOCAN.MCU_284_FR.fields{10}.start_bit = 10;
    ECOCAN.MCU_284_FR.fields{10}.bit_length = 1;
    ECOCAN.MCU_284_FR.fields{10}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_284_FR.fields{10}.data_type = 'UNSIGNED';
    ECOCAN.MCU_284_FR.fields{10}.scale = 1;
    ECOCAN.MCU_284_FR.fields{10}.offset = 0;
    ECOCAN.MCU_284_FR.fields{10}.multiplex_type = 'Standard';
    ECOCAN.MCU_284_FR.fields{10}.multiplex_value = 0;

    ECOCAN.MCU_284_FR.fields{11}.name = 'MCU_Derating';
    ECOCAN.MCU_284_FR.fields{11}.units = '';
    ECOCAN.MCU_284_FR.fields{11}.start_bit = 15;
    ECOCAN.MCU_284_FR.fields{11}.bit_length = 1;
    ECOCAN.MCU_284_FR.fields{11}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_284_FR.fields{11}.data_type = 'UNSIGNED';
    ECOCAN.MCU_284_FR.fields{11}.scale = 1;
    ECOCAN.MCU_284_FR.fields{11}.offset = 0;
    ECOCAN.MCU_284_FR.fields{11}.multiplex_type = 'Standard';
    ECOCAN.MCU_284_FR.fields{11}.multiplex_value = 0;


%%
%Network Node:MCU4
%Message Name:MCU_285_FL
%Message Number:11
case 'MCU_285_FL'
    ECOCAN.MCU_285_FL = struct;
    ECOCAN.MCU_285_FL.name = 'MCU_285_FL';
    ECOCAN.MCU_285_FL.description = 'MCU_285_FL';
    ECOCAN.MCU_285_FL.protocol  = 'ECOCAN';
    ECOCAN.MCU_285_FL.id = hex2dec('285');
    ECOCAN.MCU_285_FL.idext = 'STANDARD';
    ECOCAN.MCU_285_FL.payload_size =8;
    ECOCAN.MCU_285_FL.interval =100;

    ECOCAN.MCU_285_FL.fields{1}.name = 'MCU_ErrorInfo';
    ECOCAN.MCU_285_FL.fields{1}.units = '';
    ECOCAN.MCU_285_FL.fields{1}.start_bit = 32;
    ECOCAN.MCU_285_FL.fields{1}.bit_length = 16;
    ECOCAN.MCU_285_FL.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_285_FL.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.MCU_285_FL.fields{1}.scale = 1;
    ECOCAN.MCU_285_FL.fields{1}.offset = 0;
    ECOCAN.MCU_285_FL.fields{1}.multiplex_type = 'Standard';
    ECOCAN.MCU_285_FL.fields{1}.multiplex_value = 0;

    ECOCAN.MCU_285_FL.fields{2}.name = 'MCU_TempIGBT';
    ECOCAN.MCU_285_FL.fields{2}.units = '¡æ';
    ECOCAN.MCU_285_FL.fields{2}.start_bit = 48;
    ECOCAN.MCU_285_FL.fields{2}.bit_length = 16;
    ECOCAN.MCU_285_FL.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_285_FL.fields{2}.data_type = 'SIGNED';
    ECOCAN.MCU_285_FL.fields{2}.scale = 0.1;
    ECOCAN.MCU_285_FL.fields{2}.offset = 0;
    ECOCAN.MCU_285_FL.fields{2}.multiplex_type = 'Standard';
    ECOCAN.MCU_285_FL.fields{2}.multiplex_value = 0;

    ECOCAN.MCU_285_FL.fields{3}.name = 'MCU_TempInverter';
    ECOCAN.MCU_285_FL.fields{3}.units = '¡æ';
    ECOCAN.MCU_285_FL.fields{3}.start_bit = 16;
    ECOCAN.MCU_285_FL.fields{3}.bit_length = 16;
    ECOCAN.MCU_285_FL.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_285_FL.fields{3}.data_type = 'SIGNED';
    ECOCAN.MCU_285_FL.fields{3}.scale = 0.1;
    ECOCAN.MCU_285_FL.fields{3}.offset = 0;
    ECOCAN.MCU_285_FL.fields{3}.multiplex_type = 'Standard';
    ECOCAN.MCU_285_FL.fields{3}.multiplex_value = 0;

    ECOCAN.MCU_285_FL.fields{4}.name = 'MCU_TempMotor';
    ECOCAN.MCU_285_FL.fields{4}.units = '¡æ';
    ECOCAN.MCU_285_FL.fields{4}.start_bit = 0;
    ECOCAN.MCU_285_FL.fields{4}.bit_length = 16;
    ECOCAN.MCU_285_FL.fields{4}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_285_FL.fields{4}.data_type = 'SIGNED';
    ECOCAN.MCU_285_FL.fields{4}.scale = 0.1;
    ECOCAN.MCU_285_FL.fields{4}.offset = 0;
    ECOCAN.MCU_285_FL.fields{4}.multiplex_type = 'Standard';
    ECOCAN.MCU_285_FL.fields{4}.multiplex_value = 0;


%%
%Network Node:MCU4
%Message Name:MCU_283_FL
%Message Number:12
case 'MCU_283_FL'
    ECOCAN.MCU_283_FL = struct;
    ECOCAN.MCU_283_FL.name = 'MCU_283_FL';
    ECOCAN.MCU_283_FL.description = 'MCU_283_FL';
    ECOCAN.MCU_283_FL.protocol  = 'ECOCAN';
    ECOCAN.MCU_283_FL.id = hex2dec('283');
    ECOCAN.MCU_283_FL.idext = 'STANDARD';
    ECOCAN.MCU_283_FL.payload_size =8;
    ECOCAN.MCU_283_FL.interval =100;

    ECOCAN.MCU_283_FL.fields{1}.name = 'MCU_MagnetizingCurrent';
    ECOCAN.MCU_283_FL.fields{1}.units = 'Arms';
    ECOCAN.MCU_283_FL.fields{1}.start_bit = 48;
    ECOCAN.MCU_283_FL.fields{1}.bit_length = 16;
    ECOCAN.MCU_283_FL.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_283_FL.fields{1}.data_type = 'SIGNED';
    ECOCAN.MCU_283_FL.fields{1}.scale = 1;
    ECOCAN.MCU_283_FL.fields{1}.offset = 0;
    ECOCAN.MCU_283_FL.fields{1}.multiplex_type = 'Standard';
    ECOCAN.MCU_283_FL.fields{1}.multiplex_value = 0;

    ECOCAN.MCU_283_FL.fields{2}.name = 'MCU_TorqueFeedBack';
    ECOCAN.MCU_283_FL.fields{2}.units = '0.1%';
    ECOCAN.MCU_283_FL.fields{2}.start_bit = 32;
    ECOCAN.MCU_283_FL.fields{2}.bit_length = 16;
    ECOCAN.MCU_283_FL.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_283_FL.fields{2}.data_type = 'SIGNED';
    ECOCAN.MCU_283_FL.fields{2}.scale = 1;
    ECOCAN.MCU_283_FL.fields{2}.offset = 0;
    ECOCAN.MCU_283_FL.fields{2}.multiplex_type = 'Standard';
    ECOCAN.MCU_283_FL.fields{2}.multiplex_value = 0;

    ECOCAN.MCU_283_FL.fields{3}.name = 'MCU_ActualVelocity';
    ECOCAN.MCU_283_FL.fields{3}.units = 'rpm';
    ECOCAN.MCU_283_FL.fields{3}.start_bit = 16;
    ECOCAN.MCU_283_FL.fields{3}.bit_length = 16;
    ECOCAN.MCU_283_FL.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_283_FL.fields{3}.data_type = 'SIGNED';
    ECOCAN.MCU_283_FL.fields{3}.scale = 1;
    ECOCAN.MCU_283_FL.fields{3}.offset = 0;
    ECOCAN.MCU_283_FL.fields{3}.multiplex_type = 'Standard';
    ECOCAN.MCU_283_FL.fields{3}.multiplex_value = 0;

    ECOCAN.MCU_283_FL.fields{4}.name = 'MCU_DcOn';
    ECOCAN.MCU_283_FL.fields{4}.units = '';
    ECOCAN.MCU_283_FL.fields{4}.start_bit = 12;
    ECOCAN.MCU_283_FL.fields{4}.bit_length = 1;
    ECOCAN.MCU_283_FL.fields{4}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_283_FL.fields{4}.data_type = 'UNSIGNED';
    ECOCAN.MCU_283_FL.fields{4}.scale = 1;
    ECOCAN.MCU_283_FL.fields{4}.offset = 0;
    ECOCAN.MCU_283_FL.fields{4}.multiplex_type = 'Standard';
    ECOCAN.MCU_283_FL.fields{4}.multiplex_value = 0;

    ECOCAN.MCU_283_FL.fields{5}.name = 'MCU_QuitInverterOn';
    ECOCAN.MCU_283_FL.fields{5}.units = '';
    ECOCAN.MCU_283_FL.fields{5}.start_bit = 13;
    ECOCAN.MCU_283_FL.fields{5}.bit_length = 1;
    ECOCAN.MCU_283_FL.fields{5}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_283_FL.fields{5}.data_type = 'UNSIGNED';
    ECOCAN.MCU_283_FL.fields{5}.scale = 1;
    ECOCAN.MCU_283_FL.fields{5}.offset = 0;
    ECOCAN.MCU_283_FL.fields{5}.multiplex_type = 'Standard';
    ECOCAN.MCU_283_FL.fields{5}.multiplex_value = 0;

    ECOCAN.MCU_283_FL.fields{6}.name = 'MCU_Error';
    ECOCAN.MCU_283_FL.fields{6}.units = '';
    ECOCAN.MCU_283_FL.fields{6}.start_bit = 9;
    ECOCAN.MCU_283_FL.fields{6}.bit_length = 1;
    ECOCAN.MCU_283_FL.fields{6}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_283_FL.fields{6}.data_type = 'UNSIGNED';
    ECOCAN.MCU_283_FL.fields{6}.scale = 1;
    ECOCAN.MCU_283_FL.fields{6}.offset = 0;
    ECOCAN.MCU_283_FL.fields{6}.multiplex_type = 'Standard';
    ECOCAN.MCU_283_FL.fields{6}.multiplex_value = 0;

    ECOCAN.MCU_283_FL.fields{7}.name = 'MCU_QuitDcOn';
    ECOCAN.MCU_283_FL.fields{7}.units = '';
    ECOCAN.MCU_283_FL.fields{7}.start_bit = 11;
    ECOCAN.MCU_283_FL.fields{7}.bit_length = 1;
    ECOCAN.MCU_283_FL.fields{7}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_283_FL.fields{7}.data_type = 'UNSIGNED';
    ECOCAN.MCU_283_FL.fields{7}.scale = 1;
    ECOCAN.MCU_283_FL.fields{7}.offset = 0;
    ECOCAN.MCU_283_FL.fields{7}.multiplex_type = 'Standard';
    ECOCAN.MCU_283_FL.fields{7}.multiplex_value = 0;

    ECOCAN.MCU_283_FL.fields{8}.name = 'MCU_InverterOn';
    ECOCAN.MCU_283_FL.fields{8}.units = '';
    ECOCAN.MCU_283_FL.fields{8}.start_bit = 14;
    ECOCAN.MCU_283_FL.fields{8}.bit_length = 1;
    ECOCAN.MCU_283_FL.fields{8}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_283_FL.fields{8}.data_type = 'UNSIGNED';
    ECOCAN.MCU_283_FL.fields{8}.scale = 1;
    ECOCAN.MCU_283_FL.fields{8}.offset = 0;
    ECOCAN.MCU_283_FL.fields{8}.multiplex_type = 'Standard';
    ECOCAN.MCU_283_FL.fields{8}.multiplex_value = 0;

    ECOCAN.MCU_283_FL.fields{9}.name = 'MCU_SystemReady';
    ECOCAN.MCU_283_FL.fields{9}.units = '';
    ECOCAN.MCU_283_FL.fields{9}.start_bit = 8;
    ECOCAN.MCU_283_FL.fields{9}.bit_length = 1;
    ECOCAN.MCU_283_FL.fields{9}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_283_FL.fields{9}.data_type = 'UNSIGNED';
    ECOCAN.MCU_283_FL.fields{9}.scale = 1;
    ECOCAN.MCU_283_FL.fields{9}.offset = 0;
    ECOCAN.MCU_283_FL.fields{9}.multiplex_type = 'Standard';
    ECOCAN.MCU_283_FL.fields{9}.multiplex_value = 0;

    ECOCAN.MCU_283_FL.fields{10}.name = 'MCU_Warning';
    ECOCAN.MCU_283_FL.fields{10}.units = '';
    ECOCAN.MCU_283_FL.fields{10}.start_bit = 10;
    ECOCAN.MCU_283_FL.fields{10}.bit_length = 1;
    ECOCAN.MCU_283_FL.fields{10}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_283_FL.fields{10}.data_type = 'UNSIGNED';
    ECOCAN.MCU_283_FL.fields{10}.scale = 1;
    ECOCAN.MCU_283_FL.fields{10}.offset = 0;
    ECOCAN.MCU_283_FL.fields{10}.multiplex_type = 'Standard';
    ECOCAN.MCU_283_FL.fields{10}.multiplex_value = 0;

    ECOCAN.MCU_283_FL.fields{11}.name = 'MCU_Derating';
    ECOCAN.MCU_283_FL.fields{11}.units = '';
    ECOCAN.MCU_283_FL.fields{11}.start_bit = 15;
    ECOCAN.MCU_283_FL.fields{11}.bit_length = 1;
    ECOCAN.MCU_283_FL.fields{11}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.MCU_283_FL.fields{11}.data_type = 'UNSIGNED';
    ECOCAN.MCU_283_FL.fields{11}.scale = 1;
    ECOCAN.MCU_283_FL.fields{11}.offset = 0;
    ECOCAN.MCU_283_FL.fields{11}.multiplex_type = 'Standard';
    ECOCAN.MCU_283_FL.fields{11}.multiplex_value = 0;


  end
  try
    msg = ECOCAN.(msgname);
  catch
  end
end
end
