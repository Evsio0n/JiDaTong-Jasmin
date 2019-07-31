.bytecode 50.0
.class public final synchronized enum com/nd/album/db/dao/AlbumDAOImpl
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/album/db/dao/AlbumDAOImpl;>;"

.field private static final synthetic '$VALUES' [Lcom/nd/album/db/dao/AlbumDAOImpl;

.field public static final enum 'INSTANCE' Lcom/nd/album/db/dao/AlbumDAOImpl;

.method static <clinit>()V
new com/nd/album/db/dao/AlbumDAOImpl
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/album/db/dao/AlbumDAOImpl/<init>(Ljava/lang/String;I)V
putstatic com/nd/album/db/dao/AlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/AlbumDAOImpl;
iconst_1
anewarray com/nd/album/db/dao/AlbumDAOImpl
dup
iconst_0
getstatic com/nd/album/db/dao/AlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/AlbumDAOImpl;
aastore
putstatic com/nd/album/db/dao/AlbumDAOImpl/$VALUES [Lcom/nd/album/db/dao/AlbumDAOImpl;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method private deleteAlbumPhotos(J)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/nd/album/db/AlbumDatabase/getInstance(Landroid/content/Context;)Lcom/nd/album/db/AlbumDatabase;
iconst_1
invokevirtual com/nd/album/db/AlbumDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
astore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
ldc "image_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " in ("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "select "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "imageId"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " from "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uu_album"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " where "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "album_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " ) "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " and "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 3
ldc "image_praise"
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
aload 4
iconst_0
aload 4
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 4
ldc "album_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 3
ldc "uu_album"
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 5
.limit stack 4
.end method

.method private deleteUserPhotos(J)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/nd/album/db/AlbumDatabase/getInstance(Landroid/content/Context;)Lcom/nd/album/db/AlbumDatabase;
iconst_1
invokevirtual com/nd/album/db/AlbumDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
astore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
ldc "image_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " in ("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "select "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "imageId"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " from "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uu_album"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " where "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "creator_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " ) "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " and "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 3
ldc "image_praise"
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
aload 4
iconst_0
aload 4
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 4
ldc "creator_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 3
ldc "uu_album"
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 5
.limit stack 4
.end method

.method private getImageList(Ljava/lang/StringBuilder;)Ljava/util/ArrayList;
.signature "(Ljava/lang/StringBuilder;)Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L4 to L5 using L3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/nd/album/db/AlbumDatabase/getInstance(Landroid/content/Context;)Lcom/nd/album/db/AlbumDatabase;
iconst_1
invokevirtual com/nd/album/db/AlbumDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnull L6
L0:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L7
new com/product/android/commonInterface/album/Image
dup
invokespecial com/product/android/commonInterface/album/Image/<init>()V
astore 3
aload 3
aload 1
aload 1
ldc "creator_id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/album/Image/setCreateUid(J)V
aload 3
aload 1
aload 1
ldc "file_url"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/album/Image/setFileUrl(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "thumburl"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/album/Image/setUrl_160(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "largeurl"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/album/Image/setUrl_480(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "commentcnt"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/album/Image/setCommentcnt(I)V
aload 3
aload 1
aload 1
ldc "file_dna"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/album/Image/setFile_dna(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "imageId"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/album/Image/setImageId(J)V
aload 3
aload 1
aload 1
ldc "navcnt"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/album/Image/setNav_cnt(I)V
aload 3
aload 1
aload 1
ldc "praisecnt"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/album/Image/setPraisecnt(I)V
aload 3
aload 1
aload 1
ldc "album_id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/album/Image/setAlbumId(J)V
aload 3
aload 1
aload 1
ldc "isPraised"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/album/Image/setMyPraise(I)V
aload 2
aload 3
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L1:
goto L0
L2:
astore 3
L4:
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
L5:
aload 1
ifnull L6
aload 1
invokeinterface android/database/Cursor/isClosed()Z 0
ifne L6
aload 1
invokeinterface android/database/Cursor/close()V 0
L6:
aload 2
areturn
L7:
aload 1
ifnull L6
aload 1
invokeinterface android/database/Cursor/isClosed()Z 0
ifne L6
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 2
areturn
L3:
astore 2
aload 1
ifnull L8
aload 1
invokeinterface android/database/Cursor/isClosed()Z 0
ifne L8
aload 1
invokeinterface android/database/Cursor/close()V 0
L8:
aload 2
athrow
.limit locals 4
.limit stack 4
.end method

.method private updateImageInfo(Lcom/product/android/commonInterface/album/Image;Landroid/database/sqlite/SQLiteDatabase;J)V
aload 1
ifnull L0
aload 2
ifnull L0
lload 3
lconst_0
lcmp
ifne L1
L0:
return
L1:
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 5
aload 5
ldc "creator_id"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getCreateUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 5
ldc "file_url"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getFileUrl()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 5
ldc "thumburl"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getUrl_160()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 5
ldc "largeurl"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getUrl_480()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 5
ldc "navcnt"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getNav_cnt()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 5
ldc "file_dna"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getFile_dna()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 5
ldc "imageId"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getImageId()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 5
ldc "commentcnt"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getCommentcnt()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 5
ldc "praisecnt"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getPraisecnt()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 5
ldc "album_id"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getAlbumId()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "uu_album"
aconst_null
aload 5
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
getstatic com/nd/album/db/dao/ImagePraiseDao/INSTANCE Lcom/nd/album/db/dao/ImagePraiseDao;
aload 2
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getImageId()J
lload 3
aload 1
invokevirtual com/product/android/commonInterface/album/Image/isMyPraise()I
invokevirtual com/nd/album/db/dao/ImagePraiseDao/updateImagePraise(Landroid/database/sqlite/SQLiteDatabase;JJI)V
return
.limit locals 6
.limit stack 7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/album/db/dao/AlbumDAOImpl;
ldc com/nd/album/db/dao/AlbumDAOImpl
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/album/db/dao/AlbumDAOImpl
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/album/db/dao/AlbumDAOImpl;
getstatic com/nd/album/db/dao/AlbumDAOImpl/$VALUES [Lcom/nd/album/db/dao/AlbumDAOImpl;
invokevirtual [Lcom/nd/album/db/dao/AlbumDAOImpl;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/album/db/dao/AlbumDAOImpl;
areturn
.limit locals 0
.limit stack 1
.end method

.method public deleteImage(Lcom/product/android/commonInterface/album/Image;)V
aload 1
ifnull L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 2
ldc "imageId"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getImageId()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/nd/album/db/AlbumDatabase/getInstance(Landroid/content/Context;)Lcom/nd/album/db/AlbumDatabase;
iconst_1
invokevirtual com/nd/album/db/AlbumDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
astore 3
aload 3
ldc "uu_album"
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
aload 2
iconst_0
aload 2
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 2
ldc "image_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getImageId()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " and "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 3
ldc "image_praise"
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
L0:
return
.limit locals 4
.limit stack 4
.end method

.method public getImageListByAlbumId(J)Ljava/util/ArrayList;
.signature "(J)Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
ldc "select l.*, r.isPraised from "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uu_album"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " as l,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "image_praise"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " as r where "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "album_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " and l."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "imageId"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = r."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "image_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " and "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " order by "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "imageId"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " DESC"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
aload 3
invokespecial com/nd/album/db/dao/AlbumDAOImpl/getImageList(Ljava/lang/StringBuilder;)Ljava/util/ArrayList;
areturn
.limit locals 4
.limit stack 3
.end method

.method public getImageListByCreatorId(J)Ljava/util/ArrayList;
.signature "(J)Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"
aload 0
lload 1
iconst_0
invokevirtual com/nd/album/db/dao/AlbumDAOImpl/getImageListByCreatorId(JI)Ljava/util/ArrayList;
areturn
.limit locals 3
.limit stack 4
.end method

.method public getImageListByCreatorId(JI)Ljava/util/ArrayList;
.signature "(JI)Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
ldc "select l.*, r.isPraised from "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uu_album"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " as l,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "image_praise"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " as r where "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "creator_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " and l."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "imageId"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = r."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "image_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " and "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " order by "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "imageId"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " DESC"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 3
ifeq L0
aload 4
ldc " limit "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
aload 0
aload 4
invokespecial com/nd/album/db/dao/AlbumDAOImpl/getImageList(Ljava/lang/StringBuilder;)Ljava/util/ArrayList;
areturn
.limit locals 5
.limit stack 3
.end method

.method public isExists(Ljava/lang/String;JJ)Z
.catch all from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 8
aload 8
ldc "select "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "imageId"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " from "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uu_album"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " where "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "creator_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " and "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "file_dna"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " and "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "album_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/nd/album/db/AlbumDatabase/getInstance(Landroid/content/Context;)Lcom/nd/album/db/AlbumDatabase;
iconst_1
invokevirtual com/nd/album/db/AlbumDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
aload 8
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnull L3
L0:
aload 1
invokeinterface android/database/Cursor/getCount()I 0
istore 6
L1:
iload 6
ifle L3
iconst_1
istore 7
L4:
aload 1
ifnull L5
aload 1
invokeinterface android/database/Cursor/close()V 0
L5:
iload 7
ireturn
L3:
iconst_0
istore 7
goto L4
L2:
astore 8
aload 1
ifnull L6
aload 1
invokeinterface android/database/Cursor/close()V 0
L6:
aload 8
athrow
.limit locals 9
.limit stack 3
.end method

.method public updateAlbumImageList(Ljava/util/ArrayList;J)V
.signature "(Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;J)V"
.catch all from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L4
.catch all from L1 to L3 using L5
.catch java/lang/Exception from L6 to L7 using L4
.catch all from L6 to L7 using L5
.catch java/lang/Exception from L8 to L9 using L4
.catch all from L8 to L9 using L5
.catch java/lang/Exception from L10 to L11 using L4
.catch all from L10 to L11 using L5
.catch all from L11 to L12 using L2
.catch all from L13 to L14 using L5
.catch all from L14 to L15 using L2
.catch all from L16 to L17 using L2
aload 0
monitorenter
aload 1
ifnull L12
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/nd/album/db/AlbumDatabase/getInstance(Landroid/content/Context;)Lcom/nd/album/db/AlbumDatabase;
iconst_1
invokevirtual com/nd/album/db/AlbumDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
astore 6
aload 6
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L1:
aload 0
lload 2
invokespecial com/nd/album/db/dao/AlbumDAOImpl/deleteAlbumPhotos(J)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 2
L3:
iconst_0
istore 4
L6:
aload 1
invokevirtual java/util/ArrayList/size()I
istore 5
L7:
iload 4
iload 5
if_icmpge L10
L8:
aload 0
aload 1
iload 4
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/album/Image
aload 6
lload 2
invokespecial com/nd/album/db/dao/AlbumDAOImpl/updateImageInfo(Lcom/product/android/commonInterface/album/Image;Landroid/database/sqlite/SQLiteDatabase;J)V
L9:
iload 4
iconst_1
iadd
istore 4
goto L7
L10:
aload 6
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L11:
aload 6
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
L12:
aload 0
monitorexit
return
L4:
astore 1
L13:
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L14:
aload 6
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
L15:
goto L12
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L5:
astore 1
L16:
aload 6
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
athrow
L17:
.limit locals 7
.limit stack 5
.end method

.method public updateImageInfo(Lcom/product/android/commonInterface/album/Image;)V
aload 0
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/nd/album/db/AlbumDatabase/getInstance(Landroid/content/Context;)Lcom/nd/album/db/AlbumDatabase;
iconst_1
invokevirtual com/nd/album/db/AlbumDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokespecial com/nd/album/db/dao/AlbumDAOImpl/updateImageInfo(Lcom/product/android/commonInterface/album/Image;Landroid/database/sqlite/SQLiteDatabase;J)V
return
.limit locals 2
.limit stack 5
.end method

.method public updateImageList(Ljava/util/ArrayList;J)V
.signature "(Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;J)V"
.catch all from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L4
.catch all from L1 to L3 using L5
.catch java/lang/Exception from L6 to L7 using L4
.catch all from L6 to L7 using L5
.catch java/lang/Exception from L8 to L9 using L4
.catch all from L8 to L9 using L5
.catch java/lang/Exception from L10 to L11 using L4
.catch all from L10 to L11 using L5
.catch all from L11 to L12 using L2
.catch all from L13 to L14 using L5
.catch all from L14 to L15 using L2
.catch all from L16 to L17 using L2
aload 0
monitorenter
aload 1
ifnull L12
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/nd/album/db/AlbumDatabase/getInstance(Landroid/content/Context;)Lcom/nd/album/db/AlbumDatabase;
iconst_1
invokevirtual com/nd/album/db/AlbumDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
astore 6
aload 6
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L1:
aload 0
lload 2
invokespecial com/nd/album/db/dao/AlbumDAOImpl/deleteUserPhotos(J)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 2
L3:
iconst_0
istore 4
L6:
aload 1
invokevirtual java/util/ArrayList/size()I
istore 5
L7:
iload 4
iload 5
if_icmpge L10
L8:
aload 0
aload 1
iload 4
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/album/Image
aload 6
lload 2
invokespecial com/nd/album/db/dao/AlbumDAOImpl/updateImageInfo(Lcom/product/android/commonInterface/album/Image;Landroid/database/sqlite/SQLiteDatabase;J)V
L9:
iload 4
iconst_1
iadd
istore 4
goto L7
L10:
aload 6
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L11:
aload 6
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
L12:
aload 0
monitorexit
return
L4:
astore 1
L13:
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L14:
aload 6
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
L15:
goto L12
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L5:
astore 1
L16:
aload 6
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
athrow
L17:
.limit locals 7
.limit stack 5
.end method
