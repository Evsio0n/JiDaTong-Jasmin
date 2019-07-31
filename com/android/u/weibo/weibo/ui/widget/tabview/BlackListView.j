.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/widget/tabview/BlackListView
.super com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase

.field private static final 'COLUMN_BLACK_LIST' I = 3


.field private static final 'MAX_BLACK_LIST' I = 6


.field private static final 'ROW_BLACK_LIST' I = 2


.field private 'mContext' Landroid/content/Context;

.field private 'mFids' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/weibo/WbUserInfo;>;"

.field private 'mFragment' Landroid/support/v4/app/Fragment;

.method public <init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/mFragment Landroid/support/v4/app/Fragment;
return
.limit locals 3
.limit stack 2
.end method

.method public clearData()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/mFids Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/mFids Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public doClick()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/mFragment Landroid/support/v4/app/Fragment;
sipush 1007
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/doBlackList(Landroid/support/v4/app/Fragment;I)V
return
.limit locals 1
.limit stack 2
.end method

.method public getDataAndProcessBitmap()V
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getBlackLists()Ljava/util/ArrayList;
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
putfield com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/mFids Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
astore 2
new com/product/android/commonInterface/weibo/WbUserInfo
dup
invokespecial com/product/android/commonInterface/weibo/WbUserInfo/<init>()V
astore 3
aload 3
aload 2
invokevirtual java/lang/Long/longValue()J
putfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 3
aload 3
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getUserSysAvatarId(J)I
putfield com/product/android/commonInterface/weibo/WbUserInfo/sysAvatarID I
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/mFids Ljava/util/ArrayList;
aload 3
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L1
L0:
return
.limit locals 4
.limit stack 3
.end method

.method protected getDefaultBitmap()I
getstatic com/android/u/weibo/R$drawable/black_list I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTitle()Ljava/lang/String;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/black_list I
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
getfield com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/mContext Landroid/content/Context;
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
getfield com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/mFids Ljava/util/ArrayList;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/mFids Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/WbUserInfo
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/mFids Ljava/util/ArrayList;
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
aload 1
checkcast java/util/ArrayList
astore 3
aconst_null
astore 2
aload 2
astore 1
aload 3
ifnull L0
aload 2
astore 1
aload 3
invokevirtual java/util/ArrayList/size()I
ifeq L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 3
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 3
L1:
aload 2
astore 1
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/BlackListPerson
astore 1
new com/product/android/commonInterface/weibo/WbUserInfo
dup
invokespecial com/product/android/commonInterface/weibo/WbUserInfo/<init>()V
astore 4
aload 4
aload 1
getfield com/product/android/commonInterface/contact/BlackListPerson/uid J
putfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 4
aload 4
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getUserSysAvatarId(J)I
putfield com/product/android/commonInterface/weibo/WbUserInfo/sysAvatarID I
aload 2
aload 4
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L1
L0:
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/mFids Ljava/util/ArrayList;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/updateView()V
return
.limit locals 5
.limit stack 3
.end method

.method public updateView()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/mFids Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/mFids Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L1
L0:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/initBlankImage()V
return
L1:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/toShowValueView()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/mFids Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
if_icmpne L2
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/setSingleGrid()V
L3:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/notifyDataSetChanged()V
return
L2:
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/mFids Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
bipush 6
iconst_2
iconst_3
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/setMultiGrid(IIII)V
goto L3
.limit locals 1
.limit stack 5
.end method
