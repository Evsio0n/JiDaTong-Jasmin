.bytecode 50.0
.class public synchronized com/nd/android/u/business/db/table/RecentContactRecordTable
.super java/lang/Object

.field public static final 'COLUMN_ACKTYPE' Ljava/lang/String; = "acktype"

.field public static final 'COLUMN_COUNT' Ljava/lang/String; = "count"

.field public static final 'COLUMN_DURATION' Ljava/lang/String; = "duration"

.field public static final 'COLUMN_EXTRA_ID' Ljava/lang/String; = "extra_id"

.field public static final 'COLUMN_LAST_MSG' Ljava/lang/String; = "last_msg"

.field public static final 'COLUMN_LAST_MSG_ID' Ljava/lang/String; = "last_msg_id"

.field public static final 'COLUMN_LAST_MSG_SERVER_ID' Ljava/lang/String; = "last_msg_server_id"

.field public static final 'COLUMN_LAST_MSG_TYPE' Ljava/lang/String; = "last_msg_type"

.field public static final 'COLUMN_LAST_STATE' Ljava/lang/String; = "last_state"

.field public static final 'COLUMN_Multiple_ID' Ljava/lang/String; = "multiple_id"

.field public static final 'COLUMN_PARENT' Ljava/lang/String; = "parent"

.field public static final 'COLUMN_SUB_TYPE' Ljava/lang/String; = "sub_type"

.field public static final 'COLUMN_TIME' Ljava/lang/String; = "time"

.field public static final 'COLUMN_TOP_TIME' Ljava/lang/String; = "toptime"

.field public static final 'COLUMN_TYPE' Ljava/lang/String; = "type"

.field public static final 'COLUMN_VERSION' Ljava/lang/String; = "version"

.field public static final 'INVALID_SUBTYPE' I = -1


.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_recentcontactrecord"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static clearUnreadCount(Ljava/util/Collection;)V
.signature "(Ljava/util/Collection<+Lcom/nd/android/u/controller/bean/contact/RecentContactItem;>;)V"
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
aload 0
invokeinterface java/util/Collection/isEmpty()Z 0
ifeq L6
return
L6:
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
ldc "%s = ? AND %s = ?"
iconst_2
anewarray java/lang/Object
dup
iconst_0
ldc "extra_id"
aastore
dup
iconst_1
ldc "type"
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 3
invokestatic com/nd/android/u/business/db/UDatabase/getInstance()Lcom/nd/android/u/business/db/UDatabase;
invokevirtual com/nd/android/u/business/db/UDatabase/getDb()Landroid/database/sqlite/SQLiteDatabase;
astore 2
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 0
invokeinterface java/util/Collection/iterator()Ljava/util/Iterator; 0
astore 0
L1:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L4
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L3:
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L4:
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
astore 4
aload 4
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getIdentity()Ljava/lang/String;
astore 5
aload 4
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMessageType()I
istore 1
aload 2
ldc "uu_recentcontactrecord"
aload 4
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getClearUnreadCountValue()Landroid/content/ContentValues;
aload 3
iconst_2
anewarray java/lang/String
dup
iconst_0
aload 5
aastore
dup
iconst_1
iload 1
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
pop
L5:
goto L1
L2:
astore 0
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 0
athrow
.limit locals 6
.limit stack 8
.end method

.method private static cursorToItem(Landroid/database/Cursor;)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
aload 0
aload 0
ldc "type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
istore 1
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
iload 1
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 2
aload 2
ifnonnull L0
aload 2
areturn
L0:
aload 2
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/cursor2Item(Landroid/database/Cursor;)V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public static delete(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
ldc "%s = ? AND %s = ?"
iconst_2
anewarray java/lang/Object
dup
iconst_0
ldc "extra_id"
aastore
dup
iconst_1
ldc "type"
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 2
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getIdentity()Ljava/lang/String;
astore 3
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMessageType()I
istore 1
invokestatic com/nd/android/u/business/db/UDatabase/getInstance()Lcom/nd/android/u/business/db/UDatabase;
invokevirtual com/nd/android/u/business/db/UDatabase/getDb()Landroid/database/sqlite/SQLiteDatabase;
ldc "uu_recentcontactrecord"
aload 2
iconst_2
anewarray java/lang/String
dup
iconst_0
aload 3
aastore
dup
iconst_1
iload 1
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 4
.limit stack 7
.end method

.method public static deleteAll()V
invokestatic com/nd/android/u/business/db/UDatabase/getInstance()Lcom/nd/android/u/business/db/UDatabase;
invokevirtual com/nd/android/u/business/db/UDatabase/getDb()Landroid/database/sqlite/SQLiteDatabase;
ldc "uu_recentcontactrecord"
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 0
.limit stack 4
.end method

.method public static deleteAllSpecificType(I)V
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
ldc "%s = ?"
iconst_1
anewarray java/lang/Object
dup
iconst_0
ldc "type"
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
invokestatic com/nd/android/u/business/db/UDatabase/getInstance()Lcom/nd/android/u/business/db/UDatabase;
invokevirtual com/nd/android/u/business/db/UDatabase/getDb()Landroid/database/sqlite/SQLiteDatabase;
ldc "uu_recentcontactrecord"
aload 1
iconst_1
anewarray java/lang/String
dup
iconst_0
iload 0
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 7
.end method

.method public static getCreateSql()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 0
aload 0
ldc "CREATE TABLE "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uu_recentcontactrecord"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "extra_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " TEXT NOT NULL, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "type"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " INTEGER NOT NULL, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "sub_type"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " INTEGER NOT NULL DEFAULT "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iconst_m1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "count"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " INTEGER NOT NULL DEFAULT 0, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "time"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " INTEGER NOT NULL, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "multiple_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " INTEGER NOT NULL, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "last_msg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " TEXT NOT NULL, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "last_state"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " INTEGER NOT NULL, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "last_msg_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " TEXT NOT NULL, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "last_msg_server_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " INTEGER NOT NULL, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "last_msg_type"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " INTEGER NOT NULL, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "duration"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " INTEGER NOT NULL, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "version"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " INTEGER, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "acktype"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " INTEGER, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "toptime"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " INTEGER, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "parent"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " INTEGER NOT NULL DEFAULT -1, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " PRIMARY KEY("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "extra_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "type"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "));"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static getRecentFriends(JJ)[J
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 6
aload 6
ldc "select "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 6
ldc "extra_id"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 6
ldc " from "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 6
ldc "uu_recentcontactrecord"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 6
ldc " where "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 6
new java/lang/StringBuilder
dup
ldc "time>"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 6
new java/lang/StringBuilder
dup
ldc " and time < "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 6
ldc " and type = 0"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
new com/nd/android/u/business/db/dbUtils/Query
dup
invokestatic com/nd/android/u/business/db/UDatabase/getInstance()Lcom/nd/android/u/business/db/UDatabase;
invokevirtual com/nd/android/u/business/db/UDatabase/getDb()Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
ldc "uu_recentcontactrecord"
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 6
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/query(Ljava/lang/String;)Landroid/database/Cursor;
astore 6
aload 6
ifnonnull L0
aconst_null
areturn
L0:
aload 6
invokeinterface android/database/Cursor/getCount()I 0
istore 5
iload 5
newarray long
astore 7
iconst_0
istore 4
L1:
iload 4
iload 5
if_icmplt L2
aload 6
invokeinterface android/database/Cursor/close()V 0
aload 7
areturn
L2:
aload 6
iload 4
invokeinterface android/database/Cursor/moveToPosition(I)Z 1
pop
aload 7
iload 4
aload 6
iconst_0
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokestatic com/nd/android/u/allCommonUtils/FormatUtils/parseLong(Ljava/lang/String;)J
lastore
iload 4
iconst_1
iadd
istore 4
goto L1
.limit locals 8
.limit stack 4
.end method

.method public static getSubContactItemList(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/nd/android/u/controller/bean/contact/RecentContactItem;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
new com/nd/android/u/business/db/dbUtils/Query
dup
invokestatic com/nd/android/u/business/db/UDatabase/getInstance()Lcom/nd/android/u/business/db/UDatabase;
invokevirtual com/nd/android/u/business/db/UDatabase/getDb()Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 2
aload 2
ldc "uu_recentcontactrecord"
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
ldc "parent = ?"
iload 0
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;I)Lcom/nd/android/u/business/db/dbUtils/Query;
ldc "time DESC"
invokevirtual com/nd/android/u/business/db/dbUtils/Query/orderBy(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 2
invokevirtual com/nd/android/u/business/db/dbUtils/Query/select()Landroid/database/Cursor;
astore 2
aload 2
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L0
L1:
aload 2
invokestatic com/nd/android/u/business/db/table/RecentContactRecordTable/cursorToItem(Landroid/database/Cursor;)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 3
aload 3
ifnull L2
aload 3
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/isObjectValid()Z
ifeq L2
aload 1
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L2:
aload 2
invokeinterface android/database/Cursor/moveToNext()Z 0
ifne L1
L0:
aload 2
invokeinterface android/database/Cursor/close()V 0
aload 1
areturn
.limit locals 4
.limit stack 3
.end method

.method public static query(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/nd/android/u/controller/bean/contact/RecentContactItem;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
new com/nd/android/u/business/db/dbUtils/Query
dup
invokestatic com/nd/android/u/business/db/UDatabase/getInstance()Lcom/nd/android/u/business/db/UDatabase;
invokevirtual com/nd/android/u/business/db/UDatabase/getDb()Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 2
aload 2
ldc "uu_recentcontactrecord"
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
ldc "parent isnull or parent = -1 "
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
ldc "extra_id <> ?"
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokevirtual com/nd/android/u/business/db/dbUtils/Query/where(Ljava/lang/String;J)Lcom/nd/android/u/business/db/dbUtils/Query;
ldc "time DESC"
invokevirtual com/nd/android/u/business/db/dbUtils/Query/orderBy(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
iload 0
invokevirtual com/nd/android/u/business/db/dbUtils/Query/limit(I)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 2
invokevirtual com/nd/android/u/business/db/dbUtils/Query/select()Landroid/database/Cursor;
astore 2
aload 2
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L0
L1:
aload 2
invokestatic com/nd/android/u/business/db/table/RecentContactRecordTable/cursorToItem(Landroid/database/Cursor;)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 3
aload 3
ifnull L2
aload 3
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/isObjectValid()Z
ifeq L2
aload 1
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L2:
aload 2
invokeinterface android/database/Cursor/moveToNext()Z 0
ifne L1
L0:
aload 2
invokeinterface android/database/Cursor/close()V 0
aload 1
areturn
.limit locals 4
.limit stack 4
.end method

.method public static replace(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)J
invokestatic com/nd/android/u/business/db/UDatabase/getInstance()Lcom/nd/android/u/business/db/UDatabase;
invokevirtual com/nd/android/u/business/db/UDatabase/getDb()Landroid/database/sqlite/SQLiteDatabase;
ldc "uu_recentcontactrecord"
aconst_null
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/toContentValues()Landroid/content/ContentValues;
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
lreturn
.limit locals 1
.limit stack 4
.end method

.method public static updateMsgState(Ljava/lang/String;I)I
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 3
aload 3
ldc "last_state"
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
ldc "%s = ?"
iconst_1
anewarray java/lang/Object
dup
iconst_0
ldc "last_msg_id"
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 4
invokestatic com/nd/android/u/business/db/UDatabase/getInstance()Lcom/nd/android/u/business/db/UDatabase;
invokevirtual com/nd/android/u/business/db/UDatabase/getDb()Landroid/database/sqlite/SQLiteDatabase;
ldc "uu_recentcontactrecord"
aload 3
aload 4
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 0
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
istore 2
ldc "sendmessage trace"
new java/lang/StringBuilder
dup
ldc "updateMsgState:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ",msgNewState="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",updateresult="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
iload 2
ireturn
.limit locals 5
.limit stack 8
.end method
