.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/activity/TweetProfileActivity
.super com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity
.implements android/view/View$OnClickListener
.implements android/widget/AdapterView$OnItemClickListener
.implements com/product/android/commonInterface/weibo/ISendFlowerDialogListener
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$10
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$11
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$13
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$14
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$2
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$3
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$4
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$5
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$6
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$7
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$8
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$9
.inner class private AddHiddenLoveTask inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask outer com/android/u/weibo/weibo/ui/activity/TweetProfileActivity
.inner class private GetBirthuserTask inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask outer com/android/u/weibo/weibo/ui/activity/TweetProfileActivity
.inner class private GetHiddenLoveMeTask inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetHiddenLoveMeTask outer com/android/u/weibo/weibo/ui/activity/TweetProfileActivity
.inner class private GetUserTask inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask outer com/android/u/weibo/weibo/ui/activity/TweetProfileActivity
.inner class private GetWeatherTask inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetWeatherTask outer com/android/u/weibo/weibo/ui/activity/TweetProfileActivity
.inner class private GetblessTask inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask outer com/android/u/weibo/weibo/ui/activity/TweetProfileActivity
.inner class private HeaderViewHolder inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder outer com/android/u/weibo/weibo/ui/activity/TweetProfileActivity
.inner class private MoreActionPopupWindow inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow outer com/android/u/weibo/weibo/ui/activity/TweetProfileActivity
.inner class private MoreActionTask inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask outer com/android/u/weibo/weibo/ui/activity/TweetProfileActivity
.inner class private ServerCallback inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$ServerCallback outer com/android/u/weibo/weibo/ui/activity/TweetProfileActivity

.field private static final 'MINE' I = 0


.field private static final 'OTHER' I = 1


.field private 'getBirthuserTask' Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask;

.field private 'getblessTask' Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask;

.field 'isInitBirthdayBanner' Z

.field 'isQuickClick' Z

.field private 'mAdapter' Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;

.field private 'mAddHiddenLoveTask' Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask;

.field private 'mAddOneImg' Landroid/widget/ImageView;

.field private 'mBlessCnt' I

.field private 'mBtnFollow' Landroid/widget/Button;

.field private 'mCallback' Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$ServerCallback;

.field private 'mEmptyView' Landroid/view/View;

.field private 'mFlowerInfo' Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;

.field private 'mFootView' Landroid/view/View;

.field private 'mFragment' Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;

.field private 'mHander' Landroid/os/Handler;

.field private 'mHasMoreTweet' Z

.field private 'mHeaderView' Landroid/view/View;

.field private 'mHeaderViewHolder' Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;

.field private 'mImgCover' Landroid/widget/ImageView;

.field private 'mIsInBlackList' Z

.field private 'mIsLoadingNew' Z

.field private 'mListView' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private 'mMessageReceiver' Landroid/content/BroadcastReceiver;

.field private 'mOapUser' Lcom/product/android/commonInterface/contact/OapUser;

.field private 'mReplyOrRetweetReceiver' Landroid/content/BroadcastReceiver;

.field private 'mSendFlowSuc' I

.field private 'mSinaUid' J

.field private 'mTextSendGift' Landroid/widget/TextView;

.field private 'mTxtHeartNum' Landroid/widget/TextView;

.field private 'mUid' J

.field private 'mUpdatePersonInfoReceiver' Landroid/content/BroadcastReceiver;

.field private 'mWeiboUser' Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;

.field private 'mWhose' I

.field private 'mblessingBtn' Landroid/widget/Button;

.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/<init>()V
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHasMoreTweet Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mIsLoadingNew Z
aload 0
lconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mSinaUid J
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mIsInBlackList Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mBlessCnt I
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/isInitBirthdayBanner Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/isQuickClick Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mSendFlowSuc I
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$8
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$8/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mMessageReceiver Landroid/content/BroadcastReceiver;
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$9
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$9/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUpdatePersonInfoReceiver Landroid/content/BroadcastReceiver;
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$14
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$14/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mReplyOrRetweetReceiver Landroid/content/BroadcastReceiver;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHasMoreTweet Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Z)Z
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHasMoreTweet Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mIsLoadingNew Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Z)Z
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mIsLoadingNew Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/updateAvatar()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getblessTask Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1402(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask;
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getblessTask Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1600(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mBlessCnt I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1602(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;I)I
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mBlessCnt I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1700(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;II)V
aload 0
iload 1
iload 2
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/initBirthdayBanner(II)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$1800(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mTxtHeartNum Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1900(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mTextSendGift Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$2000(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mblessingBtn Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2100(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Landroid/widget/ImageView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mAddOneImg Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Z)V
aload 0
iload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/showEmptyView(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$2300(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWhose I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2400(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Landroid/os/Handler;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHander Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2500(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mFragment Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2600(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Ljava/lang/String;Ljava/lang/String;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/updateInfo(Ljava/lang/String;Ljava/lang/String;I)V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$2700(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 0
aload 1
aload 2
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/afterGetNewTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$2800(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 0
aload 1
aload 2
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/afterGetMoreTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$2900(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2902(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;)Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mSinaUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$3000(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mIsInBlackList Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3002(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Z)Z
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mIsInBlackList Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$302(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;J)J
aload 0
lload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mSinaUid J
lload 1
lreturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$3100(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mFlowerInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3102(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mFlowerInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$3200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3202(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/product/android/commonInterface/contact/OapUser;)Lcom/product/android/commonInterface/contact/OapUser;
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$3300(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/initHeaderView()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3400(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Landroid/widget/ImageView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mImgCover Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3500(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mBtnFollow Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3600(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/doAfterUnFollow()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3700(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/startAddHiddenLove()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3900(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lorg/json/JSONObject;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/showManageDlg(Lorg/json/JSONObject;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$ServerCallback;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mCallback Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$ServerCallback;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$4000(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/showAddDlg()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$4200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$4300(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/revertFootViewState()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getBirthuserTask Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$602(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask;
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getBirthuserTask Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$800(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mFootView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method private afterGetMoreTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 1
iconst_1
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertTopicList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Z)V
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$13
dup
aload 0
aload 2
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$13/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/android/u/weibo/weibo/controller/NdWeiboException;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 3
.limit stack 6
.end method

.method private afterGetNewTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 1
iconst_1
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertTopicList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Z)V
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12
dup
aload 0
aload 2
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/android/u/weibo/weibo/controller/NdWeiboException;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 3
.limit stack 6
.end method

.method private createHeaderViewHolder()Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1;)V
astore 1
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/my_avatar I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/imgAvatar Landroid/widget/ImageView;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/android/u/weibo/weibo/ui/widget/MarqueeText
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/txtName Lcom/android/u/weibo/weibo/ui/widget/MarqueeText;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/signature I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/txtSignature Landroid/widget/TextView;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/age I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/txtAge Landroid/widget/TextView;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/my_avatar_progressbar I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/pbarAvatar Landroid/widget/ProgressBar;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/profile_item I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/view/ViewStub
invokevirtual android/view/ViewStub/inflate()Landroid/view/View;
astore 2
aload 1
aload 2
getstatic com/android/u/weibo/R$id/profile_action_button I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/actionButton Landroid/widget/Button;
aload 1
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/actionButton Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 1
aload 2
getstatic com/android/u/weibo/R$id/profile_action_tv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/actionTv Landroid/widget/TextView;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/weather I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/txtWeather Landroid/widget/TextView;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/weather_icon I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/imgWeatherIcon Landroid/widget/ImageView;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/weather_temperature I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/txtWeatherTemperature Landroid/widget/TextView;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/weather_layout I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/llWeather Landroid/widget/LinearLayout;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/wbflower_value I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/android/u/weibo/flower/ui/widget/FlowerMsgValueView
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/viewMsgValue Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
aload 1
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/viewMsgValue Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
getstatic com/android/u/weibo/R$drawable/wbflower_profile_msg_bg I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/setViewBackground(I)V
aload 1
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/viewMsgValue Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/white I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/setTextColor(I)V
aload 1
areturn
.limit locals 3
.limit stack 4
.end method

.method private doAfterUnFollow()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/fans I
ifle L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/fans I
iconst_1
isub
putfield com/android/u/weibo/weibo/business/bean/UserPageInfo/fans I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mFragment Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mFragment Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/fans I
invokevirtual com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/updateFollower(II)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method private initBirthdayBanner(II)V
aload 0
getstatic com/android/u/weibo/R$id/birthday_banner I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/findViewById(I)Landroid/view/View;
astore 3
aload 0
aload 0
getstatic com/android/u/weibo/R$id/heart_num I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mTxtHeartNum Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/send_gift_txt I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mTextSendGift Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/add_one_img I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mAddOneImg Landroid/widget/ImageView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mAddOneImg Landroid/widget/ImageView;
getstatic com/android/u/weibo/R$drawable/add_one_gif I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/blessing_btn I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mblessingBtn Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mTxtHeartNum Landroid/widget/TextView;
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
if_icmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mblessingBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mTextSendGift Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mblessingBtn Landroid/widget/Button;
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$5
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$5/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mTextSendGift Landroid/widget/TextView;
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$6
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$6/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWhose I
ifne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mTextSendGift Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mblessingBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mTextSendGift Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/happy_birthday I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mTxtHeartNum Landroid/widget/TextView;
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$7
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$7/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
L1:
aload 3
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/isInitBirthdayBanner Z
return
.limit locals 4
.limit stack 4
.end method

.method private initHeaderView()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWhose I
ifne L0
aload 0
getstatic com/android/u/weibo/R$id/chat_to I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getstatic com/android/u/weibo/R$id/actionbar_title I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
getstatic com/android/u/weibo/R$string/my_home_page I
invokevirtual android/widget/TextView/setText(I)V
L1:
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/setRequestMsg()V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 6
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWhose I
ifne L2
iconst_0
istore 1
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWhose I
iconst_1
if_icmpne L4
aload 0
aload 0
getstatic com/android/u/weibo/R$id/follow_me I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mBtnFollow Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mBtnFollow Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mBtnFollow Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/is_following Z
ifeq L5
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mBtnFollow Landroid/widget/Button;
getstatic com/android/u/weibo/R$drawable/follow_background I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mBtnFollow Landroid/widget/Button;
aload 0
getstatic com/android/u/weibo/R$string/unfollow I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
L4:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/isFinishing()Z
ifne L6
aload 0
getstatic com/android/u/weibo/R$id/other_profile_contain I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
lstore 4
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
ifnonnull L7
lconst_0
lstore 2
L8:
aload 0
lload 4
lload 2
iload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
invokestatic com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/getInstance(JJILcom/android/u/weibo/weibo/business/bean/UserPageInfo;)Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mFragment Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;
aload 6
getstatic com/android/u/weibo/R$id/other_profile_contain I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mFragment Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 6
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
L6:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
ldc2_w 10003057L
lcmp
ifeq L9
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
ldc2_w 666666666L
lcmp
ifeq L9
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
ldc2_w 999999999L
lcmp
ifeq L9
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/actionButton Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/actionTv Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mSendFlowSuc I
ifeq L10
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mFlowerInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
ifnull L10
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mFlowerInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mSendFlowSuc I
putfield com/product/android/commonInterface/weibo/FlowerMessageInfo/receiveFlowerNum I
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mSendFlowSuc I
L10:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mFlowerInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
ifnull L11
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/actionTv Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mFlowerInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/receiveFlowerNum I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L11:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/actionButton Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L0:
aload 0
getstatic com/android/u/weibo/R$id/more I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getstatic com/android/u/weibo/R$id/more I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/android/u/weibo/R$id/chat_to I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getstatic com/android/u/weibo/R$id/chat_to I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/android/u/weibo/R$id/actionbar_title I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/nickName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/home_page I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L1
L2:
iconst_1
istore 1
goto L3
L5:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mBtnFollow Landroid/widget/Button;
getstatic com/android/u/weibo/R$drawable/follow_background I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mBtnFollow Landroid/widget/Button;
aload 0
getstatic com/android/u/weibo/R$string/following_ta I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
goto L4
L7:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getNDUap_uid()J
lstore 2
goto L8
L9:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/actionButton Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/actionTv Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 7
.limit stack 7
.end method

.method private revertFootViewState()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mFootView Landroid/view/View;
getstatic com/android/u/weibo/R$id/progressBar_footer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mFootView Landroid/view/View;
getstatic com/android/u/weibo/R$id/text_footer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
getstatic com/android/u/weibo/R$string/foot_loading I
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private setRequestMsg()V
aload 0
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
iconst_1
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getFlowerMessageInfo(JI)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
astore 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWhose I
iconst_1
if_icmpne L0
aload 1
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/hasSetFlowerMsg(Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)Z
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/viewMsgValue Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
bipush 8
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/setVisibility(I)V
L1:
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/viewMsgValue Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/viewMsgValue Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
iconst_0
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/viewMsgValue Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
aload 1
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/setValue(Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)V
return
.limit locals 2
.limit stack 4
.end method

.method private showAddDlg()V
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/hidden_love_ta I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/hidden_love_notify I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$10
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$10/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/u/weibo/weibo/utils/ImageUtil$DoDialogListener;)V
return
.limit locals 1
.limit stack 6
.end method

.method private showEmptyView(Z)V
iload 1
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mFootView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mEmptyView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mEmptyView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method private showManageDlg(Lorg/json/JSONObject;)V
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/hidden_love_too_much I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/hidden_love_too_much_explain I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/go_hidden_love_manager I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$11
dup
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$11/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lorg/json/JSONObject;)V
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/u/weibo/weibo/utils/ImageUtil$DoDialogListener;)V
return
.limit locals 2
.limit stack 8
.end method

.method private startAddHiddenLove()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mAddHiddenLoveTask Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mAddHiddenLoveTask Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mAddHiddenLoveTask Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mAddHiddenLoveTask Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method

.method private updateAvatar()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWhose I
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getSysavatar()I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/imgAvatar Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mFragment Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mFragment Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;
invokevirtual com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/updatePersonalInfo()V
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/pbarAvatar Landroid/widget/ProgressBar;
ifnonnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/my_avatar_progressbar I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/pbarAvatar Landroid/widget/ProgressBar;
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/pbarAvatar Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
L0:
return
.limit locals 1
.limit stack 4
.end method

.method private updateInfo(Ljava/lang/String;Ljava/lang/String;I)V
aload 1
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/txtSignature Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
iload 3
iconst_1
if_icmpne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/txtAge Landroid/widget/TextView;
getstatic com/android/u/weibo/R$drawable/level_boy_bg I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/txtAge Landroid/widget/TextView;
getstatic com/android/u/weibo/R$drawable/level_boy_symbol I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/txtAge Landroid/widget/TextView;
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/txtAge Landroid/widget/TextView;
getstatic com/android/u/weibo/R$drawable/level_girl_bg I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/txtAge Landroid/widget/TextView;
getstatic com/android/u/weibo/R$drawable/level_girl_symbol I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
goto L2
.limit locals 4
.limit stack 5
.end method

.method public Finish()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mBlessCnt I
ifle L0
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "blesscount"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mBlessCnt I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "uid"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
iconst_m1
aload 1
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/setResult(ILandroid/content/Intent;)V
L0:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/finish()V
return
.limit locals 2
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
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/Finish()V
L1:
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/go_setting I
if_icmpne L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWhose I
ifne L3
aload 0
new android/content/Intent
dup
aload 0
ldc com/android/u/weibo/contact/ui/activity/MyContact
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
sipush 1001
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/startActivityForResult(Landroid/content/Intent;I)V
return
L3:
new android/content/Intent
dup
aload 0
ldc com/android/u/weibo/contact/ui/activity/SchoolMateContact
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "lUid"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
aload 1
sipush 1009
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/startActivityForResult(Landroid/content/Intent;I)V
return
L2:
iload 2
getstatic com/android/u/weibo/R$id/my_avatar I
if_icmpne L4
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWhose I
ifne L5
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getUserSysAvatarId(J)I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/imgAvatar Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
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
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
aload 1
sipush 1000
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/startActivityForResult(Landroid/content/Intent;I)V
return
L5:
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
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
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
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/startActivity(Landroid/content/Intent;)V
return
L4:
iload 2
getstatic com/android/u/weibo/R$id/chat_to I
if_icmpne L6
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/openChat(Landroid/app/Activity;J)V
return
L6:
iload 2
getstatic com/android/u/weibo/R$id/more I
if_icmpne L7
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
ifnull L1
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow
dup
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Landroid/view/View;)V
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/showLikePopDownMenu()V
return
L7:
iload 2
getstatic com/android/u/weibo/R$id/profile_action_button I
if_icmpne L8
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
ldc2_w 10003057L
lcmp
ifeq L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
ldc2_w 666666666L
lcmp
ifeq L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
ldc2_w 999999999L
lcmp
ifeq L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWhose I
iconst_1
if_icmpne L9
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L10
getstatic com/android/u/weibo/R$string/net_warn_no_network I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L10:
new com/android/u/weibo/flower/ui/dialog/SendFlowerDialog
dup
aload 0
aload 0
invokespecial com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/<init>(Landroid/content/Context;Lcom/product/android/commonInterface/weibo/ISendFlowerDialogListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
invokevirtual com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/showDialog(J)V
return
L9:
aload 0
new android/content/Intent
dup
aload 0
ldc com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
sipush 1003
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/startActivityForResult(Landroid/content/Intent;I)V
return
L8:
iload 2
getstatic com/android/u/weibo/R$id/follow_me I
if_icmpne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/isQuickClick Z
ifne L1
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/isQuickClick Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/is_following Z
ifeq L11
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask
dup
aload 0
iconst_0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;I)V
iconst_1
anewarray java/lang/Long
dup
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
L11:
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask
dup
aload 0
iconst_1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;I)V
iconst_1
anewarray java/lang/Long
dup
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 4
.limit stack 6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/android/u/weibo/R$layout/weibo_profile_page I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/setContentView(I)V
ldc "TIMECOST"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "WEIBO \u573a\u666f1\uff1a\u67e5\u770b\u4e2a\u4eba\u4e3b\u9875\uff08\u4e2a\u4eba\u4e3b\u9875\u4e2d\u7684\u6570\u636e\u5185\u5bb9\uff09-Time:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getIntent()Landroid/content/Intent;
ldc "uid"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getUid()J
lcmp
ifne L0
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWhose I
L1:
aload 0
getstatic com/android/u/weibo/R$id/back I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/background_image I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mImgCover Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tweet_list_view I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/findViewById(I)Landroid/view/View;
checkcast com/handmark/pulltorefresh/library/PullToRefreshListView
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
ldc "layout_inflater"
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
astore 1
aload 0
aload 1
getstatic com/android/u/weibo/R$layout/weibo_list_header I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderView Landroid/view/View;
aload 0
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/createHeaderViewHolder()Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderView Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
aload 1
getstatic com/android/u/weibo/R$layout/tweet_profile_empty_view I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mEmptyView Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWhose I
ifne L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mEmptyView Landroid/view/View;
getstatic com/android/u/weibo/R$id/weibo_prompt_text I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
getstatic com/android/u/weibo/R$string/weibo_no_tweet_me I
invokevirtual android/widget/TextView/setText(I)V
L3:
aload 0
aload 1
getstatic com/android/u/weibo/R$layout/list_view_footer I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mFootView Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mEmptyView Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mFootView Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
new com/android/u/weibo/weibo/ui/adapter/TweetListAdapter
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/<init>(Landroid/app/Activity;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/setCurUid(J)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$2
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$2/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$3
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$3/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getstatic com/android/u/weibo/R$id/arrow_to_setting I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$ServerCallback
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$ServerCallback/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mCallback Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$ServerCallback;
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1;)V
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetWeatherTask
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetWeatherTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1;)V
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetWeatherTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mMessageReceiver Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
ldc "like-event"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
pop
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mReplyOrRetweetReceiver Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
ldc "refresh_data"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual android/support/v4/content/LocalBroadcastManager/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUpdatePersonInfoReceiver Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/ACTION_HOMEPAGE_UPDATE Ljava/lang/String;
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual android/support/v4/content/LocalBroadcastManager/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getBirthuserTask Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getBirthuserTask Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$4
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$4/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHander Landroid/os/Handler;
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
lconst_0
lcmp
ifne L4
aload 0
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getUid()J
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWhose I
goto L1
L4:
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWhose I
goto L1
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mEmptyView Landroid/view/View;
getstatic com/android/u/weibo/R$id/weibo_prompt_text I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
getstatic com/android/u/weibo/R$string/weibo_no_tweet_other I
invokevirtual android/widget/TextView/setText(I)V
goto L3
.limit locals 2
.limit stack 5
.end method

.method protected onDestroy()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/onDestroy()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getBirthuserTask Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getBirthuserTask Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getBirthuserTask Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask;
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask/cancel(Z)Z
pop
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mAddHiddenLoveTask Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mAddHiddenLoveTask Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mAddHiddenLoveTask Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask;
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask/cancel(Z)Z
pop
L1:
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mMessageReceiver Landroid/content/BroadcastReceiver;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mReplyOrRetweetReceiver Landroid/content/BroadcastReceiver;
invokevirtual android/support/v4/content/LocalBroadcastManager/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUpdatePersonInfoReceiver Landroid/content/BroadcastReceiver;
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

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iload 1
iconst_4
if_icmpne L0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/Finish()V
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method protected onPause()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/onPause()V
aload 0
invokestatic com/android/u/weibo/weibo/utils/TweetCountForGlances/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/utils/TweetCountForGlances;
invokevirtual com/android/u/weibo/weibo/utils/TweetCountForGlances/postGlancesCount()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/viewMsgValue Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/viewMsgValue Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/onPause()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method protected onRestart()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/onRestart()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWhose I
ifne L0
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/setRequestMsg()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public onResume()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/onResume()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
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
if_icmpne L0
L1:
aload 0
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
astore 2
aload 0
lconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mSinaUid J
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/accessTokenSina Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mWhose I
ifne L2
aload 0
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/accessTokenSina Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
getfield com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/msinaUid Ljava/lang/String;
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mSinaUid J
L2:
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mUid J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mSinaUid J
iconst_1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mCallback Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/refreshUserTimeline(JJZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
L0:
return
.limit locals 3
.limit stack 7
.end method

.method public onSuccessNum(Landroid/content/Context;ILjava/util/List;)V
.signature "(Landroid/content/Context;ILjava/util/List<Lcom/product/android/commonInterface/backpack/BackPackItem;>;)V"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mFlowerInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
ifnonnull L0
aload 0
iload 2
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mSendFlowSuc I
return
L0:
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mSendFlowSuc I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mFlowerInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
iload 2
putfield com/product/android/commonInterface/weibo/FlowerMessageInfo/receiveFlowerNum I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/actionTv Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/mFlowerInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/receiveFlowerNum I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 4
.limit stack 2
.end method
