.bytecode 50.0
.class public synchronized com/nd/rj/common/login/view/NdRegistMobile
.super android/app/Activity
.implements android/view/View$OnClickListener
.inner class inner com/nd/rj/common/login/view/NdRegistMobile$1
.inner class inner com/nd/rj/common/login/view/NdRegistMobile$2
.inner class inner com/nd/rj/common/login/view/NdRegistMobile$3
.inner class private ProgressRegist inner com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist outer com/nd/rj/common/login/view/NdRegistMobile
.inner class private ProgressSendCode inner com/nd/rj/common/login/view/NdRegistMobile$ProgressSendCode outer com/nd/rj/common/login/view/NdRegistMobile

.field private static final 'MESSAGE_TIMER' I = 110


.field private static final 'RESEND_TIME' I = 60


.field private 'agreeAndRead' Landroid/widget/CheckBox;

.field private 'cbShowPassword' Landroid/widget/CheckBox;

.field private 'etAccount' Landroid/widget/EditText;

.field private 'etMobile' Landroid/widget/EditText;

.field private 'etNickname' Landroid/widget/EditText;

.field private 'etPassword' Landroid/widget/EditText;

.field private 'getCode' Landroid/widget/Button;

.field public 'isResendCode' Z

.field private 'mHanlder' Landroid/os/Handler;

.field private 'mNickName' Ljava/lang/String;

.field private 'mPassword' Ljava/lang/String;

.field private 'mPostedData' Landroid/os/Bundle;

.field private 'mVerifycode' Ljava/lang/String;

.field private 'matcher' Ljava/util/regex/Matcher;

.field private 'ptnPassword' Ljava/util/regex/Pattern;

.field private 'rLayout1' Landroid/widget/RelativeLayout;

.field private 'rLayout2' Landroid/widget/RelativeLayout;

.field private 'registFinish' Landroid/widget/Button;

.field private 'resend' Landroid/widget/TextView;

.field private 'tv91Clause' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
iconst_0
putfield com/nd/rj/common/login/view/NdRegistMobile/isResendCode Z
aload 0
new com/nd/rj/common/login/view/NdRegistMobile$2
dup
aload 0
invokespecial com/nd/rj/common/login/view/NdRegistMobile$2/<init>(Lcom/nd/rj/common/login/view/NdRegistMobile;)V
putfield com/nd/rj/common/login/view/NdRegistMobile/mHanlder Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/rj/common/login/view/NdRegistMobile;)Landroid/os/Bundle;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/mPostedData Landroid/os/Bundle;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/rj/common/login/view/NdRegistMobile;)Landroid/widget/EditText;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/etMobile Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/rj/common/login/view/NdRegistMobile;)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/mPassword Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/rj/common/login/view/NdRegistMobile;)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/mNickName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/rj/common/login/view/NdRegistMobile;)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/mVerifycode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/rj/common/login/view/NdRegistMobile;)Landroid/widget/TextView;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/resend Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/rj/common/login/view/NdRegistMobile;)Landroid/os/Handler;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/mHanlder Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/rj/common/login/view/NdRegistMobile;)V
aload 0
invokespecial com/nd/rj/common/login/view/NdRegistMobile/sendHandlerMsg()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/rj/common/login/view/NdRegistMobile;)Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/rLayout1 Landroid/widget/RelativeLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/rj/common/login/view/NdRegistMobile;)Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/rLayout2 Landroid/widget/RelativeLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method private changeShowPasswordState()V
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/cbShowPassword Landroid/widget/CheckBox;
invokevirtual android/widget/CheckBox/isChecked()Z
ifeq L0
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/etPassword Landroid/widget/EditText;
invokestatic android/text/method/HideReturnsTransformationMethod/getInstance()Landroid/text/method/HideReturnsTransformationMethod;
invokevirtual android/widget/EditText/setTransformationMethod(Landroid/text/method/TransformationMethod;)V
return
L0:
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/etPassword Landroid/widget/EditText;
invokestatic android/text/method/PasswordTransformationMethod/getInstance()Landroid/text/method/PasswordTransformationMethod;
invokevirtual android/widget/EditText/setTransformationMethod(Landroid/text/method/TransformationMethod;)V
return
.limit locals 1
.limit stack 2
.end method

.method private checkInput()I
aload 0
invokespecial com/nd/rj/common/login/view/NdRegistMobile/checkUserName()I
istore 1
iload 1
ifeq L0
iload 1
ireturn
L0:
aload 0
invokespecial com/nd/rj/common/login/view/NdRegistMobile/checkPassword()I
istore 1
iload 1
ifeq L1
iload 1
ireturn
L1:
aload 0
invokespecial com/nd/rj/common/login/view/NdRegistMobile/checkNickName()I
istore 1
iload 1
ifeq L2
iload 1
ireturn
L2:
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method private checkNickName()I
aload 0
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/etNickname Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
putfield com/nd/rj/common/login/view/NdRegistMobile/mNickName Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/mNickName Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
getstatic com/nd/rj/common/R$string/nd_ui_illegal_nickname I
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private checkPassword()I
aload 0
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/etPassword Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
putfield com/nd/rj/common/login/view/NdRegistMobile/mPassword Ljava/lang/String;
aload 0
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/ptnPassword Ljava/util/regex/Pattern;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/mPassword Ljava/lang/String;
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
putfield com/nd/rj/common/login/view/NdRegistMobile/matcher Ljava/util/regex/Matcher;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/matcher Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/matches()Z
ifne L0
getstatic com/nd/rj/common/R$string/nd_ui_illegal_password I
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 3
.end method

.method private checkUserName()I
aload 0
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/etAccount Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
putfield com/nd/rj/common/login/view/NdRegistMobile/mVerifycode Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/mVerifycode Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
getstatic com/nd/rj/common/R$string/nd_ui_illegal_verifycode I
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private doGetCode()V
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/agreeAndRead Landroid/widget/CheckBox;
invokevirtual android/widget/CheckBox/isChecked()Z
ifeq L0
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/etMobile Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
ldc ""
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
getstatic com/nd/rj/common/R$string/nd_no_phoneNum_error I
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L1:
aload 1
invokestatic com/nd/rj/common/login/NdLoginComFun/isMobileNO(Ljava/lang/String;)Z
ifne L2
aload 0
getstatic com/nd/rj/common/R$string/nd_no_phoneNum_error2 I
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L2:
aload 0
invokestatic com/nd/rj/common/util/ComfunHelp/isNetworkAvailable(Landroid/content/Context;)Z
ifeq L3
new com/nd/rj/common/login/view/NdRegistMobile$ProgressSendCode
dup
aload 0
aload 0
getstatic com/nd/rj/common/R$string/nd_send_code_registing I
invokespecial com/nd/rj/common/login/view/NdRegistMobile$ProgressSendCode/<init>(Lcom/nd/rj/common/login/view/NdRegistMobile;Landroid/content/Context;I)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/rj/common/login/view/NdRegistMobile$ProgressSendCode/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L3:
aload 0
ldc "\u8bf7\u8fde\u63a5\u7f51\u7edc\u540e\u518d\u5c1d\u8bd5\uff01"
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L0:
aload 0
getstatic com/nd/rj/common/R$string/nd_91_clause_error I
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
.limit locals 2
.limit stack 5
.end method

.method private iniView()V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/tv91Clause I
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/rj/common/login/view/NdRegistMobile/tv91Clause Landroid/widget/TextView;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/tv91Clause Landroid/widget/TextView;
ldc_w -16776961
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/rLayout1 I
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/rj/common/login/view/NdRegistMobile/rLayout1 Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/rLayout1 Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/rLayout2 I
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/rj/common/login/view/NdRegistMobile/rLayout2 Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/rLayout2 Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/registFinish I
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/rj/common/login/view/NdRegistMobile/registFinish Landroid/widget/Button;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/registFinish Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/getCode I
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/rj/common/login/view/NdRegistMobile/getCode Landroid/widget/Button;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/getCode Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/resend I
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/rj/common/login/view/NdRegistMobile/resend Landroid/widget/TextView;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/resend Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/resend Landroid/widget/TextView;
aload 0
getstatic com/nd/rj/common/R$string/nd_send_repeat I
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
bipush 60
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/cbShowPassword I
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/nd/rj/common/login/view/NdRegistMobile/cbShowPassword Landroid/widget/CheckBox;
aload 0
aload 0
getstatic com/nd/rj/common/R$id/agree I
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/nd/rj/common/login/view/NdRegistMobile/agreeAndRead Landroid/widget/CheckBox;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/agreeAndRead Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setChecked(Z)V
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/cbShowPassword Landroid/widget/CheckBox;
aload 0
invokevirtual android/widget/CheckBox/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/agreeAndRead Landroid/widget/CheckBox;
aload 0
invokevirtual android/widget/CheckBox/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/tv91Clause Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/etAccount I
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/rj/common/login/view/NdRegistMobile/etAccount Landroid/widget/EditText;
aload 0
aload 0
getstatic com/nd/rj/common/R$id/etPassword I
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/rj/common/login/view/NdRegistMobile/etPassword Landroid/widget/EditText;
aload 0
aload 0
getstatic com/nd/rj/common/R$id/etNickname I
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/rj/common/login/view/NdRegistMobile/etNickname Landroid/widget/EditText;
aload 0
aload 0
getstatic com/nd/rj/common/R$id/etMobile I
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/rj/common/login/view/NdRegistMobile/etMobile Landroid/widget/EditText;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/etPassword Landroid/widget/EditText;
new com/nd/rj/common/login/view/NdRegistMobile$1
dup
aload 0
invokespecial com/nd/rj/common/login/view/NdRegistMobile$1/<init>(Lcom/nd/rj/common/login/view/NdRegistMobile;)V
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
ldc "[A-Za-z0-9]{7,12}"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
putfield com/nd/rj/common/login/view/NdRegistMobile/ptnPassword Ljava/util/regex/Pattern;
aload 0
invokespecial com/nd/rj/common/login/view/NdRegistMobile/changeShowPasswordState()V
aload 0
aload 0
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
putfield com/nd/rj/common/login/view/NdRegistMobile/mPostedData Landroid/os/Bundle;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/isResendCode Z
ifne L0
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/rLayout1 Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/rLayout2 Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L0:
return
.limit locals 1
.limit stack 6
.end method

.method private sendHandlerMsg()V
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/resend Landroid/widget/TextView;
aconst_null
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
new com/nd/rj/common/login/view/NdRegistMobile$3
dup
aload 0
invokespecial com/nd/rj/common/login/view/NdRegistMobile$3/<init>(Lcom/nd/rj/common/login/view/NdRegistMobile;)V
invokevirtual com/nd/rj/common/login/view/NdRegistMobile$3/start()V
return
.limit locals 1
.limit stack 3
.end method

.method public finish()V
aload 0
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/hindSoftInput()V
aload 0
invokespecial android/app/Activity/finish()V
return
.limit locals 1
.limit stack 1
.end method

.method protected hindSoftInput()V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
ldc "input_method"
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
aload 0
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/getCurrentFocus()Landroid/view/View;
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
iconst_2
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
L1:
return
L2:
astore 1
return
.limit locals 2
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/rj/common/R$id/cbShowPassword I
if_icmpne L0
aload 0
invokespecial com/nd/rj/common/login/view/NdRegistMobile/changeShowPasswordState()V
L1:
return
L0:
iload 2
getstatic com/nd/rj/common/R$id/tv91Clause I
if_icmpne L2
new android/content/Intent
dup
aload 0
ldc com/nd/rj/common/login/view/NdOpenUrl
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 3
aload 3
ldc "WEB"
ldc "https://reg.99.com/WebStaticPage/xieyi.html"
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
aload 3
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/startActivity(Landroid/content/Intent;)V
return
L2:
iload 2
getstatic com/nd/rj/common/R$id/registFinish I
if_icmpne L3
aload 0
invokespecial com/nd/rj/common/login/view/NdRegistMobile/checkInput()I
istore 2
iload 2
ifeq L4
aload 0
iload 2
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L4:
new com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist
dup
aload 0
aload 0
getstatic com/nd/rj/common/R$string/nd_regist_registing I
invokespecial com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/<init>(Lcom/nd/rj/common/login/view/NdRegistMobile;Landroid/content/Context;I)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L3:
iload 2
getstatic com/nd/rj/common/R$id/resend I
if_icmpne L5
aload 0
iconst_1
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/setIsResendCode(Z)V
new com/nd/rj/common/login/view/NdRegistMobile$ProgressSendCode
dup
aload 0
aload 0
getstatic com/nd/rj/common/R$string/nd_send_code_registing I
invokespecial com/nd/rj/common/login/view/NdRegistMobile$ProgressSendCode/<init>(Lcom/nd/rj/common/login/view/NdRegistMobile;Landroid/content/Context;I)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/rj/common/login/view/NdRegistMobile$ProgressSendCode/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L5:
iload 2
getstatic com/nd/rj/common/R$id/getCode I
if_icmpne L1
aload 0
invokespecial com/nd/rj/common/login/view/NdRegistMobile/doGetCode()V
return
.limit locals 4
.limit stack 5
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/requestWindowFeature(I)Z
pop
aload 0
getstatic com/nd/rj/common/R$layout/nd_regist_mobile I
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/setContentView(I)V
aload 0
invokespecial com/nd/rj/common/login/view/NdRegistMobile/iniView()V
return
.limit locals 2
.limit stack 2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iload 1
iconst_4
if_icmpne L0
new android/content/Intent
dup
aload 0
ldc com/nd/rj/common/login/view/NdLogin
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/mPostedData Landroid/os/Bundle;
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/startActivity(Landroid/content/Intent;)V
aload 0
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/finish()V
iconst_1
ireturn
L0:
aload 0
iload 1
aload 2
invokespecial android/app/Activity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 4
.end method

.method public recoverUI()V
aload 0
iconst_0
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/setIsResendCode(Z)V
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/etMobile Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/etAccount Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/rLayout1 Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile/rLayout2 Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public setIsResendCode(Z)V
aload 0
iload 1
putfield com/nd/rj/common/login/view/NdRegistMobile/isResendCode Z
return
.limit locals 2
.limit stack 2
.end method
