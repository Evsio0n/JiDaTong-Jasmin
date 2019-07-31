.bytecode 50.0
.class final synchronized com/nd/album/db/dao/GroupAlbumDAOImpl$GroupAlbumIdMapper
.super java/lang/Object
.implements com/common/android/utils/db/RowMapper
.signature "Ljava/lang/Object;Lcom/common/android/utils/db/RowMapper<Ljava/lang/Long;>;"
.inner class private static final GroupAlbumIdMapper inner com/nd/album/db/dao/GroupAlbumDAOImpl$GroupAlbumIdMapper outer com/nd/album/db/dao/GroupAlbumDAOImpl

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/nd/album/db/dao/GroupAlbumDAOImpl$1;)V
aload 0
invokespecial com/nd/album/db/dao/GroupAlbumDAOImpl$GroupAlbumIdMapper/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public mapRow(Landroid/database/Cursor;I)Ljava/lang/Long;
lconst_0
lstore 5
lload 5
lstore 3
aload 1
ifnull L0
lload 5
lstore 3
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 1
aload 1
ldc "imageId"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
lstore 3
L0:
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
areturn
.limit locals 7
.limit stack 3
.end method

.method public volatile synthetic mapRow(Landroid/database/Cursor;I)Ljava/lang/Object;
aload 0
aload 1
iload 2
invokevirtual com/nd/album/db/dao/GroupAlbumDAOImpl$GroupAlbumIdMapper/mapRow(Landroid/database/Cursor;I)Ljava/lang/Long;
areturn
.limit locals 3
.limit stack 3
.end method
