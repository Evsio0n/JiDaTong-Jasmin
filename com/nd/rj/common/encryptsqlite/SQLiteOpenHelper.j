.bytecode 50.0
.class public synchronized abstract com/nd/rj/common/encryptsqlite/SQLiteOpenHelper
.super java/lang/Object

.field private 'mCppDB' Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;

.method public <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
.throws java/lang/Exception
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
astore 6
aload 6
aload 2
invokevirtual android/content/Context/getDatabasePath(Ljava/lang/String;)Ljava/io/File;
astore 1
aload 1
invokevirtual java/io/File/exists()Z
ifne L6
aload 6
aload 2
iconst_0
aconst_null
invokevirtual android/content/Context/openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
astore 2
aload 2
ifnull L7
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
aload 0
new com/nd/rj/common/encryptsqlite/SQLiteDatabase
dup
aload 1
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
ldc ""
invokespecial com/nd/rj/common/encryptsqlite/SQLiteDatabase/<init>(Ljava/lang/String;Ljava/lang/String;)V
putfield com/nd/rj/common/encryptsqlite/SQLiteOpenHelper/mCppDB Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteOpenHelper/mCppDB Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;
aload 3
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/resetKey(Ljava/lang/String;)I
pop
L7:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteOpenHelper/mCppDB Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;
ifnull L8
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteOpenHelper/mCppDB Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/isOpen()Z
ifeq L8
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteOpenHelper/mCppDB Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;
aload 1
invokevirtual java/io/File/getParent()Ljava/lang/String;
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/setTmpFilePath(Ljava/lang/String;)Z
pop
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteOpenHelper/mCppDB Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/getVersion()I
istore 5
iload 4
iload 5
if_icmple L9
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteOpenHelper/mCppDB Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/beginTransaction()I
pop
iload 5
ifne L4
L0:
aload 0
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteOpenHelper/mCppDB Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteOpenHelper/onCreate(Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;)V
L1:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteOpenHelper/mCppDB Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;
iload 4
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/setVersion(I)V
L3:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteOpenHelper/mCppDB Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;
iconst_0
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/endTransaction(Z)I
pop
L9:
aload 0
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteOpenHelper/mCppDB Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteOpenHelper/onOpen(Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;)V
return
L6:
aload 0
new com/nd/rj/common/encryptsqlite/SQLiteDatabase
dup
aload 1
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
aload 3
invokespecial com/nd/rj/common/encryptsqlite/SQLiteDatabase/<init>(Ljava/lang/String;Ljava/lang/String;)V
putfield com/nd/rj/common/encryptsqlite/SQLiteOpenHelper/mCppDB Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;
goto L7
L4:
aload 0
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteOpenHelper/mCppDB Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;
iload 5
iload 4
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteOpenHelper/onUpgrade(Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;II)V
L5:
goto L1
L2:
astore 1
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteOpenHelper/mCppDB Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;
iconst_1
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/endTransaction(Z)I
pop
aload 1
athrow
L8:
new java/lang/Exception
dup
ldc "unable to open database file!"
invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
athrow
.limit locals 7
.limit stack 5
.end method

.method public closeDB()V
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteOpenHelper/mCppDB Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;
ifnull L0
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteOpenHelper/mCppDB Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/close()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public getSqliteDatabase()Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteOpenHelper/mCppDB Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;
areturn
.limit locals 1
.limit stack 1
.end method

.method public abstract onCreate(Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;)V
.end method

.method public abstract onOpen(Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;)V
.end method

.method public abstract onUpgrade(Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;II)V
.end method
