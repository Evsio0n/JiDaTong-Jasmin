.bytecode 50.0
.class public synchronized com/nd/rj/common/util/db/SqliteHelper
.super android/database/sqlite/SQLiteOpenHelper

.field private 'mDataBaseRef' Lcom/nd/rj/common/util/db/IDataBaseRef;

.method public <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/nd/rj/common/util/db/IDataBaseRef;)V
aload 0
aload 1
aload 2
aload 3
iload 4
invokespecial android/database/sqlite/SQLiteOpenHelper/<init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
aload 0
aload 5
putfield com/nd/rj/common/util/db/SqliteHelper/mDataBaseRef Lcom/nd/rj/common/util/db/IDataBaseRef;
return
.limit locals 6
.limit stack 5
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
getfield com/nd/rj/common/util/db/SqliteHelper/mDataBaseRef Lcom/nd/rj/common/util/db/IDataBaseRef;
aload 1
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/onCreate(Landroid/database/sqlite/SQLiteDatabase;)V 1
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
aload 0
getfield com/nd/rj/common/util/db/SqliteHelper/mDataBaseRef Lcom/nd/rj/common/util/db/IDataBaseRef;
aload 1
iload 2
iload 3
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V 3
return
.limit locals 4
.limit stack 4
.end method
