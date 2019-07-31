.bytecode 50.0
.class public synchronized com/nd/android/u/contact/db/table/MySeniorTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_TABLE' Ljava/lang/String;

.field public static final 'FIELD_FID' Ljava/lang/String; = "fid"

.field public static final 'FIELD_GENDER' Ljava/lang/String; = "gender"

.field public static final 'FIELD_NAME' Ljava/lang/String; = "name"

.field public static final 'FIELD_SIGNTURE' Ljava/lang/String; = "signture"

.field public static final 'FIELD_TID' Ljava/lang/String; = "tid"

.field public static final 'FIELD_UNITID' Ljava/lang/String; = "unitid"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_senior"

.field public static final 'TAG' Ljava/lang/String; = "NewFansTable"

.method static <clinit>()V
iconst_5
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "fid"
aastore
dup
iconst_2
ldc "tid"
aastore
dup
iconst_3
ldc "name"
aastore
dup
iconst_4
ldc "gender"
aastore
putstatic com/nd/android/u/contact/db/table/MySeniorTable/TABLE_COLUMNS [Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "create table uu_senior (_id integer primary key autoincrement, fid  integer,tid  integer,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
astore 1
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
bipush 55
if_icmpne L0
ldc ""
astore 0
L1:
aload 1
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "name"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "  TEXT,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "signture"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " TEXT,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gender"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " integer)"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/android/u/contact/db/table/MySeniorTable/CREATE_TABLE Ljava/lang/String;
return
L0:
getstatic com/nd/android/u/contact/db/table/FindSeniorTable/unitParam Ljava/lang/String;
astore 0
goto L1
.limit locals 2
.limit stack 4
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static parseCursor(Landroid/database/Cursor;)Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
ldc "NewFansTable"
ldc "Cann't parse Cursor, bacause cursor is null or empty."
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L1:
new com/nd/android/u/contact/dataStructure/SeniorInfo
dup
invokespecial com/nd/android/u/contact/dataStructure/SeniorInfo/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "tid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/contact/dataStructure/SeniorInfo/uid J
aload 1
aload 0
aload 0
ldc "name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/contact/dataStructure/SeniorInfo/nickname Ljava/lang/String;
aload 1
aload 0
aload 0
ldc "gender"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/contact/dataStructure/SeniorInfo/gender I
aload 1
aload 0
aload 0
ldc "signture"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/contact/dataStructure/SeniorInfo/signture Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
