.bytecode 50.0
.class public synchronized com/nd/android/u/AlbumCommonInterImpl
.super java/lang/Object
.implements com/product/android/commonInterface/ICommonInterObserver

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public onCommonInterModelProc(ILcom/product/android/commonInterface/BaseCommonStruct;)I
sipush -1001
istore 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
ifnonnull L0
bipush -2
ireturn
L0:
iload 1
lookupswitch
70001 : L1
71001 : L2
71002 : L3
72001 : L4
72002 : L5
72003 : L5
default : L6
L6:
iload 3
istore 1
L7:
iload 1
ireturn
L1:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L8
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/widget/ImageView
ifeq L8
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L8
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/widget/ImageView
astore 4
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic com/product/android/commonInterface/album/Image/appendSid(Ljava/lang/String;)Ljava/lang/String;
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/nd/album/data/ImageCacheOpt/getAlbumCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokestatic com/nd/album/data/ImageCacheOpt/getImageLoadingListener()Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
iconst_0
istore 1
goto L7
L8:
iconst_m1
istore 1
goto L7
L5:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast [J
checkcast [J
astore 6
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L9
aload 6
ifnull L9
aload 6
arraylength
iconst_2
if_icmpne L9
aconst_null
astore 4
aconst_null
astore 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/app/Activity
ifeq L10
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/app/Activity
astore 4
L11:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 7
iload 1
ldc_w 72003
if_icmpne L12
aload 7
aload 4
ldc com/nd/album/ui/activity/AlbumListActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
L13:
aload 7
ldc "UAP_ID"
aload 6
iconst_0
laload
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 7
ldc "OAP_ID"
aload 6
iconst_1
laload
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 5
ifnull L14
aload 5
aload 7
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual android/support/v4/app/Fragment/startActivityForResult(Landroid/content/Intent;I)V
L15:
iconst_0
istore 1
goto L7
L10:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/support/v4/app/Fragment
ifeq L11
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 5
aload 5
invokevirtual android/support/v4/app/Fragment/getActivity()Landroid/support/v4/app/FragmentActivity;
astore 4
goto L11
L12:
aload 7
aload 4
ldc com/nd/album/ui/activity/AlbumBrowserActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
goto L13
L14:
aload 4
ifnull L15
aload 4
aload 7
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
goto L15
L9:
iconst_m1
istore 1
goto L7
L4:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L16
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/app/Activity
ifeq L16
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/app/Activity
astore 4
new android/content/Intent
dup
aload 4
ldc com/nd/album/ui/activity/GroupAlbumActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 5
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 6
aload 6
ldc "gid"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 5
ldc "gid"
aload 6
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 4
aload 5
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L7
L16:
iconst_m1
istore 1
goto L7
L2:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast [J
checkcast [J
astore 4
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L17
aload 4
ifnull L17
aload 4
arraylength
iconst_2
if_icmpne L17
aload 2
getstatic com/nd/album/business/AlbumManager/INSTANCE Lcom/nd/album/business/AlbumManager;
aload 4
iconst_1
laload
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual com/nd/album/business/AlbumManager/getLastestUserImageListFromNet(JI)Ljava/util/ArrayList;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L18
iconst_0
istore 1
goto L7
L18:
bipush -2
istore 1
goto L7
L17:
iconst_m1
istore 1
goto L7
L3:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L19
aload 2
getstatic com/nd/album/business/AlbumManager/INSTANCE Lcom/nd/album/business/AlbumManager;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
invokevirtual com/nd/album/business/AlbumManager/getAlbumImagesListByAlbumId(JII)Ljava/util/ArrayList;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L20
iconst_0
istore 1
goto L7
L20:
bipush -2
istore 1
goto L7
L19:
iconst_m1
istore 1
goto L7
.limit locals 8
.limit stack 6
.end method
