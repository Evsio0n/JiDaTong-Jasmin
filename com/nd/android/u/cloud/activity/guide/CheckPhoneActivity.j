.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/guide/CheckPhoneActivity
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnTouchListener
.inner class inner com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$1
.inner class inner com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$2
.inner class private BindPhoneTask inner com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask outer com/nd/android/u/cloud/activity/guide/CheckPhoneActivity
.inner class inner com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask$1

.field public static final 'PHONE_NUMBER' Ljava/lang/String; = "phone_number"

.field private final 'CODE_ERROR_CODE' Ljava/lang/String;

.field private final 'COUNT' I

.field private final 'PERIOD_TIME' I

.field private final 'SUCCESS_CODE' I

.field private 'mCode' Ljava/lang/String;

.field private 'mCount' I

.field private 'mEtContent' Landroid/widget/EditText;

.field private 'mHandler' Landroid/os/Handler;

.field private 'mImm' Landroid/view/inputmethod/InputMethodManager;

.field private 'mPhoneNumber' Ljava/lang/String;

.field private 'mTimer' Ljava/util/Timer;

.field private 'mTvTip' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
bipush 60
putfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/COUNT I
aload 0
bipush 60
putfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mCount I
aload 0
sipush 1000
putfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/PERIOD_TIME I
aload 0
ldc "204"
putfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/CODE_ERROR_CODE Ljava/lang/String;
aload 0
sipush 200
putfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/SUCCESS_CODE I
aload 0
new com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$1/<init>(Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;)V
putfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mHandler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;)I
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$010(Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;)I
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mCount I
istore 1
aload 0
iload 1
iconst_1
isub
putfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mCount I
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mTvTip Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/lunchMainActivity()V
return
.limit locals 1
.limit stack 1
.end method

.method private lunchMainActivity()V
aload 0
iconst_1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokestatic com/nd/android/u/cloud/helper/Utils/setBindPhoneFlag(Landroid/content/Context;ZJ)V
aload 0
invokestatic com/nd/android/u/cloud/helper/Utils/lunchMainLifeActivity(Landroid/content/Context;)V
aload 0
iconst_m1
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/setResult(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/finish()V
return
.limit locals 1
.limit stack 4
.end method

.method private sendVerificationCode()V
new com/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask/<init>(Landroid/content/Context;Lcom/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask$SendVerificationCodeResult;)V
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mPhoneNumber Ljava/lang/String;
aastore
invokevirtual com/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method

.method private startTimer()V
aload 0
new java/util/Timer
dup
invokespecial java/util/Timer/<init>()V
putfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mTimer Ljava/util/Timer;
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mTimer Ljava/util/Timer;
new com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$2/<init>(Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;)V
lconst_0
ldc2_w 1000L
invokevirtual java/util/Timer/schedule(Ljava/util/TimerTask;JJ)V
return
.limit locals 1
.limit stack 6
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
ldc_w 2130903058
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/setContentView(I)V
aload 0
aload 0
ldc "input_method"
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
putfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mImm Landroid/view/inputmethod/InputMethodManager;
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/getIntent()Landroid/content/Intent;
astore 2
aload 2
ifnull L0
aload 0
aload 2
ldc "phone_number"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mPhoneNumber Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mPhoneNumber Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mPhoneNumber Ljava/lang/String;
invokestatic ims/utils/CommUtil/isMobile(Ljava/lang/String;)Z
ifne L0
L1:
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/finish()V
iconst_0
ireturn
L0:
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/initEvent()V
aload 0
ldc_w 2131493956
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/setActivityTitle(I)V
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/sendVerificationCode()V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public dealOnClickSetting(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
tableswitch 2131624030
L0
default : L1
L1:
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mTimer Ljava/util/Timer;
ifnull L2
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mTimer Ljava/util/Timer;
invokevirtual java/util/Timer/cancel()V
L2:
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/sendVerificationCode()V
aload 0
bipush 60
putfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mCount I
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/startTimer()V
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mTvTip Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/getResources()Landroid/content/res/Resources;
ldc_w 17170432
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mTvTip Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setClickable(Z)V
return
.limit locals 2
.limit stack 3
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
ldc_w 2131624030
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mTvTip Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624031
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mEtContent Landroid/widget/EditText;
aload 0
ldc_w 2131625260
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493920
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
ldc_w 2131625260
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
ldc_w 2131625260
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/findViewById(I)Landroid/view/View;
ldc_w 2130837933
invokevirtual android/view/View/setBackgroundResource(I)V
aload 0
ldc_w 2131624099
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return
.limit locals 1
.limit stack 3
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/startTimer()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onDestroy()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mTimer Ljava/util/Timer;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mTimer Ljava/util/Timer;
invokevirtual java/util/Timer/cancel()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public onStart()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onStart()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 1
invokevirtual android/view/View/getId()I
tableswitch 2131624099
L0
default : L1
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mImm Landroid/view/inputmethod/InputMethodManager;
invokevirtual android/view/inputmethod/InputMethodManager/isActive()Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mImm Landroid/view/inputmethod/InputMethodManager;
aload 1
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method protected rightBtnHandle()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/rightBtnHandle()V
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mEtContent Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mCode Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mCode Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/lunchMainActivity()V
return
L0:
new com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask/<init>(Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity$1;)V
iconst_2
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mPhoneNumber Ljava/lang/String;
aastore
dup
iconst_1
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/mCode Ljava/lang/String;
aastore
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method
