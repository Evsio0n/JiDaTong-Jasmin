.bytecode 50.0
.class synchronized com/nd/android/u/business/db/UDatabase$DatabaseHelper
.super android/database/sqlite/SQLiteOpenHelper
.inner class private static DatabaseHelper inner com/nd/android/u/business/db/UDatabase$DatabaseHelper outer com/nd/android/u/business/db/UDatabase

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokestatic com/nd/android/u/business/db/UDatabase/access$0()Ljava/lang/String;
bipush 13
invokespecial com/nd/android/u/business/db/UDatabase$DatabaseHelper/<init>(Landroid/content/Context;Ljava/lang/String;I)V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Ljava/lang/String;I)V
aload 0
aload 1
aload 2
aconst_null
iload 3
invokespecial com/nd/android/u/business/db/UDatabase$DatabaseHelper/<init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return
.limit locals 4
.limit stack 5
.end method

.method public <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
aload 0
aload 1
aload 2
aload 3
iload 4
invokespecial android/database/sqlite/SQLiteOpenHelper/<init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return
.limit locals 5
.limit stack 5
.end method

.method public close()V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
invokespecial android/database/sqlite/SQLiteOpenHelper/close()V
L1:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
invokestatic com/nd/android/u/business/db/table/RecentContactRecordTable/getCreateSql()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
getstatic com/nd/android/u/business/db/table/UserMessageTable/CREATE_TABLE Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
getstatic com/nd/android/u/business/db/table/GroupMessageTable/CREATE_TABLE Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table if not exists uu_quickreply (_id integer primary key autoincrement, uid BIGINT, text TEXT, _index INT, uuid TEXT )"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
getstatic com/nd/android/u/business/db/table/AppMessageTable/CREATE_TABLE Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
getstatic com/nd/android/u/business/db/table/SystemRecordTable/CREATE_TABLE Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
getstatic com/nd/android/u/business/db/table/UserMessageTable/CREATE_INDEX Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
getstatic com/nd/android/u/business/db/table/GroupMessageTable/CREATE_INDEX Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE INDEX uu_quickreply_INDEX1 ON uu_quickreply(uid)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
getstatic com/nd/android/u/business/db/table/AppMessageTable/CREATE_INDEX Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
getstatic com/nd/android/u/business/db/table/SystemRecordTable/CREATE_INDEX Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_commonsettinconfig (_id integer primary key autoincrement, receivestarthour integer,receivestartminute integer,receiveendhour integer, receiveednminute integer,openvibra integer, newmsg_notification integer, silent integer, Landscape_mode integer, touchVibrate integer, popup_reminder integer, recmsg_background integer, auto_version_ck integer, lightReminder integer )"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
aload 1
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/createTable(Landroid/database/sqlite/SQLiteDatabase;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
aload 1
invokespecial android/database/sqlite/SQLiteOpenHelper/onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
iload 2
aload 1
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/upgrade(ILandroid/database/sqlite/SQLiteDatabase;)V
iload 2
tableswitch 1
L0
L1
L2
L3
L4
L5
L6
L7
L8
L8
L9
L10
default : L11
L11:
return
L0:
aload 1
ldc "uu_chatrecord"
ldc "businessid"
ldc "TEXT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L1:
aload 1
ldc "uu_apprecord"
ldc "isread"
ldc "INT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L2:
aload 1
ldc "uu_chatrecord"
ldc "isread"
ldc "INT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "uu_chatgrouprecord"
ldc "isread"
ldc "INT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L3:
aload 1
ldc "create table uu_commonsettinconfig (_id integer primary key autoincrement, receivestarthour integer,receivestartminute integer,receiveendhour integer, receiveednminute integer,openvibra integer, newmsg_notification integer, silent integer, Landscape_mode integer, touchVibrate integer, popup_reminder integer, recmsg_background integer, auto_version_ck integer, lightReminder integer )"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
L4:
aload 1
ldc "uu_apprecord"
ldc "businessid"
invokestatic com/nd/android/u/business/db/DbUtils/isExistColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
ifne L12
aload 1
ldc "DROP INDEX uu_apprecord_INDEX"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "uu_apprecord"
ldc "businessid"
ldc "TEXT"
invokestatic com/nd/android/u/business/db/DbUtils/getAlterColumnString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
getstatic com/nd/android/u/business/db/table/AppMessageTable/CREATE_INDEX Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
L12:
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
bipush 45
ldc "4510"
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getAppMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/deleteAllMessage()V 0
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
bipush 45
ldc "4513"
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getAppMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/deleteAllMessage()V 0
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
bipush 45
ldc "4514"
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getAppMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/deleteAllMessage()V 0
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
sipush 9122
ldc "9180"
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getAppMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/deleteAllMessage()V 0
L5:
aload 1
ldc "uu_chatrecord"
ldc "voicejson"
ldc "TEXT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "uu_chatgrouprecord"
ldc "voicejson"
ldc "TEXT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L6:
aload 1
ldc "uu_chatgrouprecord"
ldc "mulptid"
ldc "BIGINT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L7:
aload 1
ldc "uu_apprecord"
ldc "gid"
ldc "TEXT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "uu_apprecord"
ldc "grouptype"
ldc "INT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L8:
aload 1
ldc "uu_recentcontactrecord"
ldc "duration"
ldc "INT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "uu_chatrecord"
ldc "duration"
ldc "INT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "uu_chatgrouprecord"
ldc "duration"
ldc "INT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L9:
aload 1
ldc "uu_recentcontactrecord"
ldc "version"
ldc "INT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "uu_recentcontactrecord"
ldc "acktype"
ldc "INT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "uu_chatrecord"
ldc "acktype"
ldc "INT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L10:
aload 1
ldc "uu_recentcontactrecord"
ldc "toptime"
ldc "INT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "uu_recentcontactrecord"
ldc "parent"
ldc "INT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "uu_apprecord"
ldc "content_type"
ldc "INT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "uu_chatrecord"
ldc "parent"
ldc "INT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "uu_chatgrouprecord"
ldc "parent"
ldc "INT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "uu_systemrecord"
ldc "parent"
ldc "INT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "uu_apprecord"
ldc "parent"
ldc "INT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 4
.limit stack 4
.end method
