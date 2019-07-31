.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/SearchFansResultActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/contact/activity/SearchFansResultActivity$1
.inner class inner com/nd/android/u/contact/activity/SearchFansResultActivity$2
.inner class inner com/nd/android/u/contact/activity/SearchFansResultActivity$3
.inner class private AddFansFollowTask inner com/nd/android/u/contact/activity/SearchFansResultActivity$AddFansFollowTask outer com/nd/android/u/contact/activity/SearchFansResultActivity
.inner class private SearchFansAdapter inner com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter outer com/nd/android/u/contact/activity/SearchFansResultActivity
.inner class inner com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter$1
.inner class private SearchFansTask inner com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansTask outer com/nd/android/u/contact/activity/SearchFansResultActivity
.inner class static ViewHolder inner com/nd/android/u/contact/activity/SearchFansResultActivity$ViewHolder outer com/nd/android/u/contact/activity/SearchFansResultActivity

.field private 'adapter' Lcom/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter;

.field private 'addFollowRequestCode' I

.field private 'friend' Lcom/product/android/commonInterface/weibo/Idol;

.field private 'mAddFansFollowTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mAddFansFollowTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mDialog' Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;

.field private 'mLvResultDisplay' Landroid/widget/ListView;

.field private 'mSearchFansTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mSearchFansTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mSearchResultList' Lcom/product/android/commonInterface/weibo/IdolList;

.field private 'mTvNoFansConcern' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
iconst_2
putfield com/nd/android/u/contact/activity/SearchFansResultActivity/addFollowRequestCode I
aload 0
new com/nd/android/u/contact/activity/SearchFansResultActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SearchFansResultActivity$1/<init>(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)V
putfield com/nd/android/u/contact/activity/SearchFansResultActivity/mSearchFansTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/contact/activity/SearchFansResultActivity$3
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SearchFansResultActivity$3/<init>(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)V
putfield com/nd/android/u/contact/activity/SearchFansResultActivity/mAddFansFollowTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Lcom/product/android/commonInterface/weibo/IdolList;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mSearchResultList Lcom/product/android/commonInterface/weibo/IdolList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;Lcom/product/android/commonInterface/weibo/IdolList;)Lcom/product/android/commonInterface/weibo/IdolList;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchFansResultActivity/mSearchResultList Lcom/product/android/commonInterface/weibo/IdolList;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Lcom/product/android/commonInterface/weibo/Idol;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/friend Lcom/product/android/commonInterface/weibo/Idol;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1002(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;Lcom/product/android/commonInterface/weibo/Idol;)Lcom/product/android/commonInterface/weibo/Idol;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchFansResultActivity/friend Lcom/product/android/commonInterface/weibo/Idol;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mLvResultDisplay Landroid/widget/ListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mTvNoFansConcern Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/SearchFansResultActivity/onBegin(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/addFollowRequestCode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/SearchFansResultActivity/onAddFansFollowSuccess()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/SearchFansResultActivity/onAddFansFollowFailure(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method private onAddFansFollowFailure(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/dismiss()V
aload 0
aload 1
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method private onAddFansFollowSuccess()V
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/dismiss()V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/concern_fans_success I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/friend Lcom/product/android/commonInterface/weibo/Idol;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mLvResultDisplay Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/friend Lcom/product/android/commonInterface/weibo/Idol;
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/ListView/findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
checkcast android/widget/Button
astore 1
aload 1
ifnull L0
aload 1
getstatic com/nd/android/u/contact/R$drawable/bt_already_concern I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 1
aload 0
getstatic com/nd/android/u/contact/R$string/already_concern I
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/friend Lcom/product/android/commonInterface/weibo/Idol;
iconst_1
invokevirtual com/product/android/commonInterface/weibo/Idol/setIsFollowing(I)V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method private onBegin(Ljava/lang/String;)V
aload 0
new com/nd/android/u/contact/dialog/CustomLoadingDialog
dup
aload 0
aload 1
invokespecial com/nd/android/u/contact/dialog/CustomLoadingDialog/<init>(Landroid/content/Context;Ljava/lang/String;)V
putfield com/nd/android/u/contact/activity/SearchFansResultActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mDialog Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
iconst_1
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/setCancelable(Z)V
return
.limit locals 2
.limit stack 5
.end method

.method public SearchFans()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/server_request_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mSearchFansTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mSearchFansTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpeq L1
L2:
aload 0
new com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansTask/<init>(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;Lcom/nd/android/u/contact/activity/SearchFansResultActivity$1;)V
putfield com/nd/android/u/contact/activity/SearchFansResultActivity/mSearchFansTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mSearchFansTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mSearchFansTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mSearchFansTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method public addFansFollow(I)V
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mAddFansFollowTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mAddFansFollowTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/activity/SearchFansResultActivity$AddFansFollowTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/SearchFansResultActivity$AddFansFollowTask/<init>(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;Lcom/nd/android/u/contact/activity/SearchFansResultActivity$1;)V
putfield com/nd/android/u/contact/activity/SearchFansResultActivity/mAddFansFollowTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mAddFansFollowTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mAddFansFollowTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 2
ldc "position"
iload 1
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;I)V
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mAddFansFollowTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 2
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 3
.limit stack 5
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tv_no_fans_concern I
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/SearchFansResultActivity/mTvNoFansConcern Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/lv_result_display I
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/activity/SearchFansResultActivity/mLvResultDisplay Landroid/widget/ListView;
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/titleText Landroid/widget/TextView;
aload 0
getstatic com/nd/android/u/contact/R$string/my_fans I
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mLvResultDisplay Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setDividerHeight(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity/SearchFans()V
return
.limit locals 1
.limit stack 3
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
aload 0
iload 1
iload 2
aload 3
invokespecial com/product/android/ui/activity/HeaderActivity/onActivityResult(IILandroid/content/Intent;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/addFollowRequestCode I
iload 1
if_icmpne L0
iload 2
iconst_m1
if_icmpne L1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
pop
aload 3
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 3
aload 3
ldc "following"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
istore 4
aload 3
ldc "uid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
lstore 5
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mLvResultDisplay Landroid/widget/ListView;
lload 5
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/ListView/findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
checkcast android/widget/Button
astore 3
aload 3
ifnull L1
iload 4
ifeq L2
aload 3
getstatic com/nd/android/u/contact/R$drawable/bt_already_concern I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 3
aload 0
getstatic com/nd/android/u/contact/R$string/already_concern I
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
iconst_0
istore 1
L3:
iload 1
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mSearchResultList Lcom/product/android/commonInterface/weibo/IdolList;
invokevirtual com/product/android/commonInterface/weibo/IdolList/size()I
if_icmpge L1
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mSearchResultList Lcom/product/android/commonInterface/weibo/IdolList;
iload 1
invokevirtual com/product/android/commonInterface/weibo/IdolList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/Idol
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
lload 5
lcmp
ifne L4
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mSearchResultList Lcom/product/android/commonInterface/weibo/IdolList;
iload 1
invokevirtual com/product/android/commonInterface/weibo/IdolList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/Idol
iconst_1
invokevirtual com/product/android/commonInterface/weibo/Idol/setIsFollowing(I)V
L1:
return
L4:
iload 1
iconst_1
iadd
istore 1
goto L3
L2:
aload 3
getstatic com/nd/android/u/contact/R$drawable/bt_concern_friend I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 3
aload 0
getstatic com/nd/android/u/contact/R$string/concern_others I
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
iconst_0
istore 1
L5:
iload 1
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mSearchResultList Lcom/product/android/commonInterface/weibo/IdolList;
invokevirtual com/product/android/commonInterface/weibo/IdolList/size()I
if_icmpge L1
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mSearchResultList Lcom/product/android/commonInterface/weibo/IdolList;
iload 1
invokevirtual com/product/android/commonInterface/weibo/IdolList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/Idol
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
lload 5
lcmp
ifne L6
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mSearchResultList Lcom/product/android/commonInterface/weibo/IdolList;
iload 1
invokevirtual com/product/android/commonInterface/weibo/IdolList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/Idol
iconst_2
invokevirtual com/product/android/commonInterface/weibo/Idol/setIsFollowing(I)V
return
L6:
iload 1
iconst_1
iadd
istore 1
goto L5
L0:
iconst_1
iload 1
if_icmpne L1
iload 2
iconst_m1
if_icmpne L1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
pop
aload 3
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "friend"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast com/product/android/commonInterface/contact/OapUser
astore 3
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mLvResultDisplay Landroid/widget/ListView;
aload 3
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/ListView/findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
checkcast android/widget/Button
astore 7
aload 7
ifnull L1
aload 7
getstatic com/nd/android/u/contact/R$drawable/bt_already_concern I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 7
aload 0
getstatic com/nd/android/u/contact/R$string/already_concern I
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
iconst_0
istore 1
L7:
iload 1
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mSearchResultList Lcom/product/android/commonInterface/weibo/IdolList;
invokevirtual com/product/android/commonInterface/weibo/IdolList/size()I
if_icmpge L1
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mSearchResultList Lcom/product/android/commonInterface/weibo/IdolList;
iload 1
invokevirtual com/product/android/commonInterface/weibo/IdolList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/Idol
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 3
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lcmp
ifne L8
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mSearchResultList Lcom/product/android/commonInterface/weibo/IdolList;
iload 1
invokevirtual com/product/android/commonInterface/weibo/IdolList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/Idol
iconst_1
invokevirtual com/product/android/commonInterface/weibo/Idol/setIsFollowing(I)V
return
L8:
iload 1
iconst_1
iadd
istore 1
goto L7
.limit locals 8
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/contact/R$layout/search_friends_list I
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity/initEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onSearchSuccess()V
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/adapter Lcom/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter;
ifnonnull L0
aload 0
new com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter/<init>(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;Lcom/nd/android/u/contact/activity/SearchFansResultActivity$1;)V
putfield com/nd/android/u/contact/activity/SearchFansResultActivity/adapter Lcom/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mLvResultDisplay Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/adapter Lcom/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
L1:
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/mLvResultDisplay Landroid/widget/ListView;
new com/nd/android/u/contact/activity/SearchFansResultActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SearchFansResultActivity$2/<init>(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)V
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity/adapter Lcom/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter;
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter/notifyDataSetChanged()V
goto L1
.limit locals 1
.limit stack 5
.end method
