.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/community/activity/CommunityHomeActivity
.super com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
.implements android/view/View$OnClickListener
.implements com/nd/schoollife/ui/common/view/RefreshBtn$RefreshBtnOnClickListener
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback
.implements com/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener
.implements com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener
.inner class inner com/nd/schoollife/ui/community/activity/CommunityHomeActivity$1
.inner class inner com/nd/schoollife/ui/community/activity/CommunityHomeActivity$10
.inner class inner com/nd/schoollife/ui/community/activity/CommunityHomeActivity$11
.inner class inner com/nd/schoollife/ui/community/activity/CommunityHomeActivity$2
.inner class inner com/nd/schoollife/ui/community/activity/CommunityHomeActivity$3
.inner class inner com/nd/schoollife/ui/community/activity/CommunityHomeActivity$4
.inner class inner com/nd/schoollife/ui/community/activity/CommunityHomeActivity$5
.inner class inner com/nd/schoollife/ui/community/activity/CommunityHomeActivity$6
.inner class inner com/nd/schoollife/ui/community/activity/CommunityHomeActivity$7
.inner class inner com/nd/schoollife/ui/community/activity/CommunityHomeActivity$8
.inner class inner com/nd/schoollife/ui/community/activity/CommunityHomeActivity$9
.inner class inner com/nd/schoollife/ui/community/activity/CommunityHomeActivity$9$1
.inner class inner com/nd/schoollife/ui/community/activity/CommunityHomeActivity$9$2

.field private static final 'KEY_SAVE_COMMUNITY_ID' Ljava/lang/String; = "KEY_SAVE_COMMUNITY_ID"

.field private static final 'PAGE_SIZE' I = 20


.field public static final 'TAG' Ljava/lang/String;

.field private static final 'UnJoined_Community_Show_Post_Count' I = 5


.field private static final 'UnJoined_Community_Show_Post_Page' I = 1


.field private final 'NO_VALUE' Ljava/lang/String;

.field private 'civAvatar' Lcom/nd/schoollife/ui/common/view/CircleImageView;

.field private 'isInit' Z

.field private 'isJoin' Z

.field private 'isSlideInit' Z

.field private 'mBtnCreat' Landroid/widget/Button;

.field private 'mBtnEdit' Landroid/widget/Button;

.field private 'mBtnJoin' Landroid/widget/Button;

.field private 'mBtnMenu' Landroid/widget/Button;

.field private 'mBtnQuit' Landroid/widget/Button;

.field private 'mCommentEditViewLayout' Landroid/widget/LinearLayout;

.field private 'mCommunityAvatar' Ljava/lang/String;

.field private 'mCommunityId' J

.field private 'mCommunityImId' J

.field private 'mCommunityName' Ljava/lang/String;

.field private 'mCommunityRole' I

.field private 'mInputContentManager' Lcom/nd/schoollife/ui/common/process/InputContentViewManager;

.field private 'mItemBg' Landroid/widget/LinearLayout;

.field private 'mListView' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;

.field private 'mLlMenu' Landroid/widget/LinearLayout;

.field private 'mName' Landroid/widget/TextView;

.field private 'mPostInfoBeans' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;"

.field private 'mPostListAdapter' Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;

.field private 'mPostsList' Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;

.field private 'mPostsView' Landroid/widget/LinearLayout;

.field private 'mPraiseChangeReceiver' Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;

.field private 'mRefreshBtn' Lcom/nd/schoollife/ui/common/view/RefreshBtn;

.field private 'mSlideHolder' Lcom/nd/schoollife/ui/team/view/SlideHolder;

.field private 'mSvPosts' Landroid/widget/ScrollView;

.field private 'mTvChats' Landroid/widget/TextView;

.field private 'mTvMore' Landroid/view/View;

.field private 'mTvUserPosition' Landroid/widget/TextView;

.field private 'postTask' Lcom/nd/schoollife/ui/post/task/PostProcessTask;

.method static <clinit>()V
ldc com/nd/schoollife/ui/community/activity/CommunityHomeActivity
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/community/activity/CommunityHomeActivity/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/<init>()V
aload 0
ldc "-1"
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/NO_VALUE Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/isSlideInit Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/isJoin Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityRole I
aload 0
iconst_0
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/isInit Z
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Lcom/nd/schoollife/ui/team/view/SlideHolder;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mSlideHolder Lcom/nd/schoollife/ui/team/view/SlideHolder;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)V
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/onQuitCommunityTask()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1600(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1700(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)V
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/onDismissCommunity()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;J)I
aload 0
lload 1
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findPost(J)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$300(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Ljava/util/List;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostInfoBeans Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)J
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityImId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)J
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$800(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private buildUnJoinedPostListView(IILjava/util/List;)V
.signature "(IILjava/util/List<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;)V"
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostsView Landroid/widget/LinearLayout;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostsView Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/removeAllViews()V
L0:
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
astore 9
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 10
iconst_0
istore 4
L1:
iload 4
iload 1
if_icmpge L2
aload 3
iload 4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
ifnull L3
aload 3
iload 4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getContent()Ljava/lang/String;
astore 11
aload 11
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
L3:
iload 4
iconst_1
iadd
istore 4
goto L1
L4:
aload 3
iload 4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getReplys()J
lstore 5
aload 3
iload 4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
lstore 7
aload 9
getstatic com/nd/schoollife/R$layout/community_home_post_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 12
aload 12
getstatic com/nd/schoollife/R$id/tv_community_home_post_item_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/ProTextView
astore 13
aload 13
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
aload 11
bipush 88
aload 13
invokevirtual com/product/android/ui/widget/ProTextView/getTextSize()F
iconst_1
invokestatic com/nd/schoollife/ui/common/util/PostUtils/dealLongPost(Landroid/content/Context;Ljava/lang/String;IFI)Landroid/text/SpannableString;
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
aload 12
getstatic com/nd/schoollife/R$id/tv_community_home_post_item_num I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
lload 5
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 12
new com/nd/schoollife/ui/community/activity/CommunityHomeActivity$5
dup
aload 0
lload 7
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity$5/<init>(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;J)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostsView Landroid/widget/LinearLayout;
aload 12
aload 10
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
goto L3
L2:
iload 2
iconst_5
if_icmple L5
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostsView Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mTvMore Landroid/view/View;
aload 10
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
L5:
return
.limit locals 14
.limit stack 6
.end method

.method private dismissCommunity()V
aload 0
ldc ""
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u662f\u5426\u89e3\u6563"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/confirm I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/cancel I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
new com/nd/schoollife/ui/community/activity/CommunityHomeActivity$10
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity$10/<init>(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)V
new com/nd/schoollife/ui/community/activity/CommunityHomeActivity$11
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity$11/<init>(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)V
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/showConfirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 9
.end method

.method private fillCommunityInfoValue(Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;)V
aload 1
ifnull L0
aload 0
aload 1
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getAvatar()Ljava/lang/String;
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityAvatar Ljava/lang/String;
aload 1
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getId()J
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityAvatar Ljava/lang/String;
aload 0
getstatic com/nd/schoollife/R$id/iv_community_item_head I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
invokestatic com/nd/schoollife/ui/common/util/CommunityUtils/showAvatar(JLjava/lang/String;Landroid/widget/ImageView;)V
aload 1
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getName()Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
getstatic com/nd/schoollife/R$id/tv_community_item_title I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getstatic com/nd/schoollife/R$id/tv_common_head_title I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 2
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityName Ljava/lang/String;
L1:
aload 1
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getIntro()Ljava/lang/String;
astore 2
aload 0
aload 1
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getRole()I
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityRole I
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 0
getstatic com/nd/schoollife/R$id/tv_community_item_instroction I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/civAvatar Lcom/nd/schoollife/ui/common/view/CircleImageView;
iconst_3
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JLandroid/widget/ImageView;B)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mName Landroid/widget/TextView;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUserName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 1
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getIm_gid()J
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityImId J
L0:
return
.limit locals 3
.limit stack 5
.end method

.method private findPost(J)I
iconst_0
istore 3
L0:
iload 3
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostInfoBeans Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostInfoBeans Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
astore 4
aload 4
ifnull L2
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
lload 1
lcmp
ifne L2
iload 3
ireturn
L2:
iload 3
iconst_1
iadd
istore 3
goto L0
L1:
iconst_m1
ireturn
.limit locals 5
.limit stack 4
.end method

.method private fromResultToBean(Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;)Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
iconst_0
istore 3
new com/nd/schoollife/common/bean/result/CommunityInfoBean
dup
invokespecial com/nd/schoollife/common/bean/result/CommunityInfoBean/<init>()V
astore 5
aload 5
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityId J
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setId(J)V
aload 5
aload 1
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getAvatar()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setAvatar(Ljava/lang/String;)V
aload 5
aload 1
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getIntro()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setIntro(Ljava/lang/String;)V
aload 5
aload 1
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getName()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setName(Ljava/lang/String;)V
aload 5
aload 1
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getIm_gid()I
i2l
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setIm_gid(J)V
aload 5
aload 1
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getRole()I
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setRole(I)V
aload 5
aload 1
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getMembers_total()I
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setMembers_total(I)V
aload 1
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getCategory()[Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;
astore 6
aload 1
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getTags()[Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;
astore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 8
aload 6
arraylength
istore 4
iconst_0
istore 2
L0:
iload 2
iload 4
if_icmpge L1
aload 7
aload 6
iload 2
aaload
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 1
arraylength
istore 4
iload 3
istore 2
L2:
iload 2
iload 4
if_icmpge L3
aload 8
aload 1
iload 2
aaload
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L2
L3:
aload 5
aload 7
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setCategory(Ljava/util/ArrayList;)V
aload 5
aload 8
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setTags(Ljava/util/ArrayList;)V
aload 5
areturn
.limit locals 9
.limit stack 3
.end method

.method private loadHeaderViewByRole()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityRole I
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/NOTMEMBER Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/val()I
if_icmple L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/isSlideInit Z
ifne L1
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mSlideHolder Lcom/nd/schoollife/ui/team/view/SlideHolder;
iconst_m1
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/setDirection(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mLlMenu Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 1
aload 1
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
invokestatic com/nd/schoollife/common/utils/ui/DisplayUtil/getScreenWidth(Landroid/content/Context;)I
iconst_5
idiv
iconst_4
imul
putfield android/view/ViewGroup$LayoutParams/width I
aload 1
iconst_m1
putfield android/view/ViewGroup$LayoutParams/height I
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mLlMenu Landroid/widget/LinearLayout;
aload 1
invokevirtual android/widget/LinearLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
L1:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityRole I
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/val()I
if_icmpne L2
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mBtnQuit Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mTvUserPosition Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mTvUserPosition Landroid/widget/TextView;
aload 0
getstatic com/nd/schoollife/R$string/community_role_creator I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityRole I
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/ADMIN Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/val()I
if_icmpne L3
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mTvUserPosition Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mTvUserPosition Landroid/widget/TextView;
aload 0
getstatic com/nd/schoollife/R$string/community_role_manager I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L3:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityRole I
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/MENBER Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/val()I
if_icmpne L4
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mTvUserPosition Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L4:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mTvChats Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_right_appeal I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mItemBg Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mItemBg Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mBtnEdit Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mBtnMenu Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_right_appeal I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/isJoin Z
ifeq L5
aload 0
getstatic com/nd/schoollife/R$id/btn_community_join_accept I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getstatic com/nd/schoollife/R$id/btn_community_join_reject I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
L5:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mBtnJoin Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 2
.limit stack 3
.end method

.method private loadPostData(ILcom/nd/schoollife/ui/common/task/CallStyle;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostsView Landroid/widget/LinearLayout;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostsView Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/removeAllViews()V
L0:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L1
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/isRoting()Z
ifne L1
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/refreshingImpl()V
L1:
iload 1
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/NOTMEMBER Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/val()I
if_icmple L2
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 2
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setPageCtrlAction(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
aload 0
new com/nd/schoollife/ui/post/task/PostProcessTask
dup
aload 0
bipush 15
aload 2
aload 0
invokespecial com/nd/schoollife/ui/post/task/PostProcessTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/postTask Lcom/nd/schoollife/ui/post/task/PostProcessTask;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostListAdapter Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;
aload 2
invokevirtual com/nd/schoollife/ui/post/adapter/PostListAdapter/getMaxActive(Lcom/nd/schoollife/ui/common/task/CallStyle;)J
lstore 3
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostListAdapter Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;
aload 2
invokevirtual com/nd/schoollife/ui/post/adapter/PostListAdapter/getMinActive(Lcom/nd/schoollife/ui/common/task/CallStyle;)J
lstore 5
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostListAdapter Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/PostListAdapter/getPageSize()I
istore 1
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/postTask Lcom/nd/schoollife/ui/post/task/PostProcessTask;
iconst_4
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
dup
iconst_1
lload 3
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
dup
iconst_2
lload 5
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
dup
iconst_3
iload 1
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/post/task/PostProcessTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
L2:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 2
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setPageCtrlAction(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
aload 0
new com/nd/schoollife/ui/post/task/PostProcessTask
dup
aload 0
bipush 17
aload 2
aload 0
invokespecial com/nd/schoollife/ui/post/task/PostProcessTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/postTask Lcom/nd/schoollife/ui/post/task/PostProcessTask;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/postTask Lcom/nd/schoollife/ui/post/task/PostProcessTask;
iconst_3
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
dup
iconst_1
iconst_1
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aastore
dup
iconst_2
iconst_5
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/post/task/PostProcessTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 7
.limit stack 7
.end method

.method private onDismissCommunity()V
new com/nd/schoollife/ui/community/activity/CommunityHomeActivity$9
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity$9/<init>(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)V
astore 1
new com/nd/schoollife/ui/community/task/CommunityTask
dup
aload 0
sipush 4106
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_SUBMIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 1
invokespecial com/nd/schoollife/ui/community/task/CommunityTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback;)V
iconst_1
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityId J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/community/task/CommunityTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 7
.end method

.method private onQuitCommunityTask()V
new com/nd/schoollife/ui/community/activity/CommunityHomeActivity$6
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity$6/<init>(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)V
astore 1
new com/nd/schoollife/ui/community/task/CommunityTask
dup
aload 0
sipush 4104
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_SUBMIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 1
invokespecial com/nd/schoollife/ui/community/task/CommunityTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback;)V
iconst_1
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityId J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/community/task/CommunityTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 7
.end method

.method private quitCommunity()V
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/result I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u662f\u5426\u9000\u51fa"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/confirm I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/cancel I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
new com/nd/schoollife/ui/community/activity/CommunityHomeActivity$7
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity$7/<init>(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)V
new com/nd/schoollife/ui/community/activity/CommunityHomeActivity$8
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity$8/<init>(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)V
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/showConfirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 9
.end method

.method private refreshList(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostsView Landroid/widget/LinearLayout;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostsView Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getChildCount()I
iconst_1
isub
iload 1
if_icmpge L1
L0:
return
L1:
iload 1
iconst_m1
if_icmpeq L2
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostsView Landroid/widget/LinearLayout;
iload 1
invokevirtual android/widget/LinearLayout/removeViewAt(I)V
return
L2:
iconst_0
istore 2
L3:
iload 2
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostsView Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getChildCount()I
iconst_1
isub
if_icmpge L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostsView Landroid/widget/LinearLayout;
iload 2
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/post/view/PostListItemView
iload 1
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostInfoBeans Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
invokevirtual com/nd/schoollife/ui/post/view/PostListItemView/fillValue(ILcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
iload 2
iconst_1
iadd
istore 2
goto L3
.limit locals 3
.limit stack 4
.end method

.method private showEmptyPostView()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
bipush 8
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mSvPosts Landroid/widget/ScrollView;
bipush 8
invokevirtual android/widget/ScrollView/setVisibility(I)V
aload 0
getstatic com/nd/schoollife/R$id/ll_community_home_post_nodata I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getstatic com/nd/schoollife/R$id/rl_community_posts_title I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private startGetCommunityInfoTask()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityId J
lconst_0
lcmp
ifne L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
bipush 8
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/setVisibility(I)V
return
L0:
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/showLoading()V
new com/nd/schoollife/ui/community/task/CommunityProcessTask
dup
aload 0
iconst_2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
invokespecial com/nd/schoollife/ui/community/task/CommunityProcessTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/community/task/CommunityProcessTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 1
.limit stack 6
.end method

.method private updateHotPostListInCommunity(Lcom/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
bipush 8
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mSvPosts Landroid/widget/ScrollView;
iconst_0
invokevirtual android/widget/ScrollView/setVisibility(I)V
aload 0
getstatic com/nd/schoollife/R$id/rl_community_posts_title I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getstatic com/nd/schoollife/R$id/ll_community_home_post_nodata I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 1
ifnull L0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts/getTotal()I
iconst_5
if_icmple L1
iconst_5
istore 2
L2:
iload 2
ifne L3
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/showEmptyPostView()V
L3:
aload 1
ifnull L0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts/getPosts()Ljava/util/ArrayList;
ifnull L0
aload 0
iload 2
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts/getTotal()I
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts/getPosts()Ljava/util/ArrayList;
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/buildUnJoinedPostListView(IILjava/util/List;)V
L0:
return
L1:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts/getTotal()I
istore 2
goto L2
.limit locals 3
.limit stack 4
.end method

.method private updatePostListRoleInMember(Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityRole I
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/NOTMEMBER Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/val()I
if_icmple L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mSvPosts Landroid/widget/ScrollView;
bipush 8
invokevirtual android/widget/ScrollView/setVisibility(I)V
aload 0
getstatic com/nd/schoollife/R$id/rl_community_posts_title I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getstatic com/nd/schoollife/R$id/ll_community_home_post_nodata I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 1
ifnull L0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getData()Ljava/util/List;
ifnull L0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getMax_ts()J
lstore 2
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getMin_ts()J
lstore 4
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostListAdapter Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getData()Ljava/util/List;
lload 2
lload 4
iconst_1
invokevirtual com/nd/schoollife/ui/post/adapter/PostListAdapter/updateData(Ljava/util/List;JJZ)V
L0:
return
.limit locals 6
.limit stack 7
.end method

.method protected initContentView()V
aload 0
getstatic com/nd/schoollife/R$layout/activity_community_home I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_community_posts I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostsView Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_community_join_bg I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mItemBg Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/rb_community_refresh I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/RefreshBtn
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/slideHolder I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/team/view/SlideHolder
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mSlideHolder Lcom/nd/schoollife/ui/team/view/SlideHolder;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/lv_community_posts_after_join I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_community_host_slider_menu I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mLlMenu Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/sv_community_posts_before_join I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ScrollView
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mSvPosts Landroid/widget/ScrollView;
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/post_list_footer I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mTvMore Landroid/view/View;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_right I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mBtnCreat Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_edit I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mBtnEdit Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_menu I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mBtnMenu Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/btn_community_application I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mBtnJoin Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_community_chats I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mTvChats Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/civ_community_avatar I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/CircleImageView
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/civAvatar Lcom/nd/schoollife/ui/common/view/CircleImageView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_community_host_slider_menu_usr_name I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mName Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_inputcontent I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommentEditViewLayout Landroid/widget/LinearLayout;
aload 0
new com/nd/schoollife/ui/common/process/InputContentViewManager
dup
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommentEditViewLayout Landroid/widget/LinearLayout;
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/<init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/btn_community_host_slider_menu_quit_community I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mBtnQuit Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_community_host_slider_menu_usr_position I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mTvUserPosition Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mSlideHolder Lcom/nd/schoollife/ui/team/view/SlideHolder;
iconst_2
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/setDirection(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/BOTH Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setActionMode(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setPullToActionListerner(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;)V
aload 0
new com/nd/schoollife/ui/post/adapter/PostListAdapter
dup
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
new com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo
dup
bipush 30
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/<init>(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokespecial com/nd/schoollife/ui/post/adapter/PostListAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo;Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostListAdapter Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostListAdapter Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
iconst_1
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/isInit Z
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/startGetCommunityInfoTask()V
return
.limit locals 1
.limit stack 7
.end method

.method protected initData(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/getIntent()Landroid/content/Intent;
ldc "LONG_TEAM_OR_COMMUNITY_ID"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityId J
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityId J
lconst_0
lcmp
ifne L0
aload 1
ifnull L0
aload 0
aload 1
ldc "KEY_SAVE_COMMUNITY_ID"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityId J
L0:
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/getIntent()Landroid/content/Intent;
ldc "BOOL_JOIN_COMMUNITY"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/isJoin Z
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostInfoBeans Ljava/util/List;
return
.limit locals 2
.limit stack 5
.end method

.method protected initEvent()V
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_back I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mBtnCreat Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mBtnJoin Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mTvChats Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_edit I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_post_no_data_send_post I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_menu I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_community_join_accept I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_community_join_reject I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mTvMore Landroid/view/View;
getstatic com/nd/schoollife/R$id/tv_community_posts_more I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_community_host_slider_menu_community_info I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/rl_community_item I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
aload 0
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/setRefreshOnClickListener(Lcom/nd/schoollife/ui/common/view/RefreshBtn$RefreshBtnOnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mBtnQuit Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
new com/nd/schoollife/ui/community/activity/CommunityHomeActivity$1
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity$1/<init>(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)V
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
new com/nd/schoollife/ui/community/activity/CommunityHomeActivity$2
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity$2/<init>(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)V
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/setOnCommentViewShowListener(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$OnCommentViewShowListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mSvPosts Landroid/widget/ScrollView;
new com/nd/schoollife/ui/community/activity/CommunityHomeActivity$3
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity$3/<init>(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)V
invokevirtual android/widget/ScrollView/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
new com/nd/schoollife/common/receiver/PraiseChangeReceiver
dup
new com/nd/schoollife/ui/community/activity/CommunityHomeActivity$4
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity$4/<init>(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)V
invokespecial com/nd/schoollife/common/receiver/PraiseChangeReceiver/<init>(Lcom/nd/schoollife/ui/common/process/PraiseListener;)V
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
new android/content/IntentFilter
dup
invokespecial android/content/IntentFilter/<init>()V
astore 1
aload 1
ldc "com.nd.schoollife.praisechange"
invokevirtual android/content/IntentFilter/addAction(Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
aload 1
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
pop
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/setOnReloadClickListener(Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;)V
return
.limit locals 2
.limit stack 6
.end method

.method protected initHeadView(Landroid/content/Context;)Landroid/view/View;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
.catch java/lang/Exception from L15 to L16 using L2
iload 2
iconst_m1
if_icmpeq L17
L18:
return
L17:
iload 1
lookupswitch
100 : L0
101 : L3
102 : L5
103 : L19
999 : L15
default : L20
L20:
return
L0:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 3
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/onResultCamera(Landroid/content/Intent;)V
L1:
return
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
return
L3:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 3
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/onResultPic(Landroid/content/Intent;)V
L4:
return
L5:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 3
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/onResultAt(Landroid/content/Intent;)V
L6:
return
L19:
aload 3
ifnull L18
L7:
aload 3
ldc "IS_DEL"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
istore 4
aload 3
ldc "IS_PRAISE"
iconst_m1
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 1
aload 0
aload 3
ldc "INT_POST_ID"
ldc2_w -1L
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findPost(J)I
istore 2
L8:
iload 2
iconst_m1
if_icmpeq L18
iload 4
ifeq L21
L9:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostListAdapter Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/PostListAdapter/getList()Ljava/util/List;
iload 2
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostListAdapter Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/PostListAdapter/notifyDataSetChanged()V
L10:
return
L21:
iload 1
iconst_m1
if_icmpeq L18
L11:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostListAdapter Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/PostListAdapter/getList()Ljava/util/List;
astore 3
L12:
aload 3
ifnull L18
L13:
aload 3
invokeinterface java/util/List/size()I 0
iload 2
iconst_1
iadd
if_icmplt L18
aload 3
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
ifnull L18
aload 3
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
iload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraised(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostListAdapter Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/PostListAdapter/notifyDataSetChanged()V
L14:
return
L15:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/isRoting()Z
ifne L18
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/performClick()Z
pop
L16:
return
.limit locals 5
.limit stack 5
.end method

.method public onBackPressed()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mSlideHolder Lcom/nd/schoollife/ui/team/view/SlideHolder;
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/isOpened()Z
ifeq L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mSlideHolder Lcom/nd/schoollife/ui/team/view/SlideHolder;
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/toggle()V
return
L0:
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/finish()V
return
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/schoollife/R$id/btn_common_head_back I
if_icmpne L0
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/finish()V
L1:
return
L0:
iload 2
getstatic com/nd/schoollife/R$id/btn_community_application I
if_icmpeq L2
iload 2
getstatic com/nd/schoollife/R$id/btn_common_head_right I
if_icmpne L3
L2:
new android/content/Intent
dup
aload 0
ldc com/nd/schoollife/ui/community/activity/AppealJoinActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "LONG_TEAM_OR_COMMUNITY_ID"
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityId J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 1
ldc "STRING_TEAM_OR_COMMUNITY_NAME"
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityName Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "STRING_COMMUNITY_AVARTA_URL"
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityAvatar Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/startActivity(Landroid/content/Intent;)V
return
L3:
iload 2
getstatic com/nd/schoollife/R$id/tv_community_chats I
if_icmpne L4
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityImId J
invokestatic com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel/gotoCommunityIMGroup(Landroid/content/Context;J)V
return
L4:
iload 2
getstatic com/nd/schoollife/R$id/btn_common_head_edit I
if_icmpeq L5
iload 2
getstatic com/nd/schoollife/R$id/btn_post_no_data_send_post I
if_icmpne L6
L5:
new android/content/Intent
dup
aload 0
ldc com/nd/schoollife/ui/post/activity/PostSendActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "LONG_TEAM_OR_COMMUNITY_ID"
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityId J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 1
ldc "INT_SCOPE_TYPE"
bipush 16
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
aload 1
sipush 999
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/startActivityForResult(Landroid/content/Intent;I)V
return
L6:
iload 2
getstatic com/nd/schoollife/R$id/btn_common_head_menu I
if_icmpne L7
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L8
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideView()V
L8:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mSlideHolder Lcom/nd/schoollife/ui/team/view/SlideHolder;
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/toggle()V
return
L7:
iload 2
getstatic com/nd/schoollife/R$id/btn_community_host_slider_menu_community_info I
if_icmpeq L9
iload 2
getstatic com/nd/schoollife/R$id/rl_community_item I
if_icmpne L10
L9:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityRole I
invokestatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/isViewCommunityInfoEnable(I)Z
ifeq L1
new android/content/Intent
dup
aload 0
ldc com/nd/schoollife/ui/community/activity/CommunityInfoActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "LONG_TEAM_OR_COMMUNITY_ID"
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityId J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/startActivity(Landroid/content/Intent;)V
return
L10:
iload 2
getstatic com/nd/schoollife/R$id/tv_community_posts_more I
if_icmpne L11
new android/content/Intent
dup
aload 0
ldc com/nd/schoollife/ui/post/activity/PostListActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "LONG_TEAM_OR_COMMUNITY_ID"
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityId J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityName Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L12
aload 1
ldc "STRING_TEAM_OR_COMMUNITY_NAME"
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityName Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
L12:
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/startActivity(Landroid/content/Intent;)V
return
L11:
iload 2
getstatic com/nd/schoollife/R$id/btn_community_join_accept I
if_icmpne L13
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostsView Landroid/widget/LinearLayout;
ifnull L14
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostsView Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getChildCount()I
istore 2
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostsView Landroid/widget/LinearLayout;
iconst_0
iload 2
iconst_1
isub
invokevirtual android/widget/LinearLayout/removeViews(II)V
L14:
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/loadHeaderViewByRole()V
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostsList Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/updatePostListRoleInMember(Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;)V
return
L13:
iload 2
getstatic com/nd/schoollife/R$id/btn_community_join_reject I
if_icmpne L15
aload 0
getstatic com/nd/schoollife/R$id/btn_community_join_accept I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getstatic com/nd/schoollife/R$id/btn_community_join_reject I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mBtnJoin Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/isJoin Z
return
L15:
iload 2
getstatic com/nd/schoollife/R$id/btn_community_host_slider_menu_quit_community I
if_icmpne L1
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityRole I
invokestatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/isDismissCommunityEnable(I)Z
ifne L16
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/quitCommunity()V
return
L16:
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/dismissCommunity()V
return
.limit locals 3
.limit stack 4
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
ifnull L0
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
L0:
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideView()V
L0:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/isRoting()Z
ifne L1
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/performClick()Z
pop
L1:
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityRole I
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/loadPostData(ILcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onPullUpToLoadMore(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideView()V
L0:
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityRole I
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/loadPostData(ILcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onRefreshOnClick(Lcom/nd/schoollife/ui/common/view/RefreshBtn;)Z
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/postTask Lcom/nd/schoollife/ui/post/task/PostProcessTask;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/postTask Lcom/nd/schoollife/ui/post/task/PostProcessTask;
invokevirtual com/nd/schoollife/ui/post/task/PostProcessTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_common_loading I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast(Landroid/content/Context;Ljava/lang/String;)V
iconst_0
ireturn
L0:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityRole I
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/NOTMEMBER Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/val()I
if_icmple L1
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/isInit Z
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/callPullDownToRefresh(Z)V
L2:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/isInit Z
ifeq L3
aload 0
iconst_0
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/isInit Z
L3:
iconst_1
ireturn
L1:
aload 1
ifnull L4
aload 1
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/refreshingImpl()V
L4:
aload 0
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/NOTMEMBER Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/val()I
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/loadPostData(ILcom/nd/schoollife/ui/common/task/CallStyle;)V
goto L2
.limit locals 2
.limit stack 3
.end method

.method public onReloadClicked()V
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/startGetCommunityInfoTask()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onResume()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/onResume()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/isInit Z
ifne L0
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityRole I
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/loadPostData(ILcom/nd/schoollife/ui/common/task/CallStyle;)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "KEY_SAVE_COMMUNITY_ID"
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityId J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
return
.limit locals 2
.limit stack 4
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
iload 1
bipush 15
if_icmpne L0
aload 3
instanceof com/nd/android/forumsdk/business/bean/ForumResultBase
ifeq L0
aload 3
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
astore 3
aload 3
ifnull L1
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/isSuccess()Z
ifeq L1
aload 0
aload 3
checkcast com/nd/android/forumsdk/business/bean/result/ResultPostList
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostsList Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostsList Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/updatePostListRoleInMember(Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostListAdapter Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/PostListAdapter/getList()Ljava/util/List;
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostInfoBeans Ljava/util/List;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mPostInfoBeans Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L2
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/showEmptyPostView()V
L2:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpeq L3
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L4
L3:
aload 0
iconst_0
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/isInit Z
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
L5:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
ifnull L6
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/isRoting()Z
ifeq L6
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/stopRoting()V
L6:
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/dismissLoading()V
L7:
return
L1:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultMsg()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast(Landroid/content/Context;Ljava/lang/String;)V
goto L2
L4:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
goto L5
L0:
iload 1
bipush 17
if_icmpne L8
aload 3
instanceof com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts
ifeq L8
aload 3
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
astore 3
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/isSuccess()Z
ifeq L9
aload 3
instanceof com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts
ifeq L10
aload 0
aload 3
checkcast com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/updateHotPostListInCommunity(Lcom/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts;)V
L10:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L11
aload 0
iconst_0
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/isInit Z
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
L12:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
ifnull L13
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/isRoting()Z
ifeq L13
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/stopRoting()V
L13:
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/dismissLoading()V
return
L9:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultMsg()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast(Landroid/content/Context;Ljava/lang/String;)V
goto L10
L11:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
goto L12
L8:
iload 1
iconst_2
if_icmpne L14
aload 3
instanceof com/nd/schoollife/common/bean/result/ResultGetCommunityInfo
ifeq L14
aload 3
checkcast com/nd/schoollife/common/bean/result/ResultGetCommunityInfo
astore 3
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/isSuccess()Z
ifeq L15
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L7
aload 0
aload 0
aload 3
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/fromResultToBean(Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;)Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/fillCommunityInfoValue(Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCommunityRole I
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/loadPostData(ILcom/nd/schoollife/ui/common/task/CallStyle;)V
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CommunityHomeActivity/loadHeaderViewByRole()V
return
L15:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getResultMsg()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast4Debug(Landroid/content/Context;Ljava/lang/String;)V
return
L14:
iload 1
bipush 12
if_icmpne L7
aload 3
instanceof com/nd/android/forumsdk/business/bean/ForumResultBase
ifeq L7
aload 3
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
astore 2
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/isSuccess()Z
ifeq L16
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_do_comment_success I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortCustomToast(Landroid/content/Context;Ljava/lang/String;)V
aload 2
instanceof com/nd/schoollife/common/bean/result/CommentInfoBean
ifeq L17
aload 2
checkcast com/nd/schoollife/common/bean/result/CommentInfoBean
astore 3
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L17
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 3
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/updateOperatorPanelCommentCount(Lcom/nd/schoollife/common/bean/result/CommentInfoBean;)V
L17:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L7
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/isSuccess()Z
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/onSendResult(Z)V
return
L16:
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/isBusinessError()Z
ifeq L17
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
ifnull L17
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_do_comment_fail I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
getstatic com/nd/schoollife/ui/community/activity/CommunityHomeActivity/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "error\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
invokevirtual com/nd/android/forumsdk/business/bean/ForumErrorBean/getMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
goto L17
.limit locals 4
.limit stack 3
.end method
