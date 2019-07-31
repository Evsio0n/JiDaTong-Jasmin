.bytecode 50.0
.class public synchronized com/nd/android/u/business/db/dao/ChatMessageDao_System
.super com/nd/android/u/business/db/dao/AbstractChatDao

.method public <init>()V
aload 0
invokespecial com/nd/android/u/business/db/dao/AbstractChatDao/<init>()V
aload 0
ldc "uu_systemrecord"
putfield com/nd/android/u/business/db/dao/ChatMessageDao_System/tableName Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method protected getIDCondition(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Ljava/lang/String;
ldc " 1 = 1 "
areturn
.limit locals 2
.limit stack 1
.end method
