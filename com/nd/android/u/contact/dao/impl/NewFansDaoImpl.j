.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dao/impl/NewFansDaoImpl
.super java/lang/Object
.implements com/nd/android/u/contact/dao/NewFansDao

.field 'db' Landroid/database/sqlite/SQLiteDatabase;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
putfield com/nd/android/u/contact/dao/impl/NewFansDaoImpl/db Landroid/database/sqlite/SQLiteDatabase;
return
.limit locals 1
.limit stack 3
.end method

.method public deleteAll()V
aload 0
getfield com/nd/android/u/contact/dao/impl/NewFansDaoImpl/db Landroid/database/sqlite/SQLiteDatabase;
ldc "delete from uu_newfans"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 2
.end method

.method public deleteFans(J)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "delete from uu_newfans where fid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/contact/dao/impl/NewFansDaoImpl/db Landroid/database/sqlite/SQLiteDatabase;
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 4
.limit stack 3
.end method

.method public insertFans(Lcom/nd/android/u/contact/dataStructure/NewFans;)V
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "fid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/NewFans/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "time"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/NewFans/getTime()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 0
getfield com/nd/android/u/contact/dao/impl/NewFansDaoImpl/db Landroid/database/sqlite/SQLiteDatabase;
ldc "uu_newfans"
aconst_null
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
return
.limit locals 3
.limit stack 4
.end method

.method public queryNewestFans()Lcom/nd/android/u/contact/dataStructure/NewFans;
aload 0
getfield com/nd/android/u/contact/dao/impl/NewFansDaoImpl/db Landroid/database/sqlite/SQLiteDatabase;
ldc "select * from uu_newfans where time=(select max(time) from uu_newfans)"
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 3
aconst_null
astore 2
aload 2
astore 1
aload 3
ifnull L0
aload 2
astore 1
aload 3
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
new com/nd/android/u/contact/dataStructure/NewFans
dup
invokespecial com/nd/android/u/contact/dataStructure/NewFans/<init>()V
astore 2
L1:
aload 2
astore 1
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L0
aload 2
aload 3
aload 3
ldc "fid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
i2l
invokevirtual com/nd/android/u/contact/dataStructure/NewFans/setFid(J)V
aload 2
aload 3
aload 3
ldc "time"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/NewFans/setTime(J)V
goto L1
L0:
aload 3
ifnull L2
aload 3
invokeinterface android/database/Cursor/close()V 0
L2:
aload 1
areturn
.limit locals 4
.limit stack 4
.end method
