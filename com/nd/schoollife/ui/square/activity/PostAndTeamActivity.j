.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/activity/PostAndTeamActivity
.super com/nd/schoollife/ui/common/activity/BaseActivity
.implements android/view/View$OnClickListener
.implements com/nd/schoollife/ui/square/view/widget/HotPostListView$SendPostBtnClickListener
.implements com/nd/schoollife/ui/square/listener/PositionListener
.inner class inner com/nd/schoollife/ui/square/activity/PostAndTeamActivity$1

.field public static final 'HOT_POST' I = 1


.field public static final 'TEAM' I = 2


.field public static final 'TYPE' Ljava/lang/String; = "type"

.field private 'isNeedTransformListView' Z

.field private 'mBottom' I

.field private 'mCilckPosition' I

.field private 'mCilckView' Landroid/view/View;

.field private 'mContainerLL' Landroid/widget/LinearLayout;

.field private 'mCurrentViewType' I

.field private 'mHotPostRL' Landroid/widget/RelativeLayout;

.field private 'mHotPostTV' Landroid/widget/TextView;

.field private 'mHotPostUnderLine' Landroid/widget/ImageView;

.field private 'mHotView' Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;

.field private 'mPraiseChangeReceiver' Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;

.field private 'mRootView' Landroid/view/View;

.field private 'mScreenHeight' I

.field private 'mSearchRL' Landroid/widget/RelativeLayout;

.field private 'mTeamRL' Landroid/widget/RelativeLayout;

.field private 'mTeamTV' Landroid/widget/TextView;

.field private 'mTeamUnderLine' Landroid/widget/ImageView;

.field private 'mTeamView' Lcom/nd/schoollife/ui/square/view/widget/TeamView;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseActivity/<init>()V
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mScreenHeight I
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/isNeedTransformListView Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mCilckPosition I
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mBottom I
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;)I
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mScreenHeight I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;)Z
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/isNeedTransformListView Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;Z)Z
aload 0
iload 1
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/isNeedTransformListView Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;)Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mHotView Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;)Landroid/view/View;
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mCilckView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;)I
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mCilckPosition I
ireturn
.limit locals 1
.limit stack 1
.end method

.method private initHeaderView()V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_square_header_square I
invokevirtual com/nd/schoollife/ui/square/activity/PostAndTeamActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mHotPostTV Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_square_header_subscribe I
invokevirtual com/nd/schoollife/ui/square/activity/PostAndTeamActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mTeamTV Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/rl_square_header_contact I
invokevirtual com/nd/schoollife/ui/square/activity/PostAndTeamActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mSearchRL Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/rl_square_header_square I
invokevirtual com/nd/schoollife/ui/square/activity/PostAndTeamActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mHotPostRL Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/rl_square_header_subscribe I
invokevirtual com/nd/schoollife/ui/square/activity/PostAndTeamActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mTeamRL Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/iv_square_header_square_underline I
invokevirtual com/nd/schoollife/ui/square/activity/PostAndTeamActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mHotPostUnderLine Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/iv_square_header_subscribe_underline I
invokevirtual com/nd/schoollife/ui/square/activity/PostAndTeamActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mTeamUnderLine Landroid/widget/ImageView;
return
.limit locals 1
.limit stack 3
.end method

.method private showHotPost()V
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mCurrentViewType I
iconst_1
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mHotView Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;
aconst_null
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView/onRefreshOnClick(Lcom/nd/schoollife/ui/common/view/RefreshBtn;)Z
pop
L0:
aload 0
iconst_1
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mCurrentViewType I
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/PostAndTeamActivity/getResources()Landroid/content/res/Resources;
astore 1
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mHotPostTV Landroid/widget/TextView;
aload 1
getstatic com/nd/schoollife/R$color/cor_square_header_text_press I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mHotPostUnderLine Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mTeamTV Landroid/widget/TextView;
aload 1
getstatic com/nd/schoollife/R$color/cor_square_header_text_normal I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mTeamUnderLine Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
invokespecial com/nd/schoollife/ui/square/activity/PostAndTeamActivity/showPostFragment()V
return
.limit locals 2
.limit stack 3
.end method

.method private showPostFragment()V
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mHotView Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;
ifnonnull L0
aload 0
new com/nd/schoollife/ui/square/view/widget/HotPostListView
dup
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/HotPostListView/<init>(Landroid/app/Activity;)V
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mHotView Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mHotView Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView/getPraiseReceiver()Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
new android/content/IntentFilter
dup
invokespecial android/content/IntentFilter/<init>()V
astore 1
aload 1
ldc "com.nd.schoollife.praisechange"
invokevirtual android/content/IntentFilter/addAction(Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
aload 1
invokevirtual com/nd/schoollife/ui/square/activity/PostAndTeamActivity/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mHotView Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView/setPositionListener(Lcom/nd/schoollife/ui/square/listener/PositionListener;)V
L0:
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mHotView Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView/setOnSendPostBtnClickListener(Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$SendPostBtnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mContainerLL Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/removeAllViews()V
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mContainerLL Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mHotView Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mHotView Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView/notifyListView()V
return
.limit locals 2
.limit stack 4
.end method

.method private showTeam()V
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mCurrentViewType I
iconst_2
if_icmpne L0
return
L0:
aload 0
iconst_2
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mCurrentViewType I
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/PostAndTeamActivity/getResources()Landroid/content/res/Resources;
astore 1
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mHotPostTV Landroid/widget/TextView;
aload 1
getstatic com/nd/schoollife/R$color/cor_square_header_text_normal I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mHotPostUnderLine Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mTeamTV Landroid/widget/TextView;
aload 1
getstatic com/nd/schoollife/R$color/cor_square_header_text_press I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mTeamUnderLine Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
invokespecial com/nd/schoollife/ui/square/activity/PostAndTeamActivity/showTeamFragment()V
return
.limit locals 2
.limit stack 3
.end method

.method private showTeamFragment()V
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mTeamView Lcom/nd/schoollife/ui/square/view/widget/TeamView;
ifnonnull L0
aload 0
new com/nd/schoollife/ui/square/view/widget/TeamView
dup
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/TeamView/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mTeamView Lcom/nd/schoollife/ui/square/view/widget/TeamView;
L0:
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mContainerLL Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/removeAllViews()V
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mContainerLL Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mTeamView Lcom/nd/schoollife/ui/square/view/widget/TeamView;
new android/view/ViewGroup$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mHotView Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mHotView Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView/hideCommentView()V
L1:
return
.limit locals 1
.limit stack 6
.end method

.method protected initData(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 0
.end method

.method protected initEvent()V
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mSearchRL Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mHotPostRL Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mTeamRL Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/rl_square_header_return I
invokevirtual com/nd/schoollife/ui/square/activity/PostAndTeamActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initView()V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "NewApi" 
.end annotation
aload 0
getstatic com/nd/schoollife/R$layout/activity_square_post_team I
invokevirtual com/nd/schoollife/ui/square/activity/PostAndTeamActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_hot_post_team_root I
invokevirtual com/nd/schoollife/ui/square/activity/PostAndTeamActivity/findViewById(I)Landroid/view/View;
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mRootView Landroid/view/View;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mCtx Landroid/content/Context;
invokestatic com/nd/schoollife/ui/square/utils/SquareUtils/getScreenHeight(Landroid/content/Context;)I
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mScreenHeight I
bipush 11
invokestatic com/nd/schoollife/ui/square/utils/SquareUtils/apiLevelIsMore(I)Z
ifeq L0
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mRootView Landroid/view/View;
new com/nd/schoollife/ui/square/activity/PostAndTeamActivity$1
dup
aload 0
invokespecial com/nd/schoollife/ui/square/activity/PostAndTeamActivity$1/<init>(Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;)V
invokevirtual android/view/View/addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
L0:
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_square_post_team_container I
invokevirtual com/nd/schoollife/ui/square/activity/PostAndTeamActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mContainerLL Landroid/widget/LinearLayout;
aload 0
invokespecial com/nd/schoollife/ui/square/activity/PostAndTeamActivity/initHeaderView()V
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/PostAndTeamActivity/getIntent()Landroid/content/Intent;
astore 2
iconst_1
istore 1
aload 2
ifnull L1
aload 2
ldc "type"
iconst_1
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 1
L1:
iload 1
iconst_2
if_icmpne L2
aload 0
invokespecial com/nd/schoollife/ui/square/activity/PostAndTeamActivity/showTeam()V
return
L2:
aload 0
invokespecial com/nd/schoollife/ui/square/activity/PostAndTeamActivity/showHotPost()V
return
.limit locals 3
.limit stack 4
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
iload 2
iconst_m1
if_icmpeq L0
L1:
return
L0:
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mHotView Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mHotView Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;
iload 1
iload 2
aload 3
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView/result(IILandroid/content/Intent;)V
return
.limit locals 4
.limit stack 4
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/schoollife/R$id/rl_square_header_contact I
if_icmpne L0
new android/content/Intent
dup
aload 0
ldc com/nd/schoollife/ui/square/activity/SquareSearchActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "is_need_comm"
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/square/activity/PostAndTeamActivity/startActivity(Landroid/content/Intent;)V
L1:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/schoollife/R$id/rl_square_header_square I
if_icmpne L2
aload 0
invokespecial com/nd/schoollife/ui/square/activity/PostAndTeamActivity/showHotPost()V
return
L2:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/schoollife/R$id/rl_square_header_subscribe I
if_icmpne L3
aload 0
invokespecial com/nd/schoollife/ui/square/activity/PostAndTeamActivity/showTeam()V
return
L3:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/schoollife/R$id/rl_square_header_return I
if_icmpne L1
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/PostAndTeamActivity/finish()V
return
.limit locals 2
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/activity/BaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/PostAndTeamActivity/initView()V
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/square/activity/PostAndTeamActivity/initData(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/PostAndTeamActivity/initEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
ifnull L0
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
invokevirtual com/nd/schoollife/ui/square/activity/PostAndTeamActivity/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
L0:
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iload 1
iconst_4
if_icmpne L0
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/PostAndTeamActivity/finish()V
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public onPositionListener(ILandroid/view/View;)V
aload 0
iconst_1
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/isNeedTransformListView Z
aload 0
iload 1
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mCilckPosition I
aload 0
aload 2
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mCilckView Landroid/view/View;
iconst_2
newarray int
astore 3
aload 2
aload 3
invokevirtual android/view/View/getLocationOnScreen([I)V
aload 0
aload 3
iconst_1
iaload
aload 2
invokevirtual android/view/View/getHeight()I
iadd
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity/mBottom I
return
.limit locals 4
.limit stack 3
.end method

.method public onSendPostBtnClick(Landroid/view/View;)V
aload 0
invokespecial com/nd/schoollife/ui/square/activity/PostAndTeamActivity/showTeam()V
return
.limit locals 2
.limit stack 1
.end method
