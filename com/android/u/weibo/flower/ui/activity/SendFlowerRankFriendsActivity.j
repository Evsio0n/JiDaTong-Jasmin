.bytecode 50.0
.class public synchronized com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity
.super com/product/android/ui/activity/BaseActivity
.implements android/view/View$OnClickListener

.field private 'mBtnHeaderLeft' Landroid/widget/Button;

.field private 'mRlContent' Landroid/widget/RelativeLayout;

.field private 'mRlHeader' Landroid/widget/RelativeLayout;

.field private 'mSendFlowerToMeView' Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;

.field private 'mTvHeaderTitle' Landroid/widget/TextView;

.field private 'mUid' J

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/<init>()V
aload 0
lconst_0
putfield com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/mUid J
return
.limit locals 1
.limit stack 3
.end method

.method private initData()V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/mUid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getLocalOapUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 2
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/flowers_whos_contribution_list I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/mUid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
aload 2
ifnull L0
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/flowers_whos_contribution_list I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
L0:
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/mTvHeaderTitle Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/mSendFlowerToMeView Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;
invokevirtual com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/initData()V
return
.limit locals 3
.limit stack 6
.end method

.method protected initComponent()V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/rlHeader I
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/mRlHeader Landroid/widget/RelativeLayout;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/mRlHeader Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/btnHeaderLeft I
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/mBtnHeaderLeft Landroid/widget/Button;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/rlContent I
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/mRlContent Landroid/widget/RelativeLayout;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/mRlContent Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tvHeaderTitle I
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/mTvHeaderTitle Landroid/widget/TextView;
aload 0
new com/android/u/weibo/flower/ui/widget/SendFlowerToMeView
dup
aload 0
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/widthPixels I
aconst_null
invokespecial com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/<init>(Landroid/content/Context;ILandroid/os/Handler;)V
putfield com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/mSendFlowerToMeView Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/mSendFlowerToMeView Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/mUid J
invokevirtual com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/setUid(J)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/mRlContent Landroid/widget/RelativeLayout;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/mSendFlowerToMeView Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;)V
return
.limit locals 1
.limit stack 6
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/initEvent()V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/mBtnHeaderLeft Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/finish()V
return
.limit locals 2
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/getIntent()Landroid/content/Intent;
ldc "uid"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/mUid J
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/mUid J
lconst_0
lcmp
ifne L0
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
putfield com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/mUid J
L0:
aload 0
getstatic com/android/u/weibo/R$layout/wbflow_top_rank_send_flower_to_me_view I
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/setContentView(I)V
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/initComponent()V
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/initEvent()V
aload 0
invokespecial com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/initData()V
return
.limit locals 2
.limit stack 5
.end method

.method protected onDestroy()V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/mSendFlowerToMeView Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity/mSendFlowerToMeView Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;
invokevirtual com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/onDestroy()V
L0:
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method
