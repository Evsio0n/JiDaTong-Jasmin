.bytecode 50.0
.class public synchronized com/nd/android/u/business/db/DbUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static alertColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
aload 2
invokestatic com/nd/android/u/business/db/DbUtils/isExistColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
ifne L0
aload 0
aload 1
aload 2
aload 3
invokestatic com/nd/android/u/business/db/DbUtils/getAlterColumnString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
L0:
return
.limit locals 4
.limit stack 4
.end method

.method public static closeCrusor(Landroid/database/Cursor;)V
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/close()V 0
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public static getAlterColumnString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "alter table "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " add "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public static getCreateIndexString(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
aload 2
ifnull L0
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
L0:
aconst_null
astore 1
L2:
aload 1
areturn
L1:
new java/lang/StringBuilder
dup
ldc "create index "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " on "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " ("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
iconst_0
istore 3
aload 2
arraylength
istore 4
L3:
aload 0
astore 1
iload 3
iload 4
if_icmpge L2
iload 3
iload 4
iconst_1
isub
if_icmpne L4
new java/lang/StringBuilder
dup
aload 0
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
iload 3
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " )"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L5:
iload 3
iconst_1
iadd
istore 3
goto L3
L4:
new java/lang/StringBuilder
dup
aload 0
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
iload 3
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " ,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
goto L5
.limit locals 5
.limit stack 3
.end method

.method public static getCreateTableString(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
aconst_null
astore 6
aload 6
astore 5
aload 2
ifnull L0
aload 6
astore 5
aload 1
ifnull L0
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 6
astore 5
L0:
aload 5
areturn
L1:
aload 6
astore 5
aload 2
arraylength
aload 1
arraylength
if_icmpne L0
new java/lang/StringBuilder
dup
ldc "create table "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " ("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
iconst_0
istore 3
aload 2
arraylength
istore 4
L2:
aload 0
astore 5
iload 3
iload 4
if_icmpge L0
iload 3
iload 4
iconst_1
isub
if_icmpne L3
new java/lang/StringBuilder
dup
aload 0
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
iload 3
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
iload 3
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " )"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L4:
iload 3
iconst_1
iadd
istore 3
goto L2
L3:
new java/lang/StringBuilder
dup
aload 0
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
iload 3
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
iload 3
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " ,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
goto L4
.limit locals 7
.limit stack 3
.end method

.method public static isExistColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch all from L6 to L7 using L3
ldc "select * from %s  limit 0"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 6
aconst_null
astore 5
aconst_null
astore 1
L0:
aload 0
aload 6
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 0
L1:
aload 0
ifnull L8
aload 0
astore 1
aload 0
astore 5
L4:
aload 0
aload 2
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 3
L5:
iload 3
iconst_m1
if_icmpeq L8
iconst_1
istore 4
L9:
aload 0
invokestatic com/nd/android/u/business/db/DbUtils/closeCrusor(Landroid/database/Cursor;)V
iload 4
ireturn
L8:
iconst_0
istore 4
goto L9
L2:
astore 0
aload 1
astore 5
L6:
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
L7:
aload 1
invokestatic com/nd/android/u/business/db/DbUtils/closeCrusor(Landroid/database/Cursor;)V
iconst_0
ireturn
L3:
astore 0
aload 5
invokestatic com/nd/android/u/business/db/DbUtils/closeCrusor(Landroid/database/Cursor;)V
aload 0
athrow
.limit locals 7
.limit stack 5
.end method

.method public static isTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
.catch all from L0 to L1 using L2
iconst_1
istore 3
aload 0
ldc "select count(*) as number from sqlite_master where type='table' and name=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 0
aload 0
ifnull L3
L0:
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifle L3
aload 0
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 0
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 2
L1:
iload 2
ifle L4
L5:
aload 0
ifnull L6
aload 0
invokeinterface android/database/Cursor/close()V 0
L6:
iload 3
ireturn
L4:
iconst_0
istore 3
goto L5
L2:
astore 1
aload 0
ifnull L7
aload 0
invokeinterface android/database/Cursor/close()V 0
L7:
aload 1
athrow
L3:
aload 0
ifnull L8
aload 0
invokeinterface android/database/Cursor/close()V 0
L8:
iconst_0
ireturn
.limit locals 4
.limit stack 6
.end method
