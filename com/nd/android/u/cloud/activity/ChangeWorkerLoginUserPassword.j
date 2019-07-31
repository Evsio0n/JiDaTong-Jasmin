.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$1
.inner class inner com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$2
.inner class inner com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$3
.inner class inner com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$4
.inner class inner com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$5
.inner class private static ChangeJobNumberPwdTask inner com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask outer com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword
.inner class inner com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask$1

.field public static final 'IS_FROM_SETTING' Ljava/lang/String; = "is_from_setting"

.field private static final 'MAX_PWD_LENGTH' I = 12


.field private static final 'MIN_PWD_LENGTH' I = 6


.field private 'mCtx' Landroid/content/Context;

.field private 'mIsFromSetting' Z

.field private 'mTvNewPwd' Landroid/widget/EditText;

.field private 'mTvNewRepeatPwd' Landroid/widget/EditText;

.field private 'mTvOldPwd' Landroid/widget/EditText;

.field private 'mWorkerUserInfo' Lcom/product/android/business/login/JobNumberUserInfo;

.field private 'onTextChange' Landroid/text/TextWatcher;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
new com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$5
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$5/<init>(Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword;)V
putfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/onTextChange Landroid/text/TextWatcher;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword;)I
aload 0
invokespecial com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/checkInput()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mTvOldPwd Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mTvNewPwd Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword;)Z
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mIsFromSetting Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword;)Lcom/product/android/business/login/JobNumberUserInfo;
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mWorkerUserInfo Lcom/product/android/business/login/JobNumberUserInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method private checkInput()I
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mTvOldPwd Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc_w 2131494267
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mTvNewPwd Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 2
aload 2
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
ldc_w 2131494265
ireturn
L1:
aload 2
invokevirtual java/lang/String/length()I
istore 1
iload 1
bipush 6
if_icmplt L2
iload 1
bipush 12
if_icmple L3
L2:
ldc_w 2131494264
ireturn
L3:
aload 3
aload 2
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
ldc_w 2131494287
ireturn
L4:
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mTvNewRepeatPwd Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 3
aload 3
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
ldc_w 2131494269
ireturn
L5:
aload 2
aload 3
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L6
ldc_w 2131494268
ireturn
L6:
iconst_0
ireturn
.limit locals 4
.limit stack 2
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
ldc_w 2130903057
invokevirtual com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/setContentView(I)V
aload 0
aload 0
putfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mCtx Landroid/content/Context;
aload 0
invokevirtual com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/initEvent()V
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/getIntent()Landroid/content/Intent;
ldc "is_from_setting"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
putfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mIsFromSetting Z
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/GetUserInfo(J)Lcom/product/android/business/login/JobNumberUserInfo;
putfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mWorkerUserInfo Lcom/product/android/business/login/JobNumberUserInfo;
aload 0
ldc_w 2131624096
invokevirtual com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mIsFromSetting Z
ifeq L1
iconst_0
istore 2
ldc_w 2131494292
istore 3
L2:
aload 1
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 1
aload 0
ldc_w 2131493121
invokevirtual com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_APP_NAME Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/leftBtn Landroid/widget/Button;
iload 2
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
aload 0
iload 3
invokevirtual com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/setActivityTitle(Ljava/lang/String;)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpeq L3
aload 0
ldc_w 2131624076
invokevirtual com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
ldc_w 2131494278
invokevirtual android/widget/TextView/setText(I)V
L3:
aload 0
ldc_w 2131624077
invokevirtual com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 5
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnonnull L4
aload 5
ldc "\u8bf7\u8f93\u5165\u5b66\u53f7"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L5:
aload 0
aload 0
ldc_w 2131624079
invokevirtual com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mTvOldPwd Landroid/widget/EditText;
aload 0
aload 0
ldc_w 2131624082
invokevirtual com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mTvNewPwd Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mTvNewPwd Landroid/widget/EditText;
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
aload 0
ldc_w 2131494276
invokevirtual com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
bipush 6
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
bipush 12
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/EditText/setHint(Ljava/lang/CharSequence;)V
aload 0
aload 0
ldc_w 2131624084
invokevirtual com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mTvNewRepeatPwd Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mTvOldPwd Landroid/widget/EditText;
new com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$1
dup
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mTvOldPwd Landroid/widget/EditText;
invokespecial com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$1/<init>(Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword;Landroid/widget/EditText;)V
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mTvNewPwd Landroid/widget/EditText;
new com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$2
dup
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mTvNewPwd Landroid/widget/EditText;
invokespecial com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$2/<init>(Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword;Landroid/widget/EditText;)V
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mTvNewRepeatPwd Landroid/widget/EditText;
new com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$3
dup
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mTvNewRepeatPwd Landroid/widget/EditText;
invokespecial com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$3/<init>(Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword;Landroid/widget/EditText;)V
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
ldc_w 2131624091
invokevirtual com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/findViewById(I)Landroid/view/View;
new com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$4
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$4/<init>(Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
L0:
iconst_1
ireturn
L1:
bipush 8
istore 2
ldc_w 2131494282
istore 3
goto L2
L4:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getAccount()Ljava/lang/String; 0
astore 4
aload 4
astore 1
aload 4
ldc "@"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L6
aload 4
iconst_0
aload 4
ldc "@"
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 1
L6:
aload 5
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L5
.limit locals 6
.limit stack 7
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iload 1
iconst_4
if_icmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/mIsFromSetting Z
ifne L0
aload 0
invokestatic com/nd/android/u/cloud/helper/PubFunction/softExit(Landroid/content/Context;)V
L0:
aload 0
iload 1
aload 2
invokespecial com/product/android/ui/activity/HeaderActivity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method
