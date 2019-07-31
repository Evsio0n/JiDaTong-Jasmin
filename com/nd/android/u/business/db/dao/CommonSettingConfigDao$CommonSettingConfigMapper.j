.bytecode 50.0
.class final synchronized com/nd/android/u/business/db/dao/CommonSettingConfigDao$CommonSettingConfigMapper
.super java/lang/Object
.implements com/nd/android/u/business/db/dbUtils/RowMapper
.signature "Ljava/lang/Object;Lcom/nd/android/u/business/db/dbUtils/RowMapper<Lcom/nd/android/u/controller/bean/CommonSettingConfig;>;"
.inner class private static final CommonSettingConfigMapper inner com/nd/android/u/business/db/dao/CommonSettingConfigDao$CommonSettingConfigMapper outer com/nd/android/u/business/db/dao/CommonSettingConfigDao

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/nd/android/u/business/db/dao/CommonSettingConfigDao$CommonSettingConfigMapper;)V
aload 0
invokespecial com/nd/android/u/business/db/dao/CommonSettingConfigDao$CommonSettingConfigMapper/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public mapRow(Landroid/database/Cursor;I)Lcom/nd/android/u/controller/bean/CommonSettingConfig;
new com/nd/android/u/controller/bean/CommonSettingConfig
dup
invokespecial com/nd/android/u/controller/bean/CommonSettingConfig/<init>()V
astore 3
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 3
aload 1
aload 1
ldc "Landscape_mode"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/setLandscape_mode(I)V
aload 3
aload 1
aload 1
ldc "touchVibrate"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/setTouchVibrate(I)V
aload 3
aload 1
aload 1
ldc "silent"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/setSilent(I)V
aload 3
aload 1
aload 1
ldc "popup_reminder"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/setPopup_reminder(I)V
aload 3
aload 1
aload 1
ldc "recmsg_background"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/setRecmsg_background(I)V
aload 3
aload 1
aload 1
ldc "newmsg_notification"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/setNewmsg_notification(I)V
aload 3
aload 1
aload 1
ldc "receivestarthour"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/setReceivestart_hour(I)V
aload 3
aload 1
aload 1
ldc "receivestartminute"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/setReceivestart_minute(I)V
aload 3
aload 1
aload 1
ldc "receiveendhour"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/setReceiveend_hour(I)V
aload 3
aload 1
aload 1
ldc "receiveednminute"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/setReceiveend_minute(I)V
aload 3
aload 1
aload 1
ldc "lightReminder"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/setLightReminder(I)V
L0:
aload 3
areturn
.limit locals 4
.limit stack 4
.end method

.method public volatile synthetic mapRow(Landroid/database/Cursor;I)Ljava/lang/Object;
aload 0
aload 1
iload 2
invokevirtual com/nd/android/u/business/db/dao/CommonSettingConfigDao$CommonSettingConfigMapper/mapRow(Landroid/database/Cursor;I)Lcom/nd/android/u/controller/bean/CommonSettingConfig;
areturn
.limit locals 3
.limit stack 3
.end method
