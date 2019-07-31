.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/db/table/SmsQueryDetailTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_smsquerydetail (_id integer primary key autoincrement, username text, status integer, phone text, time text, isread integer, smsid text,selfuid BIGINT not null)"

.field public static final 'FIELD_ID' Ljava/lang/String; = "_id"

.field public static final 'FIELD_ISREAD' Ljava/lang/String; = "isread"

.field public static final 'FIELD_PHONE' Ljava/lang/String; = "phone"

.field public static final 'FIELD_SELFUID' Ljava/lang/String; = "selfuid"

.field public static final 'FIELD_SMSID' Ljava/lang/String; = "smsid"

.field public static final 'FIELD_STATUS' Ljava/lang/String; = "status"

.field public static final 'FIELD_TIME' Ljava/lang/String; = "time"

.field public static final 'FIELD_USERNAME' Ljava/lang/String; = "username"

.field public static final 'TABLD_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_smsquerydetail"

.field public static final 'TAG' Ljava/lang/String; = "SmsQueryDetailTable"

.method static <clinit>()V
iconst_5
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "time"
aastore
dup
iconst_2
ldc "selfuid"
aastore
dup
iconst_3
ldc "smsid"
aastore
dup
iconst_4
ldc "isread"
aastore
putstatic com/nd/android/u/contact/db/table/SmsQueryDetailTable/TABLD_COLUMNS [Ljava/lang/String;
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

.method public static parseCursor(Landroid/database/Cursor;)Lcom/nd/android/u/contact/dataStructure/SmsQueryDetailBean;
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
aconst_null
areturn
L1:
new com/nd/android/u/contact/dataStructure/SmsQueryDetailBean
dup
invokespecial com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "username"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/setUsername(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "status"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/setStatus(I)V
aload 1
aload 0
aload 0
ldc "phone"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/setPhone(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "time"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/setTime2(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "smsid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/setSmsid(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "selfuid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/setSelfuid(J)V
aload 1
aload 0
aload 0
ldc "isread"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/setIsRead(I)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
