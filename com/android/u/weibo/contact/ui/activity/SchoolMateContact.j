.bytecode 50.0
.class public synchronized com/android/u/weibo/contact/ui/activity/SchoolMateContact
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/android/u/weibo/contact/ui/activity/SchoolMateContact$1
.inner class inner com/android/u/weibo/contact/ui/activity/SchoolMateContact$2
.inner class static synthetic inner com/android/u/weibo/contact/ui/activity/SchoolMateContact$3
.inner class private GetThirdPersonInfoTask inner com/android/u/weibo/contact/ui/activity/SchoolMateContact$GetThirdPersonInfoTask outer com/android/u/weibo/contact/ui/activity/SchoolMateContact

.field protected static final 'TAG' Ljava/lang/String; = "SchoolMateContact"

.field protected 'detailOnClick' Landroid/view/View$OnClickListener;

.field protected 'mGetInfoTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mLocalOapUser' Lcom/product/android/commonInterface/contact/OapUser;

.field private 'mNetOapUser' Lcom/product/android/commonInterface/contact/OapUser;

.field private 'mRelation' I

.field private 'm_btnReturn' Landroid/widget/Button;

.field protected 'm_getInfoTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'm_lUid' J

.field private 'm_llAssociation' Landroid/widget/LinearLayout;

.field private 'm_rlConstellation' Landroid/widget/RelativeLayout;

.field private 'm_rlSex' Landroid/widget/RelativeLayout;

.field private 'm_rlWeibo' Landroid/widget/RelativeLayout;

.field private 'm_tvCollege' Landroid/widget/TextView;

.field private 'm_tvCollegeAge' Landroid/widget/TextView;

.field private 'm_tvCollegeAgeTip' Landroid/widget/TextView;

.field private 'm_tvCollegeTip' Landroid/widget/TextView;

.field private 'm_tvConstellation' Landroid/widget/TextView;

.field private 'm_tvEmail' Landroid/widget/TextView;

.field private 'm_tvHeadTitle' Landroid/widget/TextView;

.field private 'm_tvMajor' Landroid/widget/TextView;

.field private 'm_tvMajorTip' Landroid/widget/TextView;

.field private 'm_tvMobilePhone' Landroid/widget/TextView;

.field private 'm_tvNativePlace' Landroid/widget/TextView;

.field private 'm_tvSex' Landroid/widget/TextView;

.field private 'm_tvWeibo' Landroid/widget/TextView;

.field private 'mstrErrMsg' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
lconst_0
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_lUid J
aload 0
new com/android/u/weibo/contact/ui/activity/SchoolMateContact$1
dup
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/SchoolMateContact$1/<init>(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;)V
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mGetInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/android/u/weibo/contact/ui/activity/SchoolMateContact$2
dup
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/SchoolMateContact$2/<init>(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;)V
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/detailOnClick Landroid/view/View$OnClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$100(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;)Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;Lcom/product/android/commonInterface/contact/OapUser;)Lcom/product/android/commonInterface/contact/OapUser;
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;)J
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_lUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$302(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;I)I
aload 0
iload 1
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mRelation I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;)Ljava/lang/String;
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mstrErrMsg Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mstrErrMsg Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;)V
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/SchoolMateContact/setPersonThirdInfoToView()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;)V
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/SchoolMateContact/finishActivity()V
return
.limit locals 1
.limit stack 1
.end method

.method private finishActivity()V
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/INSTANCE Lcom/product/android/business/broadcast/PersonInfoBroadHelper;
astore 4
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_lUid J
lstore 1
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
ifnonnull L1
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
astore 3
L2:
aload 4
aload 0
lload 1
aload 3
invokevirtual com/product/android/business/broadcast/PersonInfoBroadHelper/sendModifyOtherInfoBroadCast(Landroid/content/Context;JLcom/product/android/commonInterface/contact/OapUser;)V
aload 0
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/finish()V
return
L1:
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
astore 3
goto L2
.limit locals 5
.limit stack 5
.end method

.method private getPersonThirdInfo()V
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/android/u/weibo/contact/ui/activity/SchoolMateContact$GetThirdPersonInfoTask
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/contact/ui/activity/SchoolMateContact$GetThirdPersonInfoTask/<init>(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact$1;)V
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mGetInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method private setPersonThirdInfoToView()V
.catch java/lang/RuntimeException from L0 to L1 using L2
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
ifnull L3
aload 0
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/personal_onwer I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvHeadTitle Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L1
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getBirthday()Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
ldc "//^[\\d]{4}[-\\ ][\\d]{1,2}[-\\ ][\\d]{1,2}$//"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 1
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/matches()Z
ifne L1
L0:
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvConstellation Landroid/widget/TextView;
new java/util/Date
dup
aload 1
ldc "-"
ldc "/"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
invokespecial java/util/Date/<init>(Ljava/lang/String;)V
invokestatic com/android/u/weibo/contact/utils/ContactConstellation/getConstellation(Ljava/util/Date;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvSex Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getGender()I
aload 0
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/getGenderByInt(ILandroid/content/Context;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvNativePlace Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getProvince()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getCity()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
iconst_2
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getContactOpen()I
if_icmpeq L4
iconst_1
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getContactOpen()I
if_icmpne L5
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mRelation I
iconst_3
if_icmpne L5
L4:
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvMobilePhone Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getMobilehone()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvEmail Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getEmail()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvWeibo Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getstatic com/android/u/weibo/R$string/weibo_site I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_rlWeibo Landroid/widget/RelativeLayout;
iconst_1
invokevirtual android/widget/RelativeLayout/setClickable(Z)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_llAssociation Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L3:
return
L2:
astore 1
aload 1
invokevirtual java/lang/RuntimeException/printStackTrace()V
goto L1
L5:
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_llAssociation Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 2
.limit stack 6
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
iconst_1
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/requestWindowFeature(I)Z
pop
aload 0
getstatic com/android/u/weibo/R$layout/school_mate_contact I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/setContentView(I)V
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/header_btn_left I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_btnReturn Landroid/widget/Button;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/header_text_title I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvHeadTitle Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/rlConste I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_rlConstellation Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/xy_contact_tv_constellation I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvConstellation Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/rlSex I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_rlSex Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/xy_contact_tv_sex I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvSex Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/xy_contact_native_place I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvNativePlace Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/xy_contact_association I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_llAssociation Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/xy_contact_tx_mobilephone I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvMobilePhone Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/xy_contact_tx_email I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvEmail Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/xy_contact_rl_weibo I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_rlWeibo Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/xy_contact_tv_weibo I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvWeibo Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/userinfo_ext_text_major I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvCollege Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/userinfo_ext_text_class I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvMajor Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/userinfo_ext_text_grade I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvCollegeAge Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tvInfo1Title I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvCollegeTip Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tvInfo2Title I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvMajorTip Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tvInfo3Title I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvCollegeAgeTip Landroid/widget/TextView;
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
.catch java/lang/RuntimeException from L0 to L1 using L2
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_lUid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getLocalOapUser(J)Lcom/product/android/commonInterface/contact/OapUser;
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
ifnonnull L3
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_rlWeibo Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setClickable(Z)V
return
L3:
aload 0
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/personal_onwer I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvHeadTitle Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L1
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getBirthday()Ljava/lang/String;
astore 1
aload 1
ifnull L1
ldc ""
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
ldc "//^[\\d]{4}[-\\ ][\\d]{1,2}[-\\ ][\\d]{1,2}$//"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 1
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/matches()Z
ifne L1
L0:
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvConstellation Landroid/widget/TextView;
new java/util/Date
dup
aload 1
ldc "-"
ldc "/"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
invokespecial java/util/Date/<init>(Ljava/lang/String;)V
invokestatic com/android/u/weibo/contact/utils/ContactConstellation/getConstellation(Ljava/util/Date;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvSex Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getGender()I
aload 0
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/getGenderByInt(ILandroid/content/Context;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvNativePlace Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getProvince()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getCity()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_llAssociation Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_lUid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getParentsDepartName(J)[Ljava/lang/String;
astore 1
aload 1
ifnull L4
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvCollege Landroid/widget/TextView;
aload 1
iconst_2
aaload
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvMajor Landroid/widget/TextView;
aload 1
iconst_1
aaload
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvCollegeAge Landroid/widget/TextView;
aload 1
iconst_0
aaload
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L4:
getstatic com/android/u/weibo/contact/ui/activity/SchoolMateContact$3/$SwitchMap$com$product$android$business$ProductTypeDef$Product [I
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
invokevirtual com/product/android/business/ProductTypeDef$Product/ordinal()I
iaload
tableswitch 1
L5
L6
default : L5
L5:
aload 0
invokespecial com/android/u/weibo/contact/ui/activity/SchoolMateContact/getPersonThirdInfo()V
return
L2:
astore 1
aload 1
invokevirtual java/lang/RuntimeException/printStackTrace()V
goto L1
L6:
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_rlConstellation Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_rlSex Landroid/widget/RelativeLayout;
getstatic com/android/u/weibo/R$drawable/preference_item I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvCollegeTip Landroid/widget/TextView;
aload 0
getstatic com/android/u/weibo/R$string/xymy_info1_title I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvMajor Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L7
aload 0
getstatic com/android/u/weibo/R$id/rlayoutMiddle I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L8:
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvCollegeAgeTip Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/xymy_info3_title I
invokevirtual android/widget/TextView/setText(I)V
goto L5
L7:
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_tvMajorTip Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/xymy_info2_title I
invokevirtual android/widget/TextView/setText(I)V
goto L8
.limit locals 2
.limit stack 6
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_btnReturn Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/detailOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_rlWeibo Landroid/widget/RelativeLayout;
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/detailOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/getIntent()Landroid/content/Intent;
ldc "lUid"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact/m_lUid J
aload 0
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/initComponent()V
aload 0
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/initComponentValue()V
aload 0
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/initEvent()V
return
.limit locals 2
.limit stack 5
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
invokespecial com/android/u/weibo/contact/ui/activity/SchoolMateContact/finishActivity()V
goto L1
.limit locals 3
.limit stack 3
.end method
