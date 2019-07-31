.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/widget/tabview/AlbumView
.super com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase

.field private static final 'COLUMN_ALBUM' I = 2


.field private static final 'MAX_ALBUM' I = 4


.field private static final 'ROW_ALBUM' I = 2


.field private 'mAlbumList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"

.field private 'mContext' Landroid/content/Context;

.field private 'mFragment' Landroid/support/v4/app/Fragment;

.field private 'mUapid' J

.field private 'mUid' J

.method public <init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;JJ)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/mFragment Landroid/support/v4/app/Fragment;
aload 0
lload 3
putfield com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/mUid J
aload 0
lload 5
putfield com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/mUapid J
return
.limit locals 7
.limit stack 3
.end method

.method public clearData()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/mAlbumList Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/mAlbumList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public doClick()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/mFragment Landroid/support/v4/app/Fragment;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/mUapid J
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/mUid J
sipush 1006
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/doPhoto(Landroid/support/v4/app/Fragment;JJI)V
return
.limit locals 1
.limit stack 6
.end method

.method public getDataAndProcessBitmap()V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/mUapid J
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/mUid J
iconst_4
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getImage(JJI)Ljava/util/ArrayList;
putfield com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/mAlbumList Ljava/util/ArrayList;
return
.limit locals 1
.limit stack 6
.end method

.method protected getDefaultBitmap()I
getstatic com/android/u/weibo/R$drawable/no_photo I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTitle()Ljava/lang/String;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/photo I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method protected isNeedTask()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected setGridViewData(ILandroid/view/View;Landroid/widget/AbsListView$LayoutParams;)Landroid/view/View;
aload 2
ifnonnull L0
new android/widget/ImageView
dup
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/mContext Landroid/content/Context;
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
astore 2
aload 2
aload 3
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 2
getstatic android/widget/ImageView$ScaleType/FIT_XY Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView/setScaleType(Landroid/widget/ImageView$ScaleType;)V
aload 2
iconst_1
iconst_1
iconst_1
iconst_1
invokevirtual android/widget/ImageView/setPadding(IIII)V
aload 2
astore 4
aload 2
astore 3
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/mAlbumList Ljava/util/ArrayList;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/mAlbumList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifeq L2
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/mAlbumList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/album/Image
invokevirtual com/product/android/commonInterface/album/Image/getUrl_160()Ljava/lang/String;
aload 3
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/showAlbumSmallImage(Ljava/lang/String;Landroid/widget/ImageView;)V
L2:
aload 4
areturn
L0:
aload 2
checkcast android/widget/ImageView
astore 3
aload 2
astore 4
goto L1
.limit locals 5
.limit stack 5
.end method

.method public updateData(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/util/ArrayList
putfield com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/mAlbumList Ljava/util/ArrayList;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/updateView()V
return
.limit locals 2
.limit stack 2
.end method

.method public updateView()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/mAlbumList Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/mAlbumList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L1
L0:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/initBlankImage()V
return
L1:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/toShowValueView()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/mAlbumList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
if_icmpne L2
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/setSingleGrid()V
L3:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/notifyDataSetChanged()V
return
L2:
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/mAlbumList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_4
iconst_2
iconst_2
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/setMultiGrid(IIII)V
goto L3
.limit locals 1
.limit stack 5
.end method
