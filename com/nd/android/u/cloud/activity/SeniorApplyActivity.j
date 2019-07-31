.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/SeniorApplyActivity
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/cloud/activity/SeniorApplyActivity$1
.inner class inner com/nd/android/u/cloud/activity/SeniorApplyActivity$2
.inner class private CommitTask inner com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask outer com/nd/android/u/cloud/activity/SeniorApplyActivity
.inner class private GetInfoTask inner com/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask outer com/nd/android/u/cloud/activity/SeniorApplyActivity
.inner class private IsAlreadyBeanSeniorTask inner com/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask outer com/nd/android/u/cloud/activity/SeniorApplyActivity

.field private static final 'REQUEST_CODE_EDIT_SIGNTURE' I = 1


.field 'avatarUri' Landroid/net/Uri;

.field private 'isAlreadyBeanSeniorTask' Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask;

.field private 'mBtnCommit' Landroid/widget/Button;

.field private 'mCommitTask' Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask;

.field private 'mGetNetOapUerTask' Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask;

.field private 'mHander' Landroid/os/Handler;

.field private 'mHighSchoolInfo' Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;

.field private 'mIsApply' Z

.field private 'mIsHighschoolModify' Z

.field private 'mIsNativePlaceModify' Z

.field private 'mIsSightureModify' Z

.field private 'mIvAvator' Landroid/widget/ImageView;

.field private 'mLocalOapUser' Lcom/product/android/commonInterface/contact/OapUser;

.field private 'mNativePlaceCode' Ljava/lang/String;

.field private 'mNetOapUser' Lcom/product/android/commonInterface/contact/OapUser;

.field private 'mTvHighschool' Landroid/widget/TextView;

.field private 'mTvNative' Landroid/widget/TextView;

.field private 'mTvSignture' Landroid/widget/TextView;

.field private 'mUid' J

.field private 'mUpdatePersonInfoReceiver' Landroid/content/BroadcastReceiver;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field 'showAvatarUri' Landroid/net/Uri;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/avatarUri Landroid/net/Uri;
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/showAvatarUri Landroid/net/Uri;
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsSightureModify Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsNativePlaceModify Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsHighschoolModify Z
aload 0
new com/nd/android/u/cloud/activity/SeniorApplyActivity$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/SeniorApplyActivity$2/<init>(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)V
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mUpdatePersonInfoReceiver Landroid/content/BroadcastReceiver;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)J
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIvAvator Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Z
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsHighschoolModify Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1002(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsHighschoolModify Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Z
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsNativePlaceModify Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1102(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsNativePlaceModify Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1200(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mTvNative Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mNativePlaceCode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Z
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsApply Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1600(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1700(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/SeniorApplyActivity/cancelCommitTask()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1800(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/SeniorApplyActivity/isAlreadyBeSenior()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1900(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/SeniorApplyActivity/finishActivity()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2000(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mHander Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$502(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;Lcom/product/android/commonInterface/contact/OapUser;)Lcom/product/android/commonInterface/contact/OapUser;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mNetOapUser Lcom/product/android/commonInterface/contact/OapUser;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mBtnCommit Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;Lcom/product/android/commonInterface/contact/OapUser;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/SeniorApplyActivity/setData(Lcom/product/android/commonInterface/contact/OapUser;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$800(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Z
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsSightureModify Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$802(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsSightureModify Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$900(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mTvSignture Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private cancelCommitTask()V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mCommitTask Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mCommitTask Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask;
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mCommitTask Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask;
iconst_1
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/cancel(Z)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private commitToServer()V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mCommitTask Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mCommitTask Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask;
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
ldc_w 2131494901
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L0:
aload 0
new com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/<init>(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$1;)V
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mCommitTask Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mCommitTask Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method

.method private finishActivity()V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mGetNetOapUerTask Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mGetNetOapUerTask Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask;
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mGetNetOapUerTask Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask;
iconst_1
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask/cancel(Z)Z
pop
L0:
aload 0
invokespecial com/nd/android/u/cloud/activity/SeniorApplyActivity/cancelCommitTask()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/hideSoftInput()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/finish()V
return
.limit locals 1
.limit stack 2
.end method

.method private isAlreadyBeSenior()V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsApply Z
ifne L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/isAlreadyBeanSeniorTask Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask;
ifnull L2
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/isAlreadyBeanSeniorTask Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask;
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpeq L1
L2:
aload 0
new com/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask/<init>(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$1;)V
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/isAlreadyBeanSeniorTask Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/isAlreadyBeanSeniorTask Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method

.method private isEditInfo()Z
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mUid J
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getSysAvatarId(J)I
ifeq L0
ldc_w 2131495707
invokestatic com/common/android/utils/ToastUtils/display(I)V
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mTvNative Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L1
ldc_w 2131495726
invokestatic com/common/android/utils/ToastUtils/display(I)V
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mTvSignture Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L2
ldc_w 2131495739
invokestatic com/common/android/utils/ToastUtils/display(I)V
iconst_0
ireturn
L2:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method private setData(Lcom/product/android/commonInterface/contact/OapUser;)V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mUid J
iconst_3
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIvAvator Landroid/widget/ImageView;
aconst_null
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mTvNative Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getProvince()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getCity()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mTvHighschool Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getSeniorSchool()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getSignature()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mTvSignture Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsSightureModify Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsNativePlaceModify Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsHighschoolModify Z
return
.limit locals 2
.limit stack 5
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
ldc_w 2131624357
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIvAvator Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131624361
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mTvNative Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624365
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mTvHighschool Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624368
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mTvSignture Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624091
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mBtnCommit Landroid/widget/Button;
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
ldc_w 2131495703
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/setActivityTitle(I)V
aload 0
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mUid J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
ifnonnull L0
return
L0:
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mLocalOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokespecial com/nd/android/u/cloud/activity/SeniorApplyActivity/setData(Lcom/product/android/commonInterface/contact/OapUser;)V
aload 0
new com/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask/<init>(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$1;)V
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mGetNetOapUerTask Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mGetNetOapUerTask Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsApply Z
ifeq L1
aload 0
invokespecial com/nd/android/u/cloud/activity/SeniorApplyActivity/isAlreadyBeSenior()V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mBtnCommit Landroid/widget/Button;
ldc_w 2131495731
invokevirtual android/widget/Button/setText(I)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mBtnCommit Landroid/widget/Button;
ldc_w 2131495736
invokevirtual android/widget/Button/setText(I)V
return
.limit locals 1
.limit stack 5
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
ldc_w 2131624356
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
ldc_w 2131624358
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
ldc_w 2131624362
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
ldc_w 2131624356
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
ldc_w 2131624366
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mBtnCommit Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected leftBtnHandle()V
aload 0
invokespecial com/nd/android/u/cloud/activity/SeniorApplyActivity/finishActivity()V
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
ifnonnull L2
return
L2:
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsNativePlaceModify Z
aload 0
aload 3
ldc "newCode"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mNativePlaceCode Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mNativePlaceCode Ljava/lang/String;
ifnonnull L3
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mTvNative Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
iload 1
iload 2
aload 3
invokespecial com/product/android/ui/activity/HeaderActivity/onActivityResult(IILandroid/content/Intent;)V
return
L3:
aload 3
ldc "newName"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 4
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mTvNative Landroid/widget/TextView;
aload 4
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L0
L1:
iload 1
sipush 28676
if_icmpne L4
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsHighschoolModify Z
aload 0
new com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo
dup
invokespecial com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/<init>()V
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
aload 3
ldc "highschool_code"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/setSchoolCode(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
aload 3
ldc "highschool_name"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/setSchoolName(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mTvHighschool Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
invokevirtual com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/getSchoolName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L0
L4:
iload 1
iconst_1
if_icmpne L0
aload 3
ldc "signture"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsSightureModify Z
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mTvSignture Landroid/widget/TextView;
aload 4
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L0
.limit locals 5
.limit stack 4
.end method

.method protected onBegin(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/m_dialog Landroid/app/ProgressDialog;
ifnonnull L0
aload 0
aload 0
aload 1
aload 2
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/m_dialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/m_dialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
L0:
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
return
.limit locals 3
.limit stack 5
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
ldc_w 2131624356
if_icmpne L0
new android/content/Intent
dup
aload 0
ldc com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "MINE"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 1
ldc "uid"
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mUid J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
aload 1
sipush 1000
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/startActivityForResult(Landroid/content/Intent;I)V
L1:
return
L0:
iload 2
ldc_w 2131624358
if_icmpne L2
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/address/ui/AddressSelector
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
sipush 28675
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/startActivityForResult(Landroid/content/Intent;I)V
return
L2:
iload 2
ldc_w 2131624362
if_icmpne L3
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
aload 0
ldc com/nd/android/u/cloud/activity/SelectHighSchoolActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 1
ldc "highschool_name"
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mTvHighschool Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 1
sipush 28676
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/startActivityForResult(Landroid/content/Intent;I)V
return
L3:
iload 2
ldc_w 2131624366
if_icmpne L4
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
aload 0
ldc com/nd/android/u/cloud/activity/EditSeniorSigntureActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 1
ldc "signture"
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mTvSignture Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 1
iconst_1
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/startActivityForResult(Landroid/content/Intent;I)V
return
L4:
iload 2
ldc_w 2131624091
if_icmpne L1
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L5
ldc_w 2131495043
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L5:
aload 0
invokespecial com/nd/android/u/cloud/activity/SeniorApplyActivity/isEditInfo()Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsApply Z
ifne L6
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsSightureModify Z
ifne L7
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsHighschoolModify Z
ifne L7
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsNativePlaceModify Z
ifeq L8
L7:
aload 0
invokespecial com/nd/android/u/cloud/activity/SeniorApplyActivity/commitToServer()V
return
L8:
ldc_w 2131495729
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L6:
aload 0
invokespecial com/nd/android/u/cloud/activity/SeniorApplyActivity/commitToServer()V
return
.limit locals 3
.limit stack 5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "HandlerLeak" 
.end annotation
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903112
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/setContentView(I)V
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
ldc_w 2131495043
invokestatic com/common/android/utils/ToastUtils/display(I)V
L0:
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/getIntent()Landroid/content/Intent;
ldc "apply"
iconst_1
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mIsApply Z
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/getIntent()Landroid/content/Intent;
ldc "uid"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mUid J
aload 0
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/initEvent()V
aload 0
new com/nd/android/u/cloud/activity/SeniorApplyActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/SeniorApplyActivity$1/<init>(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)V
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mHander Landroid/os/Handler;
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mUpdatePersonInfoReceiver Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/ACTION_HOMEPAGE_UPDATE Ljava/lang/String;
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual android/support/v4/content/LocalBroadcastManager/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
return
.limit locals 2
.limit stack 5
.end method

.method protected onDestroy()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/isAlreadyBeanSeniorTask Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/isAlreadyBeanSeniorTask Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask;
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/isAlreadyBeanSeniorTask Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask;
iconst_1
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask/cancel(Z)Z
pop
L0:
aload 0
invokespecial com/nd/android/u/cloud/activity/SeniorApplyActivity/cancelCommitTask()V
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/mUpdatePersonInfoReceiver Landroid/content/BroadcastReceiver;
invokevirtual android/support/v4/content/LocalBroadcastManager/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
return
.limit locals 1
.limit stack 2
.end method
