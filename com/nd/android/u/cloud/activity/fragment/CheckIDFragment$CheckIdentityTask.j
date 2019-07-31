.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/String;Ljava/lang/Void;Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult;>;"
.inner class public static CheckIdentityTask inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask outer com/nd/android/u/cloud/activity/fragment/CheckIDFragment

.field private 'mActivity' Landroid/app/Activity;

.field private 'mErrorMsg' Ljava/lang/String;

.field private 'mPD' Landroid/app/ProgressDialog;

.method public <init>(Landroid/app/Activity;)V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
return
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/String;)Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult;
.catch org/json/JSONException from L0 to L1 using L2
new com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult
dup
aconst_null
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/<init>(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$1;)V
astore 4
aload 1
iconst_0
aaload
astore 5
aload 1
iconst_1
aaload
astore 6
aload 1
iconst_2
aaload
astore 8
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
aload 5
aload 6
aload 8
invokestatic com/nd/android/u/cloud/com/OapAddOrgCom/bindCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
aload 1
ldc "code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 2
iload 2
sipush 200
if_icmpne L3
aload 1
ldc "users"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 9
aload 9
ifnull L4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
aload 9
invokevirtual org/json/JSONArray/length()I
istore 3
iconst_0
istore 2
L5:
iload 2
iload 3
if_icmpge L6
L0:
aload 9
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 1
L1:
aload 1
ifnull L7
new com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo
dup
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/<init>()V
astore 10
aload 10
aload 1
ldc "unit_id"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokestatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/access$602(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;I)I
pop
aload 10
aload 1
ldc "unitname"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/access$702(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;Ljava/lang/String;)Ljava/lang/String;
pop
aload 10
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
invokestatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/access$802(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;J)J
pop2
aload 10
aload 1
ldc "username"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/access$902(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;Ljava/lang/String;)Ljava/lang/String;
pop
aload 10
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/isObjectValid()Z
ifeq L7
aload 7
aload 10
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L7:
iload 2
iconst_1
iadd
istore 2
goto L5
L2:
astore 1
aconst_null
astore 1
goto L1
L6:
aload 7
invokeinterface java/util/List/size()I 0
istore 2
iload 2
iconst_1
if_icmpne L8
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
aload 7
aload 5
aload 6
aload 8
invokestatic com/nd/android/u/cloud/com/base/OapPassportSupportCom/joinBind(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
aload 1
ldc "code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 2
iload 2
sipush 200
if_icmpeq L9
iload 2
sipush 409
if_icmpne L10
L9:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
astore 5
getstatic com/product/android/business/config/Configuration/LOGIN_TYPE I
invokestatic com/nd/rj/common/login/NdLoginplatform/getInstance(I)Lcom/nd/rj/common/login/NdLoginplatform;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
aload 5
aload 1
invokevirtual com/nd/rj/common/login/NdLoginplatform/loginSync(Landroid/content/Context;Lcom/product/android/business/bean/UserInfo;Ljava/lang/StringBuilder;)I
pop
aload 5
invokestatic com/nd/android/u/cloud/LoginManager/isNotBinding(Lcom/product/android/business/bean/UserInfo;)Z
ifne L4
aload 4
getstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/TYPE_1 Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/mType Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
aload 4
aload 7
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/mOtherInfo Ljava/lang/Object;
L4:
aload 4
areturn
L10:
aload 0
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mErrorMsg Ljava/lang/String;
aload 4
areturn
L8:
iload 2
iconst_1
if_icmple L4
aload 4
getstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/TYPE_2 Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/mType Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
new com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo
dup
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/<init>()V
astore 1
aload 1
new com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo
dup
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo/<init>()V
invokestatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/access$1002(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo;)Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo;
pop
aload 1
invokestatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/access$1000(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;)Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo;
aload 7
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo/setInfo(Ljava/util/List;)V
aload 1
new com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo
dup
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/<init>()V
invokestatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/access$1102(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;)Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
pop
aload 1
invokestatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/access$1100(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;)Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
aload 5
invokestatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/access$1202(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;Ljava/lang/String;)Ljava/lang/String;
pop
aload 1
invokestatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/access$1100(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;)Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
aload 6
invokestatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/access$1302(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;Ljava/lang/String;)Ljava/lang/String;
pop
aload 1
aload 8
invokestatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/access$1402(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;Ljava/lang/String;)Ljava/lang/String;
pop
aload 4
aload 1
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/mOtherInfo Ljava/lang/Object;
aload 4
areturn
L3:
iload 2
sipush 409
if_icmpne L11
aload 4
getstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/TYPE_4 Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/mType Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
new com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo
dup
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/<init>()V
astore 1
aload 1
aload 5
invokestatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/access$1202(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;Ljava/lang/String;)Ljava/lang/String;
pop
aload 1
aload 6
invokestatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/access$1302(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;Ljava/lang/String;)Ljava/lang/String;
pop
aload 4
aload 1
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/mOtherInfo Ljava/lang/Object;
aload 4
areturn
L11:
iload 2
sipush 416
if_icmpne L12
aload 1
ldc "uap_account"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 1
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
aload 4
getstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/TYPE_3 Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/mType Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
new com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo
dup
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/<init>()V
astore 1
aload 1
aload 5
invokestatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/access$1202(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;Ljava/lang/String;)Ljava/lang/String;
pop
aload 1
aload 6
invokestatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/access$1302(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;Ljava/lang/String;)Ljava/lang/String;
pop
aload 4
aload 1
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/mOtherInfo Ljava/lang/Object;
aload 4
areturn
L12:
aload 0
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mErrorMsg Ljava/lang/String;
aload 4
areturn
.limit locals 11
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/doInBackground([Ljava/lang/String;)Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult;)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/isFinishing()Z
ifeq L0
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mPD Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mErrorMsg Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mErrorMsg Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L1:
aload 1
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/isObjectValid()Z
ifne L2
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
ldc_w 2131493974
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L2:
getstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$1/$SwitchMap$com$nd$android$u$cloud$activity$fragment$CheckIDFragment$CheckIdentityResultType [I
aload 1
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/mType Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/ordinal()I
iaload
tableswitch 1
L3
L4
L5
L6
default : L7
L7:
return
L3:
aload 1
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/mOtherInfo Ljava/lang/Object;
checkcast com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo
invokestatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment/updateUserInfo(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;)V
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
iconst_0
invokevirtual com/nd/android/u/cloud/data/GlobalVariable/setBlockNetAvailreconnetFlag(Z)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
invokevirtual com/nd/android/u/ChatEntry/loginIMS()V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokestatic com/nd/android/u/cloud/LoginManager/isGuideBefore(Landroid/content/Context;J)Z
ifeq L8
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
invokestatic com/nd/android/u/cloud/helper/Utils/lunchMainLifeActivity(Landroid/content/Context;)V
L9:
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/finish()V
return
L8:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
ldc com/nd/android/u/cloud/activity/FirstSetMyPortrait
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
aload 1
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
goto L9
L4:
aload 1
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/mOtherInfo Ljava/lang/Object;
checkcast com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo
astore 1
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
ldc com/nd/android/u/cloud/activity/BindUnitActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "person_units_info"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
aload 2
ldc "is_bind"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
aload 2
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/finish()V
return
L5:
aload 1
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/mOtherInfo Ljava/lang/Object;
checkcast com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo
astore 1
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
ldc com/nd/android/u/cloud/activity/AuthActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "person_info"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
aload 2
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/finish()V
return
L6:
aload 1
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/mOtherInfo Ljava/lang/Object;
checkcast com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo
astore 1
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
ldc com/nd/android/u/cloud/activity/CheckActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "person_info"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
aload 2
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/finish()V
return
.limit locals 3
.limit stack 4
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/onPostExecute(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
aconst_null
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mActivity Landroid/app/Activity;
ldc_w 2131493963
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
iconst_1
iconst_0
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/mPD Landroid/app/ProgressDialog;
return
.limit locals 1
.limit stack 6
.end method
