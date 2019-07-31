.bytecode 50.0
.class public synchronized com/nd/android/u/business/db/table/BaseTable
.super java/lang/Object

.field public static final 'BIGINT' Ljava/lang/String; = "BIGINT"

.field public static final 'COMM_FIELD1_GENERATEID' Ljava/lang/String; = "generateid"

.field public static final 'COMM_FIELD2_CREATEDAT' Ljava/lang/String; = "createdate"

.field public static final 'COMM_FIELD3_UIDFROM' Ljava/lang/String; = "uidfrom"

.field public static final 'COMM_FIELD4_ISACK' Ljava/lang/String; = "isack"

.field public static final 'COMM_FIELD5_MSGID' Ljava/lang/String; = "msgid"

.field public static final 'COMM_FIELD6_CATEGORY' Ljava/lang/String; = "category"

.field public static final 'COMM_FIELD7_MESSAGE' Ljava/lang/String; = "message"

.field public static final 'COMM_FIELD8_ISREAD' Ljava/lang/String; = "isread"

.field public static final 'COMM_FIELD9_PARENTTYPE' Ljava/lang/String; = "parent"

.field protected static final 'EXTRAFLAG' Ljava/lang/String; = "extraflag"

.field protected static final 'FILENAME' Ljava/lang/String; = "filename"

.field protected static final 'FILEPATH' Ljava/lang/String; = "filepath"

.field protected static final 'FILESIZE' Ljava/lang/String; = "filesize"

.field protected static final 'FKEY' Ljava/lang/String; = "fkey"

.field public static final 'INDEX_NAME' Ljava/lang/String; = "_INDEX"

.field public static final 'INT' Ljava/lang/String; = "INT"

.field protected static final 'LOCAL_MULTI_ID' Ljava/lang/String; = "local_mulptid"

.field protected static final 'MULTI_ID' Ljava/lang/String; = "mulptid"

.field public static final 'PRIMARY' Ljava/lang/String; = " PRIMARY KEY NOT NULL"

.field protected static final 'RESERVE' Ljava/lang/String; = "reserve"

.field public static final 'TEXT' Ljava/lang/String; = "TEXT"

.field protected static final 'TYPE' Ljava/lang/String; = "type"

.field protected static final 'UIDTO' Ljava/lang/String; = "uidto"

.field protected static final 'URL' Ljava/lang/String; = "url"

.field public static final 'WSEQ' Ljava/lang/String; = "wseq"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getColumnType(Ljava/lang/String;)Ljava/lang/String;
aload 0
ifnonnull L0
L1:
aconst_null
areturn
L0:
aload 0
ldc "_"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 0
aload 0
arraylength
ifle L1
aload 0
iconst_0
aaload
invokestatic com/nd/android/u/business/db/table/BaseTable/getColumnTypeByKey(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method private static getColumnTypeByKey(Ljava/lang/String;)Ljava/lang/String;
aload 0
ldc "I"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
ldc "INT"
areturn
L0:
aload 0
ldc "P"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
ldc " PRIMARY KEY NOT NULL"
areturn
L1:
aload 0
ldc "L"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
ldc "BIGINT"
areturn
L2:
ldc "TEXT"
areturn
.limit locals 1
.limit stack 2
.end method

.method protected static getCreateTableStance(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
.signature "(Ljava/lang/String;Ljava/lang/Class<*>;)Ljava/lang/String;"
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
.catch java/lang/IllegalAccessException from L0 to L1 using L3
.catch java/lang/IllegalArgumentException from L1 to L4 using L2
.catch java/lang/IllegalAccessException from L1 to L4 using L3
.catch java/lang/IllegalArgumentException from L5 to L6 using L2
.catch java/lang/IllegalAccessException from L5 to L6 using L3
ldc ""
astore 4
aload 1
invokevirtual java/lang/Class/getFields()[Ljava/lang/reflect/Field;
astore 5
aload 4
astore 1
aload 5
ifnull L7
aload 5
arraylength
istore 3
iload 3
anewarray java/lang/String
astore 1
iload 3
anewarray java/lang/String
astore 4
iconst_0
istore 2
L8:
iload 2
iload 3
if_icmplt L9
aload 0
aload 1
aload 4
invokestatic com/nd/android/u/business/db/DbUtils/getCreateTableString(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
astore 1
L7:
aload 1
areturn
L9:
aload 5
iload 2
aaload
astore 6
L0:
aload 6
invokevirtual java/lang/reflect/Field/getName()Ljava/lang/String;
astore 7
aload 7
ldc "_"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 8
aload 8
arraylength
iconst_2
if_icmpne L5
aload 4
iload 2
aload 8
iconst_0
aaload
invokestatic com/nd/android/u/business/db/table/BaseTable/getColumnTypeByKey(Ljava/lang/String;)Ljava/lang/String;
aastore
L1:
aload 1
iload 2
aload 6
aload 7
invokevirtual java/lang/reflect/Field/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
aastore
L4:
goto L10
L5:
aload 8
arraylength
iconst_3
if_icmpne L10
aload 4
iload 2
new java/lang/StringBuilder
dup
aload 8
iconst_0
aaload
invokestatic com/nd/android/u/business/db/table/BaseTable/getColumnTypeByKey(Ljava/lang/String;)Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 8
iconst_1
aaload
invokestatic com/nd/android/u/business/db/table/BaseTable/getColumnTypeByKey(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
L6:
goto L1
L2:
astore 6
aload 6
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
goto L10
L3:
astore 6
aload 6
invokevirtual java/lang/IllegalAccessException/printStackTrace()V
L10:
iload 2
iconst_1
iadd
istore 2
goto L8
.limit locals 9
.limit stack 6
.end method
