.bytecode 50.0
.class public synchronized com/nd/android/u/business/db/dao/ChatMessageDao_App
.super com/nd/android/u/business/db/dao/AbstractChatDao

.field private 'mCondition' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/business/db/dao/AbstractChatDao/<init>()V
aload 0
ldc " ( appid = %d and code = '%s' )"
putfield com/nd/android/u/business/db/dao/ChatMessageDao_App/mCondition Ljava/lang/String;
aload 0
ldc "uu_apprecord"
putfield com/nd/android/u/business/db/dao/ChatMessageDao_App/tableName Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method protected getIDCondition(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Ljava/lang/String;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/getTypeId()Ljava/lang/Object; 0
astore 1
aload 1
ifnonnull L0
L1:
aconst_null
areturn
L0:
aload 1
ldc " 1 = 1 "
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L2
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
areturn
L2:
aload 1
checkcast [Ljava/lang/String;
astore 1
aload 1
iconst_0
aaload
ldc "0"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
aload 0
getfield com/nd/android/u/business/db/dao/ChatMessageDao_App/mCondition Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 1
iconst_0
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 1
iconst_1
aaload
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 6
.end method
