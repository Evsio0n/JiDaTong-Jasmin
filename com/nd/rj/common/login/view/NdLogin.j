.bytecode 50.0
.class public synchronized com/nd/rj/common/login/view/NdLogin
.super android/app/Activity
.inner class inner com/nd/rj/common/login/view/NdLogin$1
.inner class inner com/nd/rj/common/login/view/NdLogin$2
.inner class inner com/nd/rj/common/login/view/NdLogin$3
.inner class inner com/nd/rj/common/login/view/NdLogin$4
.inner class inner com/nd/rj/common/login/view/NdLogin$5
.inner class inner com/nd/rj/common/login/view/NdLogin$6
.inner class inner com/nd/rj/common/login/view/NdLogin$7
.inner class inner com/nd/rj/common/login/view/NdLogin$8
.inner class inner com/nd/rj/common/login/view/NdLogin$9

.field private 'btnDropDown' Landroid/widget/ImageButton;

.field private 'cbSavePassword' Landroid/widget/CheckBox;

.field private 'etAccount' Landroid/widget/EditText;

.field private 'etCheckcode' Landroid/widget/EditText;

.field private 'etPassword' Landroid/widget/EditText;

.field private 'imgCheckcode' Landroid/widget/ImageView;

.field private 'linearLayout1' Landroid/widget/LinearLayout;

.field private 'linearLayout11' Landroid/widget/LinearLayout;

.field private 'llCheckcode' Landroid/widget/LinearLayout;

.field private 'login' Landroid/widget/Button;

.field private 'mLocalSwitchUser' Z

.field private 'mPassword' Ljava/lang/String;

.field private 'mPlatform' Lcom/nd/rj/common/login/NdLogin91Platform;

.field private 'mPostedData' Landroid/os/Bundle;

.field private 'mType' I

.field private 'mUser' Lcom/product/android/business/bean/UserInfo;

.field private 'mUserPopup' Lcom/nd/rj/common/login/view/NdUserPopup;

.field private 'mbTicketFirst' Z

.field private 'onBackClick' Landroid/view/View$OnClickListener;

.field private 'onChangeClick' Landroid/view/View$OnClickListener;

.field private 'onDropDown' Landroid/view/View$OnClickListener;

.field private 'onForgetPwdClick' Landroid/view/View$OnClickListener;

.field private 'onGetCheckcodeFinish' Lcom/nd/rj/common/login/NdMiscCallbackListener$IGetCheckcodeListener;

.field private 'onLoginClick' Landroid/view/View$OnClickListener;

.field private 'onRegistClick' Landroid/view/View$OnClickListener;

.field private 'regist' Landroid/widget/Button;

.field private 'rightLayout' Landroid/widget/LinearLayout;

.field private 'textView11' Landroid/widget/TextView;

.field private 'tvForgetPassword' Landroid/widget/TextView;

.field private 'tvTitle' Landroid/widget/TextView;

.field private 'watcherPasswordChange' Landroid/text/TextWatcher;

.field private 'watcherUsernameChange' Landroid/text/TextWatcher;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
aconst_null
putfield com/nd/rj/common/login/view/NdLogin/mUser Lcom/product/android/business/bean/UserInfo;
aload 0
aconst_null
putfield com/nd/rj/common/login/view/NdLogin/mPassword Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/rj/common/login/view/NdLogin/mLocalSwitchUser Z
aload 0
aconst_null
putfield com/nd/rj/common/login/view/NdLogin/mUserPopup Lcom/nd/rj/common/login/view/NdUserPopup;
aload 0
iconst_0
putfield com/nd/rj/common/login/view/NdLogin/mbTicketFirst Z
aload 0
new com/nd/rj/common/login/view/NdLogin$1
dup
aload 0
invokespecial com/nd/rj/common/login/view/NdLogin$1/<init>(Lcom/nd/rj/common/login/view/NdLogin;)V
putfield com/nd/rj/common/login/view/NdLogin/onGetCheckcodeFinish Lcom/nd/rj/common/login/NdMiscCallbackListener$IGetCheckcodeListener;
aload 0
new com/nd/rj/common/login/view/NdLogin$2
dup
aload 0
invokespecial com/nd/rj/common/login/view/NdLogin$2/<init>(Lcom/nd/rj/common/login/view/NdLogin;)V
putfield com/nd/rj/common/login/view/NdLogin/onLoginClick Landroid/view/View$OnClickListener;
aload 0
new com/nd/rj/common/login/view/NdLogin$3
dup
aload 0
invokespecial com/nd/rj/common/login/view/NdLogin$3/<init>(Lcom/nd/rj/common/login/view/NdLogin;)V
putfield com/nd/rj/common/login/view/NdLogin/onBackClick Landroid/view/View$OnClickListener;
aload 0
new com/nd/rj/common/login/view/NdLogin$4
dup
aload 0
invokespecial com/nd/rj/common/login/view/NdLogin$4/<init>(Lcom/nd/rj/common/login/view/NdLogin;)V
putfield com/nd/rj/common/login/view/NdLogin/onForgetPwdClick Landroid/view/View$OnClickListener;
aload 0
new com/nd/rj/common/login/view/NdLogin$5
dup
aload 0
invokespecial com/nd/rj/common/login/view/NdLogin$5/<init>(Lcom/nd/rj/common/login/view/NdLogin;)V
putfield com/nd/rj/common/login/view/NdLogin/onRegistClick Landroid/view/View$OnClickListener;
aload 0
new com/nd/rj/common/login/view/NdLogin$6
dup
aload 0
invokespecial com/nd/rj/common/login/view/NdLogin$6/<init>(Lcom/nd/rj/common/login/view/NdLogin;)V
putfield com/nd/rj/common/login/view/NdLogin/onChangeClick Landroid/view/View$OnClickListener;
aload 0
new com/nd/rj/common/login/view/NdLogin$7
dup
aload 0
invokespecial com/nd/rj/common/login/view/NdLogin$7/<init>(Lcom/nd/rj/common/login/view/NdLogin;)V
putfield com/nd/rj/common/login/view/NdLogin/watcherPasswordChange Landroid/text/TextWatcher;
aload 0
new com/nd/rj/common/login/view/NdLogin$8
dup
aload 0
invokespecial com/nd/rj/common/login/view/NdLogin$8/<init>(Lcom/nd/rj/common/login/view/NdLogin;)V
putfield com/nd/rj/common/login/view/NdLogin/watcherUsernameChange Landroid/text/TextWatcher;
aload 0
new com/nd/rj/common/login/view/NdLogin$9
dup
aload 0
invokespecial com/nd/rj/common/login/view/NdLogin$9/<init>(Lcom/nd/rj/common/login/view/NdLogin;)V
putfield com/nd/rj/common/login/view/NdLogin/onDropDown Landroid/view/View$OnClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/rj/common/login/view/NdLogin;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/llCheckcode Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/rj/common/login/view/NdLogin;)Landroid/widget/ImageView;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/imgCheckcode Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/rj/common/login/view/NdLogin;)Landroid/widget/EditText;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/etPassword Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/rj/common/login/view/NdLogin;)Landroid/widget/EditText;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/etCheckcode Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/rj/common/login/view/NdLogin;)V
aload 0
invokespecial com/nd/rj/common/login/view/NdLogin/doLogin()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/rj/common/login/view/NdLogin;)V
aload 0
invokespecial com/nd/rj/common/login/view/NdLogin/doBack()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/rj/common/login/view/NdLogin;)V
aload 0
invokespecial com/nd/rj/common/login/view/NdLogin/doForgetPassword()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/rj/common/login/view/NdLogin;)V
aload 0
invokespecial com/nd/rj/common/login/view/NdLogin/doRegist()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/rj/common/login/view/NdLogin;)Lcom/nd/rj/common/login/NdLogin91Platform;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mPlatform Lcom/nd/rj/common/login/NdLogin91Platform;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$802(Lcom/nd/rj/common/login/view/NdLogin;Z)Z
aload 0
iload 1
putfield com/nd/rj/common/login/view/NdLogin/mbTicketFirst Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$902(Lcom/nd/rj/common/login/view/NdLogin;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/rj/common/login/view/NdLogin/mPassword Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method private doBack()V
aload 0
invokevirtual com/nd/rj/common/login/view/NdLogin/finish()V
aconst_null
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/onFinishLoginProcess(Lcom/product/android/business/bean/UserInfo;)V
return
.limit locals 1
.limit stack 1
.end method

.method private doForgetPassword()V
new android/content/Intent
dup
aload 0
ldc com/nd/rj/common/login/view/NdOpenUrl
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 0
invokevirtual com/nd/rj/common/login/view/NdLogin/getIntent()Landroid/content/Intent;
ldc "REGIST_MOBILE"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
bipush 101
if_icmpne L0
aload 2
ldc "WEB"
ldc "https://reguap.99.com/uaplogin/forget/phone?appid=213&style=teens&returnurl=https://reguap.99.com/uaplogin/ucenter"
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L1:
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/rj/common/login/view/NdLogin/startActivity(Landroid/content/Intent;)V
return
L0:
aload 2
ldc "WEB"
ldc "https://reguap.99.com/uaplogin/forget/email?appid=213&style=teens&returnurl=https://reguap.99.com/uaplogin/ucenter"
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
goto L1
.limit locals 3
.limit stack 4
.end method

.method private doLogin()V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/etAccount Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/rj/common/login/view/NdLogin/etPassword Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 2
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
L0:
aload 0
getstatic com/nd/rj/common/R$string/nd_empty_account I
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
L2:
return
L1:
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mUser Lcom/product/android/business/bean/UserInfo;
ifnonnull L3
aload 0
new com/product/android/business/bean/UserInfo
dup
invokespecial com/product/android/business/bean/UserInfo/<init>()V
putfield com/nd/rj/common/login/view/NdLogin/mUser Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mUser Lcom/product/android/business/bean/UserInfo;
aload 3
invokevirtual com/product/android/business/bean/UserInfo/setUserName(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mUser Lcom/product/android/business/bean/UserInfo;
lconst_0
invokevirtual com/product/android/business/bean/UserInfo/setOapUid(J)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mUser Lcom/product/android/business/bean/UserInfo;
iconst_0
invokevirtual com/product/android/business/bean/UserInfo/setOapUnitId(I)V
L4:
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mUser Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getUserName()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L5
aload 0
getstatic com/nd/rj/common/R$string/nd_empty_account I
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L3:
aload 3
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mUser Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getUserName()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
aload 0
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
aload 3
invokevirtual com/nd/rj/common/login/LoginPro/getUserByUserName(Ljava/lang/String;)Lcom/product/android/business/bean/UserInfo;
astore 4
aload 4
ifnull L6
aload 0
aload 4
putfield com/nd/rj/common/login/view/NdLogin/mUser Lcom/product/android/business/bean/UserInfo;
goto L4
L6:
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mUser Lcom/product/android/business/bean/UserInfo;
aload 3
invokevirtual com/product/android/business/bean/UserInfo/setUserName(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mUser Lcom/product/android/business/bean/UserInfo;
lconst_0
invokevirtual com/product/android/business/bean/UserInfo/setOapUid(J)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mUser Lcom/product/android/business/bean/UserInfo;
iconst_0
invokevirtual com/product/android/business/bean/UserInfo/setOapUnitId(I)V
goto L4
L5:
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mUser Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/cbSavePassword Landroid/widget/CheckBox;
invokevirtual android/widget/CheckBox/isChecked()Z
invokevirtual com/product/android/business/bean/UserInfo/setIsSaveAccount(Z)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/etCheckcode Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mPassword Ljava/lang/String;
ifnonnull L7
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mPlatform Lcom/nd/rj/common/login/NdLogin91Platform;
aload 0
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mUser Lcom/product/android/business/bean/UserInfo;
aload 2
aload 3
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mbTicketFirst Z
invokevirtual com/nd/rj/common/login/NdLogin91Platform/doLogin(Landroid/content/Context;Lcom/product/android/business/bean/UserInfo;Ljava/lang/String;Ljava/lang/String;Z)I
istore 1
L8:
iload 1
ifeq L2
aload 0
iload 1
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L7:
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mPlatform Lcom/nd/rj/common/login/NdLogin91Platform;
aload 0
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mUser Lcom/product/android/business/bean/UserInfo;
aconst_null
aload 3
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mbTicketFirst Z
invokevirtual com/nd/rj/common/login/NdLogin91Platform/doLogin(Landroid/content/Context;Lcom/product/android/business/bean/UserInfo;Ljava/lang/String;Ljava/lang/String;Z)I
istore 1
goto L8
.limit locals 5
.limit stack 6
.end method

.method private doRegist()V
new android/content/Intent
dup
aload 0
ldc com/nd/rj/common/login/view/NdCommonRegist
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mPostedData Landroid/os/Bundle;
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/rj/common/login/view/NdLogin/startActivity(Landroid/content/Intent;)V
aload 0
invokevirtual com/nd/rj/common/login/view/NdLogin/finish()V
return
.limit locals 2
.limit stack 4
.end method

.method private iniView()V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/tvTitle I
invokevirtual com/nd/rj/common/login/view/NdLogin/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/rj/common/login/view/NdLogin/tvTitle Landroid/widget/TextView;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/tvTitle Landroid/widget/TextView;
getstatic com/nd/rj/common/R$string/nd_user_login I
invokevirtual android/widget/TextView/setText(I)V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/textView11 I
invokevirtual com/nd/rj/common/login/view/NdLogin/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/rj/common/login/view/NdLogin/textView11 Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/rj/common/R$id/linearLayout1 I
invokevirtual com/nd/rj/common/login/view/NdLogin/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/rj/common/login/view/NdLogin/linearLayout1 Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/rj/common/R$id/linearLayoutMobile I
invokevirtual com/nd/rj/common/login/view/NdLogin/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/rj/common/login/view/NdLogin/linearLayout11 Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/rj/common/R$id/rightLayout I
invokevirtual com/nd/rj/common/login/view/NdLogin/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/rj/common/login/view/NdLogin/rightLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/rightLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/cbSavePassword I
invokevirtual com/nd/rj/common/login/view/NdLogin/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/nd/rj/common/login/view/NdLogin/cbSavePassword Landroid/widget/CheckBox;
aload 0
aload 0
getstatic com/nd/rj/common/R$id/login I
invokevirtual com/nd/rj/common/login/view/NdLogin/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/rj/common/login/view/NdLogin/login Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/rj/common/R$id/regist I
invokevirtual com/nd/rj/common/login/view/NdLogin/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/rj/common/login/view/NdLogin/regist Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/rj/common/R$id/tvForgetPassword I
invokevirtual com/nd/rj/common/login/view/NdLogin/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/rj/common/login/view/NdLogin/tvForgetPassword Landroid/widget/TextView;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/tvForgetPassword Landroid/widget/TextView;
ldc_w -16776961
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/etAccount I
invokevirtual com/nd/rj/common/login/view/NdLogin/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/rj/common/login/view/NdLogin/etAccount Landroid/widget/EditText;
aload 0
aload 0
getstatic com/nd/rj/common/R$id/etPassword I
invokevirtual com/nd/rj/common/login/view/NdLogin/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/rj/common/login/view/NdLogin/etPassword Landroid/widget/EditText;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/etAccount Landroid/widget/EditText;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/watcherUsernameChange Landroid/text/TextWatcher;
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/etPassword Landroid/widget/EditText;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/watcherPasswordChange Landroid/text/TextWatcher;
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/btn_drop_down I
invokevirtual com/nd/rj/common/login/view/NdLogin/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
putfield com/nd/rj/common/login/view/NdLogin/btnDropDown Landroid/widget/ImageButton;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/login Landroid/widget/Button;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/onLoginClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/regist Landroid/widget/Button;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/onRegistClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/tvForgetPassword Landroid/widget/TextView;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/onForgetPwdClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/btnDropDown Landroid/widget/ImageButton;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/onDropDown Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/rj/common/R$id/tvBack I
invokevirtual com/nd/rj/common/login/view/NdLogin/findViewById(I)Landroid/view/View;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/onBackClick Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/rj/common/R$id/llChange I
invokevirtual com/nd/rj/common/login/view/NdLogin/findViewById(I)Landroid/view/View;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/onChangeClick Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/etCheckcode I
invokevirtual com/nd/rj/common/login/view/NdLogin/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/rj/common/login/view/NdLogin/etCheckcode Landroid/widget/EditText;
aload 0
aload 0
getstatic com/nd/rj/common/R$id/imgCheckcode I
invokevirtual com/nd/rj/common/login/view/NdLogin/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/rj/common/login/view/NdLogin/imgCheckcode Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/rj/common/R$id/llCheckcode I
invokevirtual com/nd/rj/common/login/view/NdLogin/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/rj/common/login/view/NdLogin/llCheckcode Landroid/widget/LinearLayout;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/llCheckcode Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
aload 0
invokevirtual com/nd/rj/common/login/view/NdLogin/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
putfield com/nd/rj/common/login/view/NdLogin/mPostedData Landroid/os/Bundle;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/onGetCheckcodeFinish Lcom/nd/rj/common/login/NdMiscCallbackListener$IGetCheckcodeListener;
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/setOnGetCheckcodeListener(Lcom/nd/rj/common/login/NdMiscCallbackListener$IGetCheckcodeListener;)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mPostedData Landroid/os/Bundle;
ifnull L0
aload 0
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mPostedData Landroid/os/Bundle;
ldc "LOGIN_TYPE"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/rj/common/login/view/NdLogin/mType I
aload 0
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mPostedData Landroid/os/Bundle;
ldc "USER"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast com/product/android/business/bean/UserInfo
putfield com/nd/rj/common/login/view/NdLogin/mUser Lcom/product/android/business/bean/UserInfo;
aload 0
aload 0
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mType I
invokestatic com/nd/rj/common/login/NdLogin91Platform/getInstance(Landroid/content/Context;I)Lcom/nd/rj/common/login/NdLogin91Platform;
putfield com/nd/rj/common/login/view/NdLogin/mPlatform Lcom/nd/rj/common/login/NdLogin91Platform;
aload 0
invokevirtual com/nd/rj/common/login/view/NdLogin/getIntent()Landroid/content/Intent;
ldc "REGIST_MOBILE"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
bipush 101
if_icmpne L1
aload 0
getfield com/nd/rj/common/login/view/NdLogin/etAccount Landroid/widget/EditText;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mUser Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getUserName()Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/linearLayout11 Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/linearLayout1 Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getstatic com/nd/rj/common/R$id/llLogo I
invokevirtual com/nd/rj/common/login/view/NdLogin/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/cbSavePassword Landroid/widget/CheckBox;
bipush 8
invokevirtual android/widget/CheckBox/setVisibility(I)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/etPassword Landroid/widget/EditText;
aconst_null
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/regist Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/textView11 Landroid/widget/TextView;
aload 0
getstatic com/nd/rj/common/R$string/nd_account2 I
invokevirtual com/nd/rj/common/login/view/NdLogin/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mUser Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getUserName()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mUser Lcom/product/android/business/bean/UserInfo;
ifnonnull L2
L0:
return
L2:
aload 0
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mUser Lcom/product/android/business/bean/UserInfo;
invokespecial com/nd/rj/common/login/view/NdLogin/setAccountData(Lcom/product/android/business/bean/UserInfo;)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mPostedData Landroid/os/Bundle;
ldc "CAN_SWITCH_USER"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
ifne L3
aload 0
getfield com/nd/rj/common/login/view/NdLogin/etAccount Landroid/widget/EditText;
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokestatic com/nd/rj/common/login/NdLoginComFun/SetEditTextEditable(Landroid/widget/EditText;Ljava/lang/Boolean;)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/btnDropDown Landroid/widget/ImageButton;
bipush 8
invokevirtual android/widget/ImageButton/setVisibility(I)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/etAccount Landroid/widget/EditText;
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/widget/EditText/setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
return
L3:
aload 0
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mPostedData Landroid/os/Bundle;
ldc "LOCAL_SWITCH_USER"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/nd/rj/common/login/view/NdLogin/mLocalSwitchUser Z
return
.limit locals 1
.limit stack 6
.end method

.method private setAccountData(Lcom/product/android/business/bean/UserInfo;)V
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getUserName()Ljava/lang/String;
astore 3
aload 0
invokevirtual com/nd/rj/common/login/view/NdLogin/getIntent()Landroid/content/Intent;
ldc "REGIST_MOBILE"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 2
aload 0
getfield com/nd/rj/common/login/view/NdLogin/etAccount Landroid/widget/EditText;
aload 3
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
aconst_null
putfield com/nd/rj/common/login/view/NdLogin/mPassword Ljava/lang/String;
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getIsSaveAccount()Z
ifeq L0
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
iload 2
bipush 101
if_icmpne L1
aload 0
getfield com/nd/rj/common/login/view/NdLogin/etPassword Landroid/widget/EditText;
aconst_null
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
getfield com/nd/rj/common/login/view/NdLogin/cbSavePassword Landroid/widget/CheckBox;
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getIsSaveAccount()Z
invokevirtual android/widget/CheckBox/setChecked(Z)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mLocalSwitchUser Z
ifeq L2
aload 0
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
aload 1
invokevirtual com/nd/rj/common/login/LoginPro/setUserInfo(Lcom/product/android/business/bean/UserInfo;)I
pop
L2:
return
L1:
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getUserPassMixedMd5()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/rj/common/login/view/NdLogin/etPassword Landroid/widget/EditText;
ldc "*******"
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getUserPassMixedMd5()Ljava/lang/String;
putfield com/nd/rj/common/login/view/NdLogin/mPassword Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mUser Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getBlowfish()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mUser Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getTicket()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
L3:
aload 0
iconst_0
putfield com/nd/rj/common/login/view/NdLogin/mbTicketFirst Z
L5:
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "setAccountData:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/rj/common/login/view/NdLogin/mbTicketFirst Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L0
L4:
aload 0
iconst_1
putfield com/nd/rj/common/login/view/NdLogin/mbTicketFirst Z
goto L5
.limit locals 4
.limit stack 3
.end method

.method public finish()V
aload 0
invokevirtual com/nd/rj/common/login/view/NdLogin/hindSoftInput()V
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
invokevirtual com/nd/rj/common/login/view/NdLogin/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
aload 0
invokevirtual com/nd/rj/common/login/view/NdLogin/getCurrentFocus()Landroid/view/View;
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

.method protected onActivityResult(IILandroid/content/Intent;)V
aload 0
iload 1
iload 2
aload 3
invokespecial android/app/Activity/onActivityResult(IILandroid/content/Intent;)V
iload 2
iconst_m1
if_icmpne L0
aload 3
ifnull L1
aload 3
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 4
aload 4
ifnull L2
aload 4
ldc "USERNAME"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 4
ldc "PASSWORD"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
aload 0
getstatic com/nd/rj/common/R$string/nd_empty_username_password I
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
L0:
return
L3:
aload 0
getfield com/nd/rj/common/login/view/NdLogin/etAccount Landroid/widget/EditText;
aload 3
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/etPassword Landroid/widget/EditText;
aload 4
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/cbSavePassword Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setChecked(Z)V
return
L2:
aload 0
getstatic com/nd/rj/common/R$string/nd_empty_username_password I
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L1:
aload 0
getstatic com/nd/rj/common/R$string/nd_empty_username_password I
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
.limit locals 5
.limit stack 4
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/rj/common/login/view/NdLogin/requestWindowFeature(I)Z
pop
aload 0
getstatic com/nd/rj/common/R$layout/nd_login I
invokevirtual com/nd/rj/common/login/view/NdLogin/setContentView(I)V
aload 0
invokespecial com/nd/rj/common/login/view/NdLogin/iniView()V
return
.limit locals 2
.limit stack 2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iload 1
iconst_4
if_icmpne L0
aload 0
invokespecial com/nd/rj/common/login/view/NdLogin/doBack()V
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

.method public onWindowFocusChanged(Z)V
aload 0
iload 1
invokespecial android/app/Activity/onWindowFocusChanged(Z)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin/btnDropDown Landroid/widget/ImageButton;
invokevirtual android/widget/ImageButton/getVisibility()I
ifne L0
aload 0
getfield com/nd/rj/common/login/view/NdLogin/etAccount Landroid/widget/EditText;
invokevirtual android/widget/EditText/getMeasuredHeight()I
istore 2
aload 0
getfield com/nd/rj/common/login/view/NdLogin/btnDropDown Landroid/widget/ImageButton;
invokevirtual android/widget/ImageButton/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 3
aload 0
getfield com/nd/rj/common/login/view/NdLogin/etAccount Landroid/widget/EditText;
invokevirtual android/widget/EditText/getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
astore 4
aload 3
iload 2
putfield android/view/ViewGroup$LayoutParams/height I
aload 4
iconst_2
aaload
ifnull L1
aload 3
aload 4
iconst_2
aaload
invokevirtual android/graphics/drawable/Drawable/getIntrinsicWidth()I
putfield android/view/ViewGroup$LayoutParams/width I
L1:
aload 0
getfield com/nd/rj/common/login/view/NdLogin/btnDropDown Landroid/widget/ImageButton;
aload 3
invokevirtual android/widget/ImageButton/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
L0:
return
.limit locals 5
.limit stack 3
.end method
