.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/PreLoginActivity
.super android/app/Activity
.inner class inner com/nd/android/u/cloud/activity/PreLoginActivity$1
.inner class inner com/nd/android/u/cloud/activity/PreLoginActivity$2

.field private static final 'ADD_ORG_RETURN' I = 0


.field private static final 'LOGIN_RETURN' I = 1


.field private 'PAGECNT' I

.field private final 'TAG' Ljava/lang/String;

.field 'animationSet' Landroid/view/animation/AnimationSet;

.field private 'app_guide_img_logo' Landroid/widget/ImageView;

.field private 'app_guide_logo' Landroid/widget/ImageView;

.field private 'bt_login' Landroid/widget/Button;

.field private 'flayout' Landroid/widget/LinearLayout;

.field private 'imgCur' Landroid/widget/ImageView;

.field private 'll_scroll_bottom' Landroid/widget/LinearLayout;

.field private 'mCurrentPage' I

.field private 'onLoginClick' Landroid/view/View$OnClickListener;

.field private 'scroll' Lcom/nd/android/u/cloud/view/widge/ScrollLayout;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
ldc "PreLoginActivity"
putfield com/nd/android/u/cloud/activity/PreLoginActivity/TAG Ljava/lang/String;
aload 0
iconst_4
putfield com/nd/android/u/cloud/activity/PreLoginActivity/PAGECNT I
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/PreLoginActivity/mCurrentPage I
aload 0
new com/nd/android/u/cloud/activity/PreLoginActivity$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/PreLoginActivity$2/<init>(Lcom/nd/android/u/cloud/activity/PreLoginActivity;)V
putfield com/nd/android/u/cloud/activity/PreLoginActivity/onLoginClick Landroid/view/View$OnClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/PreLoginActivity;I)V
aload 0
iload 1
invokespecial com/nd/android/u/cloud/activity/PreLoginActivity/setCurPage(I)V
return
.limit locals 2
.limit stack 2
.end method

.method private iniView()V
aload 0
aload 0
ldc_w 2131626399
invokevirtual com/nd/android/u/cloud/activity/PreLoginActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/cloud/activity/PreLoginActivity/bt_login Landroid/widget/Button;
aload 0
aload 0
ldc_w 2131626395
invokevirtual com/nd/android/u/cloud/activity/PreLoginActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/activity/PreLoginActivity/flayout Landroid/widget/LinearLayout;
aload 0
aload 0
ldc_w 2131626396
invokevirtual com/nd/android/u/cloud/activity/PreLoginActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/cloud/view/widge/ScrollLayout
putfield com/nd/android/u/cloud/activity/PreLoginActivity/scroll Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
aload 0
aload 0
ldc_w 2131626398
invokevirtual com/nd/android/u/cloud/activity/PreLoginActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/activity/PreLoginActivity/ll_scroll_bottom Landroid/widget/LinearLayout;
aload 0
aload 0
ldc_w 2131625515
invokevirtual com/nd/android/u/cloud/activity/PreLoginActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/PreLoginActivity/app_guide_logo Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131626397
invokevirtual com/nd/android/u/cloud/activity/PreLoginActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/PreLoginActivity/app_guide_img_logo Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/cloud/activity/PreLoginActivity/bt_login Landroid/widget/Button;
aload 0
getfield com/nd/android/u/cloud/activity/PreLoginActivity/onLoginClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
astore 2
aload 2
ldc_w 2130903375
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 0
getfield com/nd/android/u/cloud/activity/PreLoginActivity/scroll Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
aload 3
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/addView(Landroid/view/View;)V
aload 2
ldc_w 2130903377
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 0
getfield com/nd/android/u/cloud/activity/PreLoginActivity/scroll Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
aload 3
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/addView(Landroid/view/View;)V
aload 2
ldc_w 2130903378
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 0
getfield com/nd/android/u/cloud/activity/PreLoginActivity/scroll Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
aload 3
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/addView(Landroid/view/View;)V
aload 2
ldc_w 2130903376
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 0
getfield com/nd/android/u/cloud/activity/PreLoginActivity/scroll Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
aload 2
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/addView(Landroid/view/View;)V
iconst_0
istore 1
L0:
iload 1
aload 0
getfield com/nd/android/u/cloud/activity/PreLoginActivity/PAGECNT I
if_icmpge L1
aload 0
new android/widget/ImageView
dup
aload 0
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/cloud/activity/PreLoginActivity/imgCur Landroid/widget/ImageView;
iload 1
ifne L2
aload 0
getfield com/nd/android/u/cloud/activity/PreLoginActivity/imgCur Landroid/widget/ImageView;
ldc_w 2130837746
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
L3:
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 2
aload 2
iconst_0
iconst_0
bipush 10
iconst_0
invokevirtual android/widget/LinearLayout$LayoutParams/setMargins(IIII)V
aload 0
getfield com/nd/android/u/cloud/activity/PreLoginActivity/imgCur Landroid/widget/ImageView;
aload 2
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/android/u/cloud/activity/PreLoginActivity/ll_scroll_bottom Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/cloud/activity/PreLoginActivity/imgCur Landroid/widget/ImageView;
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
iload 1
iconst_1
iadd
istore 1
goto L0
L2:
aload 0
getfield com/nd/android/u/cloud/activity/PreLoginActivity/imgCur Landroid/widget/ImageView;
ldc_w 2130837576
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
goto L3
L1:
aload 0
iconst_0
invokespecial com/nd/android/u/cloud/activity/PreLoginActivity/setCurPage(I)V
aload 0
getfield com/nd/android/u/cloud/activity/PreLoginActivity/scroll Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
new com/nd/android/u/cloud/activity/PreLoginActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/PreLoginActivity$1/<init>(Lcom/nd/android/u/cloud/activity/PreLoginActivity;)V
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/setPageListener(Lcom/nd/android/u/cloud/view/widge/ScrollLayout$PageListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/PreLoginActivity/scroll Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
iconst_0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/setToScreen(I)V
aload 0
getfield com/nd/android/u/cloud/activity/PreLoginActivity/scroll Lcom/nd/android/u/cloud/view/widge/ScrollLayout;
sipush 4000
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/startScoll(I)V
new android/view/animation/TranslateAnimation
dup
iconst_2
fconst_0
iconst_2
fconst_0
iconst_2
fconst_0
iconst_2
ldc_w -0.26F
invokespecial android/view/animation/TranslateAnimation/<init>(IFIFIFIF)V
astore 2
aload 2
ldc2_w 2000L
invokevirtual android/view/animation/TranslateAnimation/setDuration(J)V
aload 2
iconst_1
invokevirtual android/view/animation/TranslateAnimation/setFillAfter(Z)V
aload 0
getfield com/nd/android/u/cloud/activity/PreLoginActivity/app_guide_logo Landroid/widget/ImageView;
aload 2
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
aload 0
getfield com/nd/android/u/cloud/activity/PreLoginActivity/app_guide_img_logo Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
new android/view/animation/AlphaAnimation
dup
ldc_w 0.1F
fconst_1
invokespecial android/view/animation/AlphaAnimation/<init>(FF)V
astore 2
aload 2
ldc2_w 3000L
invokevirtual android/view/animation/Animation/setDuration(J)V
aload 2
iconst_1
invokevirtual android/view/animation/Animation/setFillAfter(Z)V
aload 0
getfield com/nd/android/u/cloud/activity/PreLoginActivity/flayout Landroid/widget/LinearLayout;
aload 2
invokevirtual android/widget/LinearLayout/startAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 4
.limit stack 10
.end method

.method private setCurPage(I)V
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/PreLoginActivity/mCurrentPage I
iconst_0
istore 2
L0:
iload 2
aload 0
getfield com/nd/android/u/cloud/activity/PreLoginActivity/PAGECNT I
if_icmpge L1
aload 0
getfield com/nd/android/u/cloud/activity/PreLoginActivity/ll_scroll_bottom Landroid/widget/LinearLayout;
iload 2
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 3
iload 2
iload 1
if_icmpne L2
aload 3
ldc_w 2130837746
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
L3:
iload 2
iconst_1
iadd
istore 2
goto L0
L2:
aload 3
ldc_w 2130837576
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
goto L3
L1:
return
.limit locals 4
.limit stack 2
.end method

.method protected clearSysResource()V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
invokevirtual com/nd/android/u/ChatEntry/logoutIMS()V
invokestatic com/common/android/utils/StackManager/closeActivitys()V
iconst_0
invokestatic java/lang/System/exit(I)V
return
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903619
invokevirtual com/nd/android/u/cloud/activity/PreLoginActivity/setContentView(I)V
aload 0
invokespecial com/nd/android/u/cloud/activity/PreLoginActivity/iniView()V
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
iconst_0
putfield com/nd/android/u/cloud/data/GlobalVariable/isOAChecked Z
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial android/app/Activity/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iload 1
tableswitch 4
L0
default : L1
L1:
aload 0
iload 1
aload 2
invokespecial android/app/Activity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
L0:
aconst_null
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/onFinishLoginProcess(Lcom/product/android/business/bean/UserInfo;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/PreLoginActivity/clearSysResource()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/PreLoginActivity/finish()V
goto L1
.limit locals 3
.limit stack 3
.end method
