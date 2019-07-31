.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting
.super android/support/v4/app/Fragment
.implements com/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "ValidFragment" 
.end annotation
.inner class inner com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$1
.inner class inner com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2
.inner class inner com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3
.inner class inner com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3$1
.inner class inner com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$4

.field private 'aboutsoftware_layout' Landroid/widget/RelativeLayout;

.field private 'commonsettings_layout' Landroid/widget/RelativeLayout;

.field private 'configmanager_img_unitname' Landroid/view/View;

.field private 'configmanager_lable_unitname' Landroid/widget/TextView;

.field private 'handler' Landroid/os/Handler;

.field private 'helpupdate_layout' Landroid/widget/RelativeLayout;

.field private 'homepage_layout' Landroid/widget/RelativeLayout;

.field private 'logoff_layout' Landroid/widget/RelativeLayout;

.field private 'logout' Landroid/widget/TextView;

.field private 'mActivity' Landroid/app/Activity;

.field private 'mContext' Landroid/content/Context;

.field private 'mSSOBindWeibo' Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;

.field private 'modify_password_layout' Landroid/widget/RelativeLayout;

.field private 'more_soft_layout' Landroid/widget/RelativeLayout;

.field protected 'myOnclicklistener' Landroid/view/View$OnClickListener;

.field private 'newver_image' Landroid/widget/TextView;

.field private 'newver_tx' Landroid/widget/TextView;

.field private 'switchidentitie_layout' Landroid/widget/RelativeLayout;

.field private 'unitnameText' Landroid/widget/TextView;

.field private 'usernameText' Landroid/widget/TextView;

.field private 'version_resume_layout' Landroid/widget/RelativeLayout;

.field private 'view' Landroid/view/View;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/newver_tx Landroid/widget/TextView;
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/newver_image Landroid/widget/TextView;
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/logout Landroid/widget/TextView;
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/logoff_layout Landroid/widget/RelativeLayout;
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/version_resume_layout Landroid/widget/RelativeLayout;
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/helpupdate_layout Landroid/widget/RelativeLayout;
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/aboutsoftware_layout Landroid/widget/RelativeLayout;
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/commonsettings_layout Landroid/widget/RelativeLayout;
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/homepage_layout Landroid/widget/RelativeLayout;
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/more_soft_layout Landroid/widget/RelativeLayout;
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/switchidentitie_layout Landroid/widget/RelativeLayout;
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/modify_password_layout Landroid/widget/RelativeLayout;
aload 0
new com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$1/<init>(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)V
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/handler Landroid/os/Handler;
aload 0
new com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3/<init>(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)V
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/myOnclicklistener Landroid/view/View$OnClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/doBindWeiboErr()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/doBindingWeibo()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/bindedWeibo()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/controlWeibo()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Landroid/app/Activity;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/mActivity Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method private bindedWeibo()V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
ifnonnull L0
return
L0:
new com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2
dup
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/mContext Landroid/content/Context;
ldc_w 2131493053
invokespecial com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/<init>(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;Landroid/content/Context;I)V
iconst_0
anewarray java/lang/Void
invokevirtual com/common/android/utils/task/progressTask/ProgressTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method

.method private controlWeibo()V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getOauth2AccessToken(Landroid/content/Context;)Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
ifnull L0
new com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$4
dup
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/mContext Landroid/content/Context;
ldc_w 2131493494
invokespecial com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$4/<init>(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;Landroid/content/Context;I)V
iconst_0
anewarray java/lang/Void
invokevirtual com/common/android/utils/task/progressTask/ProgressTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/mContext Landroid/content/Context;
invokestatic android/webkit/CookieSyncManager/createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
pop
invokestatic android/webkit/CookieManager/getInstance()Landroid/webkit/CookieManager;
invokevirtual android/webkit/CookieManager/removeAllCookie()V
aload 0
new com/android/u/weibo/weibo/utils/SSOBindWeibo
dup
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getParent()Landroid/app/Activity;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/handler Landroid/os/Handler;
invokespecial com/android/u/weibo/weibo/utils/SSOBindWeibo/<init>(Landroid/content/Context;Landroid/os/Handler;)V
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/beginSSOBind()V
return
.limit locals 1
.limit stack 5
.end method

.method private doBindWeiboErr()V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/mContext Landroid/content/Context;
aload 0
ldc_w 2131493044
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 1
.limit stack 3
.end method

.method private doBindingWeibo()V
return
.limit locals 1
.limit stack 0
.end method

.method private showNewVersion()V
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/hasNewVersion()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/newver_image Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/newver_image Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public canToLoadHeader()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected eixtSys()V
new com/nd/android/u/cloud/ui/dialog/SysExitDialog
dup
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/mContext Landroid/content/Context;
invokespecial com/nd/android/u/cloud/ui/dialog/SysExitDialog/<init>(Landroid/content/Context;)V
invokevirtual com/nd/android/u/cloud/ui/dialog/SysExitDialog/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 1
.limit stack 3
.end method

.method protected goTo(Ljava/lang/Class;)V
.signature "(Ljava/lang/Class<*>;)V"
aload 0
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/mActivity Landroid/app/Activity;
aload 1
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 5
.end method

.method protected initComponent()V
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/view Landroid/view/View;
ldc_w 2131626660
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/switchidentitie_layout Landroid/widget/RelativeLayout;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/switchidentitie_layout Landroid/widget/RelativeLayout;
ldc_w 2131626661
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/configmanager_lable_unitname Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/switchidentitie_layout Landroid/widget/RelativeLayout;
ldc_w 2131626662
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/unitnameText Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/switchidentitie_layout Landroid/widget/RelativeLayout;
ldc_w 2131626663
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/configmanager_img_unitname Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/view Landroid/view/View;
ldc_w 2131626683
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/version_resume_layout Landroid/widget/RelativeLayout;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/view Landroid/view/View;
ldc_w 2131626679
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/helpupdate_layout Landroid/widget/RelativeLayout;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/view Landroid/view/View;
ldc_w 2131626681
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/aboutsoftware_layout Landroid/widget/RelativeLayout;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/view Landroid/view/View;
ldc_w 2131626671
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/commonsettings_layout Landroid/widget/RelativeLayout;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/view Landroid/view/View;
ldc_w 2131626664
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/logoff_layout Landroid/widget/RelativeLayout;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/view Landroid/view/View;
ldc_w 2131626670
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/homepage_layout Landroid/widget/RelativeLayout;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/view Landroid/view/View;
ldc_w 2131626684
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/more_soft_layout Landroid/widget/RelativeLayout;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/view Landroid/view/View;
ldc_w 2131626668
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/modify_password_layout Landroid/widget/RelativeLayout;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/view Landroid/view/View;
ldc_w 2131624562
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/newver_image Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/view Landroid/view/View;
ldc_w 2131626666
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/usernameText Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/view Landroid/view/View;
ldc_w 2131625742
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/logout Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/view Landroid/view/View;
ldc_w 2131626680
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/newver_tx Landroid/widget/TextView;
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
bipush 55
if_icmpeq L0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/modify_password_layout Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 1
aload 1
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/usernameText Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/refreshUserBindInfo()V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/mContext Landroid/content/Context;
invokestatic com/nd/android/u/cloud/helper/PubFunction/isNewVersion(Landroid/content/Context;)Z
ifeq L2
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/newver_image Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L3:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/mContext Landroid/content/Context;
invokestatic com/nd/android/u/cloud/helper/PubFunction/getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
astore 1
aload 1
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L1
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/newver_tx Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
invokevirtual java/lang/String/length()I
bipush 16
if_icmple L4
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/newver_tx Landroid/widget/TextView;
aload 1
iconst_0
bipush 16
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual android/widget/TextView/append(Ljava/lang/CharSequence;)V
return
L2:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/newver_image Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L3
L4:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/newver_tx Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/append(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 4
.end method

.method protected initEvent()V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/helpupdate_layout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/myOnclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/aboutsoftware_layout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/myOnclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/commonsettings_layout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/myOnclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/logoff_layout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/myOnclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/homepage_layout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/myOnclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/more_soft_layout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/myOnclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/version_resume_layout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/myOnclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/modify_password_layout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/myOnclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/logout Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/myOnclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/view Landroid/view/View;
ldc_w 2131626673
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/myOnclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method public myOnActivityResult(IILandroid/content/Intent;)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
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
invokespecial android/support/v4/app/Fragment/onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/getActivity()Landroid/support/v4/app/FragmentActivity;
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/mActivity Landroid/app/Activity;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/mActivity Landroid/app/Activity;
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 0
aload 1
ldc_w 2130903710
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/view Landroid/view/View;
aload 0
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/initEvent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/initComponentValue()V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/view Landroid/view/View;
areturn
.limit locals 4
.limit stack 5
.end method

.method public onEventMainThread(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
return
L0:
aload 1
ldc "notify_check_upgrade_result"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
invokespecial com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/showNewVersion()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPause()V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
iconst_1
anewarray java/lang/Class
dup
iconst_0
ldc java/lang/String
aastore
invokevirtual de/greenrobot/event/EventBus/unregister(Ljava/lang/Object;[Ljava/lang/Class;)V
aload 0
invokespecial android/support/v4/app/Fragment/onPause()V
return
.limit locals 1
.limit stack 6
.end method

.method public onResume()V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
ldc java/lang/String
iconst_0
anewarray java/lang/Class
invokevirtual de/greenrobot/event/EventBus/register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
aload 0
invokespecial android/support/v4/app/Fragment/onResume()V
aload 0
invokespecial com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/showNewVersion()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/refreshUserBindInfo()V
return
.limit locals 1
.limit stack 4
.end method

.method public refreshUserBindInfo()V
iconst_4
istore 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLoginType()Lcom/product/android/business/ApplicationVariable$LoginType;
getstatic com/product/android/business/ApplicationVariable$LoginType/_99_ACCOUNT_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/configmanager_lable_unitname Landroid/widget/TextView;
ldc_w 2131495313
invokevirtual android/widget/TextView/setText(I)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 3
ldc ""
astore 2
aload 3
ifnull L1
aload 3
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
astore 2
L1:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/unitnameText Landroid/widget/TextView;
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/switchidentitie_layout Landroid/widget/RelativeLayout;
aconst_null
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
L2:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/configmanager_img_unitname Landroid/view/View;
iload 1
invokevirtual android/view/View/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/configmanager_lable_unitname Landroid/widget/TextView;
ldc_w 2131493039
invokevirtual android/widget/TextView/setText(I)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUapAccount()Ljava/lang/String; 0
astore 2
aload 2
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L3
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/switchidentitie_layout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/myOnclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
iconst_0
istore 1
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/unitnameText Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L2
L3:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/unitnameText Landroid/widget/TextView;
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/switchidentitie_layout Landroid/widget/RelativeLayout;
aconst_null
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
goto L2
.limit locals 4
.limit stack 2
.end method

.method public selectedUserFid(JLjava/lang/String;)V
return
.limit locals 4
.limit stack 0
.end method
