.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase
.super android/widget/BaseAdapter
.inner class inner com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$1
.inner class inner com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$10
.inner class inner com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$2
.inner class inner com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$3
.inner class inner com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$4
.inner class inner com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$5
.inner class inner com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$6
.inner class inner com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$7
.inner class inner com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$8
.inner class inner com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$9
.inner class private BtnClickListener inner com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$BtnClickListener outer com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase

.field public static final 'BASE_CONTENT_TYPE_COUNT' I = 5


.field public static final 'CONTENT_TYPE_FORWARD_WITH_IMAGE' I = 1


.field public static final 'CONTENT_TYPE_FORWARD_WITH_TEXT' I = 0


.field public static final 'CONTENT_TYPE_IMAGE' I = 3


.field public static final 'CONTENT_TYPE_RANK' I = 4


.field public static final 'CONTENT_TYPE_TEXT' I = 2


.field private 'isShowGlancesNum' Z

.field 'mActivity' Landroid/app/Activity;

.field private 'mCurUid' J

.field private 'mDelTweetDlg' Landroid/app/AlertDialog;

.field private 'mHandler' Landroid/os/Handler;

.field protected 'mImageLoader' Lcom/nostra13/universalimageloader/core/ImageLoader;

.field 'mInflater' Landroid/view/LayoutInflater;

.field private 'mLikeTask' Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;

.field private 'mTweetDelTip' Ljava/lang/String;

.field private 'mTweetList' Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;

.method public <init>(Landroid/app/Activity;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
lconst_0
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mCurUid J
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/isShowGlancesNum Z
aload 0
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mImageLoader Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
new com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$7
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$7/<init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;)V
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mHandler Landroid/os/Handler;
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
aload 0
aload 1
ldc "layout_inflater"
invokevirtual android/app/Activity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mInflater Landroid/view/LayoutInflater;
aload 0
new com/android/u/weibo/weibo/business/bean/TopicInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/TopicInfoList/<init>()V
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/weibo_has_lost I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetDelTip Ljava/lang/String;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;)J
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mCurUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;)Landroid/app/AlertDialog;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mDelTweetDlg Landroid/app/AlertDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Landroid/view/View;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;)V
aload 0
aload 1
aload 2
aload 3
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/dolike(Landroid/view/View;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;)V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$300(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/startTweetCommentActivity(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/startRetweetActivity(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$502(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;)Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mLikeTask Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method private bindData(Landroid/view/View;Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;ILcom/android/u/weibo/weibo/business/bean/TopicInfo;Z)V
aload 2
ifnonnull L0
L1:
return
L0:
aload 4
ifnull L2
aload 4
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
ifnonnull L3
L2:
iload 5
ifeq L4
aload 0
aload 2
aload 4
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/processRetweet(Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
return
L4:
aload 0
aload 2
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/processBaseTweetUserIsNull(Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;)V
return
L3:
aconst_null
astore 6
aload 4
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/isLongWeibo(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Z
ifeq L5
aload 0
aload 4
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/addGoOnRead(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Landroid/text/SpannableString;
astore 6
L5:
iload 5
ifeq L6
aload 0
aload 2
aload 4
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/processRetweet(Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
L7:
aload 6
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L8
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
aload 6
invokevirtual com/product/android/ui/widget/ProTextView/append(Ljava/lang/CharSequence;)V
L8:
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
invokestatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/getInstance()Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
invokevirtual com/product/android/ui/widget/ProTextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
aload 4
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
ifnull L9
aload 4
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/isEmpty()Z
ifne L9
aload 0
aload 2
aload 4
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/processImageTweet(Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
L9:
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/sourceViewHolder Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;
ifnull L1
aload 0
aload 1
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/sourceViewHolder Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;
iload 3
aload 4
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
iconst_1
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/bindData(Landroid/view/View;Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;ILcom/android/u/weibo/weibo/business/bean/TopicInfo;Z)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/nextView Landroid/view/View;
new com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$1
dup
aload 0
aload 4
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$1/<init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L6:
aload 4
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
ifeq L10
aload 0
aload 2
aload 4
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/processSinaHead(Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
L11:
aload 0
aload 2
aload 4
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/processBaseTweet(Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 0
aload 2
aload 4
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/processTweetBtn(Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
goto L7
L10:
aload 0
aload 2
aload 4
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/processNdHead(Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
goto L11
.limit locals 7
.limit stack 6
.end method

.method private bindDataForLocalTweet(Landroid/view/View;Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;ILcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getUid()J
lstore 5
lload 5
lload 5
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getUserSysAvatarId(J)I
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgAvatar Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgAvatar Landroid/widget/ImageView;
new com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$4
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$4/<init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtName Landroid/widget/TextView;
lload 5
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getUserName(J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
aload 4
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/contentSS Landroid/text/SpannableString;
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
invokestatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/getInstance()Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
invokevirtual com/product/android/ui/widget/ProTextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtGlance Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/btnLike Landroid/widget/Button;
getstatic com/android/u/weibo/R$drawable/btn_like_gif I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/Button/setCompoundDrawablesWithIntrinsicBounds(IIII)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/btnLike Landroid/widget/Button;
getstatic com/android/u/weibo/R$string/like I
invokevirtual android/widget/Button/setText(I)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/btnReply Landroid/widget/Button;
getstatic com/android/u/weibo/R$string/weibo_comment I
invokevirtual android/widget/Button/setText(I)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/btnForward Landroid/widget/Button;
getstatic com/android/u/weibo/R$string/transmit I
invokevirtual android/widget/Button/setText(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 4
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
ifnull L0
aload 4
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/isEmpty()Z
ifne L0
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setVisibility(I)V
aload 1
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
aload 4
iconst_0
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/bindImageData(Landroid/app/Activity;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;ZI)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
L0:
aload 4
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isFailToSend Z
ifeq L1
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtTime Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/click_to_repost I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtTime Landroid/widget/TextView;
new com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$5
dup
aload 0
aload 4
aload 1
aload 2
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$5/<init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Ljava/util/ArrayList;Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtDel Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtDel Landroid/widget/TextView;
new com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$6
dup
aload 0
aload 4
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$6/<init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
L2:
aload 4
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/from_string Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtFrom Landroid/widget/TextView;
aload 4
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/from_string Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L4:
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtGlance Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/btnForward Landroid/widget/Button;
aconst_null
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/btnReply Landroid/widget/Button;
aconst_null
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/btnLike Landroid/widget/Button;
aconst_null
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L1:
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtTime Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/is_posing_tweet I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtDel Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L2
L3:
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtFrom Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L4
.limit locals 7
.limit stack 7
.end method

.method private createViewHolder(Landroid/view/View;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;
new com/android/u/weibo/weibo/ui/adapter/CommomViewHolder
dup
invokespecial com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/<init>()V
astore 4
aload 4
aload 1
getstatic com/android/u/weibo/R$id/vpraisebg I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/viewPraiseBg Landroid/view/View;
aload 4
aload 1
getstatic com/android/u/weibo/R$id/ivpraiseicon I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgPraiseIcon Landroid/widget/ImageView;
aload 4
aload 1
getstatic com/android/u/weibo/R$id/avatar I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgAvatar Landroid/widget/ImageView;
aload 4
aload 1
getstatic com/android/u/weibo/R$id/avatar_frame I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgFrame Landroid/widget/ImageView;
aload 4
aload 1
getstatic com/android/u/weibo/R$id/name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtName Landroid/widget/TextView;
aload 4
aload 1
getstatic com/android/u/weibo/R$id/time I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtTime Landroid/widget/TextView;
aload 4
aload 1
getstatic com/android/u/weibo/R$id/delete_local_tweet I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtDel Landroid/widget/TextView;
aload 4
aload 1
getstatic com/android/u/weibo/R$id/from_where I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtFrom Landroid/widget/TextView;
aload 4
aload 1
getstatic com/android/u/weibo/R$id/content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/ProTextView
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
aload 4
aload 1
getstatic com/android/u/weibo/R$id/glance_num I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtGlance Landroid/widget/TextView;
aload 1
getstatic com/android/u/weibo/R$id/attachment I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/view/ViewStub
astore 5
aload 0
aload 2
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/getItemViewType(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)I
istore 3
iload 3
iconst_3
if_icmpne L0
aload 5
getstatic com/android/u/weibo/R$layout/image_stub I
invokevirtual android/view/ViewStub/setLayoutResource(I)V
aload 4
aload 5
invokevirtual android/view/ViewStub/inflate()Landroid/view/View;
getstatic com/android/u/weibo/R$id/img_grid_view I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/android/u/weibo/weibo/ui/widget/WrapContentGridView
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
L0:
aload 4
aload 1
getstatic com/android/u/weibo/R$id/like_count I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/btnLike Landroid/widget/Button;
aload 4
aload 1
getstatic com/android/u/weibo/R$id/reply_count I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/btnReply Landroid/widget/Button;
aload 4
aload 1
getstatic com/android/u/weibo/R$id/retweet_count I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/btnForward Landroid/widget/Button;
iload 3
ifeq L1
iload 3
iconst_1
if_icmpne L2
L1:
aload 4
aload 1
getstatic com/android/u/weibo/R$id/retweet I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/view/ViewStub
invokevirtual android/view/ViewStub/inflate()Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/nextView Landroid/view/View;
aload 4
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/nextView Landroid/view/View;
getstatic com/android/u/weibo/R$drawable/retweet_bg I
invokevirtual android/view/View/setBackgroundResource(I)V
aload 4
aload 0
aload 4
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/nextView Landroid/view/View;
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/createViewHolder(Landroid/view/View;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/sourceViewHolder Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;
L2:
aload 4
areturn
.limit locals 6
.limit stack 4
.end method

.method private dolike(Landroid/view/View;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;)V
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
istore 5
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
ifeq L0
aload 2
iconst_0
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
aload 1
checkcast android/widget/Button
getstatic com/android/u/weibo/R$drawable/btn_like_gif I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/Button/setCompoundDrawablesWithIntrinsicBounds(IIII)V
aload 2
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
iconst_1
isub
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
istore 4
iload 4
ifle L1
aload 1
checkcast android/widget/TextView
iload 4
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
iconst_1
istore 4
L3:
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
aload 3
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/viewPraiseBg Landroid/view/View;
aload 3
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgPraiseIcon Landroid/widget/ImageView;
invokestatic com/android/u/weibo/weibo/utils/PraiseUtils/setTwBgAndIconByPraiseCount(ILandroid/view/View;Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
iload 5
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
invokestatic com/android/u/weibo/weibo/utils/PraiseUtils/showToastAfterPraise(Landroid/content/Context;II)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mLikeTask Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;
ifnull L4
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mLikeTask Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;
invokevirtual com/android/u/weibo/weibo/ui/task/LikeAsyncTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpeq L5
L4:
aload 0
new com/android/u/weibo/weibo/ui/task/LikeAsyncTask
dup
aload 2
iload 4
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mHandler Landroid/os/Handler;
invokespecial com/android/u/weibo/weibo/ui/task/LikeAsyncTask/<init>(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;ILandroid/content/Context;Landroid/os/Handler;)V
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mLikeTask Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mLikeTask Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/task/LikeAsyncTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
L5:
return
L1:
aload 1
checkcast android/widget/TextView
getstatic com/android/u/weibo/R$string/like I
invokevirtual android/widget/TextView/setText(I)V
goto L2
L0:
aload 2
iconst_1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
aload 1
checkcast android/widget/Button
invokevirtual android/widget/Button/getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
iconst_0
aaload
checkcast android/graphics/drawable/AnimationDrawable
checkcast android/graphics/drawable/AnimationDrawable
invokevirtual android/graphics/drawable/AnimationDrawable/start()V
aload 2
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
iconst_1
iadd
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
aload 1
checkcast android/widget/TextView
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
iconst_0
istore 4
goto L3
.limit locals 6
.limit stack 7
.end method

.method private getRefreshData(II)I
iload 2
iconst_m1
if_icmpne L0
iload 1
iconst_1
iadd
istore 3
L1:
iload 3
ireturn
L0:
iload 2
istore 3
iload 2
iconst_m1
if_icmpgt L1
iload 1
ireturn
.limit locals 4
.limit stack 2
.end method

.method private processBaseTweet(Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
ifnull L0
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtName Landroid/widget/TextView;
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/contentSS Landroid/text/SpannableString;
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
invokestatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/getInstance()Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
invokevirtual com/product/android/ui/widget/ProTextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtTime Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/format2HumanTime(Landroid/content/Context;J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/from_string Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
ifne L1
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtFrom Landroid/widget/TextView;
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/from_string Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/isShowGlancesNum Z
ifeq L3
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/glances I
ifle L3
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtGlance Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtGlance Landroid/widget/TextView;
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/glances I
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/setGlanceView(Landroid/content/Context;Landroid/widget/TextView;I)V
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
invokestatic com/android/u/weibo/weibo/utils/TweetCountForGlances/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/utils/TweetCountForGlances;
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
invokevirtual com/android/u/weibo/weibo/utils/TweetCountForGlances/addTid(J)V
return
L1:
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
ifeq L5
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtFrom Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
getstatic com/android/u/weibo/R$string/from_sina I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L2
L5:
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtFrom Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L2
L3:
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtGlance Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L4
.limit locals 3
.limit stack 4
.end method

.method private processBaseTweetUserIsNull(Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;)V
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtName Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetDelTip Ljava/lang/String;
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtTime Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtFrom Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgAvatar Landroid/widget/ImageView;
getstatic com/android/u/weibo/R$drawable/im_face_small I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
return
.limit locals 2
.limit stack 2
.end method

.method private processNdHead(Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
ifnonnull L0
return
L0:
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/sysAvatarID I
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgAvatar Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgAvatar Landroid/widget/ImageView;
new com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$3
dup
aload 0
aload 2
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$3/<init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 3
.limit stack 5
.end method

.method private processRetweet(Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgAvatar Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgFrame Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtName Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtTime Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtFrom Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 2
ifnull L0
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/contentSS Landroid/text/SpannableString;
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
L1:
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
invokestatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/getInstance()Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
invokevirtual com/product/android/ui/widget/ProTextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
return
L0:
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetDelTip Ljava/lang/String;
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
goto L1
.limit locals 3
.limit stack 2
.end method

.method private processSinaHead(Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
ifnonnull L0
return
L0:
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/avatar Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/avatar Ljava/lang/String;
iconst_m1
iconst_0
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgAvatar Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(Ljava/lang/String;IZLandroid/widget/ImageView;)V
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgFrame Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L1:
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgAvatar Landroid/widget/ImageView;
new com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$2
dup
aload 0
aload 2
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$2/<init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 3
.limit stack 5
.end method

.method private processTweetBtn(Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
ifeq L0
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/btnLike Landroid/widget/Button;
getstatic com/android/u/weibo/R$drawable/btn_like_7 I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/Button/setCompoundDrawablesWithIntrinsicBounds(IIII)V
L1:
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
istore 3
iload 3
ifle L2
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/btnLike Landroid/widget/Button;
iload 3
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
L3:
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
istore 3
iload 3
ifle L4
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/btnReply Landroid/widget/Button;
iload 3
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
L5:
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/forwards I
istore 3
iload 3
ifle L6
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/btnForward Landroid/widget/Button;
iload 3
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
L7:
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/btnLike Landroid/widget/Button;
new com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$BtnClickListener
dup
aload 0
aload 2
aload 1
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$BtnClickListener/<init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/btnReply Landroid/widget/Button;
new com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$BtnClickListener
dup
aload 0
aload 2
aload 1
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$BtnClickListener/<init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/btnForward Landroid/widget/Button;
new com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$BtnClickListener
dup
aload 0
aload 2
aload 1
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$BtnClickListener/<init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L0:
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/btnLike Landroid/widget/Button;
getstatic com/android/u/weibo/R$drawable/btn_like_gif I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/Button/setCompoundDrawablesWithIntrinsicBounds(IIII)V
goto L1
L2:
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/btnLike Landroid/widget/Button;
getstatic com/android/u/weibo/R$string/like I
invokevirtual android/widget/Button/setText(I)V
goto L3
L4:
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/btnReply Landroid/widget/Button;
getstatic com/android/u/weibo/R$string/weibo_comment I
invokevirtual android/widget/Button/setText(I)V
goto L5
L6:
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/btnForward Landroid/widget/Button;
getstatic com/android/u/weibo/R$string/transmit I
invokevirtual android/widget/Button/setText(I)V
goto L7
.limit locals 4
.limit stack 6
.end method

.method private startRetweetActivity(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 1
ifnonnull L0
return
L0:
new android/content/Intent
dup
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
ldc com/android/u/weibo/weibo/ui/activity/TweetComposeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "retweet_id"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 2
ldc "is_only_sina"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 2
ldc "owner"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
aload 2
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method

.method private startTweetCommentActivity(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
new android/content/Intent
dup
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
ldc com/android/u/weibo/weibo/ui/activity/TweetCommentActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "isFromOutside"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 2
ldc "tweet_id"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 2
ldc "is_only_sina"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
aload 2
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method

.method protected addGoOnRead(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Landroid/text/SpannableString;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/go_on_read I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 2
new android/text/SpannableString
dup
aload 2
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 3
aload 3
new com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$10
dup
aload 0
aload 2
aload 1
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$10/<init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Ljava/lang/String;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
iconst_0
aload 2
invokevirtual java/lang/String/length()I
bipush 17
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 3
areturn
.limit locals 4
.limit stack 6
.end method

.method public addTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ifnull L0
aload 1
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/addAll(Ljava/util/Collection;)Z
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public clearData()V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/clear()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getData()Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getItemViewType(I)I
aload 0
aload 0
iload 1
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/getItem(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/getItemViewType(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)I
ireturn
.limit locals 2
.limit stack 3
.end method

.method protected getItemViewType(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)I
aload 1
ifnonnull L0
L1:
iconst_2
ireturn
L0:
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
ifnull L2
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
ifnull L2
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
ifnull L2
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/isEmpty()Z
ifne L2
iconst_1
ireturn
L2:
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
ifnull L3
iconst_0
ireturn
L3:
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
ifnull L4
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/isEmpty()Z
ifne L4
iconst_3
ireturn
L4:
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/category Ljava/lang/String;
ldc "u_rank"
invokestatic android/text/TextUtils/equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
ifeq L1
iconst_4
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getLastItem()Ljava/lang/Object;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
ifle L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
iconst_1
isub
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
areturn
L0:
aconst_null
areturn
.limit locals 1
.limit stack 3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
iload 1
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/getItem(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 4
aload 2
ifnonnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mInflater Landroid/view/LayoutInflater;
getstatic com/android/u/weibo/R$layout/weibo_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 0
aload 2
aload 4
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/createViewHolder(Landroid/view/View;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;
astore 3
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 3
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtDel Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
lconst_0
aload 4
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
lcmp
ifne L2
aload 0
aload 2
aload 3
iload 1
aload 4
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/bindDataForLocalTweet(Landroid/view/View;Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;ILcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
L3:
aload 4
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
aload 3
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/viewPraiseBg Landroid/view/View;
aload 3
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgPraiseIcon Landroid/widget/ImageView;
invokestatic com/android/u/weibo/weibo/utils/PraiseUtils/setTwBgAndIconByPraiseCount(ILandroid/view/View;Landroid/view/View;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/ui/adapter/CommomViewHolder
astore 3
goto L1
L2:
aload 0
aload 2
aload 3
iload 1
aload 4
iconst_0
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/bindData(Landroid/view/View;Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;ILcom/android/u/weibo/weibo/business/bean/TopicInfo;Z)V
goto L3
.limit locals 5
.limit stack 6
.end method

.method public getViewTypeCount()I
iconst_5
ireturn
.limit locals 1
.limit stack 1
.end method

.method public initDelTweetDlg(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
new android/app/AlertDialog$Builder
dup
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 2
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
getstatic com/android/u/weibo/R$string/delete_local_tweet I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 2
getstatic com/android/u/weibo/R$string/confirm I
new com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$8
dup
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$8/<init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 2
getstatic com/android/u/weibo/R$string/cancel I
new com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$9
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$9/<init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 2
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mDelTweetDlg Landroid/app/AlertDialog;
return
.limit locals 3
.limit stack 6
.end method

.method protected processImageTweet(Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
aload 2
iconst_0
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/bindImageData(Landroid/app/Activity;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;ZI)Ljava/util/ArrayList;
pop
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setVisibility(I)V
return
.limit locals 3
.limit stack 5
.end method

.method public resizerImageview(II)[I
iconst_2
newarray int
astore 7
aload 7
iconst_0
iload 1
iastore
aload 7
iconst_1
iload 2
iastore
iload 2
i2f
fconst_1
fmul
iload 1
i2f
fdiv
fstore 3
iload 1
i2f
fconst_1
fmul
iload 2
i2f
fdiv
fstore 4
iload 1
sipush 240
if_icmpgt L0
iload 1
istore 5
iload 2
istore 6
iload 2
sipush 240
if_icmple L1
L0:
iload 2
iload 1
if_icmple L2
fload 3
ldc_w 3.4285715F
fcmpg
ifge L3
sipush 240
iload 1
imul
iload 2
idiv
istore 5
sipush 240
istore 6
L1:
aload 7
iconst_0
iload 5
iastore
aload 7
iconst_1
iload 6
iastore
aload 7
areturn
L3:
sipush 240
istore 6
bipush 70
istore 5
goto L1
L2:
fload 4
ldc_w 3.4285715F
fcmpg
ifge L4
sipush 240
iload 2
imul
iload 1
idiv
istore 6
sipush 240
istore 5
goto L1
L4:
bipush 70
istore 6
sipush 240
istore 5
goto L1
.limit locals 8
.limit stack 3
.end method

.method public setCurUid(J)V
aload 0
lload 1
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mCurUid J
return
.limit locals 3
.limit stack 3
.end method

.method public setData(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 1
ifnull L0
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setIsShowGlancesNum(Z)V
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/isShowGlancesNum Z
return
.limit locals 2
.limit stack 2
.end method

.method public setLike(JZ)V
iconst_0
istore 4
L0:
iload 4
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
if_icmpge L1
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iload 4
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
lload 1
lcmp
ifne L2
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iload 4
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 5
iload 3
ifeq L3
aload 5
iconst_1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
aload 5
aload 5
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
iconst_1
iadd
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
L1:
return
L3:
aload 5
iconst_0
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
aload 5
aload 5
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
iconst_1
isub
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
return
L2:
iload 4
iconst_1
iadd
istore 4
goto L0
.limit locals 6
.limit stack 4
.end method

.method public setReply(JZ)V
iconst_0
istore 4
L0:
iload 4
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
if_icmpge L1
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iload 4
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
lload 1
lcmp
ifne L2
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iload 4
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 5
iload 3
ifeq L3
aload 5
aload 5
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
iconst_1
iadd
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
L1:
return
L3:
aload 5
aload 5
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
iconst_1
isub
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
return
L2:
iload 4
iconst_1
iadd
istore 4
goto L0
.limit locals 6
.limit stack 4
.end method

.method public setReplyOrRetweet(JIIIIZ)V
aconst_null
astore 10
iconst_0
istore 8
L0:
aload 10
astore 9
iload 8
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
if_icmpge L1
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iload 8
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
lload 1
lcmp
ifne L2
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iload 8
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 9
L1:
aload 9
ifnonnull L3
return
L2:
iload 8
iconst_1
iadd
istore 8
goto L0
L3:
aload 9
aload 0
aload 9
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/forwards I
iload 3
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/getRefreshData(II)I
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/forwards I
aload 9
aload 0
aload 9
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
iload 4
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/getRefreshData(II)I
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
aload 9
aload 0
aload 9
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
iload 5
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/getRefreshData(II)I
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
aload 9
aload 0
aload 9
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/glances I
iload 6
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/getRefreshData(II)I
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/glances I
iload 7
ifeq L4
aload 9
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
ifne L5
iconst_1
istore 7
L6:
aload 9
iload 7
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 9
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/updateTopicInfo(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/notifyDataSetChanged()V
return
L5:
iconst_0
istore 7
goto L6
.limit locals 11
.limit stack 4
.end method

.method public setRetweet(J)V
iconst_0
istore 3
L0:
iload 3
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
if_icmpge L1
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iload 3
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
lload 1
lcmp
ifne L2
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mTweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iload 3
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 4
aload 4
aload 4
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
iconst_1
iadd
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
L1:
return
L2:
iload 3
iconst_1
iadd
istore 3
goto L0
.limit locals 5
.limit stack 4
.end method

.method public startCommentListActivity(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Z)V
aload 1
ifnull L0
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
ifnonnull L1
L0:
return
L1:
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
lconst_0
lcmp
ifle L0
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 3
aload 3
ldc "isScroll"
iload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
aload 3
aload 1
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toCommentListActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
return
.limit locals 4
.limit stack 4
.end method
