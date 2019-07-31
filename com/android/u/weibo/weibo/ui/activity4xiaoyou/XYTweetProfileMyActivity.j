.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity
.super com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity
.implements android/view/View$OnClickListener
.implements com/product/android/business/switchUser/TabUIRefresh
.inner class inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$1
.inner class inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$2
.inner class inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$3
.inner class inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$4
.inner class inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$5
.inner class private GetLevelTask inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask outer com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity

.field private 'getlevelTask' Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask;

.field private 'ibBack' Landroid/widget/ImageButton;

.field private 'mAddLocalTweetReceiver' Landroid/content/BroadcastReceiver;

.field private 'mHander' Landroid/os/Handler;

.field private 'mIsInitData' Z

.field private 'mRefreshLocalTweet' Landroid/content/BroadcastReceiver;

.field private 'mUpdatePersonInfoReceiver' Landroid/content/BroadcastReceiver;

.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/<init>()V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mIsInitData Z
aload 0
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$2
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$2/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity;)V
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mRefreshLocalTweet Landroid/content/BroadcastReceiver;
aload 0
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$3
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$3/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity;)V
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mUpdatePersonInfoReceiver Landroid/content/BroadcastReceiver;
aload 0
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$4
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$4/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity;)V
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mAddLocalTweetReceiver Landroid/content/BroadcastReceiver;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/updateAvatar()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity;)Landroid/os/Handler;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mHander Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/refreshOapScore()V
return
.limit locals 1
.limit stack 1
.end method

.method private refreshOapScore()V
invokestatic com/android/u/weibo/weiboInterfaceImpl/XiaoyouCallOtherModel/getMyOapScoreFromLocal()Lcom/product/android/commonInterface/task/OapScore;
astore 1
aload 1
ifnonnull L0
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/txtlevel Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getstatic com/android/u/weibo/R$string/xiaoyou_score_level I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/product/android/commonInterface/task/OapScore/getLevel()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/setLevelviewData()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/actionButtongift Landroid/widget/Button;
getstatic com/android/u/weibo/R$drawable/btn_xy_lottery_normal_selected I
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
.limit locals 2
.limit stack 4
.end method

.method private setLevelviewData()V
invokestatic com/android/u/weibo/weiboInterfaceImpl/XiaoyouCallOtherModel/getMyOapScoreFromLocal()Lcom/product/android/commonInterface/task/OapScore;
astore 4
aload 4
ifnonnull L0
return
L0:
aload 4
invokevirtual com/product/android/commonInterface/task/OapScore/getTotalexp()I
istore 3
aload 4
invokevirtual com/product/android/commonInterface/task/OapScore/getMinscore()I
istore 1
aload 4
invokevirtual com/product/android/commonInterface/task/OapScore/getMaxscore()I
istore 2
iload 3
iload 1
isub
istore 3
iload 3
i2d
ldc2_w 100.0D
dmul
iload 2
iload 1
isub
i2d
dconst_1
dmul
ddiv
d2i
istore 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/levelview Lcom/android/u/weibo/weibo/ui/widget/WeiBoGradeProgressBar;
iload 1
invokevirtual com/android/u/weibo/weibo/ui/widget/WeiBoGradeProgressBar/setProgress(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/levelview Lcom/android/u/weibo/weibo/ui/widget/WeiBoGradeProgressBar;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/ui/widget/WeiBoGradeProgressBar/setText(Ljava/lang/String;)V
return
.limit locals 5
.limit stack 6
.end method

.method private updateAvatar()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mUid J
iconst_3
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/imgAvatar Landroid/widget/ImageView;
aconst_null
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mFragment Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mFragment Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;
invokevirtual com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/updatePersonalInfo()V
L0:
return
.limit locals 1
.limit stack 5
.end method

.method public clearOldAccountUI()V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/stopTask()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mLocalTweetListCache Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mLocalTweetListCache Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/clear()V
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/getData()Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 1
aload 1
ifnull L2
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/clear()V
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/notifyDataSetChanged()V
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
ifnull L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/txtName Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/txtlevel Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/txtSignature Lcom/common/android/ui/widget/NewsSummaryTextView;
getstatic com/android/u/weibo/R$string/xiaoyou_no_sign I
invokevirtual com/common/android/ui/widget/NewsSummaryTextView/setText(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/imgAvatar Landroid/widget/ImageView;
aconst_null
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/imgAvatar Landroid/widget/ImageView;
getstatic com/android/u/weibo/R$drawable/xiaoyou_default_face I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/actionButtongift Landroid/widget/Button;
aconst_null
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/isInitBirthdayBanner Z
ifeq L4
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mTxtHeartNum Landroid/widget/TextView;
aconst_null
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/birthdayView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L4:
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mBlessCnt I
aload 0
aconst_null
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mFlowerInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/setRequestMsg()V
aload 0
aconst_null
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
aload 0
aconst_null
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mUid J
return
.limit locals 2
.limit stack 3
.end method

.method protected createHeaderViewHolder()Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/createHeaderViewHolder()Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTabIdentifier()Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
getstatic com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier/TAB_ME Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected initBirthdayBanner(II)V
aload 0
iload 1
iload 2
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/initBirthdayBanner(II)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mTextSendGift Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mblessingBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mTextSendGift Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/happy_birthday I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mTxtHeartNum Landroid/widget/TextView;
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$5
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$5/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 3
.limit stack 4
.end method

.method protected initComponent()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/initComponent()V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/ib_back I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/ibBack Landroid/widget/ImageButton;
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/initComponentValue()V
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/gIsNeedLottery Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/actionButtongift Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/actionButtongift Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initData(Z)V
aload 0
iload 1
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/initData(Z)V
iload 1
ifeq L0
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mRefreshLocalTweet Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
ldc "refresh-local-tweet"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual android/support/v4/content/LocalBroadcastManager/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mAddLocalTweetReceiver Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
ldc "add-local-tweet"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual android/support/v4/content/LocalBroadcastManager/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mUpdatePersonInfoReceiver Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/ACTION_HOMEPAGE_UPDATE Ljava/lang/String;
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual android/support/v4/content/LocalBroadcastManager/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
L0:
return
.limit locals 2
.limit stack 5
.end method

.method protected initEvent()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/initEvent()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mWriteTweet Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/ibBack Landroid/widget/ImageButton;
aload 0
invokevirtual android/widget/ImageButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initHeaderView()V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/getNickName()Ljava/lang/String;
astore 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/txtName Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/txtName Landroid/widget/TextView;
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/setMarqueeText(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/initHeaderView()V
return
.limit locals 2
.limit stack 3
.end method

.method public loadDataToMemory()V
return
.limit locals 1
.limit stack 0
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/android/u/weibo/R$id/my_avatar I
if_icmpne L0
new android/content/Intent
dup
aload 0
ldc com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "MINE"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 1
ldc "uid"
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mUid J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
aload 1
sipush 1000
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/startActivityForResult(Landroid/content/Intent;I)V
L1:
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/go_setting I
if_icmpne L2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STAFF Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L3
aload 0
new android/content/Intent
dup
aload 0
ldc com/android/u/weibo/contact/ui/activity/MyContact
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/startActivity(Landroid/content/Intent;)V
return
L3:
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mUid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/XiaoyouCallOtherModel/gotoJMContactAcitvity(Landroid/content/Context;J)V
return
L2:
iload 2
getstatic com/android/u/weibo/R$id/bt_left I
if_icmpne L4
aload 0
new android/content/Intent
dup
aload 0
ldc com/android/u/weibo/weibo/ui/activity/TweetComposeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/startActivity(Landroid/content/Intent;)V
return
L4:
iload 2
getstatic com/android/u/weibo/R$id/bt_right I
if_icmpne L5
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L6
aload 0
getstatic com/android/u/weibo/R$string/net_warn_no_network I
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L6:
invokestatic com/android/u/weibo/weiboInterfaceImpl/XiaoyouCallOtherModel/getMyOapScoreFromLocal()Lcom/product/android/commonInterface/task/OapScore;
astore 1
aload 1
ifnull L7
aload 1
invokevirtual com/product/android/commonInterface/task/OapScore/getSignstatus()I
iconst_1
if_icmpne L7
aload 0
invokestatic com/android/u/weibo/weiboInterfaceImpl/XiaoyouCallOtherModel/doMoreExperience(Landroid/app/Activity;)V
return
L7:
aload 0
invokestatic com/android/u/weibo/weiboInterfaceImpl/XiaoyouCallOtherModel/doSign(Landroid/app/Activity;)V
return
L5:
iload 2
getstatic com/android/u/weibo/R$id/btn_gift I
if_icmpne L8
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/gIsNeedLottery Z
ifeq L9
aload 0
invokestatic com/android/u/weibo/weiboInterfaceImpl/XiaoyouCallOtherModel/doLotMain(Landroid/app/Activity;)V
return
L9:
aload 0
getstatic com/android/u/weibo/R$string/xiaoyou_no_lotter_tip I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L8:
iload 2
getstatic com/android/u/weibo/R$id/weibo_prompt_btn I
if_icmpne L10
aload 0
new android/content/Intent
dup
aload 0
ldc com/android/u/weibo/weibo/ui/activity/TweetComposeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/startActivity(Landroid/content/Intent;)V
return
L10:
iload 2
getstatic com/android/u/weibo/R$id/ib_back I
if_icmpne L1
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/finish()V
return
.limit locals 3
.limit stack 5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mUid J
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mWhose I
aload 0
getstatic com/android/u/weibo/R$layout/xiaoyou_list_header_my I
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mHeaderLayoutId I
aload 0
getstatic com/android/u/weibo/R$layout/xiaoyou_profile_my_page I
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mContentLayoutId I
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mIsInitData Z
aload 0
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$1/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity;)V
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mHander Landroid/os/Handler;
return
.limit locals 2
.limit stack 4
.end method

.method protected onDestroy()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/onDestroy()V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/stopTask()V
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mAddLocalTweetReceiver Landroid/content/BroadcastReceiver;
invokevirtual android/support/v4/content/LocalBroadcastManager/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mRefreshLocalTweet Landroid/content/BroadcastReceiver;
invokevirtual android/support/v4/content/LocalBroadcastManager/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mUpdatePersonInfoReceiver Landroid/content/BroadcastReceiver;
invokevirtual android/support/v4/content/LocalBroadcastManager/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onRestart()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/onRestart()V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/setRequestMsg()V
return
.limit locals 1
.limit stack 1
.end method

.method public onResume()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/onResume()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
ifnull L0
aload 0
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
sipush 1001
invokevirtual com/android/u/weibo/weibo/controller/Manager/getBindState(I)I
istore 1
iconst_1
iload 1
if_icmpeq L1
iconst_2
iload 1
if_icmpne L2
L1:
aload 0
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
astore 2
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/accessTokenSina Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
ifnull L3
aload 0
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/accessTokenSina Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/getSinaUid()Ljava/lang/String;
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mSinaUid J
L4:
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mUid J
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mSinaUid J
iconst_1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mCallback Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/refreshUserTimeline(JJZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
L2:
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/refreshOapScore()V
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/mMyTweetRefresh Z
ifeq L5
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/getlevelTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask;
ifnull L6
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/getlevelTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask;
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L6
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/getlevelTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask;
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask/cancel(Z)Z
pop
L6:
aload 0
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity;Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$1;)V
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/getlevelTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/getlevelTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
iconst_0
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/mMyTweetRefresh Z
L5:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mIsInitData Z
ifeq L7
getstatic com/product/android/business/switchUser/SwitchUserReloadManager/INSTANCE Lcom/product/android/business/switchUser/SwitchUserReloadManager;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/getTabIdentifier()Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
iconst_0
invokevirtual com/product/android/business/switchUser/SwitchUserReloadManager/setReloadFlag(Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;Z)V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mIsInitData Z
return
L3:
aload 0
lconst_0
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mSinaUid J
goto L4
L0:
ldc "debug"
ldc "user not initalized"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L2
L7:
aload 0
aload 0
invokestatic com/product/android/business/switchUser/SwitchUserReloadManager/tabActivityCheckUserSwitch(Landroid/app/Activity;Lcom/product/android/business/switchUser/TabUIRefresh;)V
return
.limit locals 3
.limit stack 7
.end method

.method protected processGetUserTaskPublish(Ljava/lang/Object;)V
aload 1
instanceof com/product/android/commonInterface/task/OapScore
ifeq L0
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/refreshOapScore()V
L0:
return
.limit locals 2
.limit stack 1
.end method

.method public refreshWhenSwitchUser()V
aload 0
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/initData(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method protected stopTask()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/stopTask()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/getlevelTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/getlevelTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask;
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/getlevelTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask;
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask/cancel(Z)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method
