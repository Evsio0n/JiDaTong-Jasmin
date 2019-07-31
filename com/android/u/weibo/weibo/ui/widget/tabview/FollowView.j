.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/widget/tabview/FollowView
.super com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase

.field private static final 'COLUMN_FOLLOW' I = 3


.field private static final 'MAX_FOLLOW' I = 6


.field private static final 'ROW_FOLLOW' I = 2


.field private 'mContext' Landroid/content/Context;

.field private 'mFids' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/weibo/WbUserInfo;>;"

.field private 'mUid' J

.method public <init>(Landroid/content/Context;JLcom/android/u/weibo/weibo/business/bean/UserPageInfo;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/widget/tabview/FollowView/mContext Landroid/content/Context;
aload 0
lload 2
putfield com/android/u/weibo/weibo/ui/widget/tabview/FollowView/mUid J
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/FollowView/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/following I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/idols I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/FollowView/updateTitle(Ljava/lang/String;)V
return
.limit locals 5
.limit stack 4
.end method

.method public clearData()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/FollowView/mFids Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/FollowView/mFids Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public doClick()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/FollowView/mContext Landroid/content/Context;
instanceof android/app/Activity
ifeq L0
new android/content/Intent
dup
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/FollowView/mContext Landroid/content/Context;
ldc com/android/u/weibo/weibo/ui/activity/RelationshipActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "pos"
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "uid"
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/FollowView/mUid J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/FollowView/mContext Landroid/content/Context;
checkcast android/app/Activity
aload 1
sipush 1005
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
L0:
return
.limit locals 2
.limit stack 4
.end method

.method public getDataAndProcessBitmap()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/FollowView/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
iconst_1
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/FollowView/mUid J
bipush 6
iconst_0
iconst_0
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getAttentionListFromNet(IJIII)Ljava/util/ArrayList;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual java/util/ArrayList/size()I
ifeq L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/android/u/weibo/weibo/ui/widget/tabview/FollowView/mFids Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/weibo/Idol
astore 2
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/FollowView/mFids Ljava/util/ArrayList;
aload 2
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L1
L0:
return
.limit locals 3
.limit stack 7
.end method

.method protected getDefaultBitmap()I
getstatic com/android/u/weibo/R$drawable/no_header I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTitle()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/FollowView/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/following I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "0"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
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
getfield com/android/u/weibo/weibo/ui/widget/tabview/FollowView/mContext Landroid/content/Context;
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
getfield com/android/u/weibo/weibo/ui/widget/tabview/FollowView/mFids Ljava/util/ArrayList;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/FollowView/mFids Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/WbUserInfo
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/FollowView/mFids Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/WbUserInfo
getfield com/product/android/commonInterface/weibo/WbUserInfo/sysAvatarID I
aload 3
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
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
return
.limit locals 2
.limit stack 0
.end method

.method public updateView()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/FollowView/mFids Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/FollowView/mFids Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L1
L0:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/FollowView/initBlankImage()V
return
L1:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/FollowView/toShowValueView()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/FollowView/mFids Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
if_icmpne L2
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/FollowView/setSingleGrid()V
L3:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/FollowView/notifyDataSetChanged()V
return
L2:
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/FollowView/mFids Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
bipush 6
iconst_2
iconst_3
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/FollowView/setMultiGrid(IIII)V
goto L3
.limit locals 1
.limit stack 5
.end method
