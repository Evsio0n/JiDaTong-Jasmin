.bytecode 50.0
.class public final synchronized enum com/product/android/business/ApplicationVariable
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/product/android/business/ApplicationVariable;>;"
.inner class public static final enum IDENTITY inner com/product/android/business/ApplicationVariable$IDENTITY outer com/product/android/business/ApplicationVariable
.inner class public static final enum LoginType inner com/product/android/business/ApplicationVariable$LoginType outer com/product/android/business/ApplicationVariable

.field private static final synthetic '$VALUES' [Lcom/product/android/business/ApplicationVariable;

.field public static final enum 'INSTANCE' Lcom/product/android/business/ApplicationVariable;

.field public 'applicationContext' Landroid/content/Context;

.field public 'displayMetrics' Landroid/util/DisplayMetrics;

.field private 'iUser' Lcom/product/android/business/login/IGetUserInfo;

.field public 'isForceOffline' Z

.field public 'isIdentityExpired' Z

.field private 'mCurrentLoginType' Lcom/product/android/business/ApplicationVariable$LoginType;

.method static <clinit>()V
new com/product/android/business/ApplicationVariable
dup
ldc "INSTANCE"
iconst_0
invokespecial com/product/android/business/ApplicationVariable/<init>(Ljava/lang/String;I)V
putstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
iconst_1
anewarray com/product/android/business/ApplicationVariable
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
aastore
putstatic com/product/android/business/ApplicationVariable/$VALUES [Lcom/product/android/business/ApplicationVariable;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
iconst_0
putfield com/product/android/business/ApplicationVariable/isForceOffline Z
aload 0
iconst_0
putfield com/product/android/business/ApplicationVariable/isIdentityExpired Z
aload 0
getstatic com/product/android/business/ApplicationVariable$LoginType/_99_ACCOUNT_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
putfield com/product/android/business/ApplicationVariable/mCurrentLoginType Lcom/product/android/business/ApplicationVariable$LoginType;
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/product/android/business/ApplicationVariable;
ldc com/product/android/business/ApplicationVariable
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/product/android/business/ApplicationVariable
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/product/android/business/ApplicationVariable;
getstatic com/product/android/business/ApplicationVariable/$VALUES [Lcom/product/android/business/ApplicationVariable;
invokevirtual [Lcom/product/android/business/ApplicationVariable;/clone()Ljava/lang/Object;
checkcast [Lcom/product/android/business/ApplicationVariable;
areturn
.limit locals 0
.limit stack 1
.end method

.method public converToUserInfo(Lcom/product/android/business/login/IGetUserInfo;)Lcom/product/android/business/bean/UserInfo;
.catch java/lang/Exception from L0 to L1 using L2
aload 1
ifnonnull L0
aconst_null
areturn
L0:
new com/product/android/business/bean/UserInfo
dup
invokespecial com/product/android/business/bean/UserInfo/<init>()V
astore 2
aload 2
aload 1
invokeinterface com/product/android/business/login/IGetUserInfo/getBlowFish()Ljava/lang/String; 0
invokevirtual com/product/android/business/bean/UserInfo/setBlowfish(Ljava/lang/String;)V
aload 2
iconst_1
invokevirtual com/product/android/business/bean/UserInfo/setIs_phone(I)V
aload 2
aload 1
invokeinterface com/product/android/business/login/IGetUserInfo/isAutoLogin()Z 0
invokevirtual com/product/android/business/bean/UserInfo/setIsAutoLogin(Z)V
aload 2
aload 1
invokeinterface com/product/android/business/login/IGetUserInfo/isSavePwd()Z 0
invokevirtual com/product/android/business/bean/UserInfo/setIsSaveAccount(Z)V
aload 2
aload 1
invokeinterface com/product/android/business/login/IGetUserInfo/getLastLoginTime()Ljava/lang/String; 0
invokevirtual com/product/android/business/bean/UserInfo/setLastLoginDt(Ljava/lang/String;)V
aload 2
aload 1
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
invokevirtual com/product/android/business/bean/UserInfo/setOapUid(J)V
aload 2
aload 1
invokeinterface com/product/android/business/login/IGetUserInfo/getUapUid()J 0
invokevirtual com/product/android/business/bean/UserInfo/setUapUid(J)V
aload 2
aload 1
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUnitId()I 0
invokevirtual com/product/android/business/bean/UserInfo/setOapUnitId(I)V
aload 2
aload 1
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
invokevirtual com/product/android/business/bean/UserInfo/setSessionId(Ljava/lang/String;)V
aload 2
aload 1
invokeinterface com/product/android/business/login/IGetUserInfo/getTicekt()Ljava/lang/String; 0
invokevirtual com/product/android/business/bean/UserInfo/setTicket(Ljava/lang/String;)V
aload 2
aload 1
invokeinterface com/product/android/business/login/IGetUserInfo/getUapUid()J 0
invokevirtual com/product/android/business/bean/UserInfo/setUapUid(J)V
aload 2
aload 1
invokeinterface com/product/android/business/login/IGetUserInfo/getAccount()Ljava/lang/String; 0
invokevirtual com/product/android/business/bean/UserInfo/setUserName(Ljava/lang/String;)V
aload 2
aload 1
invokeinterface com/product/android/business/login/IGetUserInfo/getNickName()Ljava/lang/String; 0
invokevirtual com/product/android/business/bean/UserInfo/setUserNickName(Ljava/lang/String;)V
aload 2
aload 1
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
invokevirtual com/product/android/business/bean/UserInfo/setSessionId(Ljava/lang/String;)V
aload 2
ldc "~~~"
invokevirtual com/product/android/business/bean/UserInfo/setUserPass(Ljava/lang/String;)V
aload 2
aload 1
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokevirtual com/product/android/business/bean/UserInfo/setIdentity(I)V
L1:
aload 2
areturn
L2:
astore 1
aconst_null
areturn
.limit locals 3
.limit stack 3
.end method

.method public getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
aload 0
aload 0
getfield com/product/android/business/ApplicationVariable/iUser Lcom/product/android/business/login/IGetUserInfo;
invokevirtual com/product/android/business/ApplicationVariable/converToUserInfo(Lcom/product/android/business/login/IGetUserInfo;)Lcom/product/android/business/bean/UserInfo;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getIUser()Lcom/product/android/business/login/IGetUserInfo;
aload 0
getfield com/product/android/business/ApplicationVariable/iUser Lcom/product/android/business/login/IGetUserInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getLocalSid()Ljava/lang/String;
ldc ""
astore 1
aload 0
getfield com/product/android/business/ApplicationVariable/iUser Lcom/product/android/business/login/IGetUserInfo;
ifnull L0
aload 0
getfield com/product/android/business/ApplicationVariable/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
astore 1
L0:
aload 1
areturn
.limit locals 2
.limit stack 1
.end method

.method public getLoginFlag()Lcom/product/android/business/login/LoginFlag;
aload 0
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "login_flag"
getstatic com/product/android/business/login/LoginFlag/DEFAULT Lcom/product/android/business/login/LoginFlag;
invokevirtual com/product/android/business/login/LoginFlag/getValue()I
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadIntKey(Ljava/lang/String;I)I
invokestatic com/product/android/business/login/LoginFlag/value2Flag(I)Lcom/product/android/business/login/LoginFlag;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getLoginType()Lcom/product/android/business/ApplicationVariable$LoginType;
aload 0
getfield com/product/android/business/ApplicationVariable/mCurrentLoginType Lcom/product/android/business/ApplicationVariable$LoginType;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOapUid()J
aload 0
getfield com/product/android/business/ApplicationVariable/iUser Lcom/product/android/business/login/IGetUserInfo;
ifnull L0
aload 0
getfield com/product/android/business/ApplicationVariable/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
lreturn
L0:
lconst_0
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getSid()Ljava/lang/String;
ldc ""
astore 1
aload 0
getfield com/product/android/business/ApplicationVariable/iUser Lcom/product/android/business/login/IGetUserInfo;
ifnull L0
aload 0
getfield com/product/android/business/ApplicationVariable/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
astore 1
L0:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 1
areturn
L1:
invokestatic com/product/android/commonInterface/allCommonInterfaceImpl/AllCommonCallOtherModel$MainModel/getRelginSid()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 1
.end method

.method public getUapUid()J
aload 0
getfield com/product/android/business/ApplicationVariable/iUser Lcom/product/android/business/login/IGetUserInfo;
ifnull L0
aload 0
getfield com/product/android/business/ApplicationVariable/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getUapUid()J 0
lreturn
L0:
lconst_0
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUnitName()Ljava/lang/String;
aload 0
getfield com/product/android/business/ApplicationVariable/iUser Lcom/product/android/business/login/IGetUserInfo;
ifnull L0
aload 0
getfield com/product/android/business/ApplicationVariable/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
ifnull L0
aload 0
getfield com/product/android/business/ApplicationVariable/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUnitid()I
aload 0
getfield com/product/android/business/ApplicationVariable/iUser Lcom/product/android/business/login/IGetUserInfo;
ifnull L0
aload 0
getfield com/product/android/business/ApplicationVariable/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
ifnull L0
aload 0
getfield com/product/android/business/ApplicationVariable/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUnitid()I
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUserName()Ljava/lang/String;
aload 0
getfield com/product/android/business/ApplicationVariable/iUser Lcom/product/android/business/login/IGetUserInfo;
ifnull L0
aload 0
getfield com/product/android/business/ApplicationVariable/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
ifnull L0
aload 0
getfield com/product/android/business/ApplicationVariable/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method

.method public saveLoginType(Lcom/product/android/business/ApplicationVariable$LoginType;)V
aload 0
aload 1
putfield com/product/android/business/ApplicationVariable/mCurrentLoginType Lcom/product/android/business/ApplicationVariable$LoginType;
return
.limit locals 2
.limit stack 2
.end method

.method public setExpiredSid()V
aload 0
getfield com/product/android/business/ApplicationVariable/iUser Lcom/product/android/business/login/IGetUserInfo;
ifnull L0
aload 0
getfield com/product/android/business/ApplicationVariable/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/clearSid()V 0
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public setIUser(Lcom/product/android/business/login/IGetUserInfo;)V
aload 0
aload 1
putfield com/product/android/business/ApplicationVariable/iUser Lcom/product/android/business/login/IGetUserInfo;
return
.limit locals 2
.limit stack 2
.end method
