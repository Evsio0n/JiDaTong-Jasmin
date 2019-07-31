.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnTouchListener
.inner class inner com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$1
.inner class private BindTask inner com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask outer com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity

.field private final 'NAME' Ljava/lang/String;

.field private final 'PSW' Ljava/lang/String;

.field private final 'SUCCESS_CODE' I

.field private 'isNeedReInit' Z

.field protected 'mCaptcha' Lcom/nd/rj/common/login/jobnumber/CaptchaWidget;

.field private 'mEtName' Landroid/widget/EditText;

.field private 'mEtPws' Landroid/widget/EditText;

.field private 'mImm' Landroid/view/inputmethod/InputMethodManager;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
ldc "name"
putfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/NAME Ljava/lang/String;
aload 0
ldc "psw"
putfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/PSW Ljava/lang/String;
aload 0
sipush 200
putfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/SUCCESS_CODE I
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/isNeedReInit Z
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;)Z
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/isNeedReInit Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/isNeedReInit Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;Ljava/lang/Class;)V
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/goTo(Ljava/lang/Class;)V
return
.limit locals 2
.limit stack 2
.end method

.method private onClickForgetPassword()V
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/mEtName Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
ldc_w 2131494696
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L0:
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 1
aload 2
invokestatic ims/utils/CommUtil/isNumeric(Ljava/lang/String;)Z
ifeq L1
aload 1
ldc "https://reguap.99.com/uaplogin/forget/phone?appid=101&returnurl=https://oa.99.com/sso?url=https://desk.oa.99.com/&username="
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L2:
aload 1
aload 2
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
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
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/startActivity(Landroid/content/Intent;)V
return
L1:
aload 1
ldc "https://reguap.99.com/uaplogin/forget/email?appid=101&returnurl=https://oa.99.com/sso?url=https://desk.oa.99.com/&username="
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L2
.limit locals 3
.limit stack 4
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
ldc_w 2130903042
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/setContentView(I)V
aload 0
aload 0
ldc "input_method"
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
putfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/mImm Landroid/view/inputmethod/InputMethodManager;
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/initEvent()V
aload 0
ldc_w 2131493932
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/setActivityTitle(I)V
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/mEtPws Landroid/widget/EditText;
aload 1
ldc "psw"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/mEtName Landroid/widget/EditText;
aload 1
ldc "name"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
L0:
new com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$1/<init>(Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;)V
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/setOnGetCheckcodeListener(Lcom/nd/rj/common/login/NdMiscCallbackListener$IGetCheckcodeListener;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ireturn
.limit locals 2
.limit stack 3
.end method

.method public dealOnClickAccSetting(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
tableswitch 2131624038
L0
L1
L2
default : L1
L1:
return
L2:
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/onClickForgetPassword()V
return
L0:
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/finish()V
return
.limit locals 2
.limit stack 1
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
ldc_w 2131624031
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/mEtName Landroid/widget/EditText;
aload 0
aload 0
ldc_w 2131624034
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/mEtPws Landroid/widget/EditText;
aload 0
ldc_w 2131624038
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 2
aload 0
ldc_w 2131624040
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 1
aload 2
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
astore 3
new android/text/SpannableString
dup
aload 3
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 4
aload 4
new android/text/style/UnderlineSpan
dup
invokespecial android/text/style/UnderlineSpan/<init>()V
iconst_0
aload 3
invokeinterface java/lang/CharSequence/length()I 0
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 2
aload 4
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
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
aload 0
ldc_w 2131624039
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/rj/common/login/jobnumber/CaptchaWidget
putfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/mCaptcha Lcom/nd/rj/common/login/jobnumber/CaptchaWidget;
return
.limit locals 5
.limit stack 5
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
ldc_w 2131625260
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493920
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
ldc_w 2131625260
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
ldc_w 2131625260
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/findViewById(I)Landroid/view/View;
ldc_w 2130837933
invokevirtual android/view/View/setBackgroundResource(I)V
aload 0
ldc_w 2131624029
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return
.limit locals 1
.limit stack 3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "name"
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/mEtName Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "psw"
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/mEtPws Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onStart()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onStart()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 1
invokevirtual android/view/View/getId()I
tableswitch 2131624029
L0
default : L1
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/mImm Landroid/view/inputmethod/InputMethodManager;
invokevirtual android/view/inputmethod/InputMethodManager/isActive()Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/mImm Landroid/view/inputmethod/InputMethodManager;
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
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/mEtName Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
ldc_w 2131494696
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/mEtPws Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
ldc_w 2131494699
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/mCaptcha Lcom/nd/rj/common/login/jobnumber/CaptchaWidget;
invokevirtual com/nd/rj/common/login/jobnumber/CaptchaWidget/getCaptchaText()Ljava/lang/String;
astore 4
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/mCaptcha Lcom/nd/rj/common/login/jobnumber/CaptchaWidget;
invokevirtual com/nd/rj/common/login/jobnumber/CaptchaWidget/isShow()Z
ifeq L2
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aload 0
ldc_w 2131494384
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L2:
aload 0
invokestatic ims/utils/CommUtil/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifeq L3
new com/nd/rj/common/login/entity/LoginParam
dup
invokespecial com/nd/rj/common/login/entity/LoginParam/<init>()V
astore 1
aload 1
aload 2
putfield com/nd/rj/common/login/entity/LoginParam/account Ljava/lang/String;
aload 1
aload 3
putfield com/nd/rj/common/login/entity/LoginParam/pwd Ljava/lang/String;
aload 1
aload 4
putfield com/nd/rj/common/login/entity/LoginParam/captcha Ljava/lang/String;
new com/nd/rj/common/login/jobnumber/ReqBind$BindRequestParams
dup
invokespecial com/nd/rj/common/login/jobnumber/ReqBind$BindRequestParams/<init>()V
astore 2
aload 2
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/getIntent()Landroid/content/Intent;
ldc "account"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/ReqBind$BindRequestParams/mUsername Ljava/lang/String;
aload 2
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/getIntent()Landroid/content/Intent;
ldc "id"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/ReqBind$BindRequestParams/mIdcardno Ljava/lang/String;
new com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask
dup
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/<init>(Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;Lcom/nd/rj/common/login/entity/LoginParam;)V
iconst_1
anewarray com/nd/rj/common/login/jobnumber/ReqBind$BindRequestParams
dup
iconst_0
aload 2
aastore
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L3:
new com/nd/android/u/cloud/activity/guide/DlgNetworkError
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/DlgNetworkError/<init>(Landroid/content/Context;)V
invokevirtual com/nd/android/u/cloud/activity/guide/DlgNetworkError/show()V
return
.limit locals 5
.limit stack 5
.end method
