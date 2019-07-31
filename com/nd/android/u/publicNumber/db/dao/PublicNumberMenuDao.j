.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/db/dao/PublicNumberMenuDao
.super com/nd/android/u/business/db/dao/AbstractChatDao

.method public <init>()V
aload 0
invokespecial com/nd/android/u/business/db/dao/AbstractChatDao/<init>()V
aload 0
ldc "public_number_menu"
putfield com/nd/android/u/publicNumber/db/dao/PublicNumberMenuDao/tableName Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method protected getIDCondition(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "pspid = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/getTypeId()Ljava/lang/Object; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected getPrimaryCondition(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Ljava/lang/String;
aload 0
aload 1
invokevirtual com/nd/android/u/publicNumber/db/dao/PublicNumberMenuDao/getIDCondition(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method
