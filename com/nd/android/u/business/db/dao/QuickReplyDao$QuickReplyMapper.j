.bytecode 50.0
.class final synchronized com/nd/android/u/business/db/dao/QuickReplyDao$QuickReplyMapper
.super java/lang/Object
.implements com/nd/android/u/business/db/dbUtils/RowMapper
.signature "Ljava/lang/Object;Lcom/nd/android/u/business/db/dbUtils/RowMapper<Lcom/nd/android/u/controller/bean/QuickReply;>;"
.inner class private static final QuickReplyMapper inner com/nd/android/u/business/db/dao/QuickReplyDao$QuickReplyMapper outer com/nd/android/u/business/db/dao/QuickReplyDao

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/nd/android/u/business/db/dao/QuickReplyDao$QuickReplyMapper;)V
aload 0
invokespecial com/nd/android/u/business/db/dao/QuickReplyDao$QuickReplyMapper/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public mapRow(Landroid/database/Cursor;I)Lcom/nd/android/u/controller/bean/QuickReply;
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
aconst_null
areturn
L1:
new com/nd/android/u/controller/bean/QuickReply
dup
invokespecial com/nd/android/u/controller/bean/QuickReply/<init>()V
astore 3
aload 3
aload 1
aload 1
ldc "text"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/controller/bean/QuickReply/setText(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "uuid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/controller/bean/QuickReply/setUUID(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "_index"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/controller/bean/QuickReply/setOrder(I)V
aload 3
areturn
.limit locals 4
.limit stack 4
.end method

.method public volatile synthetic mapRow(Landroid/database/Cursor;I)Ljava/lang/Object;
aload 0
aload 1
iload 2
invokevirtual com/nd/android/u/business/db/dao/QuickReplyDao$QuickReplyMapper/mapRow(Landroid/database/Cursor;I)Lcom/nd/android/u/controller/bean/QuickReply;
areturn
.limit locals 3
.limit stack 3
.end method
