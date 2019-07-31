.bytecode 50.0
.class public synchronized com/common/android/utils/db/SqlStringHelper
.super java/lang/Object

.field private static final 'BLACKSPACE' Ljava/lang/String; = " "

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
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
invokespecial java/lang/StringBuilder/<init>()V
ldc "alter table "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
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
.limit stack 2
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
invokespecial java/lang/StringBuilder/<init>()V
ldc "create index "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
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
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
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
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
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
invokespecial java/lang/StringBuilder/<init>()V
ldc "create table "
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
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
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
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
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
invokestatic com/common/android/utils/db/SqlStringHelper/closeCrusor(Landroid/database/Cursor;)V
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
invokestatic com/common/android/utils/db/SqlStringHelper/closeCrusor(Landroid/database/Cursor;)V
iconst_0
ireturn
L3:
astore 0
aload 5
invokestatic com/common/android/utils/db/SqlStringHelper/closeCrusor(Landroid/database/Cursor;)V
aload 0
athrow
.limit locals 7
.limit stack 5
.end method
