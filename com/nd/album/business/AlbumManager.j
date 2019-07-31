.bytecode 50.0
.class public final synchronized enum com/nd/album/business/AlbumManager
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/album/business/AlbumManager;>;"

.field private static final synthetic '$VALUES' [Lcom/nd/album/business/AlbumManager;

.field public static final enum 'INSTANCE' Lcom/nd/album/business/AlbumManager;

.method static <clinit>()V
new com/nd/album/business/AlbumManager
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/album/business/AlbumManager/<init>(Ljava/lang/String;I)V
putstatic com/nd/album/business/AlbumManager/INSTANCE Lcom/nd/album/business/AlbumManager;
iconst_1
anewarray com/nd/album/business/AlbumManager
dup
iconst_0
getstatic com/nd/album/business/AlbumManager/INSTANCE Lcom/nd/album/business/AlbumManager;
aastore
putstatic com/nd/album/business/AlbumManager/$VALUES [Lcom/nd/album/business/AlbumManager;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nd/album/business/AlbumManager;
ldc com/nd/album/business/AlbumManager
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/album/business/AlbumManager
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/album/business/AlbumManager;
getstatic com/nd/album/business/AlbumManager/$VALUES [Lcom/nd/album/business/AlbumManager;
invokevirtual [Lcom/nd/album/business/AlbumManager;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/album/business/AlbumManager;
areturn
.limit locals 0
.limit stack 1
.end method

.method public getAlbumIdFormSharePf(Landroid/content/Context;)J
lconst_0
lstore 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L0
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "album_id"
lconst_0
invokestatic com/common/android/utils/ConfigHelper/loadLongKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
lstore 2
L0:
lload 2
lreturn
.limit locals 4
.limit stack 5
.end method

.method public getAlbumImagesListByAlbumId(JII)Ljava/util/ArrayList;
.signature "(JII)Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
aconst_null
astore 5
L0:
invokestatic com/nd/album/com/AlbumCom/getInstance()Lcom/nd/album/com/AlbumCom;
lload 1
iload 3
iload 4
invokevirtual com/nd/album/com/AlbumCom/getAlbumPhotosByAlbumId(JII)Ljava/util/ArrayList;
astore 6
L1:
aload 6
ifnull L6
aload 6
astore 5
L3:
aload 6
invokevirtual java/util/ArrayList/size()I
ifle L6
L4:
aload 6
astore 5
L5:
getstatic com/nd/album/db/dao/AlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/AlbumDAOImpl;
aload 6
lload 1
invokevirtual com/nd/album/db/dao/AlbumDAOImpl/updateAlbumImageList(Ljava/util/ArrayList;J)V
L6:
aload 6
areturn
L2:
astore 6
aload 6
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 5
areturn
.limit locals 7
.limit stack 5
.end method

.method public getLastestUserImageListFromNet(JI)Ljava/util/ArrayList;
.signature "(JI)Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L7 to L8 using L2
aconst_null
astore 4
iload 3
ifeq L7
L0:
invokestatic com/nd/album/com/AlbumCom/getInstance()Lcom/nd/album/com/AlbumCom;
lload 1
iload 3
invokevirtual com/nd/album/com/AlbumCom/getLatestPhotos(JI)Ljava/util/ArrayList;
astore 5
L1:
aload 5
astore 6
aload 5
ifnull L9
aload 5
astore 4
aload 5
astore 6
L3:
aload 5
invokevirtual java/util/ArrayList/size()I
ifle L9
L4:
aload 5
astore 4
L5:
getstatic com/nd/album/db/dao/AlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/AlbumDAOImpl;
aload 5
lload 1
invokevirtual com/nd/album/db/dao/AlbumDAOImpl/updateImageList(Ljava/util/ArrayList;J)V
L6:
aload 5
areturn
L7:
invokestatic com/nd/album/com/AlbumCom/getInstance()Lcom/nd/album/com/AlbumCom;
lload 1
invokevirtual com/nd/album/com/AlbumCom/getUserAllPhotos(J)Ljava/util/ArrayList;
astore 5
L8:
aload 5
areturn
L2:
astore 5
aload 5
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 4
astore 6
L9:
aload 6
areturn
.limit locals 7
.limit stack 4
.end method

.method public getNewAlbumImageListFromNet(J)Ljava/util/ArrayList;
.signature "(J)Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
aconst_null
astore 3
L0:
invokestatic com/nd/album/com/AlbumCom/getInstance()Lcom/nd/album/com/AlbumCom;
lload 1
invokevirtual com/nd/album/com/AlbumCom/getAlbumPhotos(J)Ljava/util/ArrayList;
astore 4
L1:
aload 4
ifnull L6
aload 4
astore 3
L3:
aload 4
invokevirtual java/util/ArrayList/size()I
ifle L6
L4:
aload 4
astore 3
L5:
getstatic com/nd/album/db/dao/AlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/AlbumDAOImpl;
aload 4
lload 1
invokevirtual com/nd/album/db/dao/AlbumDAOImpl/updateAlbumImageList(Ljava/util/ArrayList;J)V
L6:
aload 4
areturn
L2:
astore 4
aload 4
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 3
areturn
.limit locals 5
.limit stack 4
.end method

.method public getNewUserImageListFromNet(J)Ljava/util/ArrayList;
.signature "(J)Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
aconst_null
astore 3
L0:
invokestatic com/nd/album/com/AlbumCom/getInstance()Lcom/nd/album/com/AlbumCom;
lload 1
invokevirtual com/nd/album/com/AlbumCom/getUserAllPhotos(J)Ljava/util/ArrayList;
astore 4
L1:
aload 4
ifnull L6
aload 4
astore 3
L3:
aload 4
invokevirtual java/util/ArrayList/size()I
ifle L6
L4:
aload 4
astore 3
L5:
getstatic com/nd/album/db/dao/AlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/AlbumDAOImpl;
aload 4
lload 1
invokevirtual com/nd/album/db/dao/AlbumDAOImpl/updateImageList(Ljava/util/ArrayList;J)V
L6:
aload 4
areturn
L2:
astore 4
aload 4
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 3
areturn
.limit locals 5
.limit stack 4
.end method

.method public saveAlbumIdToSharePf(Landroid/content/Context;J)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L0
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "album_id"
lload 2
invokestatic com/common/android/utils/ConfigHelper/saveLongKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
L0:
return
.limit locals 4
.limit stack 5
.end method
