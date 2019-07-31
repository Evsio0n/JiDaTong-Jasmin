.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/guide/AccountSettingActivity
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnTouchListener
.inner class inner com/nd/android/u/cloud/activity/guide/AccountSettingActivity$1
.inner class private RegisterTask inner com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask outer com/nd/android/u/cloud/activity/guide/AccountSettingActivity

.field private final 'EXIST_CODE' I

.field private final 'NAME' Ljava/lang/String;

.field private final 'NAME_LENGTH_MAX' I

.field private final 'NAME_LENGTH_MIN' I

.field private final 'PSW' Ljava/lang/String;

.field private final 'PSW_AGAIN' Ljava/lang/String;

.field private final 'PSW_LENGTH_MAX' I

.field private final 'PSW_LENGTH_MIN' I

.field private final 'REQ_EXIST' I

.field private final 'SUCCESS_CODE' I

.field private 'mEtName' Landroid/widget/EditText;

.field private 'mEtPws' Landroid/widget/EditText;

.field private 'mEtPwsAgain' Landroid/widget/EditText;

.field private 'mImm' Landroid/view/inputmethod/InputMethodManager;

.field private 'mStrAccount' Ljava/lang/String;

.field private 'mStrID' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
ldc "name"
putfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/NAME Ljava/lang/String;
aload 0
ldc "psw"
putfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/PSW Ljava/lang/String;
aload 0
ldc "psw2"
putfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/PSW_AGAIN Ljava/lang/String;
aload 0
bipush 100
putfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/REQ_EXIST I
aload 0
sipush 200
putfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/SUCCESS_CODE I
aload 0
sipush 419
putfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/EXIST_CODE I
aload 0
bipush 6
putfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/PSW_LENGTH_MIN I
aload 0
bipush 12
putfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/PSW_LENGTH_MAX I
aload 0
iconst_4
putfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/NAME_LENGTH_MIN I
aload 0
bipush 70
putfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/NAME_LENGTH_MAX I
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mEtName Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.throws java/lang/Exception
aload 0
aload 1
aload 2
aload 3
invokespecial com/nd/android/u/cloud/activity/guide/AccountSettingActivity/doAfterLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
ireturn
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;Ljava/lang/Class;)V
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/goTo(Ljava/lang/Class;)V
return
.limit locals 2
.limit stack 2
.end method

.method private checkUsername(Ljava/lang/String;)Ljava/lang/String;
aload 1
invokevirtual java/lang/String/length()I
istore 4
iconst_0
istore 3
L0:
iload 3
iload 4
if_icmpge L1
aload 1
iload 3
invokevirtual java/lang/String/charAt(I)C
istore 2
iload 2
bipush 97
if_icmplt L2
iload 2
bipush 122
if_icmpgt L2
L3:
iload 3
iconst_1
iadd
istore 3
goto L0
L2:
iload 2
bipush 48
if_icmplt L4
iload 2
bipush 57
if_icmple L3
L4:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 2
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L1:
ldc ""
areturn
.limit locals 5
.limit stack 2
.end method

.method private doAfterLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.throws java/lang/Exception
getstatic com/product/android/business/config/Configuration/LOGIN_TYPE I
ifeq L0
aconst_null
astore 4
aload 1
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
ifeq L1
aload 3
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
ifne L2
L1:
iconst_0
ireturn
L2:
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
astore 3
aload 3
aload 2
invokevirtual com/common/android/utils/http/HttpComExt/setSid(Ljava/lang/String;)V
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "user/info?uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 3
aload 3
ifnull L1
aload 4
astore 1
aload 3
ldc "type"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L3
new com/product/android/business/login/BindUser
dup
aload 3
invokespecial com/product/android/business/login/BindUser/<init>(Lorg/json/JSONObject;)V
astore 1
L3:
aload 1
ifnull L1
aload 0
aload 2
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/setUserSid(Landroid/content/Context;Ljava/lang/String;)V
aload 0
aload 1
invokestatic com/nd/rj/common/login/util/LoginDbUtil/saveBindUser(Landroid/content/Context;Lcom/product/android/business/login/BindUser;)Z
ireturn
L0:
iconst_1
ireturn
.limit locals 5
.limit stack 3
.end method

.method public static getUserNickName(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
.catch org/json/JSONException from L0 to L1 using L2
aconst_null
astore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 0
invokestatic com/nd/rj/common/login/communication/uapCom/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/communication/uapCom;
lload 1
aload 3
aload 5
invokevirtual com/nd/rj/common/login/communication/uapCom/getUserInfo(JLjava/lang/String;Ljava/lang/StringBuilder;)I
ifne L1
L0:
new org/json/JSONObject
dup
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "nickname"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 4
L1:
aload 4
areturn
L2:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
.limit locals 6
.limit stack 5
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
ldc_w 2130903041
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/setContentView(I)V
aload 0
aload 0
ldc "input_method"
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
putfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mImm Landroid/view/inputmethod/InputMethodManager;
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/initEvent()V
aload 0
ldc_w 2131493932
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/setActivityTitle(I)V
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mEtPws Landroid/widget/EditText;
aload 1
ldc "psw"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mEtName Landroid/widget/EditText;
aload 1
ldc "name"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mEtPwsAgain Landroid/widget/EditText;
aload 1
ldc "psw2"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/getIntent()Landroid/content/Intent;
ldc "account"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mStrAccount Ljava/lang/String;
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/getIntent()Landroid/content/Intent;
ldc "id"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mStrID Ljava/lang/String;
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
lookupswitch
2131624033 : L0
2131624037 : L1
default : L2
L2:
return
L0:
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "account"
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mStrAccount Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "id"
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mStrID Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 1
bipush 100
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/startActivityForResult(Landroid/content/Intent;I)V
return
L1:
new android/content/Intent
dup
aload 0
ldc com/product/android/ui/activity/WebViewActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_URL Ljava/lang/String;
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_USER_AGREEMENT_URL Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
ldc_w 2131624037
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 2
aload 0
ldc_w 2131624033
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 1
aload 0
aload 0
ldc_w 2131624031
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mEtName Landroid/widget/EditText;
aload 0
aload 0
ldc_w 2131624034
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mEtPws Landroid/widget/EditText;
aload 0
aload 0
ldc_w 2131624036
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mEtPwsAgain Landroid/widget/EditText;
aload 0
ldc_w 2131624029
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
ldc_w 2131624030
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493933
iconst_1
anewarray java/lang/Object
dup
iconst_0
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_APP_NAME Ljava/lang/String;
aastore
invokevirtual android/content/res/Resources/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493919
iconst_1
anewarray java/lang/Object
dup
iconst_0
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_APP_NAME Ljava/lang/String;
aastore
invokevirtual android/content/res/Resources/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
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
return
.limit locals 5
.limit stack 7
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
ldc_w 2131625260
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493920
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
ldc_w 2131625260
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
ldc_w 2131625260
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/findViewById(I)Landroid/view/View;
ldc_w 2130837931
invokevirtual android/view/View/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mEtName Landroid/widget/EditText;
new com/nd/android/u/cloud/activity/guide/AccountSettingActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/AccountSettingActivity$1/<init>(Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;)V
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
aload 0
iload 1
iload 2
aload 3
invokespecial com/product/android/ui/activity/HeaderActivity/onActivityResult(IILandroid/content/Intent;)V
iload 1
bipush 100
if_icmpne L0
iload 2
iconst_m1
if_icmpne L0
aload 0
iconst_m1
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/setResult(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/finish()V
L0:
return
.limit locals 4
.limit stack 4
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "name"
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mEtName Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "psw"
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mEtPws Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "psw2"
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mEtPwsAgain Landroid/widget/EditText;
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
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/initComponentValue()V
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
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mImm Landroid/view/inputmethod/InputMethodManager;
invokevirtual android/view/inputmethod/InputMethodManager/isActive()Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mImm Landroid/view/inputmethod/InputMethodManager;
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
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mEtName Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
ldc_w 2131494696
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L0:
aload 1
invokevirtual java/lang/String/length()I
iconst_4
if_icmplt L1
aload 1
invokevirtual java/lang/String/length()I
bipush 70
if_icmple L2
L1:
aload 0
ldc_w 2131493925
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L2:
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/guide/AccountSettingActivity/checkUsername(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 2
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L3
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493926
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;Ljava/lang/String;)V
return
L3:
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mEtPws Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
aload 0
ldc_w 2131494699
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L4:
aload 2
invokevirtual java/lang/String/length()I
bipush 6
if_icmplt L5
aload 2
invokevirtual java/lang/String/length()I
bipush 12
if_icmple L6
L5:
aload 0
ldc_w 2131493994
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L6:
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mEtPwsAgain Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L7
aload 0
ldc_w 2131494699
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L7:
aload 3
invokevirtual java/lang/String/length()I
bipush 6
if_icmplt L8
aload 3
invokevirtual java/lang/String/length()I
bipush 12
if_icmple L9
L8:
aload 0
ldc_w 2131493994
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L9:
aload 2
aload 3
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L10
aload 0
ldc_w 2131494700
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L10:
aload 0
invokestatic ims/utils/CommUtil/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifeq L11
new com/nd/rj/common/login/jobnumber/ReqRegister$RegisterRequestParams
dup
invokespecial com/nd/rj/common/login/jobnumber/ReqRegister$RegisterRequestParams/<init>()V
astore 3
aload 3
aload 1
putfield com/nd/rj/common/login/jobnumber/ReqRegister$RegisterRequestParams/mAccount Ljava/lang/String;
aload 3
aload 2
putfield com/nd/rj/common/login/jobnumber/ReqRegister$RegisterRequestParams/mPsw Ljava/lang/String;
aload 3
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mStrAccount Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/ReqRegister$RegisterRequestParams/mUsername Ljava/lang/String;
aload 3
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity/mStrID Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/ReqRegister$RegisterRequestParams/mIdcardno Ljava/lang/String;
aload 3
aload 0
invokestatic com/nd/android/u/cloud/helper/Utils/getBlowfish(Landroid/content/Context;)Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/ReqRegister$RegisterRequestParams/mBlowfish Ljava/lang/String;
new com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/<init>(Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity$1;)V
iconst_1
anewarray com/nd/rj/common/login/jobnumber/ReqRegister$RegisterRequestParams
dup
iconst_0
aload 3
aastore
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L11:
new com/nd/android/u/cloud/activity/guide/DlgNetworkError
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/DlgNetworkError/<init>(Landroid/content/Context;)V
invokevirtual com/nd/android/u/cloud/activity/guide/DlgNetworkError/show()V
return
.limit locals 4
.limit stack 6
.end method
