.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/db/dao/ChatMessageDao_Public
.super com/nd/android/u/business/db/dao/AbstractChatDao

.method public <init>()V
aload 0
invokespecial com/nd/android/u/business/db/dao/AbstractChatDao/<init>()V
aload 0
ldc "uu_public_number_message"
putfield com/nd/android/u/publicNumber/db/dao/ChatMessageDao_Public/tableName Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method private updateExtraflag(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;Ljava/lang/Object;)Z
.catch java/lang/ClassCastException from L0 to L1 using L2
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/getGenerateId()Ljava/lang/String; 0
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc "DB_ERROR"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "updateExtraflag fail:null generateId of "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/publicNumber/db/dao/ChatMessageDao_Public/tableName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L0:
aload 2
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
istore 3
L1:
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 2
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 5
aload 5
ldc "extraflag"
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
aload 0
getfield com/nd/android/u/publicNumber/db/dao/ChatMessageDao_Public/tableName Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
ldc "generateid = ?"
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 5
invokevirtual com/nd/android/u/business/db/dbUtils/Query/values(Landroid/content/ContentValues;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
getfield com/nd/android/u/publicNumber/db/dao/ChatMessageDao_Public/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 2
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/upload(Lcom/nd/android/u/business/db/dbUtils/Query;)I
iconst_m1
if_icmple L3
iconst_1
istore 4
L4:
iload 4
ireturn
L2:
astore 1
ldc "DB_ERROR"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "updateExtraflag fail:value is not a number: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L3:
iconst_0
istore 4
goto L4
.limit locals 6
.limit stack 3
.end method

.method protected getIDCondition(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Ljava/lang/String;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/getTypeId()Ljava/lang/Object; 0
astore 2
aload 2
ifnonnull L0
L1:
aconst_null
areturn
L0:
aload 2
invokevirtual java/lang/Object/toString()Ljava/lang/String;
ldc "0"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
aload 2
ldc " 1 = 1 "
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L2
aload 2
invokevirtual java/lang/Object/toString()Ljava/lang/String;
areturn
L2:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "gid = '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/getTypeId()Ljava/lang/Object; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 2
.end method

.method public updateByCmd(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;ILjava/lang/Object;)Z
iload 2
tableswitch 0
L0
default : L1
L1:
iconst_0
ireturn
L0:
aload 0
aload 1
aload 3
invokespecial com/nd/android/u/publicNumber/db/dao/ChatMessageDao_Public/updateExtraflag(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;Ljava/lang/Object;)Z
ireturn
.limit locals 4
.limit stack 3
.end method
