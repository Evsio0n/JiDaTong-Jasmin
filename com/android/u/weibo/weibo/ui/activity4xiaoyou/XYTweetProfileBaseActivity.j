.bytecode 50.0
.class public synchronized abstract com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity
.super android/support/v4/app/FragmentActivity
.implements android/widget/AdapterView$OnItemClickListener
.implements android/view/View$OnClickListener
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener
.signature "Landroid/support/v4/app/FragmentActivity;Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View$OnClickListener;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<Landroid/widget/ListView;>;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;"
.inner class inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$1
.inner class inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$2
.inner class inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$3
.inner class inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$4
.inner class inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$5
.inner class inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$6
.inner class inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7
.inner class private GetBirthuserTask inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask outer com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity
.inner class private GetUserTask inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask outer com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity
.inner class protected HeaderViewHolder inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder outer com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity
.inner class private PostblessTask inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$PostblessTask outer com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity
.inner class private ServerCallback inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$ServerCallback outer com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity

.field protected static final 'MINE' I = 0


.field protected static final 'OTHER' I = 1


.field protected 'birthdayView' Landroid/view/View;

.field protected 'getBirthuserTask' Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask;

.field protected 'getUserTask' Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask;

.field protected 'isInitBirthdayBanner' Z

.field protected 'mAdapter' Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;

.field protected 'mAddOneImg' Landroid/widget/ImageView;

.field protected 'mBlessCnt' I

.field protected 'mCallback' Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$ServerCallback;

.field protected 'mContentLayoutId' I

.field private 'mEmptyLayout' Landroid/widget/RelativeLayout;

.field protected 'mEmptyView' Landroid/view/View;

.field protected 'mFlowerInfo' Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;

.field protected 'mFootView' Landroid/view/View;

.field private 'mFooterProgressBar' Landroid/view/View;

.field private 'mFooterText' Landroid/widget/TextView;

.field protected 'mFragment' Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;

.field protected 'mHasMoreTweet' Z

.field protected 'mHeaderLayoutId' I

.field protected 'mHeaderView' Landroid/view/View;

.field protected 'mHeaderViewHolder' Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;

.field protected 'mIsInBlackList' Z

.field protected 'mIsLoadingNew' Z

.field protected 'mListView' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field protected 'mLocalTweetListCache' Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;

.field private 'mMessageReceiver' Landroid/content/BroadcastReceiver;

.field protected 'mOapUser' Lcom/product/android/commonInterface/contact/OapUser;

.field private 'mReplyOrRetweetReceiver' Landroid/content/BroadcastReceiver;

.field protected 'mSinaUid' J

.field protected 'mTextSendGift' Landroid/widget/TextView;

.field protected 'mTxtHeartNum' Landroid/widget/TextView;

.field protected 'mUid' J

.field protected 'mWeiboUser' Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;

.field protected 'mWhose' I

.field protected 'mWriteTweet' Landroid/widget/ImageView;

.field protected 'mblessingBtn' Landroid/widget/Button;

.field private 'postblessTask' Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$PostblessTask;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/<init>()V
aload 0
lconst_0
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mSinaUid J
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHasMoreTweet Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mIsLoadingNew Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mIsInBlackList Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mBlessCnt I
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/isInitBirthdayBanner Z
aload 0
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$1/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;)V
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mMessageReceiver Landroid/content/BroadcastReceiver;
aload 0
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$2
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$2/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;)V
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mReplyOrRetweetReceiver Landroid/content/BroadcastReceiver;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$300(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;)Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$PostblessTask;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/postblessTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$PostblessTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$PostblessTask;)Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$PostblessTask;
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/postblessTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$PostblessTask;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/broadcastBlessTaskOver()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 0
aload 1
aload 2
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/afterGetNewTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$700(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 0
aload 1
aload 2
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/afterGetMoreTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$800(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;)Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mFooterProgressBar Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mFooterText Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private afterGetMoreTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 1
iconst_1
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertTopicList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Z)V
aload 0
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7
dup
aload 0
aload 2
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;Lcom/android/u/weibo/weibo/controller/NdWeiboException;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 3
.limit stack 6
.end method

.method private afterGetNewTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 1
iconst_1
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertTopicList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Z)V
aload 0
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$6
dup
aload 0
aload 2
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$6/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;Lcom/android/u/weibo/weibo/controller/NdWeiboException;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 3
.limit stack 6
.end method

.method private broadcastBlessTaskOver()V
new android/content/Intent
dup
ldc "com.nd.android.u.chat.flowertaskover"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "activity_context"
aload 0
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "task_over_type"
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 1
invokevirtual android/support/v4/content/LocalBroadcastManager/sendBroadcast(Landroid/content/Intent;)Z
pop
return
.limit locals 2
.limit stack 3
.end method

.method protected createHeaderViewHolder()Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;)V
astore 1
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/go_setting I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/rlSetting Landroid/view/View;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/my_avatar I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/imgAvatar Landroid/widget/ImageView;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/txtName Landroid/widget/TextView;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/signature I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/NewsSummaryTextView
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/txtSignature Lcom/common/android/ui/widget/NewsSummaryTextView;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/level I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/txtlevel Landroid/widget/TextView;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/levelview I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/android/u/weibo/weibo/ui/widget/WeiBoGradeProgressBar
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/levelview Lcom/android/u/weibo/weibo/ui/widget/WeiBoGradeProgressBar;
aload 1
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/levelview Lcom/android/u/weibo/weibo/ui/widget/WeiBoGradeProgressBar;
getstatic com/android/u/weibo/R$drawable/xiaoyou_gradeprogressbar I
invokevirtual com/android/u/weibo/weibo/ui/widget/WeiBoGradeProgressBar/setBarBackground(I)V
aload 1
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/levelview Lcom/android/u/weibo/weibo/ui/widget/WeiBoGradeProgressBar;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/brown_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/android/u/weibo/weibo/ui/widget/WeiBoGradeProgressBar/setTextColor(I)V
aload 1
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/levelview Lcom/android/u/weibo/weibo/ui/widget/WeiBoGradeProgressBar;
bipush 10
invokevirtual com/android/u/weibo/weibo/ui/widget/WeiBoGradeProgressBar/setTextSize(I)V
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/bt_left I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/leftButton Landroid/widget/Button;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/bt_right I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/rightButton Landroid/widget/Button;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/btn_gift I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/actionButtongift Landroid/widget/Button;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/wbflower_value I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/android/u/weibo/flower/ui/widget/FlowerMsgValueView
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/viewMsgValue Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
aload 1
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/viewMsgValue Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
getstatic com/android/u/weibo/R$drawable/xiaoyou_wbflower_profile_msg_bg I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/setViewBackground(I)V
aload 1
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/viewMsgValue Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/white I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/setTextColor(I)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public finish()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "blesscount"
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mBlessCnt I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "uid"
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mUid J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
ifnull L0
aload 1
ldc "following"
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/is_following Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
L0:
aload 0
iconst_m1
aload 1
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/setResult(ILandroid/content/Intent;)V
aload 0
invokespecial android/support/v4/app/FragmentActivity/finish()V
return
.limit locals 2
.limit stack 4
.end method

.method protected getNickName()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
areturn
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/nickName Ljava/lang/String;
areturn
L1:
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method

.method protected initBirthdayBanner(II)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/isInitBirthdayBanner Z
ifne L0
aload 0
aload 0
getstatic com/android/u/weibo/R$id/birthday_banner I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/findViewById(I)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/birthdayView Landroid/view/View;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/heart_num I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mTxtHeartNum Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/send_gift_txt I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mTextSendGift Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mTxtHeartNum Landroid/widget/TextView;
getstatic com/android/u/weibo/R$drawable/heart_bg I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/add_one_img I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mAddOneImg Landroid/widget/ImageView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mAddOneImg Landroid/widget/ImageView;
getstatic com/android/u/weibo/R$drawable/add_one_gif I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/blessing_btn I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mblessingBtn Landroid/widget/Button;
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mTxtHeartNum Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
iload 1
iconst_1
if_icmpne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mblessingBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mTextSendGift Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mblessingBtn Landroid/widget/Button;
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$4
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$4/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mTextSendGift Landroid/widget/TextView;
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$5
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$5/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/birthdayView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/isInitBirthdayBanner Z
return
.limit locals 3
.limit stack 4
.end method

.method protected initComponent()V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tweet_list_view I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/findViewById(I)Landroid/view/View;
checkcast com/handmark/pulltorefresh/library/PullToRefreshListView
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
ldc "layout_inflater"
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
astore 1
aload 0
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderLayoutId I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderView Landroid/view/View;
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/createHeaderViewHolder()Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderView Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
aload 1
getstatic com/android/u/weibo/R$layout/xiaoyou_profile_empty_view I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mEmptyView Landroid/view/View;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mEmptyView Landroid/view/View;
getstatic com/android/u/weibo/R$id/weibo_prompt_btn I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mWriteTweet Landroid/widget/ImageView;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mEmptyView Landroid/view/View;
getstatic com/android/u/weibo/R$id/rl_empty_layout I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mEmptyLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mEmptyView Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
aload 1
getstatic com/android/u/weibo/R$layout/list_view_footer I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mFootView Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mFootView Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mFootView Landroid/view/View;
getstatic com/android/u/weibo/R$id/progressBar_footer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mFooterProgressBar Landroid/view/View;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mFootView Landroid/view/View;
getstatic com/android/u/weibo/R$id/text_footer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mFooterText Landroid/widget/TextView;
return
.limit locals 2
.limit stack 4
.end method

.method protected initComponentValue()V
return
.limit locals 1
.limit stack 0
.end method

.method protected initData(Z)V
iload 1
ifeq L0
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mMessageReceiver Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
ldc "like-event"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
pop
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mReplyOrRetweetReceiver Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
ldc "refresh_data"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual android/support/v4/content/LocalBroadcastManager/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
aload 0
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$ServerCallback
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$ServerCallback/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$1;)V
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mCallback Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$ServerCallback;
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/showRefreshView()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setRefreshing(Z)V
return
.limit locals 2
.limit stack 5
.end method

.method protected initEvent()V
aload 0
new com/android/u/weibo/weibo/ui/adapter/TweetListAdapter
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/<init>(Landroid/app/Activity;)V
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected initHeaderView()V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/setRequestMsg()V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/isFinishing()Z
ifne L0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 6
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mWhose I
ifne L1
iconst_0
istore 1
L2:
aload 0
getstatic com/android/u/weibo/R$id/other_profile_contain I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mUid J
lstore 4
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
ifnonnull L3
lconst_0
lstore 2
L4:
aload 0
lload 4
lload 2
iload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
invokestatic com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/getInstance(JJILcom/android/u/weibo/weibo/business/bean/UserPageInfo;)Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mFragment Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;
aload 6
getstatic com/android/u/weibo/R$id/other_profile_contain I
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mFragment Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 6
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mUid J
ldc2_w 10003057L
lcmp
ifeq L5
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mUid J
ldc2_w 666666666L
lcmp
ifeq L5
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mUid J
ldc2_w 999999999L
lcmp
ifeq L5
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/leftButton Landroid/widget/Button;
ifnull L6
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/leftButton Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
L6:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/actionButtongift Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
L7:
return
L1:
iconst_1
istore 1
goto L2
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getUap_uid()J
lstore 2
goto L4
L5:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/leftButton Landroid/widget/Button;
ifnull L7
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/leftButton Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 7
.limit stack 7
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mContentLayoutId I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/setContentView(I)V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/initComponent()V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/initComponentValue()V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/initEvent()V
aload 0
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/initData(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/onDestroy()V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/stopTask()V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mMessageReceiver Landroid/content/BroadcastReceiver;
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mReplyOrRetweetReceiver Landroid/content/BroadcastReceiver;
invokevirtual android/support/v4/content/LocalBroadcastManager/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 1
invokevirtual android/widget/AdapterView/getAdapter()Landroid/widget/Adapter;
iload 3
invokeinterface android/widget/Adapter/getItem(I)Ljava/lang/Object; 1
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 1
aload 1
ifnonnull L0
L1:
return
L0:
aload 1
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/isLocalTopic(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Z
ifne L1
aload 0
aload 1
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toCommentListActivity(Landroid/content/Context;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
return
.limit locals 6
.limit stack 2
.end method

.method public onLastItemVisible()V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHasMoreTweet Z
ifeq L7
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mIsLoadingNew Z
istore 1
L1:
iload 1
ifeq L3
L7:
aload 0
monitorexit
return
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/getLastItem()Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 2
L4:
aload 2
ifnull L7
L5:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mFootView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHasMoreTweet Z
aload 0
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mUid J
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mSinaUid J
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/getData()Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 2
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/getLastNdTweetId(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)J
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mCallback Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/getOlderUserTimeline(JJJJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
L6:
goto L7
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 10
.end method

.method protected onPause()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/onPause()V
aload 0
invokestatic com/android/u/weibo/weibo/utils/TweetCountForGlances/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/utils/TweetCountForGlances;
invokevirtual com/android/u/weibo/weibo/utils/TweetCountForGlances/postGlancesCount()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/viewMsgValue Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/viewMsgValue Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/onPause()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$3
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$3/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;)V
ldc2_w 1000L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
getstatic com/android/u/weibo/R$string/net_warn_no_network I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L0:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getApplicationContext()Landroid/content/Context;
invokestatic java/lang/System/currentTimeMillis()J
ldc_w 524305
invokestatic android/text/format/DateUtils/formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
astore 2
aload 1
iconst_1
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;
aload 2
invokeinterface com/handmark/pulltorefresh/library/ILoadingLayout/setLastUpdatedLabel(Ljava/lang/CharSequence;)V 1
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHasMoreTweet Z
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mIsLoadingNew Z
aload 0
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mUid J
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mSinaUid J
iconst_1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mCallback Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/refreshUserTimeline(JJZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getUserTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getUserTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask;
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getUserTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask;
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/cancel(Z)Z
pop
L1:
aload 0
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$1;)V
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getUserTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getUserTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getBirthuserTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getBirthuserTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask;
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getBirthuserTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask;
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask/cancel(Z)Z
pop
L2:
aload 0
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$1;)V
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getBirthuserTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getBirthuserTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 3
.limit stack 7
.end method

.method protected abstract processGetUserTaskPublish(Ljava/lang/Object;)V
.end method

.method protected setRequestMsg()V
aload 0
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mUid J
iconst_1
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getFlowerMessageInfo(JI)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
astore 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mWhose I
iconst_1
if_icmpne L0
aload 1
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/hasSetFlowerMsg(Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)Z
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/viewMsgValue Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
bipush 8
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/setVisibility(I)V
L1:
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/viewMsgValue Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/viewMsgValue Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
iconst_0
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/viewMsgValue Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
aload 1
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/setValue(Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)V
return
.limit locals 2
.limit stack 4
.end method

.method protected showEmptyView(Z)V
iload 1
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mFootView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mEmptyLayout Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mEmptyLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected stopTask()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getBirthuserTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getBirthuserTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask;
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getBirthuserTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask;
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask/cancel(Z)Z
pop
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getUserTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getUserTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask;
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getUserTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask;
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/cancel(Z)Z
pop
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/postblessTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$PostblessTask;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/postblessTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$PostblessTask;
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$PostblessTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/postblessTask Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$PostblessTask;
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$PostblessTask/cancel(Z)Z
pop
L2:
return
.limit locals 1
.limit stack 2
.end method

.method protected updateSignature(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/txtSignature Lcom/common/android/ui/widget/NewsSummaryTextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getstatic com/android/u/weibo/R$string/xiaoyou_sign_title I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/ui/widget/NewsSummaryTextView/setText(Ljava/lang/String;)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/txtSignature Lcom/common/android/ui/widget/NewsSummaryTextView;
aload 0
getstatic com/android/u/weibo/R$string/xiaoyou_no_sign I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getString(I)Ljava/lang/String;
invokevirtual com/common/android/ui/widget/NewsSummaryTextView/setText(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 4
.end method
