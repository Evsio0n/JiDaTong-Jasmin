.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity
.super com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity
.implements android/view/View$OnClickListener
.implements com/product/android/commonInterface/weibo/ISendFlowerDialogListener
.inner class inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$1
.inner class inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$2
.inner class private AddHiddenLoveTask inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$AddHiddenLoveTask outer com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity
.inner class private GetHiddenLoveMeTask inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$GetHiddenLoveMeTask outer com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity
.inner class private MoreActionPopupWindow inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$MoreActionPopupWindow outer com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity
.inner class private MoreActionTask inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$MoreActionTask outer com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity

.field 'isQuickClick' Z

.field private 'mAddHiddenLoveTask' Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$AddHiddenLoveTask;

.field private 'mOapScore' Lcom/product/android/commonInterface/task/OapScore;

.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/<init>()V
aload 0
new com/product/android/commonInterface/task/OapScore
dup
invokespecial com/product/android/commonInterface/task/OapScore/<init>()V
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mOapScore Lcom/product/android/commonInterface/task/OapScore;
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/isQuickClick Z
return
.limit locals 1
.limit stack 3
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/doAfterUnFollow()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/startAddHiddenLove()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity;Lorg/json/JSONObject;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/showManageDlg(Lorg/json/JSONObject;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/showAddDlg()V
return
.limit locals 1
.limit stack 1
.end method

.method private doAfterUnFollow()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/fans I
ifle L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/fans I
iconst_1
isub
putfield com/android/u/weibo/weibo/business/bean/UserPageInfo/fans I
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mFragment Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mFragment Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/fans I
invokevirtual com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/updateFollower(II)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method private showAddDlg()V
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/hidden_love_ta I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/hidden_love_notify I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$1/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity;)V
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/u/weibo/weibo/utils/ImageUtil$DoDialogListener;)V
return
.limit locals 1
.limit stack 6
.end method

.method private showManageDlg(Lorg/json/JSONObject;)V
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/hidden_love_too_much I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/hidden_love_too_much_explain I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/go_hidden_love_manager I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$2
dup
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$2/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity;Lorg/json/JSONObject;)V
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/u/weibo/weibo/utils/ImageUtil$DoDialogListener;)V
return
.limit locals 2
.limit stack 8
.end method

.method private startAddHiddenLove()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mAddHiddenLoveTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$AddHiddenLoveTask;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mAddHiddenLoveTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$AddHiddenLoveTask;
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$AddHiddenLoveTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$AddHiddenLoveTask
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$AddHiddenLoveTask/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity;Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$1;)V
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mAddHiddenLoveTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$AddHiddenLoveTask;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mAddHiddenLoveTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$AddHiddenLoveTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$AddHiddenLoveTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method

.method protected initComponent()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/initComponent()V
aload 0
getstatic com/android/u/weibo/R$id/back I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mWriteTweet Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/initComponentValue()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mEmptyView Landroid/view/View;
getstatic com/android/u/weibo/R$id/weibo_prompt_text I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
getstatic com/android/u/weibo/R$string/xiaoyou_no_tweet I
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initHeaderView()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/initHeaderView()V
aload 0
getstatic com/android/u/weibo/R$id/more I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/findViewById(I)Landroid/view/View;
astore 1
aload 1
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 1
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/android/u/weibo/R$id/actionbar_title I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/getNickName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/home_page I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/is_following Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/leftButton Landroid/widget/Button;
aload 0
getstatic com/android/u/weibo/R$string/unfollow I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mFlowerInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mFlowerInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/isSend I
iconst_1
if_icmpne L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/actionButtongift Landroid/widget/Button;
getstatic com/android/u/weibo/R$drawable/btn_xy_send_flower_selected I
invokevirtual android/widget/Button/setBackgroundResource(I)V
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/actionButtongift Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mFlowerInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/receiveFlowerNum I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
L2:
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/leftButton Landroid/widget/Button;
aload 0
getstatic com/android/u/weibo/R$string/following_ta I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
goto L1
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/actionButtongift Landroid/widget/Button;
getstatic com/android/u/weibo/R$drawable/xy_btn_send_flower_normal_selected I
invokevirtual android/widget/Button/setBackgroundResource(I)V
goto L4
.limit locals 2
.limit stack 4
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
iload 1
sipush 1014
if_icmpne L0
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/isQuickClick Z
aload 3
ifnonnull L1
L2:
return
L1:
iload 2
iconst_m1
if_icmpne L2
aload 3
ldc "friend"
invokevirtual android/content/Intent/getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
checkcast com/product/android/commonInterface/contact/OapUser
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
iconst_1
putfield com/android/u/weibo/weibo/business/bean/UserPageInfo/is_following Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/leftButton Landroid/widget/Button;
aload 0
getstatic com/android/u/weibo/R$string/unfollow I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/fans I
iconst_1
iadd
putfield com/android/u/weibo/weibo/business/bean/UserPageInfo/fans I
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mFragment Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mFragment Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;
iconst_1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/fans I
invokevirtual com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/updateFollower(II)V
L0:
aload 0
iload 1
iload 2
aload 3
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/onActivityResult(IILandroid/content/Intent;)V
return
.limit locals 4
.limit stack 4
.end method

.method public onCancel(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/android/u/weibo/R$id/back I
if_icmpne L0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/finish()V
L1:
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/go_setting I
if_icmpne L2
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/gIsNeedContactInfo Z
ifeq L1
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mUid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/XiaoyouCallOtherModel/gotoJMContactAcitvity(Landroid/content/Context;J)V
return
L2:
iload 2
getstatic com/android/u/weibo/R$id/my_avatar I
if_icmpne L3
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 3
aload 3
ldc "url"
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
ldc "f640"
invokestatic com/product/android/business/headImage/HeadImageLoader/getFaceUrl(JLjava/lang/String;)Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 3
ldc "optionType"
iconst_0
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
aload 3
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 1
aload 0
ldc com/product/android/ui/activity/ShowImageActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/startActivity(Landroid/content/Intent;)V
return
L3:
iload 2
getstatic com/android/u/weibo/R$id/bt_right I
if_icmpne L4
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mUid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/openChat(Landroid/app/Activity;J)V
return
L4:
iload 2
getstatic com/android/u/weibo/R$id/more I
if_icmpne L5
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
ifnull L1
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$MoreActionPopupWindow
dup
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$MoreActionPopupWindow/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity;Landroid/view/View;)V
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$MoreActionPopupWindow/showLikePopDownMenu()V
return
L5:
iload 2
getstatic com/android/u/weibo/R$id/btn_gift I
if_icmpne L6
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L7
getstatic com/android/u/weibo/R$string/net_warn_no_network I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L7:
new com/android/u/weibo/flower/ui/dialog/SendFlowerDialog
dup
aload 0
aload 0
invokespecial com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/<init>(Landroid/content/Context;Lcom/product/android/commonInterface/weibo/ISendFlowerDialogListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mUid J
invokevirtual com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/showDialog(J)V
return
L6:
iload 2
getstatic com/android/u/weibo/R$id/bt_left I
if_icmpne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/isQuickClick Z
ifne L1
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/isQuickClick Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/is_following Z
ifeq L8
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$MoreActionTask
dup
aload 0
iconst_0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$MoreActionTask/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity;I)V
iconst_1
anewarray java/lang/Long
dup
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mUid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$MoreActionTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
L8:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mUid J
sipush 1014
aload 0
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/goToManagerFriendGroupActivity(JILandroid/content/Context;)V
return
.limit locals 4
.limit stack 6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/getIntent()Landroid/content/Intent;
ldc "uid"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mUid J
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mWhose I
aload 0
getstatic com/android/u/weibo/R$layout/xiaoyou_list_header_other I
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mHeaderLayoutId I
aload 0
getstatic com/android/u/weibo/R$layout/xiaoyou_profile_other_page I
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mContentLayoutId I
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/onCreate(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 5
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iload 1
iconst_4
if_icmpne L0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/finish()V
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public onSuccessNum(Landroid/content/Context;ILjava/util/List;)V
.signature "(Landroid/content/Context;ILjava/util/List<Lcom/product/android/commonInterface/backpack/BackPackItem;>;)V"
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mFlowerInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mFlowerInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
iload 2
putfield com/product/android/commonInterface/weibo/FlowerMessageInfo/receiveFlowerNum I
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/actionButtongift Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mFlowerInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/receiveFlowerNum I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
L0:
return
.limit locals 4
.limit stack 2
.end method

.method protected processGetUserTaskPublish(Ljava/lang/Object;)V
aload 1
instanceof com/product/android/commonInterface/task/OapScore
ifeq L0
aload 0
aload 1
checkcast com/product/android/commonInterface/task/OapScore
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mOapScore Lcom/product/android/commonInterface/task/OapScore;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mOapScore Lcom/product/android/commonInterface/task/OapScore;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/txtlevel Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getstatic com/android/u/weibo/R$string/xiaoyou_score_level I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mOapScore Lcom/product/android/commonInterface/task/OapScore;
invokevirtual com/product/android/commonInterface/task/OapScore/getLevel()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mOapScore Lcom/product/android/commonInterface/task/OapScore;
invokevirtual com/product/android/commonInterface/task/OapScore/getTotalexp()I
istore 4
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mOapScore Lcom/product/android/commonInterface/task/OapScore;
invokevirtual com/product/android/commonInterface/task/OapScore/getMinscore()I
istore 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mOapScore Lcom/product/android/commonInterface/task/OapScore;
invokevirtual com/product/android/commonInterface/task/OapScore/getMaxscore()I
istore 3
iload 4
iload 2
isub
istore 4
iload 4
i2d
ldc2_w 100.0D
dmul
iload 3
iload 2
isub
i2d
dconst_1
dmul
ddiv
d2i
istore 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/levelview Lcom/android/u/weibo/weibo/ui/widget/WeiBoGradeProgressBar;
iload 2
invokevirtual com/android/u/weibo/weibo/ui/widget/WeiBoGradeProgressBar/setProgress(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/levelview Lcom/android/u/weibo/weibo/ui/widget/WeiBoGradeProgressBar;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/ui/widget/WeiBoGradeProgressBar/setText(Ljava/lang/String;)V
L0:
return
.limit locals 5
.limit stack 6
.end method
