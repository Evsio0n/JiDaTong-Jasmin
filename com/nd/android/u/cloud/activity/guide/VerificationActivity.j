.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/guide/VerificationActivity
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnTouchListener
.inner class inner com/nd/android/u/cloud/activity/guide/VerificationActivity$1
.inner class inner com/nd/android/u/cloud/activity/guide/VerificationActivity$2
.inner class inner com/nd/android/u/cloud/activity/guide/VerificationActivity$3
.inner class inner com/nd/android/u/cloud/activity/guide/VerificationActivity$3$1
.inner class inner com/nd/android/u/cloud/activity/guide/VerificationActivity$4
.inner class inner com/nd/android/u/cloud/activity/guide/VerificationActivity$5
.inner class inner com/nd/android/u/cloud/activity/guide/VerificationActivity$6
.inner class private CheckTask inner com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask outer com/nd/android/u/cloud/activity/guide/VerificationActivity
.inner class inner com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask$1
.inner class inner com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask$2

.field private final 'BOUND_CODE' I

.field private final 'ID' Ljava/lang/String;

.field private final 'MISMATCH_CODE' I

.field private final 'NAME' Ljava/lang/String;

.field private final 'OFFSET' I

.field private final 'REG_REQUEST_CODE' I

.field private final 'SCALE_SIZE' I

.field private final 'SUCCESS_CODE' I

.field private 'mEtId' Landroid/widget/EditText;

.field private 'mEtName' Landroid/widget/EditText;

.field private 'mHandler' Landroid/os/Handler;

.field private 'mImm' Landroid/view/inputmethod/InputMethodManager;

.field private 'mLayoutStamp' Landroid/widget/LinearLayout;

.field private 'mLlContent' Landroid/widget/LinearLayout;

.field private 'mScrollView' Landroid/widget/ScrollView;

.field private 'mTvStamp' Lcom/nd/android/u/cloud/view/widge/RotationTextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
sipush 2000
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity/OFFSET I
aload 0
ldc "name"
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity/NAME Ljava/lang/String;
aload 0
ldc "id"
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity/ID Ljava/lang/String;
aload 0
sipush 300
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity/REG_REQUEST_CODE I
aload 0
sipush 200
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity/SUCCESS_CODE I
aload 0
sipush 417
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity/MISMATCH_CODE I
aload 0
sipush 418
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity/BOUND_CODE I
aload 0
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mHandler Landroid/os/Handler;
aload 0
iconst_5
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity/SCALE_SIZE I
return
.limit locals 1
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mLayoutStamp Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mEtName Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;)Landroid/view/inputmethod/InputMethodManager;
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mImm Landroid/view/inputmethod/InputMethodManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;)Landroid/widget/ScrollView;
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mScrollView Landroid/widget/ScrollView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;Ljava/lang/Class;I)V
aload 0
aload 1
iload 2
invokespecial com/nd/android/u/cloud/activity/guide/VerificationActivity/goToForResult(Ljava/lang/Class;I)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$700(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/guide/VerificationActivity/goToLogin(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method private goToForResult(Ljava/lang/Class;I)V
.signature "(Ljava/lang/Class<*>;I)V"
new android/content/Intent
dup
aload 0
aload 1
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "account"
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mEtName Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "id"
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mEtId Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 1
iload 2
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 3
.limit stack 4
.end method

.method private goToLogin(Ljava/lang/String;)V
getstatic com/nd/rj/common/login/jobnumber/JobNumberLoginManager/INSTANCE Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;
invokevirtual com/nd/rj/common/login/jobnumber/JobNumberLoginManager/getLoginResultCallback()Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;
ifnonnull L0
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "init_uap_account"
aload 1
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/rj/common/login/jobnumber/JobNumberLoginManager/INSTANCE Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;
aload 0
aload 2
new com/nd/android/u/cloud/activity/guide/VerificationActivity$6
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/VerificationActivity$6/<init>(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;)V
invokevirtual com/nd/rj/common/login/jobnumber/JobNumberLoginManager/callLoginActivity(Landroid/content/Context;Landroid/os/Bundle;Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;)V
return
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
ldc "account_name"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
iconst_m1
aload 2
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/setResult(ILandroid/content/Intent;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/finish()V
return
.limit locals 3
.limit stack 6
.end method

.method private initTitleBar()V
aload 0
ldc_w 2131624245
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/findViewById(I)Landroid/view/View;
ldc_w 2131624282
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
ldc_w 2131493961
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
ldc_w 2131624281
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/findViewById(I)Landroid/view/View;
new com/nd/android/u/cloud/activity/guide/VerificationActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/VerificationActivity$1/<init>(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method private lunchLoginActivity()V
getstatic com/nd/rj/common/login/jobnumber/JobNumberLoginManager/INSTANCE Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;
aload 0
aconst_null
new com/nd/android/u/cloud/activity/guide/VerificationActivity$5
dup
aload 0
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/VerificationActivity$5/<init>(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;Landroid/app/Activity;)V
invokevirtual com/nd/rj/common/login/jobnumber/JobNumberLoginManager/callLoginActivity(Landroid/content/Context;Landroid/os/Bundle;Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;)V
return
.limit locals 1
.limit stack 7
.end method

.method public dealOnClickVerification(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
tableswitch 2131624472
L0
L1
default : L2
L2:
return
L1:
getstatic com/nd/rj/common/login/jobnumber/JobNumberLoginManager/INSTANCE Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;
invokevirtual com/nd/rj/common/login/jobnumber/JobNumberLoginManager/getLoginResultCallback()Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;
ifnonnull L3
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/VerificationActivity/lunchLoginActivity()V
return
L3:
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/finish()V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mEtName Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
aload 0
ldc_w 2131494697
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L4:
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mEtId Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L5
aload 0
ldc_w 2131493981
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L5:
aload 0
invokestatic ims/utils/CommUtil/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifeq L6
new com/nd/rj/common/login/jobnumber/ReqVerification$VerificationRequestParams
dup
invokespecial com/nd/rj/common/login/jobnumber/ReqVerification$VerificationRequestParams/<init>()V
astore 4
aload 4
aload 3
putfield com/nd/rj/common/login/jobnumber/ReqVerification$VerificationRequestParams/mIdcardno Ljava/lang/String;
aload 4
aload 2
putfield com/nd/rj/common/login/jobnumber/ReqVerification$VerificationRequestParams/mUsername Ljava/lang/String;
new com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask/<init>(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;Lcom/nd/android/u/cloud/activity/guide/VerificationActivity$1;)V
iconst_1
anewarray com/nd/rj/common/login/jobnumber/ReqVerification$VerificationRequestParams
dup
iconst_0
aload 4
aastore
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
L7:
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mImm Landroid/view/inputmethod/InputMethodManager;
invokevirtual android/view/inputmethod/InputMethodManager/isActive()Z
ifeq L2
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mImm Landroid/view/inputmethod/InputMethodManager;
aload 1
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
return
L6:
aload 0
ldc_w 2131494162
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
goto L7
.limit locals 5
.limit stack 5
.end method

.method protected goTo(Ljava/lang/Class;)V
.signature "(Ljava/lang/Class<*>;)V"
new android/content/Intent
dup
aload 0
aload 1
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "account"
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mEtName Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "id"
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mEtId Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method

.method protected initComponent()V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "ResourceAsColor" 
.end annotation
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
ldc_w 2131624473
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 1
aload 0
aload 0
ldc_w 2131624468
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mLayoutStamp Landroid/widget/LinearLayout;
aload 0
aload 0
ldc_w 2131624469
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/cloud/view/widge/RotationTextView
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mTvStamp Lcom/nd/android/u/cloud/view/widge/RotationTextView;
aload 0
aload 0
ldc_w 2131624470
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mEtName Landroid/widget/EditText;
aload 0
aload 0
ldc_w 2131624471
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mEtId Landroid/widget/EditText;
aload 0
aload 0
ldc_w 2131624465
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ScrollView
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mScrollView Landroid/widget/ScrollView;
aload 0
aload 0
ldc_w 2131624466
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mLlContent Landroid/widget/LinearLayout;
aload 1
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
astore 2
new android/text/SpannableString
dup
aload 2
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 3
aload 3
new android/text/style/UnderlineSpan
dup
invokespecial android/text/style/UnderlineSpan/<init>()V
iconst_0
aload 2
invokeinterface java/lang/CharSequence/length()I 0
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 1
aload 3
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mTvStamp Lcom/nd/android/u/cloud/view/widge/RotationTextView;
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_APP_NAME Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/view/widge/RotationTextView/setText(Ljava/lang/CharSequence;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/VerificationActivity/initTitleBar()V
return
.limit locals 4
.limit stack 5
.end method

.method protected initEvent()V
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mEtName Landroid/widget/EditText;
aload 0
invokevirtual android/widget/EditText/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mEtId Landroid/widget/EditText;
aload 0
invokevirtual android/widget/EditText/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mScrollView Landroid/widget/ScrollView;
aload 0
invokevirtual android/widget/ScrollView/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
new android/view/animation/TranslateAnimation
dup
iconst_1
fconst_0
iconst_1
fconst_0
iconst_2
fconst_1
iconst_1
fconst_0
invokespecial android/view/animation/TranslateAnimation/<init>(IFIFIFIF)V
astore 1
aload 1
ldc2_w 2000L
invokevirtual android/view/animation/TranslateAnimation/setDuration(J)V
new android/view/animation/AnimationSet
dup
iconst_1
invokespecial android/view/animation/AnimationSet/<init>(Z)V
astore 2
aload 2
aload 1
invokevirtual android/view/animation/AnimationSet/addAnimation(Landroid/view/animation/Animation;)V
aload 2
iconst_1
invokevirtual android/view/animation/AnimationSet/setFillAfter(Z)V
aload 2
new com/nd/android/u/cloud/activity/guide/VerificationActivity$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/VerificationActivity$2/<init>(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;)V
invokevirtual android/view/animation/AnimationSet/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mLlContent Landroid/widget/LinearLayout;
aload 2
invokevirtual android/widget/LinearLayout/startAnimation(Landroid/view/animation/Animation;)V
new android/view/animation/ScaleAnimation
dup
fconst_2
fconst_1
fconst_2
fconst_1
iconst_1
fconst_2
iconst_1
fconst_2
invokespecial android/view/animation/ScaleAnimation/<init>(FFFFIFIF)V
astore 1
aload 1
ldc2_w 1000L
invokevirtual android/view/animation/Animation/setDuration(J)V
aload 1
new android/view/animation/AccelerateInterpolator
dup
fconst_2
invokespecial android/view/animation/AccelerateInterpolator/<init>(F)V
invokevirtual android/view/animation/Animation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 1
iconst_1
invokevirtual android/view/animation/Animation/setFillAfter(Z)V
aload 1
ldc2_w 2000L
invokevirtual android/view/animation/Animation/setStartOffset(J)V
aload 1
new com/nd/android/u/cloud/activity/guide/VerificationActivity$3
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/VerificationActivity$3/<init>(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;)V
invokevirtual android/view/animation/Animation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mLayoutStamp Landroid/widget/LinearLayout;
aload 1
invokevirtual android/widget/LinearLayout/startAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 3
.limit stack 10
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
aload 0
iload 1
iload 2
aload 3
invokespecial com/product/android/ui/activity/HeaderActivity/onActivityResult(IILandroid/content/Intent;)V
iload 1
sipush 300
if_icmpne L0
iload 2
iconst_m1
if_icmpne L0
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 3
aload 3
ldc "is_need_finish"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
iconst_m1
aload 3
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/setResult(ILandroid/content/Intent;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/finish()V
L0:
return
.limit locals 4
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903131
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/setContentView(I)V
aload 0
aload 0
ldc "input_method"
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mImm Landroid/view/inputmethod/InputMethodManager;
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/initEvent()V
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mEtId Landroid/widget/EditText;
aload 1
ldc "id"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mEtName Landroid/widget/EditText;
aload 1
ldc "name"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "name"
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mEtName Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "id"
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mEtId Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 1
invokevirtual android/view/View/getId()I
lookupswitch
2131624465 : L0
2131624470 : L1
2131624471 : L1
default : L2
L2:
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mHandler Landroid/os/Handler;
new com/nd/android/u/cloud/activity/guide/VerificationActivity$4
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/VerificationActivity$4/<init>(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;)V
ldc2_w 400L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mImm Landroid/view/inputmethod/InputMethodManager;
invokevirtual android/view/inputmethod/InputMethodManager/isActive()Z
ifeq L2
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity/mImm Landroid/view/inputmethod/InputMethodManager;
aload 1
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
iconst_0
ireturn
.limit locals 3
.limit stack 4
.end method
