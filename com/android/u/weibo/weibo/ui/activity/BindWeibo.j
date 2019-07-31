.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/activity/BindWeibo
.super android/app/Activity
.inner class inner com/android/u/weibo/weibo/ui/activity/BindWeibo$1
.inner class inner com/android/u/weibo/weibo/ui/activity/BindWeibo$2
.inner class inner com/android/u/weibo/weibo/ui/activity/BindWeibo$3

.field public static 'm_accessToken' Lcom/weibo/sdk/android/Oauth2AccessToken;

.field protected 'detailOnClick' Landroid/view/View$OnClickListener;

.field protected 'g_user' Lcom/product/android/business/login/BindUser;

.field private 'handler' Landroid/os/Handler;

.field private 'mSSOBindWeibo' Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;

.field private 'm_bBindedWeibo' Z

.field private 'm_bFirstSet' Z

.field 'm_btnNextStep' Landroid/widget/Button;

.field private 'm_btnWeiboControl' Landroid/widget/Button;

.field 'm_ivWeiboAvatar' Landroid/widget/ImageView;

.field 'm_llBinded' Landroid/widget/LinearLayout;

.field 'm_tvTitle' Landroid/widget/TextView;

.field 'm_tvWeiboNick' Landroid/widget/TextView;

.field 'tvBindWeibo' Landroid/widget/TextView;

.field protected 'user' Lcom/product/android/business/login/BindUser;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_bFirstSet Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_bBindedWeibo Z
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
putfield com/android/u/weibo/weibo/ui/activity/BindWeibo/g_user Lcom/product/android/business/login/BindUser;
aload 0
new com/android/u/weibo/weibo/ui/activity/BindWeibo$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/BindWeibo$1/<init>(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)V
putfield com/android/u/weibo/weibo/ui/activity/BindWeibo/detailOnClick Landroid/view/View$OnClickListener;
aload 0
new com/android/u/weibo/weibo/ui/activity/BindWeibo$2
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/BindWeibo$2/<init>(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)V
putfield com/android/u/weibo/weibo/ui/activity/BindWeibo/handler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method private SaveDataAndGo()V
return
.limit locals 1
.limit stack 0
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/BindWeibo/controlBindWeibo()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/BindWeibo/SaveDataAndGo()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/BindWeibo/disBind()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_btnWeiboControl Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/BindWeibo/doBindingWeibo()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/BindWeibo/doBindSuccess()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
areturn
.limit locals 1
.limit stack 1
.end method

.method private commitToServer()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
ifnonnull L0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/finish()V
L0:
new com/android/u/weibo/weibo/ui/activity/BindWeibo$3
dup
aload 0
aload 0
getstatic com/android/u/weibo/R$string/binding_sina_weibo I
invokespecial com/android/u/weibo/weibo/ui/activity/BindWeibo$3/<init>(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;Landroid/content/Context;I)V
iconst_0
anewarray java/lang/Void
invokevirtual com/common/android/utils/task/progressTask/ProgressTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method

.method private controlBindWeibo()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_bBindedWeibo Z
ifeq L0
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/BindWeibo/disBind()V
return
L0:
aload 0
invokestatic android/webkit/CookieSyncManager/createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
pop
invokestatic android/webkit/CookieManager/getInstance()Landroid/webkit/CookieManager;
invokevirtual android/webkit/CookieManager/removeAllCookie()V
aload 0
new com/android/u/weibo/weibo/utils/SSOBindWeibo
dup
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/handler Landroid/os/Handler;
invokespecial com/android/u/weibo/weibo/utils/SSOBindWeibo/<init>(Landroid/content/Context;Landroid/os/Handler;)V
putfield com/android/u/weibo/weibo/ui/activity/BindWeibo/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/beginSSOBind()V
return
.limit locals 1
.limit stack 5
.end method

.method private disBind()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_tvWeiboNick Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_ivWeiboAvatar Landroid/widget/ImageView;
aconst_null
invokevirtual android/widget/ImageView/setTag(Ljava/lang/Object;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_ivWeiboAvatar Landroid/widget/ImageView;
getstatic com/product/android/business/config/Configuration/DEFAULTFACEIMAGE I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_btnWeiboControl Landroid/widget/Button;
aload 0
getstatic com/android/u/weibo/R$string/bind_sina_weibo I
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/tvBindWeibo Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_llBinded Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_bBindedWeibo Z
return
.limit locals 1
.limit stack 3
.end method

.method private doBindSuccess()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_bFirstSet Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
ifnonnull L1
return
L1:
aload 0
iconst_1
invokespecial com/android/u/weibo/weibo/ui/activity/BindWeibo/showWeiboUser(Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_btnWeiboControl Landroid/widget/Button;
iconst_1
invokevirtual android/widget/Button/setEnabled(Z)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/BindWeibo/SaveDataAndGo()V
return
L0:
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/BindWeibo/commitToServer()V
return
.limit locals 1
.limit stack 2
.end method

.method private doBindingWeibo()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_tvWeiboNick Landroid/widget/TextView;
aload 0
getstatic com/android/u/weibo/R$string/getting_weibo_nick_name I
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_btnWeiboControl Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setEnabled(Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/tvBindWeibo Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_llBinded Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 1
.limit stack 3
.end method

.method private showWeiboUser(Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
ifnonnull L0
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_tvWeiboNick Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getNickName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
iload 1
ifeq L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getAvatarUrl()Ljava/lang/String;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getAvatarUrl()Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifeq L1
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getAvatarUrl()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_ivWeiboAvatar Landroid/widget/ImageView;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_btnWeiboControl Landroid/widget/Button;
aload 0
getstatic com/android/u/weibo/R$string/disbind_sina_weibo I
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/tvBindWeibo Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_llBinded Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_bBindedWeibo Z
return
.limit locals 2
.limit stack 3
.end method

.method protected initComponent()V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/header_text_title I
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_tvTitle Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/header_btn_right I
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_btnNextStep Landroid/widget/Button;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tvBindWeibo I
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/BindWeibo/tvBindWeibo Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/layout_binded I
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_llBinded Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/iv_weibo_avatar I
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_ivWeiboAvatar Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tv_weibo_nickname I
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_tvWeiboNick Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/button_bind_sina_weibo I
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_btnWeiboControl Landroid/widget/Button;
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_bFirstSet Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_tvTitle Landroid/widget/TextView;
aload 0
getstatic com/android/u/weibo/R$string/bind_weibo_step_four_of_five I
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_btnNextStep Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_btnNextStep Landroid/widget/Button;
aload 0
getstatic com/android/u/weibo/R$string/next_step I
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_tvTitle Landroid/widget/TextView;
aload 0
getstatic com/android/u/weibo/R$string/bind_weibo I
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 3
.end method

.method protected initEvent()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_btnNextStep Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/detailOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_btnWeiboControl Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/detailOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/android/u/weibo/R$id/header_btn_left I
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/findViewById(I)Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/detailOnClick Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
aload 0
iload 1
iload 2
aload 3
invokespecial android/app/Activity/onActivityResult(IILandroid/content/Intent;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
iload 1
iload 2
aload 3
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/myOnActivityResult(IILandroid/content/Intent;)V
L0:
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
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/requestWindowFeature(I)Z
pop
aload 0
getstatic com/android/u/weibo/R$layout/bind_weibo I
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/setContentView(I)V
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/getIntent()Landroid/content/Intent;
ldc "bFirstSet"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
putfield com/android/u/weibo/weibo/ui/activity/BindWeibo/m_bFirstSet Z
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/initComponent()V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/initEvent()V
return
.limit locals 2
.limit stack 4
.end method

.method protected onStart()V
aload 0
invokespecial android/app/Activity/onStart()V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method
