.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView
.super com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase

.field private 'mContext' Landroid/content/Context;

.field private 'mFids' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/weibo/WbUserInfo;>;"

.field private 'mPageType' I

.field private 'mUid' J

.field private 'mUser' Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;

.method public <init>(Landroid/content/Context;IJLcom/android/u/weibo/weibo/business/bean/UserPageInfo;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mContext Landroid/content/Context;
aload 0
iload 2
putfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mPageType I
aload 0
lload 3
putfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mUid J
aload 0
aload 5
putfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
return
.limit locals 6
.limit stack 3
.end method

.method public clearData()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mFids Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mFids Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public doClick()V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "DefaultLocale" 
.end annotation
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91UND Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
lstore 3
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mUid J
lstore 1
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mPageType I
ifne L1
lload 3
lstore 1
L1:
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 6
ldc "https://nderp.99.com/PersonShow/default.html?sid=%s&uid=%d&luid=%d"
iconst_3
anewarray java/lang/Object
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
aastore
dup
iconst_1
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_2
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 5
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/personal_onwer I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/nickName Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 7
aload 6
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_URL Ljava/lang/String;
aload 5
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 6
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_NEED_TITLE Ljava/lang/String;
aload 7
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
new android/content/Intent
dup
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mContext Landroid/content/Context;
ldc com/product/android/ui/activity/WebViewActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 5
aload 5
aload 6
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mContext Landroid/content/Context;
aload 5
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mPageType I
ifne L3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STAFF Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L4
new android/content/Intent
dup
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mContext Landroid/content/Context;
ldc com/android/u/weibo/contact/ui/activity/MyContact
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 5
goto L2
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mContext Landroid/content/Context;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mUid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/XiaoyouCallOtherModel/gotoJMContactAcitvity(Landroid/content/Context;J)V
return
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mContext Landroid/content/Context;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mUid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/XiaoyouCallOtherModel/gotoJMContactAcitvity(Landroid/content/Context;J)V
return
.limit locals 8
.limit stack 6
.end method

.method public getDataAndProcessBitmap()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mFids Ljava/util/ArrayList;
new com/product/android/commonInterface/weibo/WbUserInfo
dup
invokespecial com/product/android/commonInterface/weibo/WbUserInfo/<init>()V
astore 1
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mUid J
putfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 1
aload 1
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getUserSysAvatarId(J)I
putfield com/product/android/commonInterface/weibo/WbUserInfo/sysAvatarID I
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mFids Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 3
.end method

.method protected getDefaultBitmap()I
getstatic com/android/u/weibo/R$drawable/no_header I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTitle()Ljava/lang/String;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/person_info I
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
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mContext Landroid/content/Context;
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
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mFids Ljava/util/ArrayList;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mFids Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/WbUserInfo
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mFids Ljava/util/ArrayList;
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
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/getImageOrTagData()V
return
.limit locals 2
.limit stack 1
.end method

.method public updateView()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mFids Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/mFids Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L1
L0:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/initBlankImage()V
return
L1:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/toShowValueView()V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/setSingleGrid()V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method
