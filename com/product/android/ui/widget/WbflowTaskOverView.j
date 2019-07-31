.bytecode 50.0
.class public synchronized com/product/android/ui/widget/WbflowTaskOverView
.super android/widget/LinearLayout
.inner class inner com/product/android/ui/widget/WbflowTaskOverView$1
.inner class inner com/product/android/ui/widget/WbflowTaskOverView$2
.inner class inner com/product/android/ui/widget/WbflowTaskOverView$3
.inner class inner com/product/android/ui/widget/WbflowTaskOverView$4

.field public static final 'MSG_BEGIN_TO_HIDE' I = 2013


.field private final 'DELAY_MILI_SECONDS' I

.field private 'clickListener' Landroid/view/View$OnClickListener;

.field 'handler' Landroid/os/Handler;

.field private 'mContext' Landroid/content/Context;

.field private 'mMessageReceiver' Landroid/content/BroadcastReceiver;

.field private 'mWbflowTaskOverView' Landroid/widget/RelativeLayout;

.field private 'mbtnRetrieve' Landroid/widget/Button;

.field private 'mlayoutBless' Landroid/widget/LinearLayout;

.field private 'mlayoutSendFlower' Landroid/widget/RelativeLayout;

.field private 'mtvBlessContent' Landroid/widget/TextView;

.field private 'mtvBlessTitle' Landroid/widget/TextView;

.field private 'mtvSendFlowerMsg' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
sipush 4000
putfield com/product/android/ui/widget/WbflowTaskOverView/DELAY_MILI_SECONDS I
aload 0
new com/product/android/ui/widget/WbflowTaskOverView$1
dup
aload 0
invokespecial com/product/android/ui/widget/WbflowTaskOverView$1/<init>(Lcom/product/android/ui/widget/WbflowTaskOverView;)V
putfield com/product/android/ui/widget/WbflowTaskOverView/clickListener Landroid/view/View$OnClickListener;
aload 0
new com/product/android/ui/widget/WbflowTaskOverView$3
dup
aload 0
invokespecial com/product/android/ui/widget/WbflowTaskOverView$3/<init>(Lcom/product/android/ui/widget/WbflowTaskOverView;)V
putfield com/product/android/ui/widget/WbflowTaskOverView/handler Landroid/os/Handler;
aload 0
new com/product/android/ui/widget/WbflowTaskOverView$4
dup
aload 0
invokespecial com/product/android/ui/widget/WbflowTaskOverView$4/<init>(Lcom/product/android/ui/widget/WbflowTaskOverView;)V
putfield com/product/android/ui/widget/WbflowTaskOverView/mMessageReceiver Landroid/content/BroadcastReceiver;
aload 0
aload 1
putfield com/product/android/ui/widget/WbflowTaskOverView/mContext Landroid/content/Context;
aload 0
invokespecial com/product/android/ui/widget/WbflowTaskOverView/initView()V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/product/android/ui/widget/WbflowTaskOverView;)Landroid/content/Context;
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/product/android/ui/widget/WbflowTaskOverView;)V
aload 0
invokespecial com/product/android/ui/widget/WbflowTaskOverView/setBlessComponent()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/product/android/ui/widget/WbflowTaskOverView;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/product/android/ui/widget/WbflowTaskOverView/setFlowerComponent(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method private initView()V
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/allcommon/R$layout/wbflow_task_over_view I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/layout_bless I
invokevirtual com/product/android/ui/widget/WbflowTaskOverView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/product/android/ui/widget/WbflowTaskOverView/mlayoutBless Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/tv_bless_title I
invokevirtual com/product/android/ui/widget/WbflowTaskOverView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/WbflowTaskOverView/mtvBlessTitle Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/layout_task_over I
invokevirtual com/product/android/ui/widget/WbflowTaskOverView/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/product/android/ui/widget/WbflowTaskOverView/mWbflowTaskOverView Landroid/widget/RelativeLayout;
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView/mWbflowTaskOverView Landroid/widget/RelativeLayout;
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/tv_bless_title I
invokevirtual com/product/android/ui/widget/WbflowTaskOverView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/WbflowTaskOverView/mtvBlessTitle Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/tv_bless_content I
invokevirtual com/product/android/ui/widget/WbflowTaskOverView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/WbflowTaskOverView/mtvBlessContent Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/layout_send_flower I
invokevirtual com/product/android/ui/widget/WbflowTaskOverView/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/product/android/ui/widget/WbflowTaskOverView/mlayoutSendFlower Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/tv_send_flower_result I
invokevirtual com/product/android/ui/widget/WbflowTaskOverView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/WbflowTaskOverView/mtvSendFlowerMsg Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/btn_goto_retrieve I
invokevirtual com/product/android/ui/widget/WbflowTaskOverView/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/product/android/ui/widget/WbflowTaskOverView/mbtnRetrieve Landroid/widget/Button;
return
.limit locals 1
.limit stack 4
.end method

.method private setBlessComponent()V
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView/mlayoutSendFlower Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView/mlayoutBless Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
ldc ""
astore 1
new java/util/Random
dup
invokespecial java/util/Random/<init>()V
iconst_3
invokevirtual java/util/Random/nextInt(I)I
iconst_1
iadd
tableswitch 1
L0
L1
L2
default : L3
L3:
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView/mContext Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/bless_task_over I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView/mtvBlessTitle Landroid/widget/TextView;
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView/mtvBlessContent Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L4:
return
L0:
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView/mContext Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/bless_message_one I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 1
goto L3
L1:
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView/mContext Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/bless_message_two I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 1
goto L3
L2:
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView/mContext Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/bless_message_third I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 1
goto L3
.limit locals 3
.limit stack 2
.end method

.method private setFlowerComponent(Ljava/lang/String;)V
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView/mlayoutSendFlower Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView/mlayoutBless Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView/mtvSendFlowerMsg Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public beginAnimate(Z)V
iload 1
ifeq L0
aload 0
iconst_0
invokevirtual com/product/android/ui/widget/WbflowTaskOverView/setVisibility(I)V
new android/view/animation/TranslateAnimation
dup
iconst_1
fconst_0
iconst_1
fconst_0
iconst_1
ldc_w -1.0F
iconst_1
fconst_0
invokespecial android/view/animation/TranslateAnimation/<init>(IFIFIFIF)V
astore 2
L1:
aload 2
ldc2_w 800L
invokevirtual android/view/animation/TranslateAnimation/setDuration(J)V
aload 2
new com/product/android/ui/widget/WbflowTaskOverView$2
dup
aload 0
iload 1
invokespecial com/product/android/ui/widget/WbflowTaskOverView$2/<init>(Lcom/product/android/ui/widget/WbflowTaskOverView;Z)V
invokevirtual android/view/animation/TranslateAnimation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
aload 0
aload 2
invokevirtual com/product/android/ui/widget/WbflowTaskOverView/startAnimation(Landroid/view/animation/Animation;)V
return
L0:
new android/view/animation/TranslateAnimation
dup
iconst_1
fconst_0
iconst_1
fconst_0
iconst_1
fconst_0
iconst_1
ldc_w -1.0F
invokespecial android/view/animation/TranslateAnimation/<init>(IFIFIFIF)V
astore 2
goto L1
.limit locals 3
.limit stack 10
.end method

.method protected onAttachedToWindow()V
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView/mContext Landroid/content/Context;
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView/mMessageReceiver Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
ldc "com.nd.android.u.chat.flowertaskover"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual android/support/v4/content/LocalBroadcastManager/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
aload 0
invokespecial android/widget/LinearLayout/onAttachedToWindow()V
return
.limit locals 1
.limit stack 5
.end method

.method protected onDetachedFromWindow()V
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView/mContext Landroid/content/Context;
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/product/android/ui/widget/WbflowTaskOverView/mMessageReceiver Landroid/content/BroadcastReceiver;
invokevirtual android/support/v4/content/LocalBroadcastManager/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
aload 0
invokespecial android/widget/LinearLayout/onDetachedFromWindow()V
return
.limit locals 1
.limit stack 2
.end method
