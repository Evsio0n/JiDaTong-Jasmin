.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/LoginActivity
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/cloud/activity/LoginActivity$1
.inner class inner com/nd/android/u/cloud/activity/LoginActivity$2
.inner class inner com/nd/android/u/cloud/activity/LoginActivity$3
.inner class inner com/nd/android/u/cloud/activity/LoginActivity$4
.inner class inner com/nd/android/u/cloud/activity/LoginActivity$5
.inner class inner com/nd/android/u/cloud/activity/LoginActivity$6

.field public static final 'ACCOUNT_NAME' Ljava/lang/String; = "account_name"

.field public static final 'CHANGE_LOGIN_ACCOUNT_REQUEST_CODE' I = 953


.field public static final 'HAS_RETURN_BTN' Ljava/lang/String; = "has_return_btn"

.field public static final 'INIT_UAP_ACCOUNT' Ljava/lang/String; = "init_uap_account"

.field public static final 'IS_NEED_FINISH' Ljava/lang/String; = "is_need_finish"

.field private 'handler' Landroid/os/Handler;

.field private 'isNeedReInit' Z

.field private 'listner' Lcom/nd/rj/common/login/interfaces/LoginProcessListner;

.field private 'mAccountInput' Lcom/nd/rj/common/login/jobnumber/InputWidget;

.field protected 'mCaptcha' Lcom/nd/rj/common/login/jobnumber/CaptchaWidget;

.field private 'mImm' Landroid/view/inputmethod/InputMethodManager;

.field private 'mPasswordInput' Lcom/nd/rj/common/login/jobnumber/InputWidget;

.field private 'mStrAppUserProtocol' Ljava/lang/String;

.field private 'mTvUserProtocol' Landroid/widget/TextView;

.field private 'progressDialog' Landroid/app/ProgressDialog;

.field private 'showReturnBtn' Z

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/LoginActivity/showReturnBtn Z
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/LoginActivity/isNeedReInit Z
aload 0
new com/nd/android/u/cloud/activity/LoginActivity$5
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/LoginActivity$5/<init>(Lcom/nd/android/u/cloud/activity/LoginActivity;)V
putfield com/nd/android/u/cloud/activity/LoginActivity/listner Lcom/nd/rj/common/login/interfaces/LoginProcessListner;
aload 0
new com/nd/android/u/cloud/activity/LoginActivity$6
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/LoginActivity$6/<init>(Lcom/nd/android/u/cloud/activity/LoginActivity;)V
putfield com/nd/android/u/cloud/activity/LoginActivity/handler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/LoginActivity;)Lcom/nd/rj/common/login/jobnumber/InputWidget;
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mAccountInput Lcom/nd/rj/common/login/jobnumber/InputWidget;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/LoginActivity;)Lcom/nd/rj/common/login/jobnumber/InputWidget;
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mPasswordInput Lcom/nd/rj/common/login/jobnumber/InputWidget;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/LoginActivity;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/LoginActivity/setDropDownViewState()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/LoginActivity;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/LoginActivity/onJimeiClickForgetPassword()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/LoginActivity;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/LoginActivity/onClickForgetPasswordPhone()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/activity/LoginActivity;)Z
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/isNeedReInit Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$502(Lcom/nd/android/u/cloud/activity/LoginActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/LoginActivity/isNeedReInit Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/android/u/cloud/activity/LoginActivity;)Lcom/nd/rj/common/login/interfaces/LoginProcessListner;
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/listner Lcom/nd/rj/common/login/interfaces/LoginProcessListner;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/cloud/activity/LoginActivity;ILjava/lang/Object;)V
aload 0
iload 1
aload 2
invokespecial com/nd/android/u/cloud/activity/LoginActivity/sendMessage(ILjava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$800(Lcom/nd/android/u/cloud/activity/LoginActivity;)Z
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/showReturnBtn Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/cloud/activity/LoginActivity;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/progressDialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method private doLogin()V
aload 0
invokestatic ims/utils/CommUtil/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mAccountInput Lcom/nd/rj/common/login/jobnumber/InputWidget;
invokevirtual com/nd/rj/common/login/jobnumber/InputWidget/getText()Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
ldc_w 2131494376
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mPasswordInput Lcom/nd/rj/common/login/jobnumber/InputWidget;
invokevirtual com/nd/rj/common/login/jobnumber/InputWidget/getText()Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aload 0
ldc_w 2131494376
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L2:
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mCaptcha Lcom/nd/rj/common/login/jobnumber/CaptchaWidget;
invokevirtual com/nd/rj/common/login/jobnumber/CaptchaWidget/getCaptchaText()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mCaptcha Lcom/nd/rj/common/login/jobnumber/CaptchaWidget;
invokevirtual com/nd/rj/common/login/jobnumber/CaptchaWidget/isShow()Z
ifeq L3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
aload 0
ldc_w 2131494384
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L3:
new com/nd/rj/common/login/entity/LoginParam
dup
invokespecial com/nd/rj/common/login/entity/LoginParam/<init>()V
astore 4
aload 4
aload 1
putfield com/nd/rj/common/login/entity/LoginParam/account Ljava/lang/String;
aload 4
aload 2
putfield com/nd/rj/common/login/entity/LoginParam/pwd Ljava/lang/String;
aload 4
aload 3
putfield com/nd/rj/common/login/entity/LoginParam/captcha Ljava/lang/String;
aload 4
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_LOGIN_PSW_ENCODING I
putfield com/nd/rj/common/login/entity/LoginParam/encryptType I
aload 0
aload 4
invokespecial com/nd/android/u/cloud/activity/LoginActivity/loginInThread(Lcom/nd/rj/common/login/entity/LoginParam;)V
return
L0:
aload 0
ldc_w 2131494162
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
.limit locals 5
.limit stack 2
.end method

.method private forgetPassword()V
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
bipush 55
if_icmpne L0
new com/nd/android/u/cloud/activity/guide/JimeiDlgFindPsw
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/JimeiDlgFindPsw/<init>(Landroid/content/Context;)V
astore 1
aload 1
new com/nd/android/u/cloud/activity/LoginActivity$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/LoginActivity$2/<init>(Lcom/nd/android/u/cloud/activity/LoginActivity;)V
invokevirtual com/nd/android/u/cloud/activity/guide/JimeiDlgFindPsw/setAfterDismissListener(Lcom/nd/android/u/cloud/activity/guide/DlgFindPsw$OnDlgBtnListener;)V
aload 1
invokevirtual com/nd/android/u/cloud/activity/guide/JimeiDlgFindPsw/show()V
return
L0:
new com/nd/android/u/cloud/activity/guide/DlgFindPsw
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/DlgFindPsw/<init>(Landroid/content/Context;)V
astore 1
aload 1
new com/nd/android/u/cloud/activity/LoginActivity$3
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/LoginActivity$3/<init>(Lcom/nd/android/u/cloud/activity/LoginActivity;)V
invokevirtual com/nd/android/u/cloud/activity/guide/DlgFindPsw/setOnAfterDismissListener(Lcom/nd/android/u/cloud/activity/guide/DlgFindPsw$OnDlgBtnListener;)V
aload 1
invokevirtual com/nd/android/u/cloud/activity/guide/DlgFindPsw/show()V
return
.limit locals 2
.limit stack 4
.end method

.method private hasLoginAccount()Z
aload 0
invokestatic com/nd/rj/common/login/LoginInterfaceManager/getOapLastLoginUser(Landroid/content/Context;)Lcom/nd/rj/common/login/entity/OapUser;
ifnonnull L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method private initInputView()V
aload 0
ldc_w 2131624246
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/findViewById(I)Landroid/view/View;
astore 1
aload 0
aload 1
ldc_w 2131624247
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/rj/common/login/jobnumber/InputWidget
putfield com/nd/android/u/cloud/activity/LoginActivity/mAccountInput Lcom/nd/rj/common/login/jobnumber/InputWidget;
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mAccountInput Lcom/nd/rj/common/login/jobnumber/InputWidget;
aload 1
ldc_w 2131624035
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
invokevirtual com/nd/rj/common/login/jobnumber/InputWidget/setPopupAnchorView(Landroid/view/View;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/LoginActivity/setDropDownViewState()V
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mAccountInput Lcom/nd/rj/common/login/jobnumber/InputWidget;
ldc_w 34952
invokevirtual com/nd/rj/common/login/jobnumber/InputWidget/setEditTextId(I)V
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mAccountInput Lcom/nd/rj/common/login/jobnumber/InputWidget;
ldc_w 2131494024
invokevirtual com/nd/rj/common/login/jobnumber/InputWidget/setHint(I)V
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mAccountInput Lcom/nd/rj/common/login/jobnumber/InputWidget;
new com/nd/android/u/cloud/activity/LoginActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/LoginActivity$1/<init>(Lcom/nd/android/u/cloud/activity/LoginActivity;)V
invokevirtual com/nd/rj/common/login/jobnumber/InputWidget/setInputWidgetInteract(Lcom/nd/rj/common/login/jobnumber/InputWidget$InputWidgetInteract;)V
aload 0
aload 1
ldc_w 2131624248
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/rj/common/login/jobnumber/InputWidget
putfield com/nd/android/u/cloud/activity/LoginActivity/mPasswordInput Lcom/nd/rj/common/login/jobnumber/InputWidget;
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mPasswordInput Lcom/nd/rj/common/login/jobnumber/InputWidget;
sipush 128
invokevirtual com/nd/rj/common/login/jobnumber/InputWidget/setInputType(I)V
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mPasswordInput Lcom/nd/rj/common/login/jobnumber/InputWidget;
ldc_w 39321
invokevirtual com/nd/rj/common/login/jobnumber/InputWidget/setEditTextId(I)V
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mPasswordInput Lcom/nd/rj/common/login/jobnumber/InputWidget;
ldc_w 2131494035
invokevirtual com/nd/rj/common/login/jobnumber/InputWidget/setHint(I)V
aload 0
invokespecial com/nd/android/u/cloud/activity/LoginActivity/initInputWidget()V
aload 0
aload 0
ldc_w 2131624039
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/rj/common/login/jobnumber/CaptchaWidget
putfield com/nd/android/u/cloud/activity/LoginActivity/mCaptcha Lcom/nd/rj/common/login/jobnumber/CaptchaWidget;
aload 0
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/getResources()Landroid/content/res/Resources;
astore 2
aload 2
ldc_w 2131493923
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
aload 2
ldc_w 2131493928
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 2
aload 0
ldc_w 2131624252
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 3
aload 0
ldc_w 2131624253
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 4
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
bipush 55
if_icmpeq L0
aload 4
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L0:
aload 3
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 4
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
ldc_w 2131624250
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/LoginActivity/mTvUserProtocol Landroid/widget/TextView;
getstatic com/nd/android/u/cloud/XYExtentConfig/LOGING_SOFT_PROTOCOL Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mTvUserProtocol Landroid/widget/TextView;
iconst_4
invokevirtual android/widget/TextView/setVisibility(I)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mTvUserProtocol Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_APP_NAME Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131494165
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/LoginActivity/mStrAppUserProtocol Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u767b\u5f55\u5373\u540c\u610f\u300a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mStrAppUserProtocol Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u300b"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mTvUserProtocol Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mTvUserProtocol Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 5
.limit stack 4
.end method

.method private initInputWidget()V
aconst_null
astore 1
aload 0
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/getIntent()Landroid/content/Intent;
astore 2
aload 2
ifnull L0
aload 2
ldc "init_uap_account"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 1
L0:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
invokestatic com/nd/rj/common/login/LoginInterfaceManager/getLastUserAccount(Landroid/content/Context;)Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mAccountInput Lcom/nd/rj/common/login/jobnumber/InputWidget;
aload 1
invokevirtual com/nd/rj/common/login/jobnumber/InputWidget/setText(Ljava/lang/String;)V
L2:
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mAccountInput Lcom/nd/rj/common/login/jobnumber/InputWidget;
aload 1
invokevirtual com/nd/rj/common/login/jobnumber/InputWidget/setText(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method private initTitleBar()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/getIntent()Landroid/content/Intent;
astore 1
aload 1
ifnull L0
aload 0
aload 1
ldc "has_return_btn"
iconst_1
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
putfield com/nd/android/u/cloud/activity/LoginActivity/showReturnBtn Z
L0:
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/showReturnBtn Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/leftBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/leftBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
L2:
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/titleText Landroid/widget/TextView;
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_APP_NAME Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
ldc_w 2131624249
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/leftBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
goto L2
.limit locals 2
.limit stack 4
.end method

.method private loginInThread(Lcom/nd/rj/common/login/entity/LoginParam;)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/progressDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
L1:
invokestatic com/common/android/utils/concurrent/NdExecutors/getCachedThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/cloud/activity/LoginActivity$4
dup
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/LoginActivity$4/<init>(Lcom/nd/android/u/cloud/activity/LoginActivity;Lcom/nd/rj/common/login/entity/LoginParam;)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
L2:
astore 2
goto L1
.limit locals 3
.limit stack 5
.end method

.method private onClickForgetPassword()V
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mAccountInput Lcom/nd/rj/common/login/jobnumber/InputWidget;
invokevirtual com/nd/rj/common/login/jobnumber/InputWidget/getText()Ljava/lang/String;
astore 2
aload 2
invokestatic com/nd/android/u/cloud/helper/Utils/CheckIsMobileNum(Ljava/lang/String;)Z
ifeq L0
aload 1
ldc "https://reguap.99.com/uaplogin/forget/phone?appid=101&returnurl=https://oa.99.com/sso?url=https://desk.oa.99.com/&username="
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 2
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L1:
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/cloud/activity/LoginForgetPasswordActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "url"
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/startActivity(Landroid/content/Intent;)V
return
L0:
aload 2
invokestatic com/nd/android/u/cloud/helper/Utils/CheckIsEmail(Ljava/lang/String;)Z
ifeq L2
aload 1
ldc "https://reguap.99.com/uaplogin/forget/email?appid=101&returnurl=https://oa.99.com/sso?url=https://desk.oa.99.com/&username="
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 2
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L1
L2:
aload 1
ldc "https://reguap.99.com/uaplogin/forget/email?appid=101&returnurl=https://oa.99.com/sso?url=https://desk.oa.99.com/&username="
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L1
.limit locals 3
.limit stack 4
.end method

.method private onClickForgetPasswordPhone()V
new android/content/Intent
dup
ldc "android.intent.action.DIAL"
ldc "tel:0591-87085707"
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokespecial android/content/Intent/<init>(Ljava/lang/String;Landroid/net/Uri;)V
astore 1
aload 1
ldc_w 268435456
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method

.method private onJimeiClickForgetPassword()V
new android/content/Intent
dup
aload 0
ldc com/product/android/ui/activity/WebViewActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_RETURN Ljava/lang/String;
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_URL Ljava/lang/String;
ldc "https://myid.jmu.edu.cn/ids/LoginHelp.aspx"
invokevirtual java/lang/String/toString()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_NEED_TITLE Ljava/lang/String;
ldc "\u96c6\u5927\u901a\u884c\u8bc1\u767b\u5f55\u8bf4\u660e"
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method

.method private returnWithoutLogin()V
getstatic com/nd/rj/common/login/jobnumber/JobNumberLoginManager/INSTANCE Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;
invokevirtual com/nd/rj/common/login/jobnumber/JobNumberLoginManager/getLoginResultCallback()Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface com/nd/rj/common/login/jobnumber/LoginResultCallback/returnWithoutLogin()V 0
L0:
return
.limit locals 2
.limit stack 1
.end method

.method private sendMessage(ILjava/lang/Object;)V
invokestatic android/os/Message/obtain()Landroid/os/Message;
astore 3
aload 3
iload 1
putfield android/os/Message/what I
aload 3
aload 2
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/handler Landroid/os/Handler;
aload 3
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 4
.limit stack 2
.end method

.method private setDropDownViewState()V
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mAccountInput Lcom/nd/rj/common/login/jobnumber/InputWidget;
astore 2
aload 0
invokespecial com/nd/android/u/cloud/activity/LoginActivity/hasLoginAccount()Z
ifeq L0
iconst_0
istore 1
L1:
aload 2
iload 1
invokevirtual com/nd/rj/common/login/jobnumber/InputWidget/setDropDownViewState(I)V
return
L0:
bipush 8
istore 1
goto L1
.limit locals 3
.limit stack 2
.end method

.method public finish()V
getstatic com/nd/rj/common/login/jobnumber/JobNumberLoginManager/INSTANCE Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;
aconst_null
invokevirtual com/nd/rj/common/login/jobnumber/JobNumberLoginManager/setLoginResultCallback(Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;)Z
pop
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/finish()V
return
.limit locals 1
.limit stack 2
.end method

.method public handler_CMD_33()V
return
.limit locals 1
.limit stack 0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
aload 0
iload 1
iload 2
aload 3
invokespecial com/product/android/ui/activity/HeaderActivity/onActivityResult(IILandroid/content/Intent;)V
iload 1
sipush 953
if_icmpne L0
iload 2
iconst_m1
if_icmpne L0
aload 3
ifnull L0
aload 3
ldc "account_name"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mAccountInput Lcom/nd/rj/common/login/jobnumber/InputWidget;
aload 4
invokevirtual com/nd/rj/common/login/jobnumber/InputWidget/setText(Ljava/lang/String;)V
aload 3
ldc "is_need_finish"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
ifeq L0
aload 0
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/finish()V
L0:
return
.limit locals 5
.limit stack 4
.end method

.method public onBackPressed()V
aload 0
invokespecial com/nd/android/u/cloud/activity/LoginActivity/returnWithoutLogin()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onBackPressed()V
return
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
lookupswitch
2131624249 : L0
2131624250 : L1
2131624252 : L2
2131624253 : L3
2131624281 : L4
default : L5
L5:
return
L4:
aload 0
invokespecial com/nd/android/u/cloud/activity/LoginActivity/returnWithoutLogin()V
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mImm Landroid/view/inputmethod/InputMethodManager;
invokevirtual android/view/inputmethod/InputMethodManager/isActive()Z
ifeq L6
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mImm Landroid/view/inputmethod/InputMethodManager;
aload 1
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
L6:
aload 0
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/finish()V
return
L0:
aload 0
invokespecial com/nd/android/u/cloud/activity/LoginActivity/doLogin()V
return
L2:
aload 0
invokespecial com/nd/android/u/cloud/activity/LoginActivity/forgetPassword()V
return
L3:
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/cloud/activity/guide/VerificationActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "isNeedBack"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
aload 1
sipush 953
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/startActivityForResult(Landroid/content/Intent;I)V
return
L1:
new android/content/Intent
dup
aload 0
ldc com/product/android/ui/activity/WebViewActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_RETURN Ljava/lang/String;
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_URL Ljava/lang/String;
getstatic com/nd/android/u/cloud/XYExtentConfig/LOGING_SOFT_PROTOCOL Ljava/lang/String;
invokevirtual java/lang/String/toString()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_NEED_TITLE Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/mStrAppUserProtocol Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_BOTTOMHIDE Ljava/lang/String;
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_HASCOOKIE Ljava/lang/String;
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903088
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/setContentView(I)V
aload 0
aload 0
ldc "input_method"
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
putfield com/nd/android/u/cloud/activity/LoginActivity/mImm Landroid/view/inputmethod/InputMethodManager;
aload 0
new android/app/ProgressDialog
dup
aload 0
invokespecial android/app/ProgressDialog/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/cloud/activity/LoginActivity/progressDialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity/progressDialog Landroid/app/ProgressDialog;
aload 0
ldc_w 2131494406
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/getString(I)Ljava/lang/String;
invokevirtual android/app/ProgressDialog/setMessage(Ljava/lang/CharSequence;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/initComponent()V
aload 0
invokespecial com/nd/android/u/cloud/activity/LoginActivity/initTitleBar()V
aload 0
invokespecial com/nd/android/u/cloud/activity/LoginActivity/initInputView()V
return
.limit locals 2
.limit stack 4
.end method
