.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/business/db/PublicNumberMessageDb
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
getstatic com/nd/android/u/publicNumber/db/table/PublicNumberMessageTable/CREATE_TABLE Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
getstatic com/nd/android/u/publicNumber/db/table/PublicNumberMessageTable/CREATE_INDEX Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getDbOperation()Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
getfield com/nd/android/u/publicNumber/business/db/PublicNumberMessageDb/mDbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
ifnonnull L0
aload 0
new com/nd/android/u/publicNumber/db/dao/ChatMessageDao_Public
dup
invokespecial com/nd/android/u/publicNumber/db/dao/ChatMessageDao_Public/<init>()V
putfield com/nd/android/u/publicNumber/business/db/PublicNumberMessageDb/mDbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
L0:
aload 0
getfield com/nd/android/u/publicNumber/business/db/PublicNumberMessageDb/mDbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
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
L2
default : L3
L3:
return
L0:
aload 2
ldc "uu_public_number_message"
invokestatic com/nd/android/u/business/db/DbUtils/isTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
ifne L1
aload 2
getstatic com/nd/android/u/publicNumber/db/table/PublicNumberMessageTable/CREATE_TABLE Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 2
getstatic com/nd/android/u/publicNumber/db/table/PublicNumberMessageTable/CREATE_INDEX Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
L1:
aload 2
ldc "uu_public_number_message"
ldc "mulptid"
ldc "BIGINT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L2:
aload 2
ldc "uu_public_number_message"
ldc "parent"
ldc "INT"
invokestatic com/nd/android/u/business/db/DbUtils/alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 4
.end method
