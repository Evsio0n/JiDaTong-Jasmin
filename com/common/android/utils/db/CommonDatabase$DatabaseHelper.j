.bytecode 50.0
.class synchronized com/common/android/utils/db/CommonDatabase$DatabaseHelper
.super android/database/sqlite/SQLiteOpenHelper
.inner class private DatabaseHelper inner com/common/android/utils/db/CommonDatabase$DatabaseHelper outer com/common/android/utils/db/CommonDatabase

.field final synthetic 'this$0' Lcom/common/android/utils/db/CommonDatabase;

.method public <init>(Lcom/common/android/utils/db/CommonDatabase;Landroid/content/Context;)V
aload 0
aload 1
aload 2
aload 1
invokestatic com/common/android/utils/db/CommonDatabase/access$000(Lcom/common/android/utils/db/CommonDatabase;)Ljava/lang/String;
iconst_1
invokespecial com/common/android/utils/db/CommonDatabase$DatabaseHelper/<init>(Lcom/common/android/utils/db/CommonDatabase;Landroid/content/Context;Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 5
.end method

.method public <init>(Lcom/common/android/utils/db/CommonDatabase;Landroid/content/Context;Ljava/lang/String;I)V
aload 0
aload 1
aload 2
aload 3
aconst_null
iload 4
invokespecial com/common/android/utils/db/CommonDatabase$DatabaseHelper/<init>(Lcom/common/android/utils/db/CommonDatabase;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return
.limit locals 5
.limit stack 6
.end method

.method public <init>(Lcom/common/android/utils/db/CommonDatabase;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
aload 0
aload 1
putfield com/common/android/utils/db/CommonDatabase$DatabaseHelper/this$0 Lcom/common/android/utils/db/CommonDatabase;
aload 0
aload 2
aload 3
aload 4
iload 5
invokespecial android/database/sqlite/SQLiteOpenHelper/<init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return
.limit locals 6
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
ldc "create table uu_smiley_history (_id integer , uid long not null ,smiley_id INT ,path TEXT ,name TEXT ,time LONG ,tip TEXT ,shortcut TEXT , constraint pk_t2 primary key (uid,smiley_id))"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE INDEX uu_smiley_history_INDEX1 ON uu_smiley_history(uid)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
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
return
.limit locals 4
.limit stack 0
.end method
