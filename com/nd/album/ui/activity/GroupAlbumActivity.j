.bytecode 50.0
.class public synchronized com/nd/album/ui/activity/GroupAlbumActivity
.super android/app/Activity
.inner class inner com/nd/album/ui/activity/GroupAlbumActivity$1
.inner class inner com/nd/album/ui/activity/GroupAlbumActivity$2
.inner class GetGAlbumTask inner com/nd/album/ui/activity/GroupAlbumActivity$GetGAlbumTask outer com/nd/album/ui/activity/GroupAlbumActivity
.inner class GetNewImageTask inner com/nd/album/ui/activity/GroupAlbumActivity$GetNewImageTask outer com/nd/album/ui/activity/GroupAlbumActivity
.inner class UpdateImageTask inner com/nd/album/ui/activity/GroupAlbumActivity$UpdateImageTask outer com/nd/album/ui/activity/GroupAlbumActivity

.field protected static final 'TAG' Ljava/lang/String; = "GroupAlbumActivity"

.field protected 'context' Landroid/content/Context;

.field private 'defaultGAlbumId' J

.field private 'getGAlbumTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'getNewImageTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'gid' J

.field private 'imageName' Ljava/lang/String;

.field private 'lv' Landroid/widget/ListView;

.field private 'mAlbumList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"

.field private 'mCategory' I

.field private 'mGAlbumAdapter' Lcom/nd/album/ui/adapter/GroupAlbumAdapter;

.field private 'mGImageItems' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/album/bean/GroupImageList;>;"

.field private 'mIsOnActivityResult' Z

.field private 'mMyAvatarBig' Landroid/graphics/Bitmap;

.field private 'mProBar' Landroid/widget/ProgressBar;

.field private 'mQid' J

.field private 'mVeritcalLine' Landroid/view/View;

.field private 'noData' Landroid/view/View;

.field private 'pickOption' Lcom/nd/album/business/PickedCameraPhoto;

.field private 'updateImageTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
aload 0
putfield com/nd/album/ui/activity/GroupAlbumActivity/context Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/album/ui/activity/GroupAlbumActivity/mGAlbumAdapter Lcom/nd/album/ui/adapter/GroupAlbumAdapter;
aload 0
aconst_null
putfield com/nd/album/ui/activity/GroupAlbumActivity/mAlbumList Ljava/util/ArrayList;
aload 0
ldc2_w -1L
putfield com/nd/album/ui/activity/GroupAlbumActivity/gid J
aload 0
iconst_m1
putfield com/nd/album/ui/activity/GroupAlbumActivity/mCategory I
aload 0
lconst_0
putfield com/nd/album/ui/activity/GroupAlbumActivity/mQid J
aload 0
aconst_null
putfield com/nd/album/ui/activity/GroupAlbumActivity/getGAlbumTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
aconst_null
putfield com/nd/album/ui/activity/GroupAlbumActivity/updateImageTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
aconst_null
putfield com/nd/album/ui/activity/GroupAlbumActivity/getNewImageTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
ldc2_w -1L
putfield com/nd/album/ui/activity/GroupAlbumActivity/defaultGAlbumId J
aload 0
aconst_null
putfield com/nd/album/ui/activity/GroupAlbumActivity/pickOption Lcom/nd/album/business/PickedCameraPhoto;
aload 0
aconst_null
putfield com/nd/album/ui/activity/GroupAlbumActivity/mMyAvatarBig Landroid/graphics/Bitmap;
aload 0
aconst_null
putfield com/nd/album/ui/activity/GroupAlbumActivity/mGImageItems Ljava/util/ArrayList;
aload 0
aconst_null
putfield com/nd/album/ui/activity/GroupAlbumActivity/mProBar Landroid/widget/ProgressBar;
aload 0
aconst_null
putfield com/nd/album/ui/activity/GroupAlbumActivity/mVeritcalLine Landroid/view/View;
aload 0
aconst_null
putfield com/nd/album/ui/activity/GroupAlbumActivity/noData Landroid/view/View;
aload 0
aconst_null
putfield com/nd/album/ui/activity/GroupAlbumActivity/lv Landroid/widget/ListView;
aload 0
iconst_0
putfield com/nd/album/ui/activity/GroupAlbumActivity/mIsOnActivityResult Z
return
.limit locals 1
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/album/ui/activity/GroupAlbumActivity;)Lcom/nd/album/business/PickedCameraPhoto;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/pickOption Lcom/nd/album/business/PickedCameraPhoto;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/album/ui/activity/GroupAlbumActivity;)J
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/defaultGAlbumId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$1000(Lcom/nd/album/ui/activity/GroupAlbumActivity;)Landroid/widget/ProgressBar;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mProBar Landroid/widget/ProgressBar;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/album/ui/activity/GroupAlbumActivity;J)J
aload 0
lload 1
putfield com/nd/album/ui/activity/GroupAlbumActivity/defaultGAlbumId J
lload 1
lreturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$1100(Lcom/nd/album/ui/activity/GroupAlbumActivity;Ljava/util/List;)V
aload 0
aload 1
invokespecial com/nd/album/ui/activity/GroupAlbumActivity/chafen(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/album/ui/activity/GroupAlbumActivity;)J
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/album/ui/activity/GroupAlbumActivity;)I
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mCategory I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/album/ui/activity/GroupAlbumActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mAlbumList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/album/ui/activity/GroupAlbumActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/album/ui/activity/GroupAlbumActivity/mAlbumList Ljava/util/ArrayList;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/album/ui/activity/GroupAlbumActivity;)V
aload 0
invokespecial com/nd/album/ui/activity/GroupAlbumActivity/setGroupImage()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/album/ui/activity/GroupAlbumActivity;)V
aload 0
invokespecial com/nd/album/ui/activity/GroupAlbumActivity/updateView()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/album/ui/activity/GroupAlbumActivity;)Landroid/graphics/Bitmap;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mMyAvatarBig Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/album/ui/activity/GroupAlbumActivity;)Ljava/lang/String;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/imageName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/album/ui/activity/GroupAlbumActivity;Lcom/product/android/commonInterface/album/Image;)Z
aload 0
aload 1
invokespecial com/nd/album/ui/activity/GroupAlbumActivity/doAddImage(Lcom/product/android/commonInterface/album/Image;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method private addGroupImageList(Ljava/util/ArrayList;ILjava/lang/String;I)V
.signature "(Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;ILjava/lang/String;I)V"
new com/nd/album/bean/GroupImageList
dup
invokespecial com/nd/album/bean/GroupImageList/<init>()V
astore 5
aload 5
aload 1
putfield com/nd/album/bean/GroupImageList/imageList Ljava/util/ArrayList;
aload 5
aload 3
putfield com/nd/album/bean/GroupImageList/time Ljava/lang/String;
aload 5
iload 2
putfield com/nd/album/bean/GroupImageList/year I
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mGImageItems Ljava/util/ArrayList;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/album/ui/activity/GroupAlbumActivity/mGImageItems Ljava/util/ArrayList;
L0:
iload 4
iflt L1
iload 4
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mGImageItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L1
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mGImageItems Ljava/util/ArrayList;
iload 4
aload 5
invokevirtual java/util/ArrayList/add(ILjava/lang/Object;)V
return
L1:
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mGImageItems Ljava/util/ArrayList;
aload 5
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 6
.limit stack 3
.end method

.method private chafen(Ljava/util/List;)V
.signature "(Ljava/util/List<Ljava/lang/Long;>;)V"
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
aload 1
ifnonnull L4
L5:
return
L4:
getstatic com/nd/album/db/dao/GroupAlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/GroupAlbumDAOImpl;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/gid J
invokevirtual com/nd/album/db/dao/GroupAlbumDAOImpl/getImageIds(J)Ljava/util/List;
astore 11
aload 11
ifnull L5
aload 11
invokeinterface java/util/List/size()I 0
ifeq L5
aconst_null
astore 9
L0:
invokestatic com/nd/album/com/AlbumCom/getInstance()Lcom/nd/album/com/AlbumCom;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/gid J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/defaultGAlbumId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aconst_null
aconst_null
aconst_null
iconst_1
invokevirtual com/nd/album/com/AlbumCom/getGPhotoIds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
astore 10
L1:
aload 10
astore 9
L6:
aload 9
ifnull L5
aload 9
invokeinterface java/util/List/size()I 0
ifeq L5
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
aload 1
invokeinterface java/util/List/clear()V 0
iconst_0
istore 3
aload 9
invokeinterface java/util/List/size()I 0
iconst_1
isub
istore 2
L7:
iload 3
istore 4
iload 3
aload 11
invokeinterface java/util/List/size()I 0
if_icmpge L8
iload 3
istore 4
iload 2
iflt L8
aload 11
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 5
aload 9
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 7
lload 5
lload 7
lcmp
ifne L9
iload 3
iconst_1
iadd
istore 3
iload 2
iconst_1
isub
istore 2
goto L7
L2:
astore 10
aload 10
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L6
L3:
astore 10
aload 10
invokevirtual java/io/IOException/printStackTrace()V
goto L6
L9:
lload 5
lload 7
lcmp
ifge L10
aload 10
lload 7
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
isub
istore 2
goto L7
L10:
lload 5
lload 7
lcmp
ifle L7
aload 1
lload 5
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 3
iconst_1
iadd
istore 3
goto L7
L8:
iload 2
istore 3
iload 4
aload 11
invokeinterface java/util/List/size()I 0
if_icmpge L11
aload 1
aload 11
iload 4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 4
iconst_1
iadd
istore 4
goto L8
L11:
iload 3
iflt L5
aload 10
aload 9
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 3
iconst_1
isub
istore 3
goto L11
.limit locals 12
.limit stack 7
.end method

.method private doAddImage(Lcom/product/android/commonInterface/album/Image;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/Exception from L8 to L9 using L2
.catch java/lang/Exception from L10 to L11 using L2
.catch java/lang/Exception from L12 to L13 using L2
L0:
getstatic com/nd/album/db/dao/GroupAlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/GroupAlbumDAOImpl;
aload 1
invokevirtual com/nd/album/db/dao/GroupAlbumDAOImpl/insertImage(Lcom/product/android/commonInterface/album/Image;)J
pop2
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mAlbumList Ljava/util/ArrayList;
ifnonnull L1
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/album/ui/activity/GroupAlbumActivity/mAlbumList Ljava/util/ArrayList;
L1:
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mAlbumList Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
new java/text/SimpleDateFormat
dup
ldc "dd/MM/yyyy HH:mm:ss"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
new java/util/Date
dup
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getUpdateTime()Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
ldc2_w 1000L
lmul
invokespecial java/util/Date/<init>(J)V
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 10
aload 10
bipush 6
bipush 10
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 5
aload 10
bipush 11
bipush 16
invokevirtual java/lang/String/subSequence(II)Ljava/lang/CharSequence;
astore 9
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mGImageItems Ljava/util/ArrayList;
ifnonnull L14
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 8
aload 8
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
aconst_null
iload 5
aconst_null
iconst_0
invokespecial com/nd/album/ui/activity/GroupAlbumActivity/addGroupImageList(Ljava/util/ArrayList;ILjava/lang/String;I)V
aload 0
aload 8
iload 5
aload 9
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
iconst_m1
invokespecial com/nd/album/ui/activity/GroupAlbumActivity/addGroupImageList(Ljava/util/ArrayList;ILjava/lang/String;I)V
L3:
goto L13
L15:
iload 4
istore 3
L4:
iload 2
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mGImageItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L16
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mGImageItems Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/album/bean/GroupImageList
getfield com/nd/album/bean/GroupImageList/imageList Ljava/util/ArrayList;
astore 8
L5:
aload 8
ifnull L17
iload 2
istore 3
goto L16
L6:
aload 8
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/album/Image
astore 11
aload 10
iconst_0
iconst_2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 2
aload 10
iconst_3
iconst_5
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 4
new java/text/SimpleDateFormat
dup
ldc "dd/MM/yyyy HH:mm:ss"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
new java/util/Date
dup
aload 11
invokevirtual com/product/android/commonInterface/album/Image/getUpdateTime()Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
ldc2_w 1000L
lmul
invokespecial java/util/Date/<init>(J)V
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 10
iload 5
aload 10
bipush 6
bipush 10
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
if_icmpeq L8
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 8
aload 8
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
aconst_null
iload 5
aconst_null
iconst_0
invokespecial com/nd/album/ui/activity/GroupAlbumActivity/addGroupImageList(Ljava/util/ArrayList;ILjava/lang/String;I)V
aload 0
aload 8
iload 5
aload 9
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
iconst_m1
invokespecial com/nd/album/ui/activity/GroupAlbumActivity/addGroupImageList(Ljava/util/ArrayList;ILjava/lang/String;I)V
L7:
goto L13
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
iconst_0
ireturn
L8:
aload 10
iconst_0
iconst_2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 6
aload 10
iconst_3
iconst_5
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 7
L9:
iload 2
iload 6
if_icmpne L12
iload 4
iload 7
if_icmpne L12
L10:
aload 8
iconst_0
aload 1
invokevirtual java/util/ArrayList/add(ILjava/lang/Object;)V
aload 0
iload 3
aload 8
iload 5
aload 9
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokespecial com/nd/album/ui/activity/GroupAlbumActivity/setGroupImageList(ILjava/util/ArrayList;ILjava/lang/String;)V
L11:
goto L13
L12:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 8
aload 8
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
aconst_null
iconst_0
aconst_null
iload 3
invokespecial com/nd/album/ui/activity/GroupAlbumActivity/addGroupImageList(Ljava/util/ArrayList;ILjava/lang/String;I)V
aload 0
aload 8
iload 5
aload 9
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
iload 3
iconst_1
iadd
invokespecial com/nd/album/ui/activity/GroupAlbumActivity/addGroupImageList(Ljava/util/ArrayList;ILjava/lang/String;I)V
L13:
iconst_1
ireturn
L14:
iconst_m1
istore 4
aconst_null
astore 8
iconst_0
istore 2
goto L15
L16:
aload 8
ifnonnull L6
iconst_0
ireturn
L17:
iload 2
iconst_1
iadd
istore 2
goto L15
.limit locals 12
.limit stack 7
.end method

.method private doBack()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "albumlist"
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mAlbumList Ljava/util/ArrayList;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 0
iconst_m1
aload 1
invokevirtual com/nd/album/ui/activity/GroupAlbumActivity/setResult(ILandroid/content/Intent;)V
aload 0
invokevirtual com/nd/album/ui/activity/GroupAlbumActivity/finish()V
return
.limit locals 2
.limit stack 3
.end method

.method private initData(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/album/ui/activity/GroupAlbumActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "gid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L0
aload 0
aload 0
invokevirtual com/nd/album/ui/activity/GroupAlbumActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "gid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/album/ui/activity/GroupAlbumActivity/gid J
L0:
aload 0
invokevirtual com/nd/album/ui/activity/GroupAlbumActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "category"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L1
aload 0
aload 0
invokevirtual com/nd/album/ui/activity/GroupAlbumActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "category"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/album/ui/activity/GroupAlbumActivity/mCategory I
L1:
aload 0
invokevirtual com/nd/album/ui/activity/GroupAlbumActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "qid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L2
aload 0
aload 0
invokevirtual com/nd/album/ui/activity/GroupAlbumActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "qid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/album/ui/activity/GroupAlbumActivity/mQid J
L2:
ldc2_w -1L
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/gid J
lcmp
ifeq L3
iconst_m1
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mCategory I
if_icmpne L4
L3:
aload 0
invokevirtual com/nd/album/ui/activity/GroupAlbumActivity/finish()V
L5:
return
L4:
aload 1
ifnonnull L6
aload 0
getstatic com/nd/album/db/dao/GroupAlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/GroupAlbumDAOImpl;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/gid J
invokevirtual com/nd/album/db/dao/GroupAlbumDAOImpl/findImages(J)Ljava/util/List;
checkcast java/util/ArrayList
putfield com/nd/album/ui/activity/GroupAlbumActivity/mAlbumList Ljava/util/ArrayList;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mAlbumList Ljava/util/ArrayList;
ifnull L7
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mAlbumList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L8
L7:
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/getGAlbumTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L9
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/getGAlbumTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpeq L5
L9:
aload 0
new com/nd/album/ui/activity/GroupAlbumActivity$GetGAlbumTask
dup
aload 0
invokespecial com/nd/album/ui/activity/GroupAlbumActivity$GetGAlbumTask/<init>(Lcom/nd/album/ui/activity/GroupAlbumActivity;)V
putfield com/nd/album/ui/activity/GroupAlbumActivity/getGAlbumTask Lcom/common/android/utils/task/genericTask/GenericTask;
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/getGAlbumTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L8:
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/getNewImageTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L10
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/getNewImageTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpeq L5
L10:
aload 0
new com/nd/album/ui/activity/GroupAlbumActivity$GetNewImageTask
dup
aload 0
invokespecial com/nd/album/ui/activity/GroupAlbumActivity$GetNewImageTask/<init>(Lcom/nd/album/ui/activity/GroupAlbumActivity;)V
putfield com/nd/album/ui/activity/GroupAlbumActivity/getNewImageTask Lcom/common/android/utils/task/genericTask/GenericTask;
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/getNewImageTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L6:
aload 0
aload 1
ldc "gid"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
putfield com/nd/album/ui/activity/GroupAlbumActivity/gid J
aload 0
aload 1
ldc "qid"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
putfield com/nd/album/ui/activity/GroupAlbumActivity/mQid J
aload 0
aload 1
ldc "AlbumList"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast java/util/ArrayList
putfield com/nd/album/ui/activity/GroupAlbumActivity/mAlbumList Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 5
.end method

.method private setGroupImage()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/Exception from L8 to L9 using L2
.catch java/lang/Exception from L10 to L11 using L2
.catch java/lang/Exception from L12 to L13 using L2
.catch java/lang/Exception from L14 to L15 using L2
.catch java/lang/Exception from L16 to L17 using L2
.catch java/lang/Exception from L18 to L19 using L2
.catch java/lang/Exception from L20 to L21 using L2
.catch java/lang/Exception from L22 to L23 using L2
.catch java/lang/Exception from L23 to L24 using L2
.catch java/lang/Exception from L25 to L26 using L2
L0:
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mGImageItems Ljava/util/ArrayList;
ifnull L1
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mGImageItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifle L1
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mGImageItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
L1:
aload 0
getstatic com/nd/album/db/dao/GroupAlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/GroupAlbumDAOImpl;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/gid J
invokevirtual com/nd/album/db/dao/GroupAlbumDAOImpl/findImages(J)Ljava/util/List;
checkcast java/util/ArrayList
putfield com/nd/album/ui/activity/GroupAlbumActivity/mAlbumList Ljava/util/ArrayList;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mAlbumList Ljava/util/ArrayList;
ifnull L27
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mAlbumList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L4
L3:
return
L4:
new android/text/format/Time
dup
ldc "GMT+8"
invokespecial android/text/format/Time/<init>(Ljava/lang/String;)V
astore 12
aload 12
invokevirtual android/text/format/Time/setToNow()V
aload 12
getfield android/text/format/Time/year I
istore 9
aload 12
getfield android/text/format/Time/month I
istore 10
aload 12
getfield android/text/format/Time/monthDay I
istore 11
L5:
aconst_null
astore 14
iconst_0
istore 5
iconst_0
istore 2
iconst_0
istore 3
L6:
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mAlbumList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
istore 8
L7:
iload 8
istore 4
aconst_null
astore 13
L28:
iload 4
iflt L27
L8:
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mAlbumList Ljava/util/ArrayList;
iload 4
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/album/Image
astore 15
new java/text/SimpleDateFormat
dup
ldc "dd/MM/yyyy HH:mm:ss"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
new java/util/Date
dup
aload 15
invokevirtual com/product/android/commonInterface/album/Image/getUpdateTime()Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
ldc2_w 1000L
lmul
invokespecial java/util/Date/<init>(J)V
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 12
aload 12
iconst_0
iconst_2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 7
aload 12
iconst_3
iconst_5
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 6
aload 12
bipush 6
bipush 10
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 1
L9:
iload 7
iload 11
if_icmpne L16
iload 6
iload 10
iconst_1
iadd
if_icmpne L16
iload 1
iload 9
if_icmpne L16
L10:
aload 12
bipush 11
bipush 16
invokevirtual java/lang/String/subSequence(II)Ljava/lang/CharSequence;
astore 12
L11:
iload 4
iload 8
if_icmpne L29
iload 7
istore 5
iload 6
istore 2
L12:
aload 0
aconst_null
iload 1
aconst_null
iconst_m1
invokespecial com/nd/album/ui/activity/GroupAlbumActivity/addGroupImageList(Ljava/util/ArrayList;ILjava/lang/String;I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 13
aload 13
aload 15
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L13:
iload 1
istore 3
iload 5
istore 1
L30:
iload 4
ifne L31
L14:
aload 0
aload 13
iload 3
aload 12
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
iconst_m1
invokespecial com/nd/album/ui/activity/GroupAlbumActivity/addGroupImageList(Ljava/util/ArrayList;ILjava/lang/String;I)V
L15:
goto L31
L16:
aload 12
iconst_0
iconst_5
invokevirtual java/lang/String/subSequence(II)Ljava/lang/CharSequence;
astore 12
L17:
goto L11
L29:
iload 7
iload 5
if_icmpne L20
iload 6
iload 2
if_icmpne L20
iload 1
iload 3
if_icmpne L20
L18:
aload 13
aload 15
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L19:
aload 14
astore 12
iload 5
istore 1
goto L30
L2:
astore 12
aload 12
invokevirtual java/lang/Exception/printStackTrace()V
return
L20:
aload 0
aload 13
iload 3
aload 14
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
iconst_m1
invokespecial com/nd/album/ui/activity/GroupAlbumActivity/addGroupImageList(Ljava/util/ArrayList;ILjava/lang/String;I)V
L21:
iload 1
iload 3
if_icmpeq L25
L22:
aload 0
aconst_null
iload 1
aconst_null
iconst_m1
invokespecial com/nd/album/ui/activity/GroupAlbumActivity/addGroupImageList(Ljava/util/ArrayList;ILjava/lang/String;I)V
L23:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 13
aload 13
aload 15
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L24:
iload 6
istore 2
iload 1
istore 3
iload 7
istore 1
goto L30
L25:
aload 0
aconst_null
iconst_0
aconst_null
iconst_m1
invokespecial com/nd/album/ui/activity/GroupAlbumActivity/addGroupImageList(Ljava/util/ArrayList;ILjava/lang/String;I)V
L26:
goto L23
L27:
return
L31:
iload 4
iconst_1
isub
istore 4
aload 12
astore 14
iload 1
istore 5
goto L28
.limit locals 16
.limit stack 7
.end method

.method private setGroupImageList(ILjava/util/ArrayList;ILjava/lang/String;)V
.signature "(ILjava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;ILjava/lang/String;)V"
new com/nd/album/bean/GroupImageList
dup
invokespecial com/nd/album/bean/GroupImageList/<init>()V
astore 5
aload 5
aload 2
putfield com/nd/album/bean/GroupImageList/imageList Ljava/util/ArrayList;
aload 5
aload 4
putfield com/nd/album/bean/GroupImageList/time Ljava/lang/String;
aload 5
iload 3
putfield com/nd/album/bean/GroupImageList/year I
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mGImageItems Ljava/util/ArrayList;
iload 1
aload 5
invokevirtual java/util/ArrayList/set(ILjava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 6
.limit stack 3
.end method

.method private showPickPhotoWayDlg()V
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 1
aload 1
iconst_1
invokevirtual android/app/AlertDialog$Builder/setCancelable(Z)Landroid/app/AlertDialog$Builder;
pop
aload 1
aload 0
getstatic com/nd/album/R$string/cancel I
invokevirtual com/nd/album/ui/activity/GroupAlbumActivity/getString(I)Ljava/lang/String;
new com/nd/album/ui/activity/GroupAlbumActivity$1
dup
aload 0
invokespecial com/nd/album/ui/activity/GroupAlbumActivity$1/<init>(Lcom/nd/album/ui/activity/GroupAlbumActivity;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
getstatic com/nd/album/R$string/upload_portrait_camera I
invokevirtual com/nd/album/ui/activity/GroupAlbumActivity/getString(I)Ljava/lang/String;
astore 2
aload 0
getstatic com/nd/album/R$string/upload_portrait_pic I
invokevirtual com/nd/album/ui/activity/GroupAlbumActivity/getString(I)Ljava/lang/String;
astore 3
new com/nd/album/ui/activity/GroupAlbumActivity$2
dup
aload 0
invokespecial com/nd/album/ui/activity/GroupAlbumActivity$2/<init>(Lcom/nd/album/ui/activity/GroupAlbumActivity;)V
astore 4
aload 1
iconst_2
anewarray java/lang/CharSequence
dup
iconst_0
aload 2
aastore
dup
iconst_1
aload 3
aastore
aload 4
invokevirtual android/app/AlertDialog$Builder/setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 1
aload 0
getstatic com/nd/album/R$string/upload_pic I
invokevirtual com/nd/album/ui/activity/GroupAlbumActivity/getString(I)Ljava/lang/String;
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 1
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 5
.limit stack 5
.end method

.method private updateImage()V
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/updateImageTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/updateImageTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/album/ui/activity/GroupAlbumActivity$UpdateImageTask
dup
aload 0
invokespecial com/nd/album/ui/activity/GroupAlbumActivity$UpdateImageTask/<init>(Lcom/nd/album/ui/activity/GroupAlbumActivity;)V
putfield com/nd/album/ui/activity/GroupAlbumActivity/updateImageTask Lcom/common/android/utils/task/genericTask/GenericTask;
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/updateImageTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method private updateView()V
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mGImageItems Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mGImageItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L1
L0:
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mProBar Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mVeritcalLine Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/noData Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/lv Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
return
L1:
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mGAlbumAdapter Lcom/nd/album/ui/adapter/GroupAlbumAdapter;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mGImageItems Ljava/util/ArrayList;
invokevirtual com/nd/album/ui/adapter/GroupAlbumAdapter/setGImageItems(Ljava/util/ArrayList;)V
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mGAlbumAdapter Lcom/nd/album/ui/adapter/GroupAlbumAdapter;
invokevirtual com/nd/album/ui/adapter/GroupAlbumAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mProBar Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/noData Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mVeritcalLine Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/lv Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public doOnclick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/album/R$id/ivCamera I
if_icmpne L0
aload 0
invokespecial com/nd/album/ui/activity/GroupAlbumActivity/showPickPhotoWayDlg()V
L1:
return
L0:
iload 2
getstatic com/nd/album/R$id/header_btn_left I
if_icmpne L1
aload 0
invokespecial com/nd/album/ui/activity/GroupAlbumActivity/doBack()V
return
.limit locals 3
.limit stack 2
.end method

.method public encode(Landroid/graphics/Bitmap;)[B
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 2
aload 1
getstatic android/graphics/Bitmap$CompressFormat/PNG Landroid/graphics/Bitmap$CompressFormat;
bipush 90
aload 2
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
aload 2
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
areturn
.limit locals 3
.limit stack 4
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
iload 2
iconst_m1
if_icmpeq L0
return
L0:
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mProBar Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mVeritcalLine Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/noData Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/pickOption Lcom/nd/album/business/PickedCameraPhoto;
iload 1
aload 3
invokevirtual com/nd/album/business/PickedCameraPhoto/onActivityResult(ILandroid/content/Intent;)Landroid/net/Uri;
astore 3
L1:
aload 3
ifnull L4
L3:
aload 3
invokevirtual android/net/Uri/getPath()Ljava/lang/String;
astore 3
aload 0
aload 3
sipush 1200
invokestatic com/common/android/ui/gif/BitmapToolkit/loadLocalBitmapRoughScaled(Ljava/lang/String;I)Landroid/graphics/Bitmap;
putfield com/nd/album/ui/activity/GroupAlbumActivity/mMyAvatarBig Landroid/graphics/Bitmap;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mMyAvatarBig Landroid/graphics/Bitmap;
ifnonnull L4
aload 0
aload 3
sipush 600
invokestatic com/common/android/ui/gif/BitmapToolkit/loadLocalBitmapRoughScaled(Ljava/lang/String;I)Landroid/graphics/Bitmap;
putfield com/nd/album/ui/activity/GroupAlbumActivity/mMyAvatarBig Landroid/graphics/Bitmap;
L4:
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mMyAvatarBig Landroid/graphics/Bitmap;
ifnull L6
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/utils/TimeUtils/generateLong()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ".jpg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/album/ui/activity/GroupAlbumActivity/imageName Ljava/lang/String;
aload 0
invokespecial com/nd/album/ui/activity/GroupAlbumActivity/updateImage()V
L5:
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/pickOption Lcom/nd/album/business/PickedCameraPhoto;
invokevirtual com/nd/album/business/PickedCameraPhoto/deleTempCameraFile()V
aload 0
iconst_1
putfield com/nd/album/ui/activity/GroupAlbumActivity/mIsOnActivityResult Z
return
L6:
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/context Landroid/content/Context;
getstatic com/nd/album/R$string/upload_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L7:
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/pickOption Lcom/nd/album/business/PickedCameraPhoto;
invokevirtual com/nd/album/business/PickedCameraPhoto/deleTempCameraFile()V
aload 0
iconst_1
putfield com/nd/album/ui/activity/GroupAlbumActivity/mIsOnActivityResult Z
return
L2:
astore 3
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/pickOption Lcom/nd/album/business/PickedCameraPhoto;
invokevirtual com/nd/album/business/PickedCameraPhoto/deleTempCameraFile()V
aload 0
iconst_1
putfield com/nd/album/ui/activity/GroupAlbumActivity/mIsOnActivityResult Z
aload 3
athrow
.limit locals 4
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/album/R$layout/group_album_activity I
invokevirtual com/nd/album/ui/activity/GroupAlbumActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/album/R$id/progressBar I
invokevirtual com/nd/album/ui/activity/GroupAlbumActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/album/ui/activity/GroupAlbumActivity/mProBar Landroid/widget/ProgressBar;
aload 0
aload 0
getstatic com/nd/album/R$id/vertical_line I
invokevirtual com/nd/album/ui/activity/GroupAlbumActivity/findViewById(I)Landroid/view/View;
putfield com/nd/album/ui/activity/GroupAlbumActivity/mVeritcalLine Landroid/view/View;
aload 0
aload 0
getstatic com/nd/album/R$id/tvNodata I
invokevirtual com/nd/album/ui/activity/GroupAlbumActivity/findViewById(I)Landroid/view/View;
putfield com/nd/album/ui/activity/GroupAlbumActivity/noData Landroid/view/View;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mProBar Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mVeritcalLine Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
aload 1
invokespecial com/nd/album/ui/activity/GroupAlbumActivity/initData(Landroid/os/Bundle;)V
aload 0
new com/nd/album/business/PickedCameraPhoto
dup
aload 0
invokespecial com/nd/album/business/PickedCameraPhoto/<init>(Landroid/app/Activity;)V
putfield com/nd/album/ui/activity/GroupAlbumActivity/pickOption Lcom/nd/album/business/PickedCameraPhoto;
aload 0
aload 0
getstatic com/nd/album/R$id/group_album_list I
invokevirtual com/nd/album/ui/activity/GroupAlbumActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/album/ui/activity/GroupAlbumActivity/lv Landroid/widget/ListView;
aload 0
new com/nd/album/ui/adapter/GroupAlbumAdapter
dup
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/context Landroid/content/Context;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mQid J
invokespecial com/nd/album/ui/adapter/GroupAlbumAdapter/<init>(Landroid/content/Context;J)V
putfield com/nd/album/ui/activity/GroupAlbumActivity/mGAlbumAdapter Lcom/nd/album/ui/adapter/GroupAlbumAdapter;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mGAlbumAdapter Lcom/nd/album/ui/adapter/GroupAlbumAdapter;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mCategory I
invokevirtual com/nd/album/ui/adapter/GroupAlbumAdapter/setCategory(I)V
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/lv Landroid/widget/ListView;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mGAlbumAdapter Lcom/nd/album/ui/adapter/GroupAlbumAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 2
.limit stack 6
.end method

.method protected onRestart()V
aload 0
invokespecial android/app/Activity/onRestart()V
aload 0
getstatic com/nd/album/db/dao/GroupAlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/GroupAlbumDAOImpl;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/gid J
invokevirtual com/nd/album/db/dao/GroupAlbumDAOImpl/findImages(J)Ljava/util/List;
checkcast java/util/ArrayList
putfield com/nd/album/ui/activity/GroupAlbumActivity/mAlbumList Ljava/util/ArrayList;
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mIsOnActivityResult Z
ifne L0
aload 0
invokespecial com/nd/album/ui/activity/GroupAlbumActivity/setGroupImage()V
aload 0
invokespecial com/nd/album/ui/activity/GroupAlbumActivity/updateView()V
L0:
aload 0
iconst_0
putfield com/nd/album/ui/activity/GroupAlbumActivity/mIsOnActivityResult Z
return
.limit locals 1
.limit stack 4
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "gid"
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/gid J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 1
ldc "qid"
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mQid J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 1
ldc "AlbumList"
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mAlbumList Ljava/util/ArrayList;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
aload 1
ldc "category"
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity/mCategory I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
return
.limit locals 2
.limit stack 4
.end method
