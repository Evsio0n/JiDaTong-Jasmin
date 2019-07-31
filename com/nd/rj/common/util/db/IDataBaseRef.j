.bytecode 50.0
.class public abstract interface com/nd/rj/common/util/db/IDataBaseRef
.super java/lang/Object

.method public abstract InsertTable(Ljava/lang/String;Landroid/content/ContentValues;)I
.end method

.method public abstract UpdateTable(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract beginTransaction()V
.end method

.method public abstract close()V
.end method

.method public abstract columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract endTransaction(I)V
.end method

.method public abstract execSql(Ljava/lang/String;)I
.end method

.method public abstract execSql(Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method public abstract getDb()Landroid/database/sqlite/SQLiteDatabase;
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public abstract open(Landroid/content/Context;Ljava/lang/String;)I
.end method

.method public abstract querySql(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract querySql(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
.end method
