.bytecode 50.0
.class public final synchronized enum com/nd/album/db/dao/GroupAlbumDAOImpl
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/album/db/dao/GroupAlbumDAOImpl;>;"
.inner class static synthetic inner com/nd/album/db/dao/GroupAlbumDAOImpl$1
.inner class private static final GroupAlbumIdMapper inner com/nd/album/db/dao/GroupAlbumDAOImpl$GroupAlbumIdMapper outer com/nd/album/db/dao/GroupAlbumDAOImpl
.inner class private static final GroupAlbumMapper inner com/nd/album/db/dao/GroupAlbumDAOImpl$GroupAlbumMapper outer com/nd/album/db/dao/GroupAlbumDAOImpl

.field private static final synthetic '$VALUES' [Lcom/nd/album/db/dao/GroupAlbumDAOImpl;

.field public static final enum 'INSTANCE' Lcom/nd/album/db/dao/GroupAlbumDAOImpl;

.field private 'sqliteTemplate' Lcom/common/android/utils/db/SqliteTemplate;

.method static <clinit>()V
new com/nd/album/db/dao/GroupAlbumDAOImpl
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/album/db/dao/GroupAlbumDAOImpl/<init>(Ljava/lang/String;I)V
putstatic com/nd/album/db/dao/GroupAlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/GroupAlbumDAOImpl;
iconst_1
anewarray com/nd/album/db/dao/GroupAlbumDAOImpl
dup
iconst_0
getstatic com/nd/album/db/dao/GroupAlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/GroupAlbumDAOImpl;
aastore
putstatic com/nd/album/db/dao/GroupAlbumDAOImpl/$VALUES [Lcom/nd/album/db/dao/GroupAlbumDAOImpl;
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
aload 0
new com/common/android/utils/db/SqliteTemplate
dup
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/nd/album/db/AlbumDatabase/getInstance(Landroid/content/Context;)Lcom/nd/album/db/AlbumDatabase;
iconst_1
invokevirtual com/nd/album/db/AlbumDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/SqliteTemplate/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
putfield com/nd/album/db/dao/GroupAlbumDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
return
.limit locals 3
.limit stack 5
.end method

.method private albumToValues(Lcom/product/android/commonInterface/album/Image;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "creator_uid"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getCreateUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "gid"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getGid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "thumburl"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getUrl_160()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "largeurl"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getUrl_480()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "navcnt"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getNav_cnt()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "file_dna"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getFile_dna()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "imageId"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getImageId()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "create_time"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getCreateTime()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "update_time"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getUpdateTime()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "commentcnt"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getCommentcnt()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "praisecnt"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getPraisecnt()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "ismypraise"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/isMyPraise()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method private isExists(Lcom/product/android/commonInterface/album/Image;)Z
iconst_0
istore 2
new com/common/android/utils/db/Query
dup
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/nd/album/db/AlbumDatabase/getInstance(Landroid/content/Context;)Lcom/nd/album/db/AlbumDatabase;
iconst_0
invokevirtual com/nd/album/db/AlbumDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 3
aload 3
ldc "uu_group_album"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "gid = ?"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getGid()J
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "file_dna = ? "
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getFile_dna()Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
invokevirtual com/common/android/utils/db/Query/select()Landroid/database/Cursor;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L1
iconst_1
istore 2
L2:
aload 1
invokeinterface android/database/Cursor/close()V 0
L0:
iload 2
ireturn
L1:
iconst_0
istore 2
goto L2
.limit locals 4
.limit stack 4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/album/db/dao/GroupAlbumDAOImpl;
ldc com/nd/album/db/dao/GroupAlbumDAOImpl
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/album/db/dao/GroupAlbumDAOImpl
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/album/db/dao/GroupAlbumDAOImpl;
getstatic com/nd/album/db/dao/GroupAlbumDAOImpl/$VALUES [Lcom/nd/album/db/dao/GroupAlbumDAOImpl;
invokevirtual [Lcom/nd/album/db/dao/GroupAlbumDAOImpl;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/album/db/dao/GroupAlbumDAOImpl;
areturn
.limit locals 0
.limit stack 1
.end method

.method public deleteImage(JJ)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 5
aload 5
ldc "uu_group_album"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "gid = ?"
lload 3
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "imageId = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/album/db/dao/GroupAlbumDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 5
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 6
.limit stack 4
.end method

.method public deleteImage(JLjava/lang/String;)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 4
aload 4
ldc "uu_group_album"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "gid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "file_dna = ?"
aload 3
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/album/db/dao/GroupAlbumDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 4
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 5
.limit stack 4
.end method

.method public deleteImages(JLjava/util/List;)J
.signature "(JLjava/util/List<Ljava/lang/Long;>;)J"
aload 3
ifnull L0
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lload 1
invokevirtual com/nd/album/db/dao/GroupAlbumDAOImpl/deleteImage(JJ)Z
pop
goto L1
L2:
lconst_1
lreturn
L0:
ldc2_w -1L
lreturn
.limit locals 4
.limit stack 5
.end method

.method public findImages(J)Ljava/util/List;
.signature "(J)Ljava/util/List<Lcom/product/android/commonInterface/album/Image;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_group_album"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "gid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "imageId"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/album/db/dao/GroupAlbumDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/album/db/dao/GroupAlbumDAOImpl$GroupAlbumMapper
dup
aconst_null
invokespecial com/nd/album/db/dao/GroupAlbumDAOImpl$GroupAlbumMapper/<init>(Lcom/nd/album/db/dao/GroupAlbumDAOImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 4
.limit stack 5
.end method

.method public getImageIds(J)Ljava/util/List;
.signature "(J)Ljava/util/List<Ljava/lang/Long;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_group_album"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "imageId"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "gid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "imageId DESC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/album/db/dao/GroupAlbumDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/album/db/dao/GroupAlbumDAOImpl$GroupAlbumIdMapper
dup
aconst_null
invokespecial com/nd/album/db/dao/GroupAlbumDAOImpl$GroupAlbumIdMapper/<init>(Lcom/nd/album/db/dao/GroupAlbumDAOImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 4
.limit stack 6
.end method

.method public getMaxUpdateTime(J)J
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_group_album"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "update_time"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "gid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "update_time DESC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
iconst_1
invokevirtual com/common/android/utils/db/Query/limit(I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/album/db/dao/GroupAlbumDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForLong(Lcom/common/android/utils/db/Query;)J
lreturn
.limit locals 4
.limit stack 6
.end method

.method public insertImage(Lcom/product/android/commonInterface/album/Image;)J
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_group_album"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/album/db/dao/GroupAlbumDAOImpl/albumToValues(Lcom/product/android/commonInterface/album/Image;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/album/db/dao/GroupAlbumDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/insert(Lcom/common/android/utils/db/Query;)J
lreturn
.limit locals 3
.limit stack 3
.end method

.method public insertImages(Ljava/util/List;)J
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/album/Image;>;)J"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/album/Image
invokevirtual com/nd/album/db/dao/GroupAlbumDAOImpl/insertOrUpdateImage(Lcom/product/android/commonInterface/album/Image;)J
pop2
goto L1
L2:
lconst_1
lreturn
L0:
ldc2_w -1L
lreturn
.limit locals 2
.limit stack 2
.end method

.method public insertOrUpdateImage(Lcom/product/android/commonInterface/album/Image;)J
aload 0
aload 1
invokespecial com/nd/album/db/dao/GroupAlbumDAOImpl/isExists(Lcom/product/android/commonInterface/album/Image;)Z
ifne L0
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_group_album"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/album/db/dao/GroupAlbumDAOImpl/albumToValues(Lcom/product/android/commonInterface/album/Image;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/album/db/dao/GroupAlbumDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/insert(Lcom/common/android/utils/db/Query;)J
lreturn
L0:
ldc2_w -1L
lreturn
.limit locals 3
.limit stack 3
.end method

.method public isExists(Ljava/lang/String;J)Z
iconst_0
istore 4
new com/common/android/utils/db/Query
dup
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/nd/album/db/AlbumDatabase/getInstance(Landroid/content/Context;)Lcom/nd/album/db/AlbumDatabase;
iconst_0
invokevirtual com/nd/album/db/AlbumDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 5
aload 5
ldc "uu_group_album"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "gid = ?"
lload 2
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "file_dna = ? "
aload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 5
invokevirtual com/common/android/utils/db/Query/select()Landroid/database/Cursor;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L1
iconst_1
istore 4
L2:
aload 1
invokeinterface android/database/Cursor/close()V 0
L0:
iload 4
ireturn
L1:
iconst_0
istore 4
goto L2
.limit locals 6
.limit stack 4
.end method

.method public updateImage(Lcom/product/android/commonInterface/album/Image;)V
aload 1
ifnonnull L0
return
L0:
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_group_album"
invokevirtual com/common/android/utils/db/Query/setTable(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "gid = ?"
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getGid()J
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
ldc "file_dna = ? "
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getFile_dna()Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/album/db/dao/GroupAlbumDAOImpl/albumToValues(Lcom/product/android/commonInterface/album/Image;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/album/db/dao/GroupAlbumDAOImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/upload(Lcom/common/android/utils/db/Query;)I
pop
return
.limit locals 3
.limit stack 4
.end method
