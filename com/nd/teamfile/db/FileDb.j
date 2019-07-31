.bytecode 50.0
.class public synchronized com/nd/teamfile/db/FileDb
.super java/lang/Object
.inner class FileDbHelper inner com/nd/teamfile/db/FileDb$FileDbHelper outer com/nd/teamfile/db/FileDb
.inner class public static final FileInfoColumns inner com/nd/teamfile/db/FileDb$FileInfoColumns outer com/nd/teamfile/db/FileDb
.inner class public static final UserColumns inner com/nd/teamfile/db/FileDb$UserColumns outer com/nd/teamfile/db/FileDb

.field private static volatile 'sInstance' Lcom/nd/teamfile/db/FileDb;

.field private 'mContext' Landroid/content/Context;

.field private 'mDb' Landroid/database/sqlite/SQLiteDatabase;

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/teamfile/db/FileDb/mContext Landroid/content/Context;
aload 0
new com/nd/teamfile/db/FileDb$FileDbHelper
dup
aload 0
aload 0
getfield com/nd/teamfile/db/FileDb/mContext Landroid/content/Context;
invokespecial com/nd/teamfile/db/FileDb$FileDbHelper/<init>(Lcom/nd/teamfile/db/FileDb;Landroid/content/Context;)V
invokevirtual com/nd/teamfile/db/FileDb$FileDbHelper/getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
putfield com/nd/teamfile/db/FileDb/mDb Landroid/database/sqlite/SQLiteDatabase;
return
.limit locals 2
.limit stack 5
.end method

.method private getFileInfoFromCursor(Landroid/database/Cursor;)Lcom/nd/teamfile/sdk/type/FileInfo;
aconst_null
astore 2
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L1
new com/nd/teamfile/sdk/type/FileInfo
dup
invokespecial com/nd/teamfile/sdk/type/FileInfo/<init>()V
astore 2
aload 0
aload 1
aload 2
invokespecial com/nd/teamfile/db/FileDb/getFileInfoFromCursor(Landroid/database/Cursor;Lcom/nd/teamfile/sdk/type/FileInfo;)V
goto L0
L1:
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method private getFileInfoFromCursor(Landroid/database/Cursor;Lcom/nd/teamfile/sdk/type/FileInfo;)V
aload 2
aload 1
aload 1
ldc "id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setKeyId(I)V
aload 2
aload 1
aload 1
ldc "file_id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setId(Ljava/lang/String;)V
aload 2
aload 1
aload 1
ldc "file_name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setName(Ljava/lang/String;)V
aload 2
aload 1
aload 1
ldc "group_id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setGid(J)V
aload 2
aload 1
aload 1
ldc "size"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setSize(J)V
aload 2
aload 1
aload 1
ldc "creater_uid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setCreaterUid(J)V
aload 2
aload 1
aload 1
ldc "creater_user_name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setCreateUsername(Ljava/lang/String;)V
aload 2
aload 1
aload 1
ldc "create_time"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setCreateTime(J)V
aload 2
aload 1
aload 1
ldc "state"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setState(I)V
aload 2
aload 1
aload 1
ldc "md5"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setMd5(Ljava/lang/String;)V
aload 2
aload 1
aload 1
ldc "sha1"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setSha1(Ljava/lang/String;)V
aload 2
aload 1
aload 1
ldc "local_cache_path"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setLocalCachePath(Ljava/lang/String;)V
aload 2
aload 1
aload 1
ldc "filepath"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setFilepath(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 4
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nd/teamfile/db/FileDb;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
getstatic com/nd/teamfile/db/FileDb/sInstance Lcom/nd/teamfile/db/FileDb;
ifnonnull L3
ldc com/nd/teamfile/db/FileDb
monitorenter
L0:
getstatic com/nd/teamfile/db/FileDb/sInstance Lcom/nd/teamfile/db/FileDb;
ifnonnull L1
new com/nd/teamfile/db/FileDb
dup
aload 0
invokespecial com/nd/teamfile/db/FileDb/<init>(Landroid/content/Context;)V
putstatic com/nd/teamfile/db/FileDb/sInstance Lcom/nd/teamfile/db/FileDb;
L1:
ldc com/nd/teamfile/db/FileDb
monitorexit
L3:
getstatic com/nd/teamfile/db/FileDb/sInstance Lcom/nd/teamfile/db/FileDb;
areturn
L2:
astore 0
L4:
ldc com/nd/teamfile/db/FileDb
monitorexit
L5:
aload 0
athrow
.limit locals 1
.limit stack 3
.end method

.method private getValuesFromFileInfo(Lcom/nd/teamfile/sdk/type/FileInfo;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "file_id"
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getId()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "file_name"
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getName()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "group_id"
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getGid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "creater_uid"
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getCreaterUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "create_time"
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getCreateTime()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "creater_user_name"
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getCreateUsername()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "size"
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getSize()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "state"
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getState()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "md5"
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getMd5()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "sha1"
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getSha1()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "local_cache_path"
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getLocalCachePath()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "filepath"
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getFilepath()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public addFileInfo(Lcom/nd/teamfile/sdk/type/FileInfo;)V
aload 0
aload 1
invokespecial com/nd/teamfile/db/FileDb/getValuesFromFileInfo(Lcom/nd/teamfile/sdk/type/FileInfo;)Landroid/content/ContentValues;
astore 1
aload 0
getfield com/nd/teamfile/db/FileDb/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "file"
aconst_null
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
return
.limit locals 2
.limit stack 4
.end method

.method public addUser(Lcom/nd/teamfile/sdk/type/UserInfo;)V
aload 1
ifnonnull L0
return
L0:
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "id"
aload 1
invokevirtual com/nd/teamfile/sdk/type/UserInfo/getUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "name"
aload 1
invokevirtual com/nd/teamfile/sdk/type/UserInfo/getName()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/teamfile/db/FileDb/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "user"
aconst_null
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
return
.limit locals 3
.limit stack 4
.end method

.method public close()V
aload 0
getfield com/nd/teamfile/db/FileDb/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
return
.limit locals 1
.limit stack 1
.end method

.method public deleteFile(I)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "id = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 0
getfield com/nd/teamfile/db/FileDb/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "file"
aload 2
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 3
.limit stack 4
.end method

.method public getFileInfo(Ljava/lang/String;)Lcom/nd/teamfile/sdk/type/FileInfo;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "file_id=\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
aload 0
getfield com/nd/teamfile/db/FileDb/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "file"
aconst_null
aload 1
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
invokespecial com/nd/teamfile/db/FileDb/getFileInfoFromCursor(Landroid/database/Cursor;)Lcom/nd/teamfile/sdk/type/FileInfo;
areturn
.limit locals 2
.limit stack 9
.end method

.method public getFileInfoByPath(Ljava/lang/String;)Lcom/nd/teamfile/sdk/type/FileInfo;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "filepath=\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
aload 0
getfield com/nd/teamfile/db/FileDb/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "file"
aconst_null
aload 1
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
invokespecial com/nd/teamfile/db/FileDb/getFileInfoFromCursor(Landroid/database/Cursor;)Lcom/nd/teamfile/sdk/type/FileInfo;
areturn
.limit locals 2
.limit stack 9
.end method

.method public getFileInfoList(J)Lcom/nd/teamfile/sdk/type/FileInfoList;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "group_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/teamfile/db/FileDb/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "file"
aconst_null
aload 3
aconst_null
aconst_null
aconst_null
ldc "create_time DESC"
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
new com/nd/teamfile/sdk/type/FileInfoList
dup
invokespecial com/nd/teamfile/sdk/type/FileInfoList/<init>()V
astore 4
L0:
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L1
new com/nd/teamfile/sdk/type/FileInfo
dup
invokespecial com/nd/teamfile/sdk/type/FileInfo/<init>()V
astore 5
aload 0
aload 3
aload 5
invokespecial com/nd/teamfile/db/FileDb/getFileInfoFromCursor(Landroid/database/Cursor;Lcom/nd/teamfile/sdk/type/FileInfo;)V
aload 4
aload 5
invokevirtual com/nd/teamfile/sdk/type/FileInfoList/add(Ljava/lang/Object;)Z
pop
goto L0
L1:
aload 3
invokeinterface android/database/Cursor/close()V 0
aload 4
areturn
.limit locals 6
.limit stack 8
.end method

.method public getLastFileInfo()Lcom/nd/teamfile/sdk/type/FileInfo;
aload 0
aload 0
getfield com/nd/teamfile/db/FileDb/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "file"
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
ldc "id desc"
ldc "1"
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
invokespecial com/nd/teamfile/db/FileDb/getFileInfoFromCursor(Landroid/database/Cursor;)Lcom/nd/teamfile/sdk/type/FileInfo;
areturn
.limit locals 1
.limit stack 10
.end method

.method public getMaxKey()I
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/nd/teamfile/db/FileDb/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "file"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "max(id)"
aastore
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 2
L1:
iconst_0
istore 1
L3:
aload 2
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L4
aload 2
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 1
L4:
aload 2
invokeinterface android/database/Cursor/close()V 0
L5:
aload 0
monitorexit
iload 1
ireturn
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 8
.end method

.method public getUploadFileInfoList(J)Lcom/nd/teamfile/sdk/type/FileInfoList;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "group_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " AND "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "state"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iconst_0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " AND "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "creater_uid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/teamfile/db/FileDb/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "file"
aconst_null
aload 3
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
new com/nd/teamfile/sdk/type/FileInfoList
dup
invokespecial com/nd/teamfile/sdk/type/FileInfoList/<init>()V
astore 4
L0:
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L1
new com/nd/teamfile/sdk/type/FileInfo
dup
invokespecial com/nd/teamfile/sdk/type/FileInfo/<init>()V
astore 5
aload 0
aload 3
aload 5
invokespecial com/nd/teamfile/db/FileDb/getFileInfoFromCursor(Landroid/database/Cursor;Lcom/nd/teamfile/sdk/type/FileInfo;)V
aload 4
aload 5
invokevirtual com/nd/teamfile/sdk/type/FileInfoList/add(Ljava/lang/Object;)Z
pop
goto L0
L1:
aload 3
invokeinterface android/database/Cursor/close()V 0
aload 4
areturn
.limit locals 6
.limit stack 8
.end method

.method public getUser(J)Lcom/nd/teamfile/sdk/type/UserInfo;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/teamfile/db/FileDb/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "user"
aconst_null
aload 3
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
aload 3
invokeinterface android/database/Cursor/getCount()I 0
ifne L0
aload 3
invokeinterface android/database/Cursor/close()V 0
aconst_null
areturn
L0:
new com/nd/teamfile/sdk/type/UserInfo
dup
invokespecial com/nd/teamfile/sdk/type/UserInfo/<init>()V
astore 4
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L1
aload 4
aload 3
aload 3
ldc "id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/teamfile/sdk/type/UserInfo/setUid(J)V
aload 4
aload 3
aload 3
ldc "name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/teamfile/sdk/type/UserInfo/setName(Ljava/lang/String;)V
L1:
aload 3
invokeinterface android/database/Cursor/close()V 0
aload 4
areturn
.limit locals 5
.limit stack 8
.end method

.method public setFileInfoList(Lcom/nd/teamfile/sdk/type/FileInfoList;J)V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L1 to L4 using L2
.catch all from L1 to L4 using L3
.catch java/lang/Exception from L5 to L6 using L2
.catch all from L5 to L6 using L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "group_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " and "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "state"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "<>"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iconst_0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
aload 0
getfield com/nd/teamfile/db/FileDb/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "file"
aload 4
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
aload 0
getfield com/nd/teamfile/db/FileDb/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfoList/iterator()Ljava/util/Iterator;
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/teamfile/sdk/type/FileInfo
astore 4
aload 4
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getState()I
ifeq L1
aload 0
aload 4
invokespecial com/nd/teamfile/db/FileDb/getValuesFromFileInfo(Lcom/nd/teamfile/sdk/type/FileInfo;)Landroid/content/ContentValues;
astore 4
aload 0
getfield com/nd/teamfile/db/FileDb/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "file"
aconst_null
aload 4
invokevirtual android/database/sqlite/SQLiteDatabase/insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
L4:
goto L1
L2:
astore 1
aload 0
getfield com/nd/teamfile/db/FileDb/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L5:
aload 0
getfield com/nd/teamfile/db/FileDb/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L6:
aload 0
getfield com/nd/teamfile/db/FileDb/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L3:
astore 1
aload 0
getfield com/nd/teamfile/db/FileDb/mDb Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
athrow
.limit locals 5
.limit stack 4
.end method

.method public setLocalPath(Ljava/lang/String;Ljava/lang/String;)V
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 3
aload 3
ldc "local_cache_path"
aload 2
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "file_id=\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/teamfile/db/FileDb/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "file"
aload 3
aload 1
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 4
.limit stack 5
.end method

.method public updateFileInfo(Lcom/nd/teamfile/sdk/type/FileInfo;I)I
aload 0
aload 1
invokespecial com/nd/teamfile/db/FileDb/getValuesFromFileInfo(Lcom/nd/teamfile/sdk/type/FileInfo;)Landroid/content/ContentValues;
astore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/teamfile/db/FileDb/mDb Landroid/database/sqlite/SQLiteDatabase;
ldc "file"
aload 1
aload 3
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
ireturn
.limit locals 4
.limit stack 5
.end method

.method public updateFileTime()V
return
.limit locals 1
.limit stack 0
.end method
