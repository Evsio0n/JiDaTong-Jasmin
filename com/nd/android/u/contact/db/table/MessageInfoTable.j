.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/db/table/MessageInfoTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_messageinfo (_id integer primary key autoincrement, msgtype integer, msg text, time date not null, sucnum integer, totalnum integer,sendtoname text,receiverids text,failednum integer, issuccess integer, receiveradmit integer, isread integer, replynum integer,smsid text,selfuid BIGINT not null)"

.field public static final 'FIELD_FAILEDNUM' Ljava/lang/String; = "failednum"

.field public static final 'FIELD_ID' Ljava/lang/String; = "_id"

.field public static final 'FIELD_ISREAD' Ljava/lang/String; = "isread"

.field public static final 'FIELD_ISSUCCESS' Ljava/lang/String; = "issuccess"

.field public static final 'FIELD_MSG' Ljava/lang/String; = "msg"

.field public static final 'FIELD_MSGTYPE' Ljava/lang/String; = "msgtype"

.field public static final 'FIELD_RECEIVERADMIT' Ljava/lang/String; = "receiveradmit"

.field public static final 'FIELD_RECEIVERIDS' Ljava/lang/String; = "receiverids"

.field public static final 'FIELD_REPLYNUM' Ljava/lang/String; = "replynum"

.field public static final 'FIELD_SELFUID' Ljava/lang/String; = "selfuid"

.field public static final 'FIELD_SENDTONAME' Ljava/lang/String; = "sendtoname"

.field public static final 'FIELD_SMSID' Ljava/lang/String; = "smsid"

.field public static final 'FIELD_SUCNUM' Ljava/lang/String; = "sucnum"

.field public static final 'FIELD_TIME' Ljava/lang/String; = "time"

.field public static final 'FIELD_TOTALNUM' Ljava/lang/String; = "totalnum"

.field public static final 'TABLD_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_messageinfo"

.field public static final 'TAG' Ljava/lang/String; = "MessageInfoTable"

.method static <clinit>()V
bipush 15
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
ldc "msg"
aastore
dup
iconst_3
ldc "msgtype"
aastore
dup
iconst_4
ldc "sucnum"
aastore
dup
iconst_5
ldc "totalnum"
aastore
dup
bipush 6
ldc "sendtoname"
aastore
dup
bipush 7
ldc "receiverids"
aastore
dup
bipush 8
ldc "failednum"
aastore
dup
bipush 9
ldc "receiveradmit"
aastore
dup
bipush 10
ldc "replynum"
aastore
dup
bipush 11
ldc "selfuid"
aastore
dup
bipush 12
ldc "smsid"
aastore
dup
bipush 13
ldc "issuccess"
aastore
dup
bipush 14
ldc "isread"
aastore
putstatic com/nd/android/u/contact/db/table/MessageInfoTable/TABLD_COLUMNS [Ljava/lang/String;
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

.method public static parseCursor(Landroid/database/Cursor;)Lcom/nd/android/u/contact/dataStructure/MessageInfo;
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
new com/nd/android/u/contact/dataStructure/MessageInfo
dup
invokespecial com/nd/android/u/contact/dataStructure/MessageInfo/<init>()V
astore 1
L0:
aload 1
invokestatic com/nd/android/util/ContactConst/getDateFormat()Ljava/text/DateFormat;
aload 0
aload 0
ldc "time"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual java/text/DateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/setTime(Ljava/util/Date;)V
L1:
aload 1
aload 0
aload 0
ldc "msg"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/setMsg(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "msgtype"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/setMsgtype(I)V
aload 1
aload 0
aload 0
ldc "sucnum"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/setSucnum(I)V
aload 1
aload 0
aload 0
ldc "totalnum"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/setTotalnum(I)V
aload 1
aload 0
aload 0
ldc "issuccess"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/setIssuccess(I)V
aload 1
aload 0
aload 0
ldc "sendtoname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/setSendtoname(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "receiverids"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/setReceiver_ids(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "failednum"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/setFailednum(I)V
aload 1
aload 0
aload 0
ldc "receiveradmit"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/setReceiveradmit(I)V
aload 1
aload 0
aload 0
ldc "replynum"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/setReplynum(I)V
aload 1
aload 0
aload 0
ldc "smsid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/setSmsid(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "selfuid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/setSelfuid(J)V
aload 1
aload 0
aload 0
ldc "isread"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/setIsRead(I)V
aload 1
areturn
L2:
astore 2
ldc "MessageInfoTable"
ldc "\u6d88\u606f\u7ba1\u7406\u65f6\u95f4\u83b7\u53d6\u5931\u8d25"
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L1
.limit locals 3
.limit stack 5
.end method
