.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/util/List<Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;>;Ljava/lang/Void;Lorg/json/JSONObject;>;"
.inner class private static BindIdentityTask inner com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask outer com/nd/android/u/cloud/activity/fragment/BindUnitFragment

.field private 'mActivity' Landroid/app/Activity;

.field private 'mPD' Landroid/app/ProgressDialog;

.field private 'mPersonUnitsInfo' Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;

.method <init>(Landroid/app/Activity;Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;)V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/mActivity Landroid/app/Activity;
aload 0
aload 2
putfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/mPersonUnitsInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;
return
.limit locals 3
.limit stack 2
.end method

.method private isSuccess(Lorg/json/JSONObject;)Z
aload 1
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 1
ldc "code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 2
iload 2
sipush 200
if_icmpeq L2
iload 2
sipush 409
if_icmpne L1
L2:
iconst_1
ireturn
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/util/List;
invokevirtual com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/doInBackground([Ljava/util/List;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/util/List;)Lorg/json/JSONObject;
.signature "([Ljava/util/List<Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;>;)Lorg/json/JSONObject;"
aload 1
iconst_0
aaload
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/mPersonUnitsInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;
aload 1
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/setUnitInfoList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/mPersonUnitsInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/getPersonInfo()Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
astore 2
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/mActivity Landroid/app/Activity;
aload 1
aload 2
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/getRealName()Ljava/lang/String;
aload 2
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/getPhoneNumber()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/mPersonUnitsInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/getCaptcha()Ljava/lang/String;
invokestatic com/nd/android/u/cloud/com/base/OapPassportSupportCom/joinBind(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/isSuccess(Lorg/json/JSONObject;)Z
ifeq L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
astore 2
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/mActivity Landroid/app/Activity;
invokestatic com/nd/rj/common/login/LoginInterfaceManager/ticketLogin(Landroid/content/Context;)I
pop
aload 2
invokestatic com/nd/android/u/cloud/LoginManager/isNotBinding(Lcom/product/android/business/bean/UserInfo;)Z
ifne L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/mActivity Landroid/app/Activity;
invokestatic com/nd/rj/common/login/LoginInterfaceManager/getIUser(Landroid/content/Context;)Lcom/product/android/business/login/IGetUserInfo;
invokevirtual com/product/android/business/ApplicationVariable/setIUser(Lcom/product/android/business/login/IGetUserInfo;)V
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
iconst_0
invokevirtual com/nd/android/u/cloud/data/GlobalVariable/setBlockNetAvailreconnetFlag(Z)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
invokevirtual com/nd/android/u/ChatEntry/loginIMS()V
aload 1
areturn
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
areturn
.limit locals 3
.limit stack 5
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast org/json/JSONObject
invokevirtual com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/onPostExecute(Lorg/json/JSONObject;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/isFinishing()Z
ifeq L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/mPD Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/isSuccess(Lorg/json/JSONObject;)Z
ifeq L2
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/mActivity Landroid/app/Activity;
ldc com/nd/android/u/cloud/activity/BindUnitActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "person_units_info"
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/mPersonUnitsInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
aload 1
ldc "is_bind"
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/mActivity Landroid/app/Activity;
aload 1
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/finish()V
return
L2:
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/mActivity Landroid/app/Activity;
aload 1
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 4
.end method

.method protected onPreExecute()V
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/mActivity Landroid/app/Activity;
aconst_null
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/mActivity Landroid/app/Activity;
ldc_w 2131493949
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
iconst_1
iconst_0
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;
putfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/mPD Landroid/app/ProgressDialog;
return
.limit locals 1
.limit stack 6
.end method
