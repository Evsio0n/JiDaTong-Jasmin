.bytecode 50.0
.class public synchronized com/nd/android/u/contact/db/table/FindSeniorTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_TABLE' Ljava/lang/String;

.field public static final 'FIELD_GENDER' Ljava/lang/String; = "gender"

.field public static final 'FIELD_HIGHSCHOOL' Ljava/lang/String; = "highschool"

.field public static final 'FIELD_JOINDATE' Ljava/lang/String; = "joindate"

.field public static final 'FIELD_MAJOR' Ljava/lang/String; = "majorname"

.field public static final 'FIELD_NAME' Ljava/lang/String; = "name"

.field public static final 'FIELD_NATIVEPLACE' Ljava/lang/String; = "nativeplace"

.field public static final 'FIELD_TID' Ljava/lang/String; = "tid"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_find_senior"

.field public static final 'TAG' Ljava/lang/String; = "uu_find_senior"

.field public static 'unitParam' Ljava/lang/String;

.method static <clinit>()V
bipush 8
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
ldc "majorname"
aastore
dup
iconst_5
ldc "joindate"
aastore
dup
bipush 6
ldc "nativeplace"
aastore
dup
bipush 7
ldc "highschool"
aastore
putstatic com/nd/android/u/contact/db/table/FindSeniorTable/TABLE_COLUMNS [Ljava/lang/String;
ldc "unitid integer,"
putstatic com/nd/android/u/contact/db/table/FindSeniorTable/unitParam Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "create table uu_find_senior (_id integer primary key autoincrement, fid  integer,tid  integer,"
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
ldc "gender"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " integer,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "name"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "  TEXT,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "majorname"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " TEXT,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "joindate"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " TEXT,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "nativeplace"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " TEXT,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "highschool"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " TEXT )"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/android/u/contact/db/table/FindSeniorTable/CREATE_TABLE Ljava/lang/String;
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
ldc "uu_find_senior"
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
ldc "gender"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/contact/dataStructure/SeniorInfo/gender I
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
ldc "majorname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/contact/dataStructure/SeniorInfo/majorname Ljava/lang/String;
aload 1
aload 0
aload 0
ldc "joindate"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/contact/dataStructure/SeniorInfo/joindate Ljava/lang/String;
aload 1
aload 0
aload 0
ldc "nativeplace"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/contact/dataStructure/SeniorInfo/nativePlace Ljava/lang/String;
aload 1
aload 0
aload 0
ldc "highschool"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/contact/dataStructure/SeniorInfo/highschool Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
