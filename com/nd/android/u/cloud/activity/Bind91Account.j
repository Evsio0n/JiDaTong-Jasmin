.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/Bind91Account
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/cloud/activity/Bind91Account$1
.inner class inner com/nd/android/u/cloud/activity/Bind91Account$2
.inner class inner com/nd/android/u/cloud/activity/Bind91Account$3
.inner class inner com/nd/android/u/cloud/activity/Bind91Account$4
.inner class inner com/nd/android/u/cloud/activity/Bind91Account$5
.inner class private ProgressGetCheckcode inner com/nd/android/u/cloud/activity/Bind91Account$ProgressGetCheckcode outer com/nd/android/u/cloud/activity/Bind91Account
.inner class private progressBind inner com/nd/android/u/cloud/activity/Bind91Account$progressBind outer com/nd/android/u/cloud/activity/Bind91Account

.field public static final 'ACCOUNT' Ljava/lang/String; = "account"

.field public static final 'IS_FROM_SETTING' Ljava/lang/String; = "is_from_setting"

.field private 'getCheckcodeListener' Lcom/nd/rj/common/login/NdMiscCallbackListener$IGetCheckcodeListener;

.field public 'handler' Landroid/os/Handler;

.field private 'mCtx' Landroid/content/Context;

.field private 'mEtCheckcodeFor91' Landroid/widget/EditText;

.field private 'mIsFromSetting' Z

.field private 'mIvCheckcodeFor91' Landroid/widget/ImageView;

.field private 'mLlCheckcodeFor91' Landroid/widget/LinearLayout;

.field private 'mLogin91Assitant' Lcom/nd/rj/common/login/NdLogin91Assistant;

.field private 'mTv91Account' Landroid/widget/EditText;

.field private 'mTv91Pwd' Landroid/widget/EditText;

.field private 'mTvJobNumberPwd' Landroid/widget/EditText;

.field protected 'myloginprocesslistener' Lcom/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener;

.field protected 'myprocesslistener' Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
new com/nd/android/u/cloud/activity/Bind91Account$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/Bind91Account$2/<init>(Lcom/nd/android/u/cloud/activity/Bind91Account;)V
putfield com/nd/android/u/cloud/activity/Bind91Account/getCheckcodeListener Lcom/nd/rj/common/login/NdMiscCallbackListener$IGetCheckcodeListener;
aload 0
new com/nd/android/u/cloud/activity/Bind91Account$3
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/Bind91Account$3/<init>(Lcom/nd/android/u/cloud/activity/Bind91Account;)V
putfield com/nd/android/u/cloud/activity/Bind91Account/myloginprocesslistener Lcom/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener;
aload 0
new com/nd/android/u/cloud/activity/Bind91Account$4
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/Bind91Account$4/<init>(Lcom/nd/android/u/cloud/activity/Bind91Account;)V
putfield com/nd/android/u/cloud/activity/Bind91Account/myprocesslistener Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;
aload 0
new com/nd/android/u/cloud/activity/Bind91Account$5
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/Bind91Account$5/<init>(Lcom/nd/android/u/cloud/activity/Bind91Account;)V
putfield com/nd/android/u/cloud/activity/Bind91Account/handler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/Bind91Account;)Lcom/nd/rj/common/login/NdLogin91Assistant;
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/mLogin91Assitant Lcom/nd/rj/common/login/NdLogin91Assistant;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/Bind91Account;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/mLlCheckcodeFor91 Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/Bind91Account;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/mEtCheckcodeFor91 Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/Bind91Account;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/mIvCheckcodeFor91 Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/Bind91Account;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/mTv91Account Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/activity/Bind91Account;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/mTv91Pwd Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/cloud/activity/Bind91Account;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/mTvJobNumberPwd Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/cloud/activity/Bind91Account;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private checkInput()I
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/mTvJobNumberPwd Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
ldc_w 2131494377
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/mTv91Account Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
ldc_w 2131494154
ireturn
L2:
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/mTv91Pwd Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/mLlCheckcodeFor91 Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
ifne L3
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/mEtCheckcodeFor91 Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
ldc_w 2131495119
ireturn
L3:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
ldc_w 2130903053
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/setContentView(I)V
aload 0
aload 0
putfield com/nd/android/u/cloud/activity/Bind91Account/mCtx Landroid/content/Context;
aload 0
aload 0
invokestatic com/nd/rj/common/login/NdLogin91Assistant/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/NdLogin91Assistant;
putfield com/nd/android/u/cloud/activity/Bind91Account/mLogin91Assitant Lcom/nd/rj/common/login/NdLogin91Assistant;
new java/lang/Thread
dup
new com/nd/android/u/cloud/activity/Bind91Account$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/Bind91Account$1/<init>(Lcom/nd/android/u/cloud/activity/Bind91Account;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/initEvent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/getIntent()Landroid/content/Intent;
astore 1
aload 0
aload 1
ldc "is_from_setting"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
putfield com/nd/android/u/cloud/activity/Bind91Account/mIsFromSetting Z
aload 0
aload 0
ldc_w 2131493039
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/setActivityTitle(Ljava/lang/String;)V
aload 0
ldc_w 2131624075
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/getResources()Landroid/content/res/Resources;
ldc_w 2131493040
iconst_1
anewarray java/lang/Object
dup
iconst_0
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_APP_NAME Ljava/lang/String;
aastore
invokevirtual android/content/res/Resources/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/mIsFromSetting Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/leftBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
L2:
aload 1
ldc "account"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
ldc_w 2131624077
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
ldc_w 2131624079
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/Bind91Account/mTvJobNumberPwd Landroid/widget/EditText;
aload 0
aload 0
ldc_w 2131624082
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/Bind91Account/mTv91Account Landroid/widget/EditText;
aload 0
aload 0
ldc_w 2131624084
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/Bind91Account/mTv91Pwd Landroid/widget/EditText;
aload 0
aload 0
ldc_w 2131624085
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/activity/Bind91Account/mLlCheckcodeFor91 Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/mLlCheckcodeFor91 Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
aload 0
ldc_w 2131624086
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/Bind91Account/mEtCheckcodeFor91 Landroid/widget/EditText;
aload 0
aload 0
ldc_w 2131624088
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/Bind91Account/mIvCheckcodeFor91 Landroid/widget/ImageView;
aload 0
ldc_w 2131624089
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
ldc_w 2131624080
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
ldc_w 2131624091
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/getCheckcodeListener Lcom/nd/rj/common/login/NdMiscCallbackListener$IGetCheckcodeListener;
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/setOnGetCheckcodeListener(Lcom/nd/rj/common/login/NdMiscCallbackListener$IGetCheckcodeListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/myprocesslistener Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/setProcessListener(Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/myloginprocesslistener Lcom/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener;
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/setLoginProcessListener(Lcom/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener;)V
L0:
iconst_1
ireturn
L1:
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/leftBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/rightBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/rightBtn Landroid/widget/Button;
aload 0
ldc_w 2131494118
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/rightBtn Landroid/widget/Button;
ldc_w 2130837933
invokevirtual android/widget/Button/setBackgroundResource(I)V
goto L2
.limit locals 2
.limit stack 7
.end method

.method protected lunchMainActivity()V
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
iconst_0
invokevirtual com/nd/android/u/cloud/data/GlobalVariable/setBlockNetAvailreconnetFlag(Z)V
invokestatic com/product/android/business/login/LoginFlag/saveLOGINEnumType()V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
invokevirtual com/nd/android/u/ChatEntry/loginIMS()V
aload 0
invokestatic com/nd/android/u/cloud/helper/Utils/lunchMainLifeActivity(Landroid/content/Context;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/finish()V
return
.limit locals 1
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
lookupswitch
2131624080 : L0
2131624089 : L1
2131624091 : L2
default : L3
L3:
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/handler Landroid/os/Handler;
invokestatic com/nd/android/u/cloud/activity/login/NdRegist/setHandler(Landroid/os/Handler;)V
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/handler Landroid/os/Handler;
invokestatic com/nd/android/u/cloud/activity/login/NdLogin/setHandler(Landroid/os/Handler;)V
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/handler Landroid/os/Handler;
invokestatic com/nd/android/u/cloud/activity/login/NdRegistMobile/setHandler(Landroid/os/Handler;)V
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/mTv91Pwd Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
putfield com/nd/android/u/cloud/data/GlobalVariable/bind91CurrUserPwd Ljava/lang/String;
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/cloud/activity/login/NdCommonRegist
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 3
aload 3
ldc "LOGIN_TYPE"
iconst_1
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 3
ldc "USER"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
aload 1
aload 3
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/startActivity(Landroid/content/Intent;)V
return
L2:
aload 0
invokespecial com/nd/android/u/cloud/activity/Bind91Account/checkInput()I
istore 2
iload 2
ifne L4
new com/nd/android/u/cloud/activity/Bind91Account$progressBind
dup
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/mCtx Landroid/content/Context;
ldc_w 2131493050
invokespecial com/nd/android/u/cloud/activity/Bind91Account$progressBind/<init>(Lcom/nd/android/u/cloud/activity/Bind91Account;Landroid/content/Context;I)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/Bind91Account$progressBind/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L4:
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account/mCtx Landroid/content/Context;
iload 2
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L1:
new com/nd/android/u/cloud/activity/Bind91Account$ProgressGetCheckcode
dup
aload 0
aload 0
ldc_w 2131494444
invokespecial com/nd/android/u/cloud/activity/Bind91Account$ProgressGetCheckcode/<init>(Lcom/nd/android/u/cloud/activity/Bind91Account;Landroid/content/Context;I)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/Bind91Account$ProgressGetCheckcode/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 4
.limit stack 5
.end method

.method protected rightBtnHandle()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/lunchMainActivity()V
return
.limit locals 1
.limit stack 1
.end method
