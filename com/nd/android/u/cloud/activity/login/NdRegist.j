.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/login/NdRegist
.super android/app/Activity
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/cloud/activity/login/NdRegist$1
.inner class private ProgressRegist inner com/nd/android/u/cloud/activity/login/NdRegist$ProgressRegist outer com/nd/android/u/cloud/activity/login/NdRegist

.field private static 'handler' Landroid/os/Handler;

.field private 'agreeAndRead' Landroid/widget/CheckBox;

.field private 'cbShowPassword' Landroid/widget/CheckBox;

.field private 'etAccount' Landroid/widget/EditText;

.field private 'etNickname' Landroid/widget/EditText;

.field private 'etPassword' Landroid/widget/EditText;

.field private 'mNickName' Ljava/lang/String;

.field private 'mPassword' Ljava/lang/String;

.field private 'mPostedData' Landroid/os/Bundle;

.field private 'mUserName' Ljava/lang/String;

.field private 'matcher' Ljava/util/regex/Matcher;

.field private 'ptnAccount' Ljava/util/regex/Pattern;

.field private 'ptnPassword' Ljava/util/regex/Pattern;

.field private 'registStart' Landroid/widget/Button;

.field private 'tv91Clause' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000()Landroid/os/Handler;
getstatic com/nd/android/u/cloud/activity/login/NdRegist/handler Landroid/os/Handler;
areturn
.limit locals 0
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/login/NdRegist;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegist/mPassword Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/login/NdRegist;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegist/mUserName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/login/NdRegist;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegist/mNickName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private changeShowPasswordState()V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegist/cbShowPassword Landroid/widget/CheckBox;
invokevirtual android/widget/CheckBox/isChecked()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegist/etPassword Landroid/widget/EditText;
invokestatic android/text/method/HideReturnsTransformationMethod/getInstance()Landroid/text/method/HideReturnsTransformationMethod;
invokevirtual android/widget/EditText/setTransformationMethod(Landroid/text/method/TransformationMethod;)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegist/etPassword Landroid/widget/EditText;
invokestatic android/text/method/PasswordTransformationMethod/getInstance()Landroid/text/method/PasswordTransformationMethod;
invokevirtual android/widget/EditText/setTransformationMethod(Landroid/text/method/TransformationMethod;)V
return
.limit locals 1
.limit stack 2
.end method

.method private checkInput()I
aload 0
invokespecial com/nd/android/u/cloud/activity/login/NdRegist/checkUserName()I
istore 1
iload 1
ifeq L0
iload 1
ireturn
L0:
aload 0
invokespecial com/nd/android/u/cloud/activity/login/NdRegist/checkPassword()I
istore 1
iload 1
ifeq L1
iload 1
ireturn
L1:
aload 0
invokespecial com/nd/android/u/cloud/activity/login/NdRegist/checkNickName()I
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
getfield com/nd/android/u/cloud/activity/login/NdRegist/etNickname Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/login/NdRegist/mNickName Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegist/mNickName Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc_w 2131494461
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
getfield com/nd/android/u/cloud/activity/login/NdRegist/etPassword Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/login/NdRegist/mPassword Ljava/lang/String;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegist/ptnPassword Ljava/util/regex/Pattern;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegist/mPassword Ljava/lang/String;
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
putfield com/nd/android/u/cloud/activity/login/NdRegist/matcher Ljava/util/regex/Matcher;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegist/matcher Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/matches()Z
ifne L0
ldc_w 2131494462
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
getfield com/nd/android/u/cloud/activity/login/NdRegist/etAccount Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/login/NdRegist/mUserName Ljava/lang/String;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegist/ptnAccount Ljava/util/regex/Pattern;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegist/mUserName Ljava/lang/String;
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
putfield com/nd/android/u/cloud/activity/login/NdRegist/matcher Ljava/util/regex/Matcher;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegist/matcher Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/matches()Z
ifne L0
ldc_w 2131494460
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 3
.end method

.method private doRegist()V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegist/agreeAndRead Landroid/widget/CheckBox;
invokevirtual android/widget/CheckBox/isChecked()Z
ifeq L0
aload 0
invokespecial com/nd/android/u/cloud/activity/login/NdRegist/checkInput()I
ifne L1
aload 0
invokestatic com/nd/rj/common/util/ComfunHelp/isNetworkAvailable(Landroid/content/Context;)Z
ifeq L2
new com/nd/android/u/cloud/activity/login/NdRegist$ProgressRegist
dup
aload 0
aload 0
ldc_w 2131494440
invokespecial com/nd/android/u/cloud/activity/login/NdRegist$ProgressRegist/<init>(Lcom/nd/android/u/cloud/activity/login/NdRegist;Landroid/content/Context;I)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/login/NdRegist$ProgressRegist/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L2:
aload 0
ldc "\u8bf7\u8fde\u63a5\u7f51\u7edc\u540e\u518d\u5c1d\u8bd5\uff01"
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L1:
aload 0
aload 0
invokespecial com/nd/android/u/cloud/activity/login/NdRegist/checkInput()I
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L0:
aload 0
ldc_w 2131494352
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
.limit locals 1
.limit stack 5
.end method

.method private iniView()V
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/login/NdRegist/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
putfield com/nd/android/u/cloud/activity/login/NdRegist/mPostedData Landroid/os/Bundle;
aload 0
aload 0
ldc_w 2131626142
invokevirtual com/nd/android/u/cloud/activity/login/NdRegist/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/login/NdRegist/tv91Clause Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegist/tv91Clause Landroid/widget/TextView;
ldc_w -16776961
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
aload 0
ldc_w 2131626143
invokevirtual com/nd/android/u/cloud/activity/login/NdRegist/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/cloud/activity/login/NdRegist/registStart Landroid/widget/Button;
aload 0
aload 0
ldc_w 2131626140
invokevirtual com/nd/android/u/cloud/activity/login/NdRegist/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/nd/android/u/cloud/activity/login/NdRegist/cbShowPassword Landroid/widget/CheckBox;
aload 0
aload 0
ldc_w 2131626141
invokevirtual com/nd/android/u/cloud/activity/login/NdRegist/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/nd/android/u/cloud/activity/login/NdRegist/agreeAndRead Landroid/widget/CheckBox;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegist/agreeAndRead Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setChecked(Z)V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegist/cbShowPassword Landroid/widget/CheckBox;
aload 0
invokevirtual android/widget/CheckBox/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegist/agreeAndRead Landroid/widget/CheckBox;
aload 0
invokevirtual android/widget/CheckBox/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegist/tv91Clause Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegist/registStart Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
ldc_w 2131624231
invokevirtual com/nd/android/u/cloud/activity/login/NdRegist/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/login/NdRegist/etAccount Landroid/widget/EditText;
aload 0
aload 0
ldc_w 2131624234
invokevirtual com/nd/android/u/cloud/activity/login/NdRegist/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/login/NdRegist/etPassword Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegist/etPassword Landroid/widget/EditText;
new com/nd/android/u/cloud/activity/login/NdRegist$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/login/NdRegist$1/<init>(Lcom/nd/android/u/cloud/activity/login/NdRegist;)V
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
aload 0
ldc_w 2131626137
invokevirtual com/nd/android/u/cloud/activity/login/NdRegist/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/login/NdRegist/etNickname Landroid/widget/EditText;
aload 0
ldc "[A-Za-z0-9]{7,12}"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
putfield com/nd/android/u/cloud/activity/login/NdRegist/ptnPassword Ljava/util/regex/Pattern;
aload 0
ldc "^[0-9a-zA-Z._-]+@(([0-9a-zA-Z]+)[.])+[0-9a-zA-Z]{2,}$"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
putfield com/nd/android/u/cloud/activity/login/NdRegist/ptnAccount Ljava/util/regex/Pattern;
aload 0
invokespecial com/nd/android/u/cloud/activity/login/NdRegist/changeShowPasswordState()V
return
.limit locals 1
.limit stack 4
.end method

.method public static setHandler(Landroid/os/Handler;)V
aload 0
putstatic com/nd/android/u/cloud/activity/login/NdRegist/handler Landroid/os/Handler;
return
.limit locals 1
.limit stack 1
.end method

.method public finish()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/login/NdRegist/hindSoftInput()V
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
invokevirtual com/nd/android/u/cloud/activity/login/NdRegist/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
aload 0
invokevirtual com/nd/android/u/cloud/activity/login/NdRegist/getCurrentFocus()Landroid/view/View;
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
ldc_w 2131626197
if_icmpne L0
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/cloud/activity/login/NdRegistMobile
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegist/mPostedData Landroid/os/Bundle;
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/activity/login/NdRegist/startActivity(Landroid/content/Intent;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/login/NdRegist/finish()V
L1:
return
L0:
iload 2
ldc_w 2131626140
if_icmpne L2
aload 0
invokespecial com/nd/android/u/cloud/activity/login/NdRegist/changeShowPasswordState()V
return
L2:
iload 2
ldc_w 2131626142
if_icmpne L3
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
aload 3
ldc "TITLE"
aload 0
ldc_w 2131494351
invokevirtual com/nd/android/u/cloud/activity/login/NdRegist/getString(I)Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
aload 3
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/activity/login/NdRegist/startActivity(Landroid/content/Intent;)V
return
L3:
iload 2
ldc_w 2131626143
if_icmpne L1
aload 0
invokespecial com/nd/android/u/cloud/activity/login/NdRegist/doRegist()V
return
.limit locals 4
.limit stack 4
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/cloud/activity/login/NdRegist/requestWindowFeature(I)Z
pop
aload 0
ldc_w 2130903530
invokevirtual com/nd/android/u/cloud/activity/login/NdRegist/setContentView(I)V
aload 0
invokespecial com/nd/android/u/cloud/activity/login/NdRegist/iniView()V
return
.limit locals 2
.limit stack 2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iload 1
iconst_4
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/cloud/activity/login/NdRegist/finish()V
iconst_1
ireturn
L0:
aload 0
iload 1
aload 2
invokespecial android/app/Activity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method
