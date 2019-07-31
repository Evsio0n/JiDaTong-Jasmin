.bytecode 50.0
.class synchronized com/nd/album/db/AlbumDatabase$DatabaseHelper
.super android/database/sqlite/SQLiteOpenHelper
.inner class private static DatabaseHelper inner com/nd/album/db/AlbumDatabase$DatabaseHelper outer com/nd/album/db/AlbumDatabase

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
ldc "91album"
iconst_3
invokespecial com/nd/album/db/AlbumDatabase$DatabaseHelper/<init>(Landroid/content/Context;Ljava/lang/String;I)V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Ljava/lang/String;I)V
aload 0
aload 1
aload 2
aconst_null
iload 3
invokespecial com/nd/album/db/AlbumDatabase$DatabaseHelper/<init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return
.limit locals 4
.limit stack 5
.end method

.method public <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
aload 0
aload 1
aload 2
aload 3
iload 4
invokespecial android/database/sqlite/SQLiteOpenHelper/<init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return
.limit locals 5
.limit stack 5
.end method

.method private updateToVersion2(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
ldc "drop table if exists uu_album"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_album (imageId  BIGINT not null primary key, creator_id  BIGINT not null ,file_url text,thumburl text,largeurl text, file_dna text, navcnt integer, commentcnt integer, praisecnt integer, album_id  BIGINT )"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table image_praise (uid  BIGINT not null ,image_id  BIGINT, isPraised integer, primary key(uid, image_id))"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method private updateToVersion3(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
ldc "drop table if exists uu_album"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_album (imageId  BIGINT not null primary key, creator_id  BIGINT not null ,file_url text,thumburl text,largeurl text, file_dna text, navcnt integer, commentcnt integer, praisecnt integer, album_id  BIGINT )"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public close()V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
invokespecial android/database/sqlite/SQLiteOpenHelper/close()V
L1:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
ldc "create table uu_album (imageId  BIGINT not null primary key, creator_id  BIGINT not null ,file_url text,thumburl text,largeurl text, file_dna text, navcnt integer, commentcnt integer, praisecnt integer, album_id  BIGINT )"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_group_album ( imageId BIGINT , creator_uid integer, gid integer not null, thumburl text, largeurl text, file_dna text, navcnt integer, create_time text, update_time text, commentcnt integer, praisecnt integer, ismypraise  integer, primary key(gid, file_dna) ) "
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table image_praise (uid  BIGINT not null ,image_id  BIGINT, isPraised integer, primary key(uid, image_id))"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
aload 1
invokespecial android/database/sqlite/SQLiteOpenHelper/onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
iload 2
tableswitch 1
L0
L1
default : L2
L2:
return
L0:
aload 0
aload 1
invokespecial com/nd/album/db/AlbumDatabase$DatabaseHelper/updateToVersion2(Landroid/database/sqlite/SQLiteDatabase;)V
L1:
aload 0
aload 1
invokespecial com/nd/album/db/AlbumDatabase$DatabaseHelper/updateToVersion3(Landroid/database/sqlite/SQLiteDatabase;)V
return
.limit locals 4
.limit stack 2
.end method
