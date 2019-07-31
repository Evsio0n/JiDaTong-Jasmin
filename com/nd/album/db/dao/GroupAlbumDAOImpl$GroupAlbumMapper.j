.bytecode 50.0
.class final synchronized com/nd/album/db/dao/GroupAlbumDAOImpl$GroupAlbumMapper
.super java/lang/Object
.implements com/common/android/utils/db/RowMapper
.signature "Ljava/lang/Object;Lcom/common/android/utils/db/RowMapper<Lcom/product/android/commonInterface/album/Image;>;"
.inner class private static final GroupAlbumMapper inner com/nd/album/db/dao/GroupAlbumDAOImpl$GroupAlbumMapper outer com/nd/album/db/dao/GroupAlbumDAOImpl

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/nd/album/db/dao/GroupAlbumDAOImpl$1;)V
aload 0
invokespecial com/nd/album/db/dao/GroupAlbumDAOImpl$GroupAlbumMapper/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public mapRow(Landroid/database/Cursor;I)Lcom/product/android/commonInterface/album/Image;
new com/product/android/commonInterface/album/Image
dup
invokespecial com/product/android/commonInterface/album/Image/<init>()V
astore 3
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 3
aload 1
aload 1
ldc "creator_uid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/album/Image/setCreateUid(J)V
aload 3
aload 1
aload 1
ldc "gid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/album/Image/setGid(J)V
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
ldc "navcnt"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/album/Image/setNav_cnt(I)V
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
ldc "create_time"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/album/Image/setCreateTime(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "update_time"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/album/Image/setUpdateTime(Ljava/lang/String;)V
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
ldc "praisecnt"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/album/Image/setPraisecnt(I)V
aload 3
aload 1
aload 1
ldc "ismypraise"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/album/Image/setMyPraise(I)V
L0:
aload 3
areturn
.limit locals 4
.limit stack 4
.end method

.method public volatile synthetic mapRow(Landroid/database/Cursor;I)Ljava/lang/Object;
aload 0
aload 1
iload 2
invokevirtual com/nd/album/db/dao/GroupAlbumDAOImpl$GroupAlbumMapper/mapRow(Landroid/database/Cursor;I)Lcom/product/android/commonInterface/album/Image;
areturn
.limit locals 3
.limit stack 3
.end method
