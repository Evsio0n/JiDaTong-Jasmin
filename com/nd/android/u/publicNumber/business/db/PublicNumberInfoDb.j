.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/business/db/PublicNumberInfoDb
.super com/nd/android/u/publicNumber/business/db/AbstracPublicNumberDb

.method public <init>()V
aload 0
invokespecial com/nd/android/u/publicNumber/business/db/AbstracPublicNumberDb/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public createTable(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
invokestatic com/nd/android/u/publicNumber/db/table/PublicNumberInfoTable/getCreateTableStance()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
invokestatic com/nd/android/u/publicNumber/db/table/PublicNumberInfoTable/getCreateIndexStance()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getDbOperation()Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
getfield com/nd/android/u/publicNumber/business/db/PublicNumberInfoDb/mDbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
ifnonnull L0
aload 0
new com/nd/android/u/publicNumber/db/dao/PublicNumberInfoDao
dup
invokespecial com/nd/android/u/publicNumber/db/dao/PublicNumberInfoDao/<init>()V
putfield com/nd/android/u/publicNumber/business/db/PublicNumberInfoDb/mDbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
L0:
aload 0
getfield com/nd/android/u/publicNumber/business/db/PublicNumberInfoDb/mDbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
areturn
.limit locals 1
.limit stack 3
.end method

.method public upgrade(ILandroid/database/sqlite/SQLiteDatabase;)V
iload 1
tableswitch 7
L0
L0
L0
L1
L1
L1
default : L2
L2:
return
L0:
aload 2
ldc "public_number_info"
invokestatic com/nd/android/u/business/db/DbUtils/isTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
ifne L1
aload 2
invokestatic com/nd/android/u/publicNumber/db/table/PublicNumberInfoTable/getCreateTableStance()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 2
invokestatic com/nd/android/u/publicNumber/db/table/PublicNumberInfoTable/getCreateIndexStance()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
L1:
aload 2
ldc "public_number_info"
ldc "regtype"
ldc "INT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 4
.end method
