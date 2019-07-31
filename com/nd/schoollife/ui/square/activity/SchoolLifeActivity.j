.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/activity/SchoolLifeActivity
.super com/nd/schoollife/ui/common/activity/BaseActivity
.implements android/view/View$OnClickListener
.implements android/view/animation/Animation$AnimationListener
.implements com/nd/schoollife/ui/square/view/widget/SquareView$SearchBarClickListener
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback
.implements com/nd/schoollife/ui/square/listener/PositionListener
.inner class static synthetic inner com/nd/schoollife/ui/square/activity/SchoolLifeActivity$1
.inner class private IsOpenUnicomFlow inner com/nd/schoollife/ui/square/activity/SchoolLifeActivity$IsOpenUnicomFlow outer com/nd/schoollife/ui/square/activity/SchoolLifeActivity

.field public static final 'SHOW_SQUARE_VIEW' I = 1


.field public static final 'SHOW_SUBSCRIBE_VIEW' I = 2


.field public static final 'SUB_VIEW_INDEX' I = 1


.field private 'mContainerLL' Landroid/widget/LinearLayout;

.field private 'mCurrentType' I

.field private 'mGroupRL' Landroid/widget/RelativeLayout;

.field private 'mHeaderView' Landroid/view/View;

.field private 'mMsgNumTV' Landroid/widget/TextView;

.field private 'mMsgRL' Landroid/widget/RelativeLayout;

.field private 'mNumData' Lcom/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips;

.field private 'mParentLinearLayout' Landroid/widget/LinearLayout;

.field private 'mPraiseChangeReceiver' Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;

.field private 'mSquareIV' Landroid/widget/ImageView;

.field private 'mSquareRL' Landroid/widget/RelativeLayout;

.field private 'mSquareTV' Landroid/widget/TextView;

.field private 'mSquareUnderLine' Landroid/widget/ImageView;

.field private 'mSquareView' Lcom/nd/schoollife/ui/square/view/widget/SquareView;

.field private 'mSubcribeUnderLine' Landroid/widget/ImageView;

.field private 'mSubscribeIV' Landroid/widget/ImageView;

.field private 'mSubscribeRL' Landroid/widget/RelativeLayout;

.field private 'mSubscribeTV' Landroid/widget/TextView;

.field private 'mSubscribeView' Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/square/activity/SchoolLifeActivity;)Lcom/nd/schoollife/ui/square/view/widget/SquareView;
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSquareView Lcom/nd/schoollife/ui/square/view/widget/SquareView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private addSubView(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mContainerLL Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getChildCount()I
istore 2
iload 2
iconst_1
if_icmple L0
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mContainerLL Landroid/widget/LinearLayout;
iconst_1
iload 2
iconst_1
isub
invokevirtual android/widget/LinearLayout/removeViewsInLayout(II)V
L0:
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mContainerLL Landroid/widget/LinearLayout;
aload 1
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
return
.limit locals 3
.limit stack 4
.end method

.method private initHeaderView(Landroid/view/View;)V
aload 0
aload 1
getstatic com/nd/schoollife/R$id/tv_square_header_messagenum I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mMsgNumTV Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/tv_square_header_square I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSquareTV Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/tv_square_header_subscribe I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSubscribeTV Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/rl_square_header_message I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mMsgRL Landroid/widget/RelativeLayout;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/rl_square_header_contact I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mGroupRL Landroid/widget/RelativeLayout;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/rl_square_header_square I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSquareRL Landroid/widget/RelativeLayout;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/rl_square_header_subscribe I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSubscribeRL Landroid/widget/RelativeLayout;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/iv_square_header_square I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSquareIV Landroid/widget/ImageView;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/iv_square_header_subscribe I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSubscribeIV Landroid/widget/ImageView;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/iv_square_header_square_underline I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSquareUnderLine Landroid/widget/ImageView;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/iv_square_header_subscribe_underline I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSubcribeUnderLine Landroid/widget/ImageView;
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/SchoolLifeActivity/initEvent()V
return
.limit locals 2
.limit stack 3
.end method

.method private isOpenUnicomFlow()V
getstatic com/product/android/business/config/Configuration/NEED_UNICOMFLOW Z
ifeq L0
new com/nd/schoollife/ui/square/activity/SchoolLifeActivity$IsOpenUnicomFlow
dup
aload 0
aconst_null
invokespecial com/nd/schoollife/ui/square/activity/SchoolLifeActivity$IsOpenUnicomFlow/<init>(Lcom/nd/schoollife/ui/square/activity/SchoolLifeActivity;Lcom/nd/schoollife/ui/square/activity/SchoolLifeActivity$1;)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/schoollife/ui/square/activity/SchoolLifeActivity$IsOpenUnicomFlow/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
L0:
invokestatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/getInstance()Lcom/nd/schoollife/business/db/SchoolLifeDaoFactory;
invokevirtual com/nd/schoollife/business/db/SchoolLifeDaoFactory/getSquareBannerDao()Lcom/nd/schoollife/business/db/dao/SquareBannerDao;
ldc "unicom_flow"
invokeinterface com/nd/schoollife/business/db/dao/SquareBannerDao/deleteSquareByType(Ljava/lang/String;)Z 1
pop
return
.limit locals 1
.limit stack 4
.end method

.method private showMsgNum(J)V
lload 1
lconst_0
lcmp
ifgt L0
ldc ""
astore 3
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mMsgNumTV Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L1:
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mMsgNumTV Landroid/widget/TextView;
aload 3
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
lload 1
invokestatic com/nd/schoollife/ui/square/utils/SquareUtils/postMsgNum(J)V
return
L0:
lload 1
ldc2_w 99L
lcmp
ifle L2
ldc "99+"
astore 3
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mMsgNumTV Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
goto L1
L2:
lload 1
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
astore 3
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mMsgNumTV Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
goto L1
.limit locals 4
.limit stack 4
.end method

.method private showSquare()V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mCurrentType I
iconst_1
if_icmpne L0
return
L0:
new android/content/Intent
dup
ldc "com.nd.schoollife.changemainbottom"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "BOOL_MAIN_BOTTOM_CHANGE"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/square/activity/SchoolLifeActivity/sendBroadcast(Landroid/content/Intent;)V
aload 0
iconst_1
putfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mCurrentType I
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/SchoolLifeActivity/getResources()Landroid/content/res/Resources;
astore 1
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSquareIV Landroid/widget/ImageView;
getstatic com/nd/schoollife/R$drawable/btn_square_header_square_pressed I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSquareTV Landroid/widget/TextView;
aload 1
getstatic com/nd/schoollife/R$color/cor_square_header_text_press I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSquareUnderLine Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSubscribeIV Landroid/widget/ImageView;
getstatic com/nd/schoollife/R$drawable/btn_square_header_subscribe_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSubscribeTV Landroid/widget/TextView;
aload 1
getstatic com/nd/schoollife/R$color/cor_square_header_text_normal I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSubcribeUnderLine Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
invokespecial com/nd/schoollife/ui/square/activity/SchoolLifeActivity/showSquareView()V
return
.limit locals 2
.limit stack 3
.end method

.method private showSquareView()V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSquareView Lcom/nd/schoollife/ui/square/view/widget/SquareView;
ifnonnull L0
aload 0
new com/nd/schoollife/ui/square/view/widget/SquareView
dup
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/SquareView/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSquareView Lcom/nd/schoollife/ui/square/view/widget/SquareView;
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 1
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSquareView Lcom/nd/schoollife/ui/square/view/widget/SquareView;
invokevirtual com/nd/schoollife/ui/square/view/widget/SquareView/getSquareView()Landroid/view/View;
aload 1
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSquareView Lcom/nd/schoollife/ui/square/view/widget/SquareView;
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/SquareView/setSearchBarClickListener(Lcom/nd/schoollife/ui/square/view/widget/SquareView$SearchBarClickListener;)V
L0:
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSquareView Lcom/nd/schoollife/ui/square/view/widget/SquareView;
invokevirtual com/nd/schoollife/ui/square/view/widget/SquareView/getSquareView()Landroid/view/View;
invokespecial com/nd/schoollife/ui/square/activity/SchoolLifeActivity/addSubView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 4
.end method

.method private showSubcribe()V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mCurrentType I
iconst_2
if_icmpne L0
return
L0:
aload 0
iconst_2
putfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mCurrentType I
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/SchoolLifeActivity/getResources()Landroid/content/res/Resources;
astore 1
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSquareIV Landroid/widget/ImageView;
getstatic com/nd/schoollife/R$drawable/btn_square_header_square_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSquareTV Landroid/widget/TextView;
aload 1
getstatic com/nd/schoollife/R$color/cor_square_header_text_normal I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSquareUnderLine Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSubscribeIV Landroid/widget/ImageView;
getstatic com/nd/schoollife/R$drawable/btn_square_header_subscribe_pressed I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSubscribeTV Landroid/widget/TextView;
aload 1
getstatic com/nd/schoollife/R$color/cor_square_header_text_press I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSubcribeUnderLine Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
invokespecial com/nd/schoollife/ui/square/activity/SchoolLifeActivity/showSubscribeView()V
return
.limit locals 2
.limit stack 3
.end method

.method private showSubscribeView()V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSubscribeView Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;
ifnonnull L0
aload 0
new com/nd/schoollife/ui/square/view/widget/SubscribeView
dup
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/SubscribeView/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSubscribeView Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSubscribeView Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;
invokevirtual com/nd/schoollife/ui/square/view/widget/SubscribeView/getPraiseReceiver()Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
putfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
new android/content/IntentFilter
dup
invokespecial android/content/IntentFilter/<init>()V
astore 1
aload 1
ldc "com.nd.schoollife.praisechange"
invokevirtual android/content/IntentFilter/addAction(Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
aload 1
invokevirtual com/nd/schoollife/ui/square/activity/SchoolLifeActivity/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSubscribeView Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/SubscribeView/setPositionListener(Lcom/nd/schoollife/ui/square/listener/PositionListener;)V
L0:
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSubscribeView Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;
invokevirtual com/nd/schoollife/ui/square/view/widget/SubscribeView/getSubScribeView()Landroid/view/View;
invokespecial com/nd/schoollife/ui/square/activity/SchoolLifeActivity/addSubView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 4
.end method

.method protected initData(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 0
.end method

.method protected initEvent()V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mGroupRL Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSquareRL Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mMsgRL Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSubscribeRL Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initView()V
aload 0
getstatic com/nd/schoollife/R$layout/activity_square_subscribe I
invokevirtual com/nd/schoollife/ui/square/activity/SchoolLifeActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_square I
invokevirtual com/nd/schoollife/ui/square/activity/SchoolLifeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mParentLinearLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mParentLinearLayout Landroid/widget/LinearLayout;
putfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mContainerLL Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/header_square I
invokevirtual com/nd/schoollife/ui/square/activity/SchoolLifeActivity/findViewById(I)Landroid/view/View;
putfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mHeaderView Landroid/view/View;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mHeaderView Landroid/view/View;
invokespecial com/nd/schoollife/ui/square/activity/SchoolLifeActivity/initHeaderView(Landroid/view/View;)V
aload 0
invokespecial com/nd/schoollife/ui/square/activity/SchoolLifeActivity/showSquare()V
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
aload 0
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/setSerachBarListener(Lcom/nd/schoollife/ui/square/view/widget/SquareView$SearchBarClickListener;)V
return
.limit locals 1
.limit stack 3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
iload 2
iconst_m1
if_icmpeq L0
L1:
return
L0:
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSubscribeView Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSubscribeView Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;
iload 1
iload 2
aload 3
invokevirtual com/nd/schoollife/ui/square/view/widget/SubscribeView/result(IILandroid/content/Intent;)V
return
.limit locals 4
.limit stack 4
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mHeaderView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/schoollife/ui/square/activity/SquareSearchActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/schoollife/ui/square/activity/SchoolLifeActivity/startActivity(Landroid/content/Intent;)V
aload 0
iconst_m1
iconst_m1
invokevirtual com/nd/schoollife/ui/square/activity/SchoolLifeActivity/overridePendingTransition(II)V
aload 1
invokevirtual android/view/animation/Animation/cancel()V
new android/view/animation/TranslateAnimation
dup
fconst_0
fconst_0
fconst_0
fconst_0
invokespecial android/view/animation/TranslateAnimation/<init>(FFFF)V
astore 1
aload 1
lconst_1
invokevirtual android/view/animation/Animation/setDuration(J)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mParentLinearLayout Landroid/widget/LinearLayout;
aload 1
invokevirtual android/widget/LinearLayout/startAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 2
.limit stack 6
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/schoollife/R$id/rl_square_header_contact I
if_icmpne L0
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/schoollife/ui/square/activity/SquareMyGroupActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/schoollife/ui/square/activity/SchoolLifeActivity/startActivity(Landroid/content/Intent;)V
L1:
return
L0:
iload 2
getstatic com/nd/schoollife/R$id/rl_square_header_message I
if_icmpne L2
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/schoollife/ui/square/activity/MessageActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/schoollife/ui/square/activity/SchoolLifeActivity/startActivity(Landroid/content/Intent;)V
return
L2:
iload 2
getstatic com/nd/schoollife/R$id/rl_square_header_square I
if_icmpne L3
aload 0
invokespecial com/nd/schoollife/ui/square/activity/SchoolLifeActivity/showSquare()V
return
L3:
iload 2
getstatic com/nd/schoollife/R$id/rl_square_header_subscribe I
if_icmpne L1
aload 0
invokespecial com/nd/schoollife/ui/square/activity/SchoolLifeActivity/showSubcribe()V
return
.limit locals 3
.limit stack 5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/activity/BaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/SchoolLifeActivity/initView()V
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/square/activity/SchoolLifeActivity/initData(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/SchoolLifeActivity/initEvent()V
aload 0
invokespecial com/nd/schoollife/ui/square/activity/SchoolLifeActivity/isOpenUnicomFlow()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
ifnull L0
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
invokevirtual com/nd/schoollife/ui/square/activity/SchoolLifeActivity/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
L0:
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
aconst_null
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/setSerachBarListener(Lcom/nd/schoollife/ui/square/view/widget/SquareView$SearchBarClickListener;)V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onPositionListener(ILandroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSubscribeView Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSubscribeView Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;
iload 1
invokevirtual com/nd/schoollife/ui/square/view/widget/SubscribeView/moveListViewToPosition(I)V
L0:
return
.limit locals 3
.limit stack 2
.end method

.method public onPullToRefresh()V
new com/nd/schoollife/ui/square/task/SquareDataTask
dup
aload 0
sipush 1542
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
invokespecial com/nd/schoollife/ui/square/task/SquareDataTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_0
anewarray java/lang/String
invokevirtual com/nd/schoollife/ui/square/task/SquareDataTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
aload 0
invokespecial com/nd/schoollife/ui/square/activity/SchoolLifeActivity/isOpenUnicomFlow()V
return
.limit locals 1
.limit stack 6
.end method

.method public onResume()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseActivity/onResume()V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mHeaderView Landroid/view/View;
invokevirtual android/view/View/getVisibility()I
bipush 8
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mHeaderView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
L0:
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSubscribeView Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSubscribeView Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;
invokevirtual com/nd/schoollife/ui/square/view/widget/SubscribeView/reloadPostList()V
L1:
aload 0
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/getAtMessageNum()J
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/getReplyMessageNum()I
i2l
ladd
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/getLikeMessageNum()I
i2l
ladd
invokespecial com/nd/schoollife/ui/square/activity/SchoolLifeActivity/showMsgNum(J)V
return
.limit locals 1
.limit stack 5
.end method

.method public onSearchBarClick(Landroid/view/View;)V
new android/view/animation/TranslateAnimation
dup
fconst_0
fconst_0
fconst_0
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mHeaderView Landroid/view/View;
invokevirtual android/view/View/getBottom()I
ineg
i2f
invokespecial android/view/animation/TranslateAnimation/<init>(FFFF)V
astore 1
aload 1
ldc2_w 200L
invokevirtual android/view/animation/Animation/setDuration(J)V
aload 1
aload 0
invokevirtual android/view/animation/Animation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mParentLinearLayout Landroid/widget/LinearLayout;
aload 1
invokevirtual android/widget/LinearLayout/startAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 2
.limit stack 6
.end method

.method protected onStart()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseActivity/onStart()V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSquareView Lcom/nd/schoollife/ui/square/view/widget/SquareView;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSquareView Lcom/nd/schoollife/ui/square/view/widget/SquareView;
invokevirtual com/nd/schoollife/ui/square/view/widget/SquareView/startTimer()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method protected onStop()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseActivity/onStop()V
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSquareView Lcom/nd/schoollife/ui/square/view/widget/SquareView;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mSquareView Lcom/nd/schoollife/ui/square/view/widget/SquareView;
invokevirtual com/nd/schoollife/ui/square/view/widget/SquareView/stopTimer()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
aload 3
ifnull L0
aload 3
instanceof com/nd/android/forumsdk/business/bean/ForumResultBase
ifeq L0
aload 3
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/isSuccess()Z
ifne L1
L0:
return
L1:
iload 1
tableswitch 1542
L2
default : L3
L3:
return
L2:
aload 3
instanceof com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips
ifeq L0
aload 0
aload 3
checkcast com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips
putfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mNumData Lcom/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips;
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mNumData Lcom/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/getMention()J
lstore 5
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mNumData Lcom/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/getPraise()I
istore 1
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mNumData Lcom/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/getReply()I
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mNumData Lcom/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/getComment()I
iadd
istore 4
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
lload 5
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/setAtMessageNum(J)V
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
iload 1
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/setLikeMessageNum(I)V
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
iload 4
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/setReplyMessageNum(I)V
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity/mNumData Lcom/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/getLatest_u()Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/setFirstShowView(Ljava/lang/String;)V
aload 0
iload 4
i2l
lload 5
ladd
iload 1
i2l
ladd
invokespecial com/nd/schoollife/ui/square/activity/SchoolLifeActivity/showMsgNum(J)V
return
.limit locals 7
.limit stack 5
.end method

.method public refreshMsgNum(J)V
aload 0
lload 1
invokespecial com/nd/schoollife/ui/square/activity/SchoolLifeActivity/showMsgNum(J)V
return
.limit locals 3
.limit stack 3
.end method
