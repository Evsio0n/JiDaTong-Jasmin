.bytecode 50.0
.class public synchronized com/nd/crashcollection/lib/CrashInfoSQLiteHelper
.super android/database/sqlite/SQLiteOpenHelper

.field private static final 'COLUMN_ANDROID_RELEASE' Ljava/lang/String; = "android_release"

.field private static final 'COLUMN_ANDROID_SDK' Ljava/lang/String; = "android_sdk"

.field private static final 'COLUMN_APP_VERSION' Ljava/lang/String; = "app_version"

.field private static final 'COLUMN_CRASH_INFO' Ljava/lang/String; = "crash_info"

.field private static final 'COLUMN_CRASH_STACK_MD5' Ljava/lang/String; = "crash_stack_md5"

.field private static final 'COLUMN_CRASH_TIME' Ljava/lang/String; = "crash_time"

.field private static final 'COLUMN_CRASH_TYPE' Ljava/lang/String; = "crash_type"

.field private static final 'COLUMN_LANGUAGE' Ljava/lang/String; = "language"

.field private static final 'COLUMN_NETWORK_TYPE' Ljava/lang/String; = "network_type"

.field private static final 'COLUMN_UPLOADED' Ljava/lang/String; = "uploaded"

.field private static final 'DATABASE_NAME' Ljava/lang/String; = "crash_info"

.field private static final 'DATABASE_VERSION' I = 3


.field private static final 'TABLE_NAME' Ljava/lang/String; = "crash_items"

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
ldc "crash_info"
aconst_null
iconst_3
invokespecial android/database/sqlite/SQLiteOpenHelper/<init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return
.limit locals 2
.limit stack 5
.end method

.method private cursorToItem(Landroid/database/Cursor;)Lcom/nd/crashcollection/lib/CrashInfo;
new com/nd/crashcollection/lib/CrashInfo
dup
invokespecial com/nd/crashcollection/lib/CrashInfo/<init>()V
astore 2
aload 2
aload 1
aload 1
ldc "crash_time"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/setCrashTime(J)V
aload 2
aload 1
aload 1
ldc "android_sdk"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/setAndroidSdk(I)V
aload 2
aload 1
aload 1
ldc "android_release"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/setAndroidRelease(Ljava/lang/String;)V
aload 2
aload 1
aload 1
ldc "language"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/setLanguage(Ljava/lang/String;)V
aload 2
aload 1
aload 1
ldc "app_version"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/setAppVersion(I)V
aload 2
aload 1
aload 1
ldc "network_type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/setNetworkType(Ljava/lang/String;)V
aload 2
aload 1
aload 1
ldc "crash_type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/setCrashType(Ljava/lang/String;)V
aload 2
aload 1
aload 1
ldc "crash_info"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/setCrashInfo(Ljava/lang/String;)V
aload 2
aload 1
aload 1
ldc "crash_stack_md5"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/setCrashStackMd5(Ljava/lang/String;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method private getMaxVersion(Landroid/database/sqlite/SQLiteDatabase;)J
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
ldc "SELECT MAX("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "app_version"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ") FROM "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "crash_items"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
astore 1
aload 1
invokevirtual android/database/sqlite/SQLiteStatement/simpleQueryForLong()J
lstore 2
aload 1
invokevirtual android/database/sqlite/SQLiteStatement/close()V
lload 2
lreturn
.limit locals 5
.limit stack 2
.end method

.method private isMd5Exist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
iconst_0
ireturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 5
ldc "SELECT COUNT(*) FROM "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "crash_items"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " WHERE "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "crash_stack_md5"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
astore 1
aload 1
invokevirtual android/database/sqlite/SQLiteStatement/simpleQueryForLong()J
lstore 3
aload 1
invokevirtual android/database/sqlite/SQLiteStatement/close()V
lload 3
lconst_0
lcmp
ifeq L1
iconst_1
ireturn
.limit locals 6
.limit stack 4
.end method

.method public deleteUnusedItems()V
aload 0
invokevirtual com/nd/crashcollection/lib/CrashInfoSQLiteHelper/getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
astore 1
aload 1
ldc "crash_items"
ldc "uploaded = ? AND app_version < ?"
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "1"
aastore
dup
iconst_1
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/CrashInfoSQLiteHelper/getMaxVersion(Landroid/database/sqlite/SQLiteDatabase;)J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
return
.limit locals 2
.limit stack 8
.end method

.method public getCrashInfo(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/nd/crashcollection/lib/CrashInfo;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 0
invokevirtual com/nd/crashcollection/lib/CrashInfoSQLiteHelper/getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
astore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
ldc "SELECT * FROM "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "crash_items"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " WHERE "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uploaded"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = 0 LIMIT "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 3
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 4
aload 4
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
L0:
aload 4
invokeinterface android/database/Cursor/isAfterLast()Z 0
ifeq L1
aload 4
invokeinterface android/database/Cursor/close()V 0
aload 3
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
aload 2
areturn
L1:
aload 2
aload 0
aload 4
invokespecial com/nd/crashcollection/lib/CrashInfoSQLiteHelper/cursorToItem(Landroid/database/Cursor;)Lcom/nd/crashcollection/lib/CrashInfo;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
invokeinterface android/database/Cursor/moveToNext()Z 0
pop
goto L0
.limit locals 5
.limit stack 3
.end method

.method public insertCrashInfo(Lcom/nd/crashcollection/lib/CrashInfo;)V
aload 0
invokevirtual com/nd/crashcollection/lib/CrashInfoSQLiteHelper/getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
astore 2
aload 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/getCrashStackMd5()Ljava/lang/String;
astore 3
aload 0
aload 2
aload 3
invokespecial com/nd/crashcollection/lib/CrashInfoSQLiteHelper/isMd5Exist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
ifne L0
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 4
aload 4
ldc "crash_time"
aload 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/getCrashTime()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 4
ldc "android_sdk"
aload 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/getAndroidSdk()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 4
ldc "android_release"
aload 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/getAndroidRelease()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 4
ldc "language"
aload 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/getLanguage()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 4
ldc "app_version"
aload 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/getAppVersion()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 4
ldc "network_type"
aload 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/getNetworkType()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 4
ldc "crash_type"
aload 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/getCrashType()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 4
ldc "crash_info"
aload 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/getCrashInfo()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 4
ldc "crash_stack_md5"
aload 3
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "crash_items"
aconst_null
aload 4
invokevirtual android/database/sqlite/SQLiteDatabase/insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
L0:
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
return
.limit locals 5
.limit stack 4
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 2
ldc "CREATE TABLE "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "crash_items"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "crash_time"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " INTEGER PRIMARY KEY, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "android_sdk"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " INTEGER NOT NULL, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "android_release"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " TEXT NOT NULL, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "language"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " TEXT NOT NULL, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "app_version"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " INTEGER NOT NULL, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "network_type"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " TEXT NOT NULL, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "crash_type"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " TEXT NOT NULL, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "crash_info"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " TEXT NOT NULL, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "crash_stack_md5"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " TEXT NOT NULL DEFAULT '', "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uploaded"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " INTEGER NOT NULL DEFAULT 0);"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
ldc "ALTER TABLE "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "crash_items"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " ADD COLUMN "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "crash_stack_md5"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " TEXT NOT NULL DEFAULT ''"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 5
ldc "ALTER TABLE "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "crash_items"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " ADD COLUMN "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uploaded"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " INTEGER NOT NULL DEFAULT 0"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 2
tableswitch 1
L0
L1
default : L2
L2:
return
L0:
iload 3
iconst_2
if_icmplt L3
aload 1
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
L3:
iload 3
iconst_3
if_icmplt L2
aload 1
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
L1:
iload 3
iconst_3
if_icmplt L2
aload 1
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 6
.limit stack 2
.end method

.method public setUploaded(Ljava/util/List;)V
.signature "(Ljava/util/List<Ljava/lang/Long;>;)V"
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
aload 0
invokevirtual com/nd/crashcollection/lib/CrashInfoSQLiteHelper/getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
astore 4
aload 4
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L4
aload 4
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L3:
aload 4
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 4
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
return
L4:
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 2
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 5
aload 5
ldc "uploaded"
iconst_1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 4
ldc "crash_items"
aload 5
new java/lang/StringBuilder
dup
ldc "crash_time = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
pop
L5:
goto L1
L2:
astore 1
aload 4
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 4
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
aload 1
athrow
.limit locals 6
.limit stack 6
.end method
