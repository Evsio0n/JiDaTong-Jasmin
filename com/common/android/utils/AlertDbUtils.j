.bytecode 50.0
.class public synchronized com/common/android/utils/AlertDbUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static alertAddColumnTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L4 to L5 using L3
L0:
aload 0
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
aload 2
iconst_0
aload 2
invokevirtual java/lang/String/length()I
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "texp_temptable"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "alter table "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " rename to "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "drop table if exists "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 0
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "insert into "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " ("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ") select "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "  from "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "drop table if exists "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 0
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L1:
aload 0
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L2:
astore 2
L4:
ldc "suchangjun "
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u5347\u7ea7\u6570\u636e\u5e93\u5931\u8d25 "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L5:
aload 0
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L3:
astore 1
aload 0
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
athrow
.limit locals 5
.limit stack 4
.end method

.method public static getColumnNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L7 to L8 using L9
.catch all from L7 to L8 using L10
.catch java/lang/Exception from L8 to L11 using L9
.catch all from L8 to L11 using L10
.catch all from L12 to L13 using L3
.catch all from L14 to L15 using L3
aconst_null
astore 5
aconst_null
astore 6
aconst_null
astore 4
aconst_null
astore 3
L0:
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "PRAGMA table_info("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 0
L1:
aload 5
astore 3
aload 0
ifnull L16
aload 0
astore 3
aload 0
astore 4
L4:
aload 0
ldc "name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 2
L5:
iconst_m1
iload 2
if_icmpne L17
aload 0
ifnull L18
aload 0
invokeinterface android/database/Cursor/close()V 0
L18:
aconst_null
areturn
L17:
aload 0
astore 3
aload 0
astore 4
L6:
new java/lang/StringBuffer
dup
aload 0
invokeinterface android/database/Cursor/getCount()I 0
invokespecial java/lang/StringBuffer/<init>(I)V
astore 5
L7:
aload 0
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
L8:
aload 0
invokeinterface android/database/Cursor/isAfterLast()Z 0
ifne L19
aload 5
aload 0
iload 2
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 5
ldc ","
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
invokeinterface android/database/Cursor/moveToNext()Z 0
pop
L11:
goto L8
L9:
astore 3
aload 5
astore 4
aload 3
astore 5
L20:
aload 0
astore 3
L12:
aload 5
invokevirtual java/lang/Exception/printStackTrace()V
L13:
aload 0
astore 3
L14:
ldc "suchangjun "
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u5347\u7ea7\u6570\u636e\u5e93\u5931\u8d25 "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u67e5\u8be2\u5217\u5931\u8d25"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L15:
aload 4
astore 1
aload 0
ifnull L21
aload 0
invokeinterface android/database/Cursor/close()V 0
aload 4
astore 1
L21:
aload 1
ifnull L18
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
L19:
aload 5
astore 3
L16:
aload 3
astore 1
aload 0
ifnull L21
aload 0
invokeinterface android/database/Cursor/close()V 0
aload 3
astore 1
goto L21
L3:
astore 1
aload 3
astore 0
L22:
aload 0
ifnull L23
aload 0
invokeinterface android/database/Cursor/close()V 0
L23:
aload 1
athrow
L10:
astore 1
goto L22
L2:
astore 5
aload 4
astore 0
aload 6
astore 4
goto L20
.limit locals 7
.limit stack 3
.end method
