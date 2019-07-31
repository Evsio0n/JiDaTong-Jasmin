.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/OtherContactActivity
.super com/product/android/ui/activity/HeaderActivity
.implements com/product/android/ui/dialog/DlgModifyText$OnDlgModifyTextDismissListener
.implements com/android/u/weibo/contact/ui/dialog/DlgTip$OnDlgTipDismissListener
.implements android/view/View$OnTouchListener
.inner class inner com/nd/android/u/cloud/activity/OtherContactActivity$1
.inner class inner com/nd/android/u/cloud/activity/OtherContactActivity$2
.inner class inner com/nd/android/u/cloud/activity/OtherContactActivity$3
.inner class inner com/nd/android/u/cloud/activity/OtherContactActivity$4
.inner class inner com/nd/android/u/cloud/activity/OtherContactActivity$5
.inner class private CommitToServer inner com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer outer com/nd/android/u/cloud/activity/OtherContactActivity
.inner class protected GetThirdPersonInfoTask inner com/nd/android/u/cloud/activity/OtherContactActivity$GetThirdPersonInfoTask outer com/nd/android/u/cloud/activity/OtherContactActivity

.field protected static final 'TAG' Ljava/lang/String; = "OtherContactActivity"

.field protected 'commitTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field protected 'detailOnClick' Landroid/view/View$OnClickListener;

.field protected 'mGetInfoTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mHighSchoolInfo' Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;

.field private 'mLocalOapUser' Lcom/product/android/commonInterface/contact/OapUser;

.field private 'mNativePlaceCode' Ljava/lang/String;

.field private 'mNetOapUser' Lcom/product/android/commonInterface/contact/OapUser;

.field private 'mRelation' I

.field protected 'm_CommitTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field 'm_bModifiedEmail' Z

.field 'm_bModifiedHighSchool' Z

.field 'm_bModifiedMobilePhone' Z

.field 'm_bModifiedNativePlace' Z

.field 'm_bModifiedSign' Z

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field private 'm_etSignature' Landroid/widget/EditText;

.field protected 'm_getInfoTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'm_iClickedID' I

.field private 'm_ivIDPhoto' Landroid/widget/ImageView;

.field private 'm_lUid' J

.field private 'm_tvBirthday' Landroid/widget/TextView;

.field private 'm_tvHighSchool' Landroid/widget/TextView;

.field private 'm_tvInfoClass' Landroid/widget/TextView;

.field private 'm_tvInfoClassTitle' Landroid/widget/TextView;

.field private 'm_tvInfoCollege' Landroid/widget/TextView;

.field private 'm_tvInfoSchool' Landroid/widget/TextView;

.field private 'm_tvSex' Landroid/widget/TextView;

.field private 'mstrErrMsg' Ljava/lang/String;

.field private 'textWatcher' Landroid/text/TextWatcher;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedSign Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedNativePlace Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedMobilePhone Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedEmail Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedHighSchool Z
aload 0
new com/nd/android/u/cloud/activity/OtherContactActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity$1/<init>(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)V
putfield com/nd/android/u/cloud/activity/OtherContactActivity/mGetInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/cloud/activity/OtherContactActivity$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity$2/<init>(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)V
putfield com/nd/android/u/cloud/activity/OtherContactActivity/textWatcher Landroid/text/TextWatcher;
aload 0
new com/nd/android/u/cloud/activity/OtherContactActivity$3
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity$3/<init>(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)V
putfield com/nd/android/u/cloud/activity/OtherContactActivity/detailOnClick Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/cloud/activity/OtherContactActivity$5
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity$5/<init>(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)V
putfield com/nd/android/u/cloud/activity/OtherContactActivity/commitTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_etSignature Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/cloud/activity/OtherContactActivity;Lcom/product/android/commonInterface/contact/OapUser;)Lcom/product/android/commonInterface/contact/OapUser;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/OtherContactActivity/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Z
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/getIsOtherModified()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)J
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_lUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$302(Lcom/nd/android/u/cloud/activity/OtherContactActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/OtherContactActivity/mRelation I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mstrErrMsg Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/android/u/cloud/activity/OtherContactActivity;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/OtherContactActivity/mstrErrMsg Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/setPersonThirdInfoToView()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/rightBtn Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_tvHighSchool Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/finishActivity()V
return
.limit locals 1
.limit stack 1
.end method

.method private checkNeedToSave()V
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/getIsModified()Z
ifeq L0
new com/android/u/weibo/contact/ui/dialog/XYDlgTip
dup
aload 0
new com/nd/android/u/cloud/activity/OtherContactActivity$4
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity$4/<init>(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)V
aconst_null
invokespecial com/android/u/weibo/contact/ui/dialog/XYDlgTip/<init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
invokevirtual com/android/u/weibo/contact/ui/dialog/XYDlgTip/show()V
return
L0:
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/finishActivity()V
return
.limit locals 1
.limit stack 6
.end method

.method private commitDataToServer()V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_CommitTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_CommitTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer/<init>(Lcom/nd/android/u/cloud/activity/OtherContactActivity;Lcom/nd/android/u/cloud/activity/OtherContactActivity$1;)V
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_CommitTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_CommitTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/commitTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_CommitTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_0
anewarray com/common/android/utils/task/genericTask/TaskParams
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method

.method private commitIfNeed()V
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/getIsModified()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/commitDataToServer()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/hideSoftInput()V
return
L0:
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/finishActivity()V
return
.limit locals 1
.limit stack 2
.end method

.method private difBetweenStaffAndStudent(Lcom/product/android/commonInterface/contact/OapUser;)V
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getType()I
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_tvInfoClassTitle Landroid/widget/TextView;
ldc_w 2131493534
invokevirtual android/widget/TextView/setText(I)V
L1:
return
L0:
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getType()I
iconst_2
if_icmpne L1
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_tvInfoClassTitle Landroid/widget/TextView;
ldc_w 2131495516
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 2
.limit stack 2
.end method

.method private finishActivity()V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/hideSoftInput()V
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/INSTANCE Lcom/product/android/business/broadcast/PersonInfoBroadHelper;
astore 4
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_lUid J
lstore 1
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
ifnonnull L1
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
astore 3
L2:
aload 4
aload 0
lload 1
aload 3
invokevirtual com/product/android/business/broadcast/PersonInfoBroadHelper/sendModifyOtherInfoBroadCast(Landroid/content/Context;JLcom/product/android/commonInterface/contact/OapUser;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/finish()V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
astore 3
goto L2
.limit locals 5
.limit stack 5
.end method

.method private getIsModified()Z
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedSign Z
ifne L0
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/getIsOtherModified()Z
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

.method private getIsOtherModified()Z
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedHighSchool Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method private getPersonThirdInfo()V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/cloud/activity/OtherContactActivity$GetThirdPersonInfoTask
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity$GetThirdPersonInfoTask/<init>(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)V
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mGetInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method private goToSelectAddress()V
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/address/ui/AddressSelector
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
sipush 28675
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 1
.limit stack 5
.end method

.method private initDepartsInfo()V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_lUid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getParentsDepartName(J)[Ljava/lang/String;
astore 1
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_tvInfoSchool Landroid/widget/TextView;
aload 1
iconst_2
aaload
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
iconst_1
aaload
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
ldc_w 2131626040
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L2:
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_tvInfoClass Landroid/widget/TextView;
aload 1
iconst_0
aaload
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_tvInfoCollege Landroid/widget/TextView;
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L2
.limit locals 3
.limit stack 3
.end method

.method private initEditFlag()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedNativePlace Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedEmail Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedMobilePhone Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedSign Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedHighSchool Z
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private initViewByIndentity()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_lUid J
lcmp
ifne L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_etSignature Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/textWatcher Landroid/text/TextWatcher;
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
ldc_w 2131626020
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/findViewById(I)Landroid/view/View;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/detailOnClick Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
ldc_w 2131626271
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/findViewById(I)Landroid/view/View;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/detailOnClick Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
ldc_w 2131626274
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/findViewById(I)Landroid/view/View;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/detailOnClick Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
ldc_w 2131624353
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/findViewById(I)Landroid/view/View;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/detailOnClick Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_etSignature Landroid/widget/EditText;
iconst_0
invokevirtual android/widget/EditText/setFocusable(Z)V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_etSignature Landroid/widget/EditText;
iconst_0
invokevirtual android/widget/EditText/setFocusableInTouchMode(Z)V
aload 0
ldc_w 2131626267
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/findViewById(I)Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
aload 0
ldc_w 2131626269
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/findViewById(I)Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
aload 0
ldc_w 2131626020
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setClickable(Z)V
aload 0
ldc_w 2131626271
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setClickable(Z)V
aload 0
ldc_w 2131626274
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setClickable(Z)V
aload 0
ldc_w 2131624353
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setClickable(Z)V
return
.limit locals 1
.limit stack 4
.end method

.method private isStaffAndStudent(Lcom/product/android/commonInterface/contact/OapUser;)Z
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STAFF Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getType()I
iconst_2
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method private modifyText(ILjava/lang/String;Ljava/lang/String;)V
new com/product/android/ui/dialog/DlgModifyText
dup
aload 0
iload 1
aload 0
ldc_w 2131494650
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 3
aastore
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/getString(I[Ljava/lang/Object;)Ljava/lang/String;
aload 3
aload 2
ldc_w 2131230785
invokespecial com/product/android/ui/dialog/DlgModifyText/<init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
astore 2
aload 2
aload 0
invokevirtual com/product/android/ui/dialog/DlgModifyText/setOnAfterDismissListener(Lcom/product/android/ui/dialog/DlgModifyText$OnDlgModifyTextDismissListener;)V
aload 2
invokevirtual com/product/android/ui/dialog/DlgModifyText/show()V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_etSignature Landroid/widget/EditText;
invokevirtual android/widget/EditText/clearFocus()V
return
.limit locals 4
.limit stack 10
.end method

.method private setGender(I)V
iload 1
tableswitch 0
L0
L1
L2
default : L3
L3:
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_tvSex Landroid/widget/TextView;
aload 0
ldc_w 2131494958
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_tvSex Landroid/widget/TextView;
aload 0
ldc_w 2131494958
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_tvSex Landroid/widget/TextView;
aload 0
ldc_w 2131494216
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L2:
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_tvSex Landroid/widget/TextView;
aload 0
ldc_w 2131493586
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 3
.end method

.method private setPersonThirdInfoToView()V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
ifnull L0
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/difBetweenStaffAndStudent(Lcom/product/android/commonInterface/contact/OapUser;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/initDepartsInfo()V
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/isStaffAndStudent(Lcom/product/android/commonInterface/contact/OapUser;)Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_ivIDPhoto Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getVisibility()I
ifeq L2
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_ivIDPhoto Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
getstatic com/nd/android/u/cloud/manager/PassportPhotoManager/INSTANCE Lcom/nd/android/u/cloud/manager/PassportPhotoManager;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_ivIDPhoto Landroid/widget/ImageView;
invokevirtual com/nd/android/u/cloud/manager/PassportPhotoManager/showPhoto(JLandroid/widget/ImageView;)V
L2:
aload 0
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131494651
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/titleText Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_etSignature Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getSignature()Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedSign Z
ldc "0000-00-00"
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getBirthday()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L3
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getBirthday()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L3
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_tvBirthday Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getBirthday()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L3:
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getGender()I
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/setGender(I)V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_tvHighSchool Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getSeniorSchool()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/initEditFlag()V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_ivIDPhoto Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L2
.limit locals 2
.limit stack 5
.end method

.method public GetTextValue(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 0
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
iconst_1
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/requestWindowFeature(I)Z
pop
aload 0
ldc_w 2130903564
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/setContentView(I)V
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 2
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
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/finishActivity()V
return
.limit locals 2
.limit stack 1
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/rightBtn Landroid/widget/Button;
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
getfield com/nd/android/u/cloud/activity/OtherContactActivity/rightBtn Landroid/widget/Button;
aload 1
invokevirtual android/widget/Button/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/rightBtn Landroid/widget/Button;
ldc_w 2130838304
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
aload 0
ldc_w 2131626265
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_ivIDPhoto Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131626266
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_etSignature Landroid/widget/EditText;
aload 0
aload 0
ldc_w 2131626016
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_tvBirthday Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131626019
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_tvSex Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131626268
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_tvHighSchool Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131626278
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_tvInfoSchool Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131626279
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_tvInfoCollege Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131626280
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_tvInfoClass Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131626043
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_tvInfoClassTitle Landroid/widget/TextView;
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/initViewByIndentity()V
return
.limit locals 2
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_lUid J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
putfield com/nd/android/u/cloud/activity/OtherContactActivity/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
ifnonnull L0
return
L0:
aload 0
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131494651
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/titleText Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/isStaffAndStudent(Lcom/product/android/commonInterface/contact/OapUser;)Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_ivIDPhoto Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
getstatic com/nd/android/u/cloud/manager/PassportPhotoManager/INSTANCE Lcom/nd/android/u/cloud/manager/PassportPhotoManager;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_ivIDPhoto Landroid/widget/ImageView;
invokevirtual com/nd/android/u/cloud/manager/PassportPhotoManager/showPhoto(JLandroid/widget/ImageView;)V
L2:
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getGender()I
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/setGender(I)V
aload 0
ldc_w 2131626020
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
ldc_w 2131626270
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_etSignature Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getSignature()Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_lUid J
lcmp
ifeq L3
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_etSignature Landroid/widget/EditText;
ldc_w 2131494625
invokevirtual android/widget/EditText/setHint(I)V
L3:
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedSign Z
ldc "0000-00-00"
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getBirthday()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getBirthday()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L4
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_tvBirthday Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getBirthday()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L4:
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_tvHighSchool Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getSeniorSchool()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/difBetweenStaffAndStudent(Lcom/product/android/commonInterface/contact/OapUser;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/initDepartsInfo()V
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/getPersonThirdInfo()V
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/initEditFlag()V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_ivIDPhoto Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L2
.limit locals 2
.limit stack 5
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
return
.limit locals 1
.limit stack 1
.end method

.method protected leftBtnHandle()V
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/checkNeedToSave()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
iload 2
iconst_m1
if_icmpne L0
iload 1
sipush 28675
if_icmpne L1
aload 3
ifnonnull L0
return
L1:
iload 1
sipush 28676
if_icmpne L0
aload 0
aload 3
ldc "is_highschool_edit"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedHighSchool Z
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedHighSchool Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/rightBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
new com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo
dup
invokespecial com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/<init>()V
putfield com/nd/android/u/cloud/activity/OtherContactActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
aload 3
ldc "highschool_code"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/setSchoolCode(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
aload 3
ldc "highschool_name"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/setSchoolName(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_tvHighSchool Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
invokevirtual com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/getSchoolName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
iload 1
iload 2
aload 3
invokespecial com/product/android/ui/activity/HeaderActivity/onActivityResult(IILandroid/content/Intent;)V
return
.limit locals 4
.limit stack 4
.end method

.method protected onBegin(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
aload 1
aload 2
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_dialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_dialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_dialog Landroid/app/ProgressDialog;
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
aload 0
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/getIntent()Landroid/content/Intent;
ldc "lUid"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_lUid J
aload 0
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/initEvent()V
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
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/checkNeedToSave()V
goto L1
.limit locals 3
.limit stack 3
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method protected rightBtnHandle()V
aload 0
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity/commitIfNeed()V
return
.limit locals 1
.limit stack 1
.end method
