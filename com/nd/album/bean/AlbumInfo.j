.bytecode 50.0
.class public synchronized com/nd/album/bean/AlbumInfo
.super java/lang/Object
.implements java/io/Serializable

.field public static final 'AVATAR_ALBUM' I = 2


.field public static final 'ENTERPRISE_ALBUM' I = 5


.field public static final 'FULLVIEW_ALBUM' I = 7


.field public static final 'HAPPY_ALBUM' I = 6


.field public static final 'LANCH_ALBUM' I = 1


.field public static final 'PHONE_ALBUM' I = 3


.field public static final 'SHOW_ALBUM' I = 4


.field public static final 'serialVersionUID' J = 1L


.field public 'mAlbumId' J

.field public 'mAlbumName' Ljava/lang/String;

.field public 'mAlbumType' I

.field public 'mCoverPicId' J

.field public 'mCoverPicUrl' Ljava/lang/String;

.field public 'mCreateTime' J

.field public 'mOwnerId' J

.field public 'mPicNum' I

.field public 'mUpdateTime' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public isFullViewAlbum()Z
aload 0
getfield com/nd/album/bean/AlbumInfo/mAlbumType I
bipush 7
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method
