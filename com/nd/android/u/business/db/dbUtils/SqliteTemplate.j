.bytecode 50.0
.class public synchronized com/nd/android/u/business/db/dbUtils/SqliteTemplate
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String; = "SqliteTemplate"

.field private 'DEBUG' Z

.field private 'mDb' Landroid/database/sqlite/SQLiteDatabase;

.method public <init>(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/business/db/dbUtils/SqliteTemplate/DEBUG Z
aload 0
aload 1
putfield com/nd/android/u/business/db/dbUtils/SqliteTemplate/mDb Landroid/database/sqlite/SQLiteDatabase;
return
.limit locals 2
.limit stack 2
.end method

.method public delete(Lcom/nd/android/u/business/db/dbUtils/Query;)Z
aload 1
aload 0
getfield com/nd/android/u/business/db/dbUtils/SqliteTemplate/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/setDb(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/delete()I
istore 2
aload 0
getfield com/nd/android/u/business/db/dbUtils/SqliteTemplate/DEBUG Z
ifeq L0
iload 2
ifle L1
ldc "[Success] "
astore 3
L2:
ldc "SqliteTemplate"
new java/lang/StringBuilder
dup
aload 3
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "Delete "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/v(Ljava/lang/String;Ljava/lang/String;)V
L0:
iload 2
ifle L3
iconst_1
ireturn
L1:
ldc "[Fail] "
astore 3
goto L2
L3:
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method public execSql(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/db/dbUtils/SqliteTemplate/mDb Landroid/database/sqlite/SQLiteDatabase;
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public insert(Lcom/nd/android/u/business/db/dbUtils/Query;)J
.throws android/database/SQLException
aload 1
aload 0
getfield com/nd/android/u/business/db/dbUtils/SqliteTemplate/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/setDb(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/insert()J
lstore 2
aload 0
getfield com/nd/android/u/business/db/dbUtils/SqliteTemplate/DEBUG Z
ifeq L0
lload 2
ldc2_w -1L
lcmp
ifeq L1
ldc "[Success] "
astore 4
L2:
ldc "SqliteTemplate"
new java/lang/StringBuilder
dup
aload 4
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "Insert "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/getContentValues()Landroid/content/ContentValues;
invokevirtual android/content/ContentValues/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/v(Ljava/lang/String;Ljava/lang/String;)V
L0:
lload 2
lreturn
L1:
ldc "[Fail] "
astore 4
goto L2
.limit locals 5
.limit stack 4
.end method

.method public query(Ljava/lang/String;)Landroid/database/Cursor;
new com/nd/android/u/business/db/dbUtils/Query
dup
aload 0
getfield com/nd/android/u/business/db/dbUtils/SqliteTemplate/mDb Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/query(Ljava/lang/String;)Landroid/database/Cursor;
areturn
.limit locals 2
.limit stack 3
.end method

.method public queryForArrString(Lcom/nd/android/u/business/db/dbUtils/Query;)[Ljava/lang/String;
.catch all from L0 to L1 using L2
iconst_2
anewarray java/lang/String
astore 2
aload 1
aload 0
getfield com/nd/android/u/business/db/dbUtils/SqliteTemplate/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/setDb(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/select()Landroid/database/Cursor;
astore 1
aload 1
ifnull L3
L0:
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L1
aload 2
iconst_0
aload 1
iconst_0
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
aastore
aload 2
iconst_1
aload 1
iconst_1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
aastore
L1:
aload 1
invokeinterface android/database/Cursor/close()V 0
L3:
aload 2
areturn
L2:
astore 2
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 2
athrow
.limit locals 3
.limit stack 4
.end method

.method public queryForArrStringEx(Lcom/nd/android/u/business/db/dbUtils/Query;)Ljava/util/ArrayList;
.signature "(Lcom/nd/android/u/business/db/dbUtils/Query;)Ljava/util/ArrayList<Ljava/lang/String;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/queryForCursor(Lcom/nd/android/u/business/db/dbUtils/Query;)Landroid/database/Cursor;
astore 1
L0:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifne L1
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 2
areturn
L1:
aload 2
aload 1
iconst_0
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L0
.limit locals 3
.limit stack 3
.end method

.method public queryForCursor(Landroid/database/sqlite/SQLiteDatabase;Lcom/nd/android/u/business/db/dbUtils/Query;)Landroid/database/Cursor;
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 2
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/setDb(Landroid/database/sqlite/SQLiteDatabase;)V
aload 2
invokevirtual com/nd/android/u/business/db/dbUtils/Query/select()Landroid/database/Cursor;
areturn
.limit locals 3
.limit stack 2
.end method

.method public queryForCursor(Lcom/nd/android/u/business/db/dbUtils/Query;)Landroid/database/Cursor;
aload 1
aload 0
getfield com/nd/android/u/business/db/dbUtils/SqliteTemplate/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/setDb(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/select()Landroid/database/Cursor;
areturn
.limit locals 2
.limit stack 2
.end method

.method public queryForCursor(Lcom/nd/android/u/business/db/dbUtils/Query;Ljava/lang/String;)Landroid/database/Cursor;
aload 1
aload 0
getfield com/nd/android/u/business/db/dbUtils/SqliteTemplate/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/setDb(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
aload 2
invokevirtual com/nd/android/u/business/db/dbUtils/Query/select(Ljava/lang/String;)Landroid/database/Cursor;
areturn
.limit locals 3
.limit stack 2
.end method

.method public queryForInt(Lcom/nd/android/u/business/db/dbUtils/Query;)I
.catch all from L0 to L1 using L2
iconst_0
istore 2
iconst_0
istore 3
aload 1
aload 0
getfield com/nd/android/u/business/db/dbUtils/SqliteTemplate/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/setDb(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/select()Landroid/database/Cursor;
astore 1
aload 1
ifnull L3
iload 3
istore 2
L0:
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L1
aload 1
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 2
L1:
aload 1
invokeinterface android/database/Cursor/close()V 0
L3:
iload 2
ireturn
L2:
astore 4
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 4
athrow
.limit locals 5
.limit stack 2
.end method

.method public queryForList(Landroid/database/sqlite/SQLiteDatabase;Lcom/nd/android/u/business/db/dbUtils/Query;Lcom/nd/android/u/business/db/dbUtils/RowMapper;)Ljava/util/List;
.signature "<T:Ljava/lang/Object;>(Landroid/database/sqlite/SQLiteDatabase;Lcom/nd/android/u/business/db/dbUtils/Query;Lcom/nd/android/u/business/db/dbUtils/RowMapper<TT;>;)Ljava/util/List<TT;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 0
aload 1
aload 2
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/queryForCursor(Landroid/database/sqlite/SQLiteDatabase;Lcom/nd/android/u/business/db/dbUtils/Query;)Landroid/database/Cursor;
astore 1
aload 1
ifnonnull L0
aload 4
areturn
L1:
aload 4
aload 3
aload 1
iconst_1
invokeinterface com/nd/android/u/business/db/dbUtils/RowMapper/mapRow(Landroid/database/Cursor;I)Ljava/lang/Object; 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L0:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifne L1
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 4
areturn
.limit locals 5
.limit stack 4
.end method

.method public queryForList(Lcom/nd/android/u/business/db/dbUtils/Query;Lcom/nd/android/u/business/db/dbUtils/RowMapper;)Ljava/util/List;
.signature "<T:Ljava/lang/Object;>(Lcom/nd/android/u/business/db/dbUtils/Query;Lcom/nd/android/u/business/db/dbUtils/RowMapper<TT;>;)Ljava/util/List<TT;>;"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/queryForCursor(Lcom/nd/android/u/business/db/dbUtils/Query;)Landroid/database/Cursor;
astore 1
aload 1
ifnull L5
L0:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
istore 3
L1:
iload 3
ifne L3
aload 1
invokeinterface android/database/Cursor/close()V 0
L5:
aload 4
areturn
L3:
aload 4
aload 2
aload 1
iconst_1
invokeinterface com/nd/android/u/business/db/dbUtils/RowMapper/mapRow(Landroid/database/Cursor;I)Ljava/lang/Object; 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L4:
goto L0
L2:
astore 2
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 2
athrow
.limit locals 5
.limit stack 4
.end method

.method public queryForLong(Lcom/nd/android/u/business/db/dbUtils/Query;)J
.catch all from L0 to L1 using L2
lconst_0
lstore 2
aload 1
aload 0
getfield com/nd/android/u/business/db/dbUtils/SqliteTemplate/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/setDb(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/select()Landroid/database/Cursor;
astore 1
lload 2
lstore 4
aload 1
ifnull L3
L0:
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L1
aload 1
iconst_0
invokeinterface android/database/Cursor/getLong(I)J 1
lstore 2
L1:
aload 1
invokeinterface android/database/Cursor/close()V 0
lload 2
lstore 4
L3:
lload 4
lreturn
L2:
astore 6
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 6
athrow
.limit locals 7
.limit stack 2
.end method

.method public queryForLongArray(Lcom/nd/android/u/business/db/dbUtils/Query;)[J
.catch all from L0 to L1 using L2
iconst_2
newarray long
astore 2
aload 1
aload 0
getfield com/nd/android/u/business/db/dbUtils/SqliteTemplate/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/setDb(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/select()Landroid/database/Cursor;
astore 1
aload 1
ifnull L3
L0:
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L1
aload 2
iconst_0
aload 1
iconst_0
invokeinterface android/database/Cursor/getLong(I)J 1
lastore
aload 2
iconst_1
aload 1
iconst_1
invokeinterface android/database/Cursor/getLong(I)J 1
lastore
L1:
aload 1
invokeinterface android/database/Cursor/close()V 0
L3:
aload 2
areturn
L2:
astore 2
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 2
athrow
.limit locals 3
.limit stack 4
.end method

.method public queryForObject(Lcom/nd/android/u/business/db/dbUtils/Query;Lcom/nd/android/u/business/db/dbUtils/RowMapper;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/nd/android/u/business/db/dbUtils/Query;Lcom/nd/android/u/business/db/dbUtils/RowMapper<TT;>;)TT;"
.catch all from L0 to L1 using L2
aload 1
aload 0
getfield com/nd/android/u/business/db/dbUtils/SqliteTemplate/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/setDb(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/select()Landroid/database/Cursor;
astore 3
aconst_null
astore 1
aload 3
ifnull L3
L0:
aload 3
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 2
aload 3
aload 3
invokeinterface android/database/Cursor/getCount()I 0
invokeinterface com/nd/android/u/business/db/dbUtils/RowMapper/mapRow(Landroid/database/Cursor;I)Ljava/lang/Object; 2
astore 1
L1:
aload 3
invokeinterface android/database/Cursor/close()V 0
L3:
aload 1
areturn
L2:
astore 1
aload 3
invokeinterface android/database/Cursor/close()V 0
aload 1
athrow
.limit locals 4
.limit stack 3
.end method

.method public queryForOneString(Lcom/nd/android/u/business/db/dbUtils/Query;)Ljava/lang/String;
.catch all from L0 to L1 using L2
aconst_null
astore 3
aconst_null
astore 2
aload 1
aload 0
getfield com/nd/android/u/business/db/dbUtils/SqliteTemplate/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/setDb(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/select()Landroid/database/Cursor;
astore 4
aload 3
astore 1
aload 4
ifnull L3
aload 2
astore 1
L0:
aload 4
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L1
aload 4
iconst_0
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 1
L1:
aload 4
invokeinterface android/database/Cursor/close()V 0
L3:
aload 1
areturn
L2:
astore 1
aload 4
invokeinterface android/database/Cursor/close()V 0
aload 1
athrow
.limit locals 5
.limit stack 2
.end method

.method public queryForString(Lcom/nd/android/u/business/db/dbUtils/Query;)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 3
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/queryForCursor(Lcom/nd/android/u/business/db/dbUtils/Query;)Landroid/database/Cursor;
astore 1
aload 1
ifnull L5
L0:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
istore 2
L1:
iload 2
ifne L3
aload 1
invokeinterface android/database/Cursor/close()V 0
L5:
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
L3:
aload 3
aload 1
iconst_0
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual java/lang/StringBuffer/append(J)Ljava/lang/StringBuffer;
pop
aload 1
invokeinterface android/database/Cursor/isLast()Z 0
ifne L0
aload 3
ldc ","
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L4:
goto L0
L2:
astore 3
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 3
athrow
.limit locals 4
.limit stack 3
.end method

.method public queryForVector(Lcom/nd/android/u/business/db/dbUtils/Query;Lcom/nd/android/u/business/db/dbUtils/RowMapper;)Ljava/util/Vector;
.signature "<T:Ljava/lang/Object;>(Lcom/nd/android/u/business/db/dbUtils/Query;Lcom/nd/android/u/business/db/dbUtils/RowMapper<TT;>;)Ljava/util/Vector<TT;>;"
new java/util/Vector
dup
invokespecial java/util/Vector/<init>()V
astore 3
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/queryForCursor(Lcom/nd/android/u/business/db/dbUtils/Query;)Landroid/database/Cursor;
astore 1
L0:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifne L1
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 3
areturn
L1:
aload 3
aload 2
aload 1
iconst_1
invokeinterface com/nd/android/u/business/db/dbUtils/RowMapper/mapRow(Landroid/database/Cursor;I)Ljava/lang/Object; 2
invokevirtual java/util/Vector/add(Ljava/lang/Object;)Z
pop
goto L0
.limit locals 4
.limit stack 4
.end method

.method public upload(Lcom/nd/android/u/business/db/dbUtils/Query;)I
aload 1
aload 0
getfield com/nd/android/u/business/db/dbUtils/SqliteTemplate/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/setDb(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/update()I
ireturn
.limit locals 2
.limit stack 2
.end method
