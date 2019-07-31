.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/db/table/PhoneInfoTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_phoneinfo (_id integer primary key autoincrement, telephonenum text, begintime date not null, endtime BIGINT, type integer,selfuid BIGINT not null)"

.field public static final 'FIELD_BEGINTIME' Ljava/lang/String; = "begintime"

.field public static final 'FIELD_ENDTIME' Ljava/lang/String; = "endtime"

.field public static final 'FIELD_ID' Ljava/lang/String; = "_id"

.field public static final 'FIELD_SELFUID' Ljava/lang/String; = "selfuid"

.field public static final 'FIELD_TELEPHONENUM' Ljava/lang/String; = "telephonenum"

.field public static final 'FIELD_TYPE' Ljava/lang/String; = "type"

.field public static final 'TABLD_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_phoneinfo"

.field public static final 'TAG' Ljava/lang/String; = "PhoneInfoTable"

.method static <clinit>()V
bipush 6
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "telephonenum"
aastore
dup
iconst_2
ldc "begintime"
aastore
dup
iconst_3
ldc "endtime"
aastore
dup
iconst_4
ldc "type"
aastore
dup
iconst_5
ldc "selfuid"
aastore
putstatic com/nd/android/u/contact/db/table/PhoneInfoTable/TABLD_COLUMNS [Ljava/lang/String;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static parseCursor(Landroid/database/Cursor;)Lcom/nd/android/u/contact/dataStructure/PhoneInfo;
.catch java/text/ParseException from L0 to L1 using L2
aload 0
ifnull L3
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifne L4
L3:
aconst_null
areturn
L4:
new com/nd/android/u/contact/dataStructure/PhoneInfo
dup
invokespecial com/nd/android/u/contact/dataStructure/PhoneInfo/<init>()V
astore 1
L0:
aload 1
invokestatic com/nd/android/util/ContactConst/getDateFormat()Ljava/text/DateFormat;
aload 0
aload 0
ldc "begintime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual java/text/DateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
invokevirtual com/nd/android/u/contact/dataStructure/PhoneInfo/setBegintime(Ljava/util/Date;)V
L1:
aload 1
aload 0
aload 0
ldc "type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/PhoneInfo/setType(I)V
aload 1
aload 0
aload 0
ldc "telephonenum"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/PhoneInfo/setTelephonenum(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "selfuid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/PhoneInfo/setSelfuid(J)V
aload 1
aload 0
aload 0
ldc "endtime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/PhoneInfo/setEndtime(J)V
aload 1
areturn
L2:
astore 2
ldc "PhoneInfoTable"
ldc "\u7535\u8bdd\u8bb0\u5f55\u7684\u65f6\u95f4\u83b7\u53d6\u5931\u8d25"
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L1
.limit locals 3
.limit stack 5
.end method
