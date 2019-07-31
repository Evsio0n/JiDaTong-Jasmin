.bytecode 50.0
.class public synchronized com/android/u/weibo/contact/ui/activity/MyContact
.super com/product/android/ui/activity/HeaderActivity
.implements com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$OnDlgPmsDismissListener
.implements com/android/u/weibo/contact/ui/dialog/DlgSetBirthday$OnDlgBirthDismissListener
.implements com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$OnDlgNativePlaceDismissListener
.implements com/product/android/ui/dialog/DlgModifyText$OnDlgModifyTextDismissListener
.implements com/android/u/weibo/contact/ui/dialog/DlgTip$OnDlgTipDismissListener
.inner class inner com/android/u/weibo/contact/ui/activity/MyContact$1
.inner class inner com/android/u/weibo/contact/ui/activity/MyContact$2
.inner class inner com/android/u/weibo/contact/ui/activity/MyContact$3
.inner class inner com/android/u/weibo/contact/ui/activity/MyContact$4
.inner class inner com/android/u/weibo/contact/ui/activity/MyContact$5
.inner class inner com/android/u/weibo/contact/ui/activity/MyContact$6
.inner class static synthetic inner com/android/u/weibo/contact/ui/activity/MyContact$7
.inner class private CommitToServer inner com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer outer com/android/u/weibo/contact/ui/activity/MyContact
.inner class private GetPersonThirdInfoTask inner com/android/u/weibo/contact/ui/activity/MyContact$GetPersonThirdInfoTask outer com/android/u/weibo/contact/ui/activity/MyContact

.field public static final 'PARAM_BIRTHDAY' Ljava/lang/String; = "param_birthday"

.field public static final 'PARAM_EMAIL' Ljava/lang/String; = "param_email"

.field public static final 'PARAM_MOBILE_PHONE' Ljava/lang/String; = "param_mobile_phone"

.field public static final 'PARAM_NATIVE_PLACE' Ljava/lang/String; = "param_nativ_place"

.field public static final 'PARAM_PERMISSTION' Ljava/lang/String; = "param_permission"

.field public static final 'PARAM_SIGN' Ljava/lang/String; = "param_sign"

.field protected static final 'TAG' Ljava/lang/String; = "MyContact"

.field protected 'commitTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field protected 'detailOnClick' Landroid/view/View$OnClickListener;

.field private 'g_calendar' Ljava/util/Calendar;

.field private 'handler' Landroid/os/Handler;

.field private 'mEmailString' Ljava/lang/String;

.field protected 'mGetInfoTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mOapUser' Lcom/product/android/commonInterface/contact/OapUser;

.field private 'mPhoneString' Ljava/lang/String;

.field private 'mSSOBindWeibo' Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;

.field private 'mTvNativePlaceTip' Landroid/widget/TextView;

.field protected 'm_CommitTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'm_accessToken' Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;

.field 'm_bModifiedBirth' Z

.field 'm_bModifiedEmail' Z

.field 'm_bModifiedMobilePhone' Z

.field 'm_bModifiedNativePlace' Z

.field 'm_bModifiedPermission' Z

.field 'm_bModifiedSign' Z

.field 'm_bModifiedWeibo' Z

.field private 'm_bindUser' Lcom/product/android/business/login/BindUser;

.field private 'm_btnReturn' Landroid/widget/Button;

.field private 'm_btnSave' Landroid/widget/Button;

.field private 'm_btnWeiboControl' Landroid/widget/Button;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field private 'm_etSignature' Landroid/widget/EditText;

.field protected 'm_getInfoTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'm_iClickedID' I

.field private 'm_iPermission' I

.field private 'm_jsonToCommit' Lorg/json/JSONObject;

.field private 'm_rlBirthday' Landroid/widget/RelativeLayout;

.field private 'm_rlEmail' Landroid/widget/RelativeLayout;

.field private 'm_rlMobilePhone' Landroid/widget/RelativeLayout;

.field private 'm_rlNativePlace' Landroid/widget/RelativeLayout;

.field private 'm_rlPermission' Landroid/widget/RelativeLayout;

.field private 'm_tvBirthday' Landroid/widget/TextView;

.field private 'm_tvCollege' Landroid/widget/TextView;

.field private 'm_tvCollegeAge' Landroid/widget/TextView;

.field private 'm_tvCollegeAgeTip' Landroid/widget/TextView;

.field private 'm_tvCollegeTip' Landroid/widget/TextView;

.field private 'm_tvEmail' Landroid/widget/TextView;

.field private 'm_tvHeadTitle' Landroid/widget/TextView;

.field private 'm_tvMajor' Landroid/widget/TextView;

.field private 'm_tvMajorTip' Landroid/widget/TextView;

.field private 'm_tvMobilePhone' Landroid/widget/TextView;

.field private 'm_tvNativePlace' Landroid/widget/TextView;

.field private 'm_tvPermission' Landroid/widget/TextView;

.field private 'm_tvSex' Landroid/widget/TextView;

.field private 'm_tvWeibo' Landroid/widget/TextView;

.field private 'm_userToWrite' Lcom/product/android/business/login/BindUser;

.field private 'mstrCity' Ljava/lang/String;

.field private 'mstrErrMsg' Ljava/lang/String;

.field private 'mstrProvince' Ljava/lang/String;

.field private 'textWatcher' Landroid/text/TextWatcher;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
iconst_0
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_iPermission I
aload 0
iconst_0
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedSign Z
aload 0
iconst_0
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedBirth Z
aload 0
iconst_0
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedNativePlace Z
aload 0
iconst_0
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedMobilePhone Z
aload 0
iconst_0
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedEmail Z
aload 0
iconst_0
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedWeibo Z
aload 0
iconst_0
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedPermission Z
aload 0
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
putfield com/android/u/weibo/contact/ui/activity/MyContact/g_calendar Ljava/util/Calendar;
aload 0
new com/android/u/weibo/contact/ui/activity/MyContact$1
dup
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact$1/<init>(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
putfield com/android/u/weibo/contact/ui/activity/MyContact/mGetInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/android/u/weibo/contact/ui/activity/MyContact$2
dup
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact$2/<init>(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
putfield com/android/u/weibo/contact/ui/activity/MyContact/detailOnClick Landroid/view/View$OnClickListener;
aload 0
new com/android/u/weibo/contact/ui/activity/MyContact$3
dup
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact$3/<init>(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
putfield com/android/u/weibo/contact/ui/activity/MyContact/handler Landroid/os/Handler;
aload 0
new com/android/u/weibo/contact/ui/activity/MyContact$4
dup
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact$4/<init>(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
putfield com/android/u/weibo/contact/ui/activity/MyContact/textWatcher Landroid/text/TextWatcher;
aload 0
new com/android/u/weibo/contact/ui/activity/MyContact$6
dup
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact$6/<init>(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
putfield com/android/u/weibo/contact/ui/activity/MyContact/commitTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$100(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/product/android/business/login/BindUser;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_userToWrite Lcom/product/android/business/login/BindUser;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/android/u/weibo/contact/ui/activity/MyContact;ILjava/lang/String;)V
aload 0
iload 1
aload 2
invokespecial com/android/u/weibo/contact/ui/activity/MyContact/modifyText(ILjava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$102(Lcom/android/u/weibo/contact/ui/activity/MyContact;Lcom/product/android/business/login/BindUser;)Lcom/product/android/business/login/BindUser;
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_userToWrite Lcom/product/android/business/login/BindUser;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvEmail Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact/controlWeibo()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact/setPermission()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact/commitIfNeed()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvWeibo Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1600(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnWeiboControl Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1700(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact/doBindWeiboErr()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1800(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact/doBindingWeibo()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1900(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact/bindedWeibo()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2000(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_accessToken Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/android/u/weibo/contact/ui/activity/MyContact;Lcom/product/android/commonInterface/contact/OapUser;)Lcom/product/android/commonInterface/contact/OapUser;
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/activity/MyContact/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$2100(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnSave Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2200(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact/finishActivity()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2400(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lorg/json/JSONObject;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_jsonToCommit Lorg/json/JSONObject;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2500(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2600(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Landroid/app/ProgressDialog;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Ljava/lang/String;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mstrErrMsg Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/android/u/weibo/contact/ui/activity/MyContact;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/activity/MyContact/mstrErrMsg Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/product/android/business/login/BindUser;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bindUser Lcom/product/android/business/login/BindUser;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact/setPersonThirdInfoToView()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact/checkNeedToSave()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact/setNativePlace()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$802(Lcom/android/u/weibo/contact/ui/activity/MyContact;I)I
aload 0
iload 1
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_iClickedID I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$900(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvMobilePhone Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private bindedWeibo()V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
ifnonnull L0
return
L0:
new com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx
dup
invokespecial com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/<init>()V
astore 1
aload 1
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getWeiboToken()Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/setToken(Ljava/lang/String;)V
aload 1
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getWeiboUID()Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/setSinaUid(Ljava/lang/String;)V
aload 1
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getExpireTime()J
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/setExpiresTime(J)V
aload 1
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getNickName()Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/setNickName(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getRefreshToken()Ljava/lang/String;
ifnull L1
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getRefreshToken()Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifeq L1
aload 1
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getRefreshToken()Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/setRefreshToken(Ljava/lang/String;)V
L1:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvWeibo Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getNickName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnWeiboControl Landroid/widget/Button;
aload 0
getstatic com/android/u/weibo/R$string/logout I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnWeiboControl Landroid/widget/Button;
iconst_1
invokevirtual android/widget/Button/setEnabled(Z)V
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_accessToken Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnSave Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
iconst_1
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedWeibo Z
return
.limit locals 2
.limit stack 3
.end method

.method private checkNeedToSave()V
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact/getIsModified()Z
ifeq L0
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L1
new com/android/u/weibo/contact/ui/dialog/XYDlgTip
dup
aload 0
new com/android/u/weibo/contact/ui/activity/MyContact$5
dup
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact$5/<init>(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
aconst_null
invokespecial com/android/u/weibo/contact/ui/dialog/XYDlgTip/<init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
invokevirtual com/android/u/weibo/contact/ui/dialog/XYDlgTip/show()V
return
L1:
new com/android/u/weibo/contact/ui/dialog/DlgTip
dup
aload 0
aload 0
getstatic com/android/u/weibo/R$string/modify_confirm I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
aload 0
getstatic com/android/u/weibo/R$string/renounce_modification I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
aload 0
getstatic com/android/u/weibo/R$string/continue_to_modify I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
aload 0
getstatic com/android/u/weibo/R$string/renounce I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
getstatic com/android/u/weibo/R$style/Style_Self_Info_Dlg I
invokespecial com/android/u/weibo/contact/ui/dialog/DlgTip/<init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
astore 1
aload 1
aload 0
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgTip/setOnAfterDismissListener(Lcom/android/u/weibo/contact/ui/dialog/DlgTip$OnDlgTipDismissListener;)V
aload 1
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgTip/show()V
return
L0:
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact/finishActivity()V
return
.limit locals 2
.limit stack 8
.end method

.method private commitDataToServer()V
.catch org/json/JSONException from L0 to L1 using L2
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_CommitTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L3
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_CommitTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L3
return
L3:
aload 0
new com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/<init>(Lcom/android/u/weibo/contact/ui/activity/MyContact;Lcom/android/u/weibo/contact/ui/activity/MyContact$1;)V
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_CommitTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_CommitTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/commitTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedSign Z
ifeq L1
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_etSignature Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 2
aload 1
ldc "param_sign"
aload 2
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;Ljava/lang/Object;)V
L0:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_jsonToCommit Lorg/json/JSONObject;
ldc "signature"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedBirth Z
ifeq L4
aload 1
ldc "param_birthday"
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvBirthday Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;Ljava/lang/Object;)V
L4:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedNativePlace Z
ifeq L5
aload 1
ldc "param_nativ_place"
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvNativePlace Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;Ljava/lang/Object;)V
L5:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedMobilePhone Z
ifeq L6
aload 1
ldc "param_mobile_phone"
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvMobilePhone Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;Ljava/lang/Object;)V
L6:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedEmail Z
ifeq L7
aload 1
ldc "param_email"
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvEmail Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;Ljava/lang/Object;)V
L7:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_CommitTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 3
.limit stack 5
.end method

.method private commitIfNeed()V
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact/getIsModified()Z
ifeq L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/hideSoftInput()V
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact/commitDataToServer()V
return
L0:
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact/finishActivity()V
return
.limit locals 1
.limit stack 2
.end method

.method private controlWeibo()V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_accessToken Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
ifnull L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvWeibo Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnWeiboControl Landroid/widget/Button;
aload 0
getstatic com/android/u/weibo/R$string/bind I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
aconst_null
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_accessToken Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
aload 0
iconst_1
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedWeibo Z
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
getfield com/android/u/weibo/contact/ui/activity/MyContact/handler Landroid/os/Handler;
invokespecial com/android/u/weibo/weibo/utils/SSOBindWeibo/<init>(Landroid/content/Context;Landroid/os/Handler;)V
putfield com/android/u/weibo/contact/ui/activity/MyContact/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/beginSSOBind()V
return
.limit locals 1
.limit stack 5
.end method

.method private doBindWeiboErr()V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvWeibo Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnWeiboControl Landroid/widget/Button;
aload 0
getstatic com/android/u/weibo/R$string/bind I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnWeiboControl Landroid/widget/Button;
iconst_1
invokevirtual android/widget/Button/setEnabled(Z)V
aload 0
aload 0
getstatic com/android/u/weibo/R$string/bind_sina_weibo_error I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 1
.limit stack 3
.end method

.method private doBindingWeibo()V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvWeibo Landroid/widget/TextView;
aload 0
getstatic com/android/u/weibo/R$string/getting_weibo_nick_name I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnWeiboControl Landroid/widget/Button;
aload 0
getstatic com/android/u/weibo/R$string/logout I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnWeiboControl Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setEnabled(Z)V
return
.limit locals 1
.limit stack 3
.end method

.method private finishActivity()V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/hideSoftInput()V
aload 0
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/finish()V
return
.limit locals 1
.limit stack 2
.end method

.method private getIsModified()Z
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedSign Z
ifne L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedBirth Z
ifne L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedNativePlace Z
ifne L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedMobilePhone Z
ifne L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedEmail Z
ifne L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedWeibo Z
ifne L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedPermission Z
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method private getPermissionText(I)Ljava/lang/String;
iload 1
iconst_1
if_icmpne L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getstatic com/android/u/weibo/R$string/contact_information I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getstatic com/android/u/weibo/R$string/permission_to_friends I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
iload 1
ifne L1
aload 0
getstatic com/android/u/weibo/R$string/permission_hide I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
areturn
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getstatic com/android/u/weibo/R$string/contact_information I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getstatic com/android/u/weibo/R$string/permission_to_all_xy I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method private getPersonThirdInfo()V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/android/u/weibo/contact/ui/activity/MyContact$GetPersonThirdInfoTask
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/contact/ui/activity/MyContact$GetPersonThirdInfoTask/<init>(Lcom/android/u/weibo/contact/ui/activity/MyContact;Lcom/android/u/weibo/contact/ui/activity/MyContact$1;)V
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mGetInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method private modifyText(ILjava/lang/String;)V
iload 1
ifne L0
aload 0
getstatic com/android/u/weibo/R$string/personal_modify I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mPhoneString Ljava/lang/String;
aastore
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I[Ljava/lang/Object;)Ljava/lang/String;
astore 3
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mPhoneString Ljava/lang/String;
astore 4
L1:
new com/product/android/ui/dialog/DlgModifyText
dup
aload 0
iload 1
aload 3
aload 4
aload 2
getstatic com/android/u/weibo/R$style/Style_Self_Info_Dlg I
invokespecial com/product/android/ui/dialog/DlgModifyText/<init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
astore 2
aload 2
aload 0
invokevirtual com/product/android/ui/dialog/DlgModifyText/setOnAfterDismissListener(Lcom/product/android/ui/dialog/DlgModifyText$OnDlgModifyTextDismissListener;)V
aload 2
invokevirtual com/product/android/ui/dialog/DlgModifyText/show()V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_etSignature Landroid/widget/EditText;
invokevirtual android/widget/EditText/clearFocus()V
return
L0:
aload 0
getstatic com/android/u/weibo/R$string/personal_modify I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mEmailString Ljava/lang/String;
aastore
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I[Ljava/lang/Object;)Ljava/lang/String;
astore 3
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mEmailString Ljava/lang/String;
astore 4
goto L1
.limit locals 5
.limit stack 8
.end method

.method private setNativePlace()V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
sipush 1015
aload 0
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/gotoSelectNativePlaceActivity(ILandroid/app/Activity;)V
return
L0:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mstrProvince Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mstrCity Ljava/lang/String;
putfield com/android/u/weibo/contact/ui/activity/MyContact/mstrProvince Ljava/lang/String;
L1:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mstrCity Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aload 0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mstrProvince Ljava/lang/String;
putfield com/android/u/weibo/contact/ui/activity/MyContact/mstrCity Ljava/lang/String;
L2:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mstrProvince Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mstrCity Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
new com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace
dup
aload 0
getstatic com/android/u/weibo/R$style/Style_Self_Info_Dlg I
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mstrProvince Ljava/lang/String;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mstrCity Ljava/lang/String;
invokespecial com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/<init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
astore 1
L4:
aload 1
aload 0
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/setOnAfterDismissListener(Lcom/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$OnDlgNativePlaceDismissListener;)V
aload 1
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/show()V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_etSignature Landroid/widget/EditText;
invokevirtual android/widget/EditText/clearFocus()V
return
L3:
new com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace
dup
aload 0
getstatic com/android/u/weibo/R$style/Style_Self_Info_Dlg I
invokespecial com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/<init>(Landroid/content/Context;I)V
astore 1
goto L4
.limit locals 2
.limit stack 6
.end method

.method private setPermission()V
new com/android/u/weibo/contact/ui/dialog/DlgPermissionSet
dup
aload 0
iconst_2
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_iPermission I
isub
getstatic com/android/u/weibo/R$style/Style_Self_Info_Dlg I
invokespecial com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/<init>(Landroid/content/Context;II)V
astore 1
aload 1
aload 0
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/setOnAfterDismissListener(Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet$OnDlgPmsDismissListener;)V
aload 1
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/show()V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_etSignature Landroid/widget/EditText;
invokevirtual android/widget/EditText/clearFocus()V
return
.limit locals 2
.limit stack 5
.end method

.method private setPersonThirdInfoToView()V
iconst_0
istore 1
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
ifnull L0
aload 0
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/personal_onwer I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 2
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvHeadTitle Landroid/widget/TextView;
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_etSignature Landroid/widget/EditText;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getSignature()Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
iconst_0
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedSign Z
ldc "0000-00-00"
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getBirthday()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getBirthday()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L1
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvBirthday Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getBirthday()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvSex Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getGender()I
aload 0
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/getGenderByInt(ILandroid/content/Context;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getProvince()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/contact/ui/activity/MyContact/mstrProvince Ljava/lang/String;
aload 0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getCity()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/contact/ui/activity/MyContact/mstrCity Ljava/lang/String;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpeq L2
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvNativePlace Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mstrProvince Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mstrCity Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvMobilePhone Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getMobilehone()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvEmail Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getEmail()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getContactOpen()I
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_iPermission I
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvPermission Landroid/widget/TextView;
aload 0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_iPermission I
invokespecial com/android/u/weibo/contact/ui/activity/MyContact/getPermissionText(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
aload 0
iconst_0
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedSign Z
aload 0
iconst_0
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedBirth Z
aload 0
iconst_0
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedNativePlace Z
aload 0
iconst_0
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedMobilePhone Z
aload 0
iconst_0
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedEmail Z
aload 0
iconst_0
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedPermission Z
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnSave Landroid/widget/Button;
astore 2
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedWeibo Z
ifeq L3
L4:
aload 2
iload 1
invokevirtual android/widget/Button/setVisibility(I)V
L0:
return
L3:
bipush 8
istore 1
goto L4
.limit locals 3
.limit stack 5
.end method

.method public GetDate(III)V
.catch org/json/JSONException from L0 to L1 using L2
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/g_calendar Ljava/util/Calendar;
iconst_1
invokevirtual java/util/Calendar/get(I)I
istore 4
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/g_calendar Ljava/util/Calendar;
iconst_2
invokevirtual java/util/Calendar/get(I)I
iconst_1
iadd
istore 5
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/g_calendar Ljava/util/Calendar;
iconst_5
invokevirtual java/util/Calendar/get(I)I
istore 6
iload 1
iload 4
if_icmple L3
aload 0
getstatic com/android/u/weibo/R$string/bir_bigger_now I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L3:
iload 1
iload 4
if_icmpne L4
iload 2
iload 5
if_icmple L4
aload 0
getstatic com/android/u/weibo/R$string/bir_bigger_now I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L4:
iload 1
iload 4
if_icmpne L5
iload 2
iload 5
if_icmpne L5
iload 3
iload 6
if_icmple L5
aload 0
getstatic com/android/u/weibo/R$string/bir_bigger_now I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L5:
iload 2
bipush 9
if_icmpge L6
iload 3
bipush 10
if_icmpge L7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "-0"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "-0"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
L8:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvBirthday Landroid/widget/TextView;
aload 7
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_jsonToCommit Lorg/json/JSONObject;
ldc "birthday"
aload 7
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnSave Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
iconst_1
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedBirth Z
L1:
return
L2:
astore 7
aload 7
invokevirtual org/json/JSONException/printStackTrace()V
return
L7:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "-0"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
goto L8
L6:
iload 3
bipush 10
if_icmpge L9
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "-0"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvBirthday Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "-0"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L8
L9:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
goto L8
.limit locals 8
.limit stack 3
.end method

.method public GetNativePlace(Ljava/lang/String;Ljava/lang/String;)V
.catch org/json/JSONException from L0 to L1 using L2
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/activity/MyContact/mstrProvince Ljava/lang/String;
aload 0
aload 2
putfield com/android/u/weibo/contact/ui/activity/MyContact/mstrCity Ljava/lang/String;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvNativePlace Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_jsonToCommit Lorg/json/JSONObject;
ldc "province"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_jsonToCommit Lorg/json/JSONObject;
ldc "city"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnSave Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
iconst_1
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedNativePlace Z
L1:
return
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
return
.limit locals 3
.limit stack 3
.end method

.method public GetTextValue(Ljava/lang/String;)V
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L5
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_iClickedID I
getstatic com/android/u/weibo/R$id/my_contact_rl_mobilephone I
if_icmpne L6
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvMobilePhone Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_jsonToCommit Lorg/json/JSONObject;
ldc "mobilephone"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnSave Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
iconst_1
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedMobilePhone Z
L1:
return
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
return
L6:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_iClickedID I
getstatic com/android/u/weibo/R$id/my_contact_rl_email I
if_icmpne L1
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvEmail Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L3:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_jsonToCommit Lorg/json/JSONObject;
ldc "email"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnSave Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
iconst_1
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedEmail Z
L4:
return
L5:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
return
.limit locals 2
.limit stack 3
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
iconst_1
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/requestWindowFeature(I)Z
pop
aload 0
getstatic com/android/u/weibo/R$layout/my_contact I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/setContentView(I)V
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getPermission(I)V
.catch org/json/JSONException from L0 to L1 using L2
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvPermission Landroid/widget/TextView;
aload 0
iload 1
invokespecial com/android/u/weibo/contact/ui/activity/MyContact/getPermissionText(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
iload 1
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_iPermission I
L0:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_jsonToCommit Lorg/json/JSONObject;
ldc "contact_open"
iload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnSave Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
iconst_1
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedPermission Z
L1:
return
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
return
.limit locals 3
.limit stack 3
.end method

.method public getTipResult(I)V
iload 1
tableswitch 0
L0
default : L1
L1:
return
L0:
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact/finishActivity()V
return
.limit locals 2
.limit stack 1
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/header_btn_left I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnReturn Landroid/widget/Button;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/header_text_title I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvHeadTitle Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/header_btn_right I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnSave Landroid/widget/Button;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/my_contact_et_signature I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_etSignature Landroid/widget/EditText;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/my_contact_rl_birtyday I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_rlBirthday Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/my_contact_tv_birthday I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvBirthday Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/my_contact_tv_sex I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvSex Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/my_contact_rl_native_place I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_rlNativePlace Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/my_contact_native_place I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvNativePlace Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/friend_manager_label_remark I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/MyContact/mTvNativePlaceTip Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/my_contact_rl_mobilephone I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_rlMobilePhone Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/my_contact_tx_mobilephone I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvMobilePhone Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/my_contact_rl_email I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_rlEmail Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/my_contact_tx_email I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvEmail Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/my_contact_tv_weibo I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvWeibo Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/my_contact_btn_control I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnWeiboControl Landroid/widget/Button;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/my_contact_rl_permission I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_rlPermission Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/my_contact_tv_permission I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvPermission Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/userinfo_ext_text_major I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvCollege Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/userinfo_ext_text_class I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvMajor Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/userinfo_ext_text_grade I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvCollegeAge Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tvInfo1Title I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvCollegeTip Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tvInfo2Title I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvMajorTip Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tvInfo3Title I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvCollegeAgeTip Landroid/widget/TextView;
aload 0
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_jsonToCommit Lorg/json/JSONObject;
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bindUser Lcom/product/android/business/login/BindUser;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getstatic com/android/u/weibo/R$id/my_contact_rl_sex I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
getstatic com/android/u/weibo/R$drawable/preference_last_item I
invokevirtual android/view/View/setBackgroundResource(I)V
aload 0
getstatic com/android/u/weibo/R$id/my_contact_rl_mobilephone I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getstatic com/android/u/weibo/R$id/my_contact_rl_email I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getstatic com/android/u/weibo/R$id/my_contact_rl_native_place I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getstatic com/android/u/weibo/R$id/my_contact_rl_permission I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnSave Landroid/widget/Button;
invokevirtual android/widget/Button/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/LinearLayout$LayoutParams
astore 1
aload 1
bipush -2
putfield android/widget/LinearLayout$LayoutParams/width I
aload 1
bipush -2
putfield android/widget/LinearLayout$LayoutParams/height I
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnSave Landroid/widget/Button;
aload 1
invokevirtual android/widget/Button/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnSave Landroid/widget/Button;
getstatic com/android/u/weibo/R$drawable/xy_btn_ensure_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
L0:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnSave Landroid/widget/Button;
aload 0
getstatic com/android/u/weibo/R$string/save I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mTvNativePlaceTip Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/hometown I
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 2
.limit stack 3
.end method

.method protected initComponentValue()V
.catch java/lang/NumberFormatException from L0 to L1 using L2
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
aload 0
getstatic com/android/u/weibo/R$string/personal_phone I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
putfield com/android/u/weibo/contact/ui/activity/MyContact/mPhoneString Ljava/lang/String;
aload 0
aload 0
getstatic com/android/u/weibo/R$string/personal_email I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
putfield com/android/u/weibo/contact/ui/activity/MyContact/mEmailString Ljava/lang/String;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bindUser Lcom/product/android/business/login/BindUser;
ifnull L3
aload 0
getstatic com/android/u/weibo/R$string/personal_onwer I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bindUser Lcom/product/android/business/login/BindUser;
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
aastore
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I[Ljava/lang/Object;)Ljava/lang/String;
astore 3
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvHeadTitle Landroid/widget/TextView;
aload 3
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_etSignature Landroid/widget/EditText;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bindUser Lcom/product/android/business/login/BindUser;
invokevirtual com/product/android/business/login/BindUser/getSignature()Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
iconst_0
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedSign Z
ldc "0000-00-00"
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bindUser Lcom/product/android/business/login/BindUser;
invokevirtual com/product/android/business/login/BindUser/getBirthday()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bindUser Lcom/product/android/business/login/BindUser;
invokevirtual com/product/android/business/login/BindUser/getBirthday()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L4
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvBirthday Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bindUser Lcom/product/android/business/login/BindUser;
invokevirtual com/product/android/business/login/BindUser/getBirthday()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L4:
iconst_0
istore 1
L0:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bindUser Lcom/product/android/business/login/BindUser;
invokevirtual com/product/android/business/login/BindUser/getGender()Ljava/lang/String;
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 2
L1:
iload 2
istore 1
L5:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvSex Landroid/widget/TextView;
iload 1
aload 0
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/getGenderByInt(ILandroid/content/Context;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpeq L6
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvMobilePhone Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bindUser Lcom/product/android/business/login/BindUser;
invokevirtual com/product/android/business/login/BindUser/getMobilephone()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvEmail Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bindUser Lcom/product/android/business/login/BindUser;
invokevirtual com/product/android/business/login/BindUser/getEmail()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
iconst_0
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_iPermission I
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvPermission Landroid/widget/TextView;
aload 0
getstatic com/android/u/weibo/R$string/permission_hide I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L6:
aload 0
aload 0
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getOauth2AccessToken(Landroid/content/Context;)Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_accessToken Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_accessToken Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
ifnonnull L7
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvWeibo Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnWeiboControl Landroid/widget/Button;
aload 0
getstatic com/android/u/weibo/R$string/bind I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
L3:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getParentsDepartName(J)[Ljava/lang/String;
astore 3
aload 3
ifnull L8
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvCollege Landroid/widget/TextView;
aload 3
iconst_2
aaload
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvMajor Landroid/widget/TextView;
aload 3
iconst_1
aaload
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvCollegeAge Landroid/widget/TextView;
aload 3
iconst_0
aaload
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L8:
getstatic com/android/u/weibo/contact/ui/activity/MyContact$7/$SwitchMap$com$product$android$business$ProductTypeDef$Product [I
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
invokevirtual com/product/android/business/ProductTypeDef$Product/ordinal()I
iaload
tableswitch 1
L9
L10
default : L9
L9:
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact/getPersonThirdInfo()V
return
L2:
astore 3
aload 3
invokevirtual java/lang/NumberFormatException/printStackTrace()V
goto L5
L7:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvWeibo Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_accessToken Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
getfield com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/mnickName Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnWeiboControl Landroid/widget/Button;
aload 0
getstatic com/android/u/weibo/R$string/logout I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
goto L3
L10:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvCollegeTip Landroid/widget/TextView;
aload 0
getstatic com/android/u/weibo/R$string/xymy_info1_title I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvMajor Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L11
aload 0
getstatic com/android/u/weibo/R$id/rlayoutMiddle I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L12:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvCollegeAgeTip Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/xymy_info3_title I
invokevirtual android/widget/TextView/setText(I)V
goto L9
L11:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvMajorTip Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/xymy_info2_title I
invokevirtual android/widget/TextView/setText(I)V
goto L12
.limit locals 4
.limit stack 6
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_etSignature Landroid/widget/EditText;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/textWatcher Landroid/text/TextWatcher;
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_rlBirthday Landroid/widget/RelativeLayout;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/detailOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpeq L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_rlNativePlace Landroid/widget/RelativeLayout;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/detailOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_rlMobilePhone Landroid/widget/RelativeLayout;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/detailOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_rlEmail Landroid/widget/RelativeLayout;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/detailOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_rlPermission Landroid/widget/RelativeLayout;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/detailOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
L0:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnReturn Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/detailOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnSave Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/detailOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_btnWeiboControl Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/detailOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L2
iload 1
sipush 1015
if_icmpne L4
iload 2
iconst_m1
if_icmpne L3
aload 3
ifnonnull L5
return
L5:
aload 0
iconst_1
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedNativePlace Z
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_etSignature Landroid/widget/EditText;
invokevirtual android/widget/EditText/clearFocus()V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/rightBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 3
ldc "newCode"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
ifnonnull L6
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvNativePlace Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpeq L1
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_jsonToCommit Lorg/json/JSONObject;
ldc "province"
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvNativePlace Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_jsonToCommit Lorg/json/JSONObject;
ldc "city"
ldc ""
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L3:
aload 0
iload 1
iload 2
aload 3
invokespecial com/product/android/ui/activity/HeaderActivity/onActivityResult(IILandroid/content/Intent;)V
return
L6:
aload 3
ldc "newName"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 4
ifnull L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_tvNativePlace Landroid/widget/TextView;
aload 4
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L0
L2:
astore 4
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
goto L3
L4:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
ifnull L3
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/mSSOBindWeibo Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
iload 1
iload 2
aload 3
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/myOnActivityResult(IILandroid/content/Intent;)V
goto L3
.limit locals 5
.limit stack 4
.end method

.method protected onBegin(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
aload 1
aload 2
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_dialog Landroid/app/ProgressDialog;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_dialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
return
.limit locals 3
.limit stack 5
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/initComponent()V
aload 0
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/initComponentValue()V
aload 0
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/initEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iload 1
tableswitch 4
L0
default : L1
L1:
aload 0
iload 1
aload 2
invokespecial com/product/android/ui/activity/HeaderActivity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
L0:
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/MyContact/checkNeedToSave()V
goto L1
.limit locals 3
.limit stack 3
.end method

.method protected onStart()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onStart()V
return
.limit locals 1
.limit stack 1
.end method
