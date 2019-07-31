.bytecode 50.0
.class public final synchronized com/alipay/sdk/tid/a
.super android/database/sqlite/SQLiteOpenHelper

.field private static final 'a' Ljava/lang/String; = "msp.db"

.field private static final 'b' I = 1


.field private 'c' Ljava/lang/ref/WeakReference; signature "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
ldc "msp.db"
aconst_null
iconst_1
invokespecial android/database/sqlite/SQLiteOpenHelper/<init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
aload 0
new java/lang/ref/WeakReference
dup
aload 1
invokespecial java/lang/ref/WeakReference/<init>(Ljava/lang/Object;)V
putfield com/alipay/sdk/tid/a/c Ljava/lang/ref/WeakReference;
return
.limit locals 2
.limit stack 5
.end method

.method private a()Ljava/util/List;
.signature "()Ljava/util/List<Ljava/lang/String;>;"
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L1 to L4 using L5
.catch all from L1 to L4 using L6
.catch java/lang/Exception from L7 to L8 using L9
.catch all from L7 to L8 using L10
aconst_null
astore 2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
L0:
aload 0
invokevirtual com/alipay/sdk/tid/a/getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
astore 1
L1:
aload 1
ldc "select tid from tb_tid"
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 3
L4:
aload 3
astore 2
L7:
aload 2
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L11
aload 2
iconst_0
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L7
aload 4
iconst_2
aload 3
aload 0
getfield com/alipay/sdk/tid/a/c Ljava/lang/ref/WeakReference;
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
checkcast android/content/Context
invokestatic com/alipay/sdk/util/a/c(Landroid/content/Context;)Ljava/lang/String;
invokestatic com/alipay/sdk/encrypt/b/a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L8:
goto L7
L9:
astore 3
L12:
aload 2
ifnull L13
aload 2
invokeinterface android/database/Cursor/close()V 0
L13:
aload 1
ifnull L14
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifeq L14
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
L14:
aload 4
areturn
L11:
aload 2
ifnull L15
aload 2
invokeinterface android/database/Cursor/close()V 0
L15:
aload 1
ifnull L14
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifeq L14
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
aload 4
areturn
L3:
astore 3
aconst_null
astore 1
aconst_null
astore 2
L16:
aload 2
ifnull L17
aload 2
invokeinterface android/database/Cursor/close()V 0
L17:
aload 1
ifnull L18
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifeq L18
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
L18:
aload 3
athrow
L6:
astore 3
aconst_null
astore 2
goto L16
L10:
astore 3
goto L16
L2:
astore 1
aconst_null
astore 1
goto L12
L5:
astore 3
goto L12
.limit locals 5
.limit stack 4
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
iconst_0
istore 2
aload 0
ldc "select name from tb_tid where tid!='' order by dt asc"
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 5
aload 5
invokeinterface android/database/Cursor/getCount()I 0
bipush 14
if_icmpgt L0
aload 5
invokeinterface android/database/Cursor/close()V 0
L1:
return
L0:
aload 5
invokeinterface android/database/Cursor/getCount()I 0
bipush 14
isub
istore 4
iload 4
anewarray java/lang/String
astore 6
aload 5
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L2
iconst_0
istore 1
L3:
aload 6
iload 1
aload 5
iconst_0
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
aastore
iload 1
iconst_1
iadd
istore 3
aload 5
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L2
iload 3
istore 1
iload 4
iload 3
if_icmpgt L3
L2:
aload 5
invokeinterface android/database/Cursor/close()V 0
iload 2
istore 1
L4:
iload 1
aload 6
arraylength
if_icmpge L1
aload 6
iload 1
aaload
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
aload 0
aload 6
iload 1
aaload
invokestatic com/alipay/sdk/tid/a/a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
L5:
iload 1
iconst_1
iadd
istore 1
goto L4
.limit locals 7
.limit stack 4
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
ldc "tb_tid"
ldc "name=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
L1:
return
L2:
astore 0
return
.limit locals 2
.limit stack 7
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iconst_0
istore 7
iconst_1
aload 4
aload 0
getfield com/alipay/sdk/tid/a/c Ljava/lang/ref/WeakReference;
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
checkcast android/content/Context
invokestatic com/alipay/sdk/util/a/c(Landroid/content/Context;)Ljava/lang/String;
invokestatic com/alipay/sdk/encrypt/b/a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 1
ldc "insert into tb_tid (name, tid, key_tid, dt) values (?, ?, ?, datetime('now', 'localtime'))"
iconst_3
anewarray java/lang/Object
dup
iconst_0
aload 2
aload 3
invokestatic com/alipay/sdk/tid/a/e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aastore
dup
iconst_1
aload 4
aastore
dup
iconst_2
aload 5
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
aload 1
ldc "select name from tb_tid where tid!='' order by dt asc"
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 2
aload 2
invokeinterface android/database/Cursor/getCount()I 0
bipush 14
if_icmpgt L0
aload 2
invokeinterface android/database/Cursor/close()V 0
L1:
return
L0:
aload 2
invokeinterface android/database/Cursor/getCount()I 0
bipush 14
isub
istore 9
iload 9
anewarray java/lang/String
astore 3
aload 2
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L2
iconst_0
istore 6
L3:
aload 3
iload 6
aload 2
iconst_0
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
aastore
iload 6
iconst_1
iadd
istore 8
aload 2
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L2
iload 8
istore 6
iload 9
iload 8
if_icmpgt L3
L2:
aload 2
invokeinterface android/database/Cursor/close()V 0
iload 7
istore 6
L4:
iload 6
aload 3
arraylength
if_icmpge L1
aload 3
iload 6
aaload
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
aload 1
aload 3
iload 6
aaload
invokestatic com/alipay/sdk/tid/a/a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
L5:
iload 6
iconst_1
iadd
istore 6
goto L4
.limit locals 10
.limit stack 7
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
aconst_null
astore 5
aconst_null
astore 4
L0:
aload 0
ldc "select count(*) from tb_tid where name=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
aload 2
invokestatic com/alipay/sdk/tid/a/e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 0
L1:
aload 0
astore 4
aload 0
astore 5
L4:
aload 0
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L8
L5:
aload 0
astore 4
aload 0
astore 5
L6:
aload 0
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 3
L7:
aload 0
ifnull L9
aload 0
invokeinterface android/database/Cursor/close()V 0
L10:
iload 3
ifle L11
iconst_1
ireturn
L2:
astore 0
aload 4
ifnull L12
aload 4
invokeinterface android/database/Cursor/close()V 0
iconst_0
istore 3
goto L10
L3:
astore 0
aload 5
ifnull L13
aload 5
invokeinterface android/database/Cursor/close()V 0
L13:
aload 0
athrow
L11:
iconst_0
ireturn
L12:
iconst_0
istore 3
goto L10
L9:
goto L10
L8:
iconst_0
istore 3
goto L7
.limit locals 6
.limit stack 7
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "update tb_tid set tid=?, key_tid=?, dt=datetime('now', 'localtime') where name=?"
iconst_3
anewarray java/lang/Object
dup
iconst_0
iconst_1
aload 4
aload 0
getfield com/alipay/sdk/tid/a/c Ljava/lang/ref/WeakReference;
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
checkcast android/content/Context
invokestatic com/alipay/sdk/util/a/c(Landroid/content/Context;)Ljava/lang/String;
invokestatic com/alipay/sdk/encrypt/b/a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aastore
dup
iconst_1
aload 5
aastore
dup
iconst_2
aload 2
aload 3
invokestatic com/alipay/sdk/tid/a/e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
return
.limit locals 6
.limit stack 8
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)J
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L6
.catch all from L4 to L5 using L7
.catch java/lang/Exception from L8 to L9 using L6
.catch all from L8 to L9 using L7
.catch java/lang/Exception from L10 to L11 using L6
.catch all from L10 to L11 using L7
aconst_null
astore 10
aconst_null
astore 13
aconst_null
astore 12
aconst_null
astore 11
lconst_0
lstore 5
L0:
aload 0
invokevirtual com/alipay/sdk/tid/a/getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
astore 9
L1:
aload 13
astore 10
aload 12
astore 11
L4:
aload 9
ldc "select dt from tb_tid where name=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
aload 2
invokestatic com/alipay/sdk/tid/a/e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 1
L5:
lload 5
lstore 3
aload 1
astore 10
aload 1
astore 11
L8:
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L11
L9:
aload 1
astore 10
aload 1
astore 11
L10:
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd HH:mm:ss"
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;Ljava/util/Locale;)V
aload 1
iconst_0
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual java/text/SimpleDateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
invokevirtual java/util/Date/getTime()J
lstore 3
L11:
aload 1
ifnull L12
aload 1
invokeinterface android/database/Cursor/close()V 0
L12:
lload 3
lstore 7
aload 9
ifnull L13
lload 3
lstore 7
aload 9
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifeq L13
aload 9
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
lload 3
lstore 7
L13:
lload 7
lreturn
L2:
astore 1
aconst_null
astore 9
L14:
aload 11
ifnull L15
aload 11
invokeinterface android/database/Cursor/close()V 0
L15:
lload 5
lstore 7
aload 9
ifnull L13
lload 5
lstore 7
aload 9
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifeq L13
aload 9
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
lconst_0
lreturn
L3:
astore 1
aconst_null
astore 9
L16:
aload 10
ifnull L17
aload 10
invokeinterface android/database/Cursor/close()V 0
L17:
aload 9
ifnull L18
aload 9
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifeq L18
aload 9
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
L18:
aload 1
athrow
L7:
astore 1
goto L16
L6:
astore 1
goto L14
.limit locals 14
.limit stack 7
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
aconst_null
astore 4
aconst_null
astore 3
L0:
aload 0
invokevirtual com/alipay/sdk/tid/a/getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
astore 5
L1:
aload 5
astore 3
aload 5
astore 4
L4:
aload 0
aload 5
aload 1
aload 2
ldc ""
ldc ""
invokespecial com/alipay/sdk/tid/a/b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L5:
aload 5
astore 3
aload 5
astore 4
L6:
aload 5
aload 1
aload 2
invokestatic com/alipay/sdk/tid/a/e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokestatic com/alipay/sdk/tid/a/a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
L7:
aload 5
ifnull L8
aload 5
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifeq L8
aload 5
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
L8:
return
L2:
astore 1
aload 3
ifnull L8
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifeq L8
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
return
L3:
astore 1
aload 4
ifnull L9
aload 4
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifeq L9
aload 4
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
L9:
aload 1
athrow
.limit locals 6
.limit stack 6
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch java/lang/Exception from L10 to L11 using L2
.catch all from L10 to L11 using L3
.catch java/lang/Exception from L12 to L13 using L2
.catch all from L12 to L13 using L3
.catch java/lang/Exception from L14 to L15 using L2
.catch all from L14 to L15 using L3
.catch java/lang/Exception from L16 to L17 using L2
.catch all from L16 to L17 using L3
.catch java/lang/Exception from L18 to L19 using L2
.catch all from L18 to L19 using L3
.catch java/lang/Exception from L20 to L21 using L2
.catch all from L20 to L21 using L3
.catch java/lang/Exception from L22 to L23 using L2
.catch all from L22 to L23 using L3
.catch java/lang/Exception from L24 to L25 using L2
.catch all from L24 to L25 using L3
.catch java/lang/Exception from L26 to L27 using L2
.catch all from L26 to L27 using L3
.catch java/lang/Exception from L28 to L29 using L2
.catch all from L28 to L29 using L3
.catch java/lang/Exception from L30 to L31 using L2
.catch all from L30 to L31 using L3
.catch java/lang/Exception from L32 to L33 using L2
.catch all from L32 to L33 using L3
.catch java/lang/Exception from L34 to L35 using L2
.catch all from L34 to L35 using L3
aconst_null
astore 9
aconst_null
astore 8
L0:
aload 0
invokevirtual com/alipay/sdk/tid/a/getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
astore 10
L1:
aload 10
astore 8
aload 10
astore 9
L4:
aload 10
aload 1
aload 2
invokestatic com/alipay/sdk/tid/a/a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
ifeq L36
L5:
aload 10
astore 8
aload 10
astore 9
L6:
aload 0
aload 10
aload 1
aload 2
aload 3
aload 4
invokespecial com/alipay/sdk/tid/a/b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L7:
aload 10
ifnull L37
aload 10
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifeq L37
aload 10
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
L37:
return
L36:
aload 10
astore 8
aload 10
astore 9
L8:
iconst_1
aload 3
aload 0
getfield com/alipay/sdk/tid/a/c Ljava/lang/ref/WeakReference;
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
checkcast android/content/Context
invokestatic com/alipay/sdk/util/a/c(Landroid/content/Context;)Ljava/lang/String;
invokestatic com/alipay/sdk/encrypt/b/a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
L9:
aload 10
astore 8
aload 10
astore 9
L10:
aload 10
ldc "insert into tb_tid (name, tid, key_tid, dt) values (?, ?, ?, datetime('now', 'localtime'))"
iconst_3
anewarray java/lang/Object
dup
iconst_0
aload 1
aload 2
invokestatic com/alipay/sdk/tid/a/e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aastore
dup
iconst_1
aload 3
aastore
dup
iconst_2
aload 4
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
L11:
aload 10
astore 8
aload 10
astore 9
L12:
aload 10
ldc "select name from tb_tid where tid!='' order by dt asc"
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 1
L13:
aload 10
astore 8
aload 10
astore 9
L14:
aload 1
invokeinterface android/database/Cursor/getCount()I 0
bipush 14
if_icmpgt L38
L15:
aload 10
astore 8
aload 10
astore 9
L16:
aload 1
invokeinterface android/database/Cursor/close()V 0
L17:
goto L7
L2:
astore 1
aload 8
ifnull L37
aload 8
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifeq L37
aload 8
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
return
L38:
aload 10
astore 8
aload 10
astore 9
L18:
aload 1
invokeinterface android/database/Cursor/getCount()I 0
bipush 14
isub
istore 7
L19:
aload 10
astore 8
aload 10
astore 9
L20:
iload 7
anewarray java/lang/String
astore 2
L21:
aload 10
astore 8
aload 10
astore 9
L22:
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L39
L23:
iconst_0
istore 5
L40:
aload 10
astore 8
aload 10
astore 9
L24:
aload 2
iload 5
aload 1
iconst_0
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
aastore
L25:
iload 5
iconst_1
iadd
istore 6
aload 10
astore 8
aload 10
astore 9
L26:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L39
L27:
iload 6
istore 5
iload 7
iload 6
if_icmpgt L40
L39:
aload 10
astore 8
aload 10
astore 9
L28:
aload 1
invokeinterface android/database/Cursor/close()V 0
L29:
iconst_0
istore 5
L41:
aload 10
astore 8
aload 10
astore 9
L30:
iload 5
aload 2
arraylength
if_icmpge L7
L31:
aload 10
astore 8
aload 10
astore 9
L32:
aload 2
iload 5
aaload
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L35
L33:
aload 10
astore 8
aload 10
astore 9
L34:
aload 10
aload 2
iload 5
aaload
invokestatic com/alipay/sdk/tid/a/a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
L35:
iload 5
iconst_1
iadd
istore 5
goto L41
L3:
astore 1
aload 9
ifnull L42
aload 9
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifeq L42
aload 9
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
L42:
aload 1
athrow
.limit locals 11
.limit stack 7
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L1 to L4 using L5
.catch all from L1 to L4 using L6
.catch java/lang/Exception from L7 to L8 using L9
.catch all from L7 to L8 using L10
aconst_null
astore 4
L0:
aload 0
invokevirtual com/alipay/sdk/tid/a/getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
astore 3
L1:
aload 3
ldc "select tid from tb_tid where name=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
aload 2
invokestatic com/alipay/sdk/tid/a/e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 2
L4:
aload 4
astore 1
L7:
aload 2
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L8
aload 2
iconst_0
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 1
L8:
aload 2
ifnull L11
aload 2
invokeinterface android/database/Cursor/close()V 0
L11:
aload 3
ifnull L12
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifeq L12
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
L13:
aload 1
astore 2
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L14
iconst_2
aload 1
aload 0
getfield com/alipay/sdk/tid/a/c Ljava/lang/ref/WeakReference;
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
checkcast android/content/Context
invokestatic com/alipay/sdk/util/a/c(Landroid/content/Context;)Ljava/lang/String;
invokestatic com/alipay/sdk/encrypt/b/a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 2
L14:
aload 2
areturn
L2:
astore 1
aconst_null
astore 2
aconst_null
astore 3
L15:
aload 2
ifnull L16
aload 2
invokeinterface android/database/Cursor/close()V 0
L16:
aload 3
ifnull L17
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifeq L17
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
aconst_null
astore 1
goto L13
L3:
astore 1
aconst_null
astore 3
aconst_null
astore 2
L18:
aload 2
ifnull L19
aload 2
invokeinterface android/database/Cursor/close()V 0
L19:
aload 3
ifnull L20
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifeq L20
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
L20:
aload 1
athrow
L6:
astore 1
aconst_null
astore 2
goto L18
L10:
astore 1
goto L18
L5:
astore 1
aconst_null
astore 2
goto L15
L9:
astore 1
goto L15
L17:
aconst_null
astore 1
goto L13
L12:
goto L13
.limit locals 5
.limit stack 7
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L1 to L4 using L5
.catch all from L1 to L4 using L6
.catch java/lang/Exception from L7 to L8 using L9
.catch all from L7 to L8 using L10
aconst_null
astore 4
aconst_null
astore 5
L0:
aload 0
invokevirtual com/alipay/sdk/tid/a/getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
astore 3
L1:
aload 3
ldc "select key_tid from tb_tid where name=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
aload 2
invokestatic com/alipay/sdk/tid/a/e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 1
L4:
aload 5
astore 2
L7:
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L8
aload 1
iconst_0
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 2
L8:
aload 1
ifnull L11
aload 1
invokeinterface android/database/Cursor/close()V 0
L11:
aload 2
astore 1
aload 3
ifnull L12
aload 2
astore 1
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifeq L12
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
aload 2
astore 1
L12:
aload 1
areturn
L2:
astore 1
aconst_null
astore 1
aconst_null
astore 3
L13:
aload 1
ifnull L14
aload 1
invokeinterface android/database/Cursor/close()V 0
L14:
aload 4
astore 1
aload 3
ifnull L12
aload 4
astore 1
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifeq L12
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
aconst_null
areturn
L3:
astore 2
aconst_null
astore 3
aconst_null
astore 1
L15:
aload 1
ifnull L16
aload 1
invokeinterface android/database/Cursor/close()V 0
L16:
aload 3
ifnull L17
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifeq L17
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
L17:
aload 2
athrow
L6:
astore 2
aconst_null
astore 1
goto L15
L10:
astore 2
goto L15
L5:
astore 1
aconst_null
astore 1
goto L13
L9:
astore 2
goto L13
.limit locals 6
.limit stack 7
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
ldc "create table if not exists tb_tid (name text primary key, tid text, key_tid text, dt datetime);"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
aload 1
ldc "drop table if exists tb_tid"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table if not exists tb_tid (name text primary key, tid text, key_tid text, dt datetime);"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 4
.limit stack 2
.end method
