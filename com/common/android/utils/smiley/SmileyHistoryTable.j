.bytecode 50.0
.class public synchronized com/common/android/utils/smiley/SmileyHistoryTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_INDEX' Ljava/lang/String; = "CREATE INDEX uu_smiley_history_INDEX1 ON uu_smiley_history(uid)"

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_smiley_history (_id integer , uid long not null ,smiley_id INT ,path TEXT ,name TEXT ,time LONG ,tip TEXT ,shortcut TEXT , constraint pk_t2 primary key (uid,smiley_id))"

.field public static final 'FIELD_NAME' Ljava/lang/String; = "name"

.field public static final 'FIELD_PATH' Ljava/lang/String; = "path"

.field public static final 'FIELD_SHORTCUT' Ljava/lang/String; = "shortcut"

.field public static final 'FIELD_SMILEY_ID' Ljava/lang/String; = "smiley_id"

.field public static final 'FIELD_TIME' Ljava/lang/String; = "time"

.field public static final 'FIELD_TIP' Ljava/lang/String; = "tip"

.field public static final 'FIELD_UID' Ljava/lang/String; = "uid"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_smiley_history"

.field public static final 'TAG' Ljava/lang/String; = "UserInfo"

.method static <clinit>()V
bipush 7
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "uid"
aastore
dup
iconst_2
ldc "smiley_id"
aastore
dup
iconst_3
ldc "smiley_id"
aastore
dup
iconst_4
ldc "time"
aastore
dup
iconst_5
ldc "tip"
aastore
dup
bipush 6
ldc "shortcut"
aastore
putstatic com/common/android/utils/smiley/SmileyHistoryTable/TABLE_COLUMNS [Ljava/lang/String;
return
.limit locals 0
.limit stack 4
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static parseCursor(Landroid/database/Cursor;)Lcom/common/android/utils/smiley/Smiley;
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
ldc "UserInfo"
ldc "Cann't parse Cursor, bacause cursor is null or empty."
invokestatic com/product/android/utils/LogUtils/w(Ljava/lang/String;Ljava/lang/String;)V
aconst_null
areturn
L1:
new com/common/android/utils/smiley/Smiley
dup
invokespecial com/common/android/utils/smiley/Smiley/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "time"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/common/android/utils/smiley/Smiley/lastUsedTime J
aload 1
aload 0
aload 0
ldc "smiley_id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/common/android/utils/smiley/Smiley/id I
aload 1
aload 0
aload 0
ldc "name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/common/android/utils/smiley/Smiley/name Ljava/lang/String;
aload 1
aload 0
aload 0
ldc "tip"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/common/android/utils/smiley/Smiley/tip Ljava/lang/String;
aload 1
aload 0
aload 0
ldc "shortcut"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/common/android/utils/smiley/Smiley/shortCut Ljava/lang/String;
aload 1
aload 0
aload 0
ldc "path"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/common/android/utils/smiley/Smiley/path Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
