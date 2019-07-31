.bytecode 50.0
.class public synchronized com/nd/rj/common/login/NdLoginplatform
.super java/lang/Object
.inner class private ProgressLogin inner com/nd/rj/common/login/NdLoginplatform$ProgressLogin outer com/nd/rj/common/login/NdLoginplatform

.field private static 'mLogin' Lcom/nd/rj/common/login/NdLoginplatform;

.field public 'mContext' Landroid/content/Context;

.field public 'mType' I

.method static <clinit>()V
aconst_null
putstatic com/nd/rj/common/login/NdLoginplatform/mLogin Lcom/nd/rj/common/login/NdLoginplatform;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/rj/common/login/NdLoginplatform/mType I
aload 0
iload 1
putfield com/nd/rj/common/login/NdLoginplatform/mType I
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/rj/common/login/NdLoginplatform;Landroid/content/Context;Lcom/product/android/business/bean/UserInfo;ZZ)V
aload 0
aload 1
aload 2
iload 3
iload 4
invokespecial com/nd/rj/common/login/NdLoginplatform/startLoginAcitvity(Landroid/content/Context;Lcom/product/android/business/bean/UserInfo;ZZ)V
return
.limit locals 5
.limit stack 5
.end method

.method public static getInstance(I)Lcom/nd/rj/common/login/NdLoginplatform;
getstatic com/nd/rj/common/login/NdLoginplatform/mLogin Lcom/nd/rj/common/login/NdLoginplatform;
ifnonnull L0
new com/nd/rj/common/login/NdLoginplatform
dup
iload 0
invokespecial com/nd/rj/common/login/NdLoginplatform/<init>(I)V
putstatic com/nd/rj/common/login/NdLoginplatform/mLogin Lcom/nd/rj/common/login/NdLoginplatform;
L0:
getstatic com/nd/rj/common/login/NdLoginplatform/mLogin Lcom/nd/rj/common/login/NdLoginplatform;
areturn
.limit locals 1
.limit stack 3
.end method

.method private startLoginAcitvity(Landroid/content/Context;Lcom/product/android/business/bean/UserInfo;ZZ)V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 5
aload 0
aload 1
putfield com/nd/rj/common/login/NdLoginplatform/mContext Landroid/content/Context;
aload 5
ldc "USER"
aload 2
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
aload 5
ldc "CAN_SWITCH_USER"
iload 3
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
aload 5
ldc "LOCAL_SWITCH_USER"
iload 4
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
aload 5
ldc "LOGIN_TYPE"
aload 0
getfield com/nd/rj/common/login/NdLoginplatform/mType I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
new android/content/Intent
dup
aload 1
checkcast android/app/Activity
ldc com/nd/rj/common/login/view/NdLogin
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc_w 268435456
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 2
aload 5
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 1
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 6
.limit stack 4
.end method

.method private userLogin(Landroid/content/Context;Lcom/product/android/business/bean/UserInfo;Z)V
aload 0
aload 1
putfield com/nd/rj/common/login/NdLoginplatform/mContext Landroid/content/Context;
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getIsSaveAccount()Z
ifeq L0
new com/nd/rj/common/login/NdLoginplatform$ProgressLogin
dup
aload 0
aload 1
aload 2
getstatic com/nd/rj/common/R$string/nd_login_logining I
iload 3
invokespecial com/nd/rj/common/login/NdLoginplatform$ProgressLogin/<init>(Lcom/nd/rj/common/login/NdLoginplatform;Landroid/content/Context;Lcom/product/android/business/bean/UserInfo;IZ)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/rj/common/login/NdLoginplatform$ProgressLogin/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L0:
aload 0
aload 1
aload 2
iload 3
iconst_0
invokespecial com/nd/rj/common/login/NdLoginplatform/startLoginAcitvity(Landroid/content/Context;Lcom/product/android/business/bean/UserInfo;ZZ)V
return
.limit locals 4
.limit stack 7
.end method

.method public SetExtInfo(Landroid/content/Context;JLjava/lang/String;)I
aload 1
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
lload 2
aload 4
invokevirtual com/nd/rj/common/login/LoginPro/setExtInfo(JLjava/lang/String;)I
ireturn
.limit locals 5
.limit stack 4
.end method

.method public clearPassWord(Landroid/content/Context;J)V
aload 0
aload 1
putfield com/nd/rj/common/login/NdLoginplatform/mContext Landroid/content/Context;
aload 1
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
lload 2
invokevirtual com/nd/rj/common/login/LoginPro/clearPassWord(J)I
pop
return
.limit locals 4
.limit stack 3
.end method

.method public deleteAllUsers(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/rj/common/login/NdLoginplatform/mContext Landroid/content/Context;
aload 1
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
invokevirtual com/nd/rj/common/login/LoginPro/deleteAllUsers()I
pop
return
.limit locals 2
.limit stack 2
.end method

.method public deleteUser(Landroid/content/Context;J)V
aload 0
aload 1
putfield com/nd/rj/common/login/NdLoginplatform/mContext Landroid/content/Context;
aload 1
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
lload 2
invokevirtual com/nd/rj/common/login/LoginPro/deleteUser(J)V
return
.limit locals 4
.limit stack 3
.end method

.method public getLastUserInfo(Landroid/content/Context;)Lcom/product/android/business/bean/UserInfo;
aload 0
aload 1
putfield com/nd/rj/common/login/NdLoginplatform/mContext Landroid/content/Context;
aload 1
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
invokevirtual com/nd/rj/common/login/LoginPro/getLastUserInfo()Lcom/product/android/business/bean/UserInfo;
astore 2
aload 2
astore 1
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getTicket()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aconst_null
astore 1
L0:
aload 1
areturn
.limit locals 3
.limit stack 2
.end method

.method public getLastUserInfoIngoreTicket(Landroid/content/Context;)Lcom/product/android/business/bean/UserInfo;
aload 0
aload 1
putfield com/nd/rj/common/login/NdLoginplatform/mContext Landroid/content/Context;
aload 1
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
invokevirtual com/nd/rj/common/login/LoginPro/getLastUserInfo()Lcom/product/android/business/bean/UserInfo;
astore 1
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getUapUid()J
lconst_0
lcmp
ifle L0
aload 1
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 4
.end method

.method public getUserList(Landroid/content/Context;)Ljava/util/ArrayList;
.signature "(Landroid/content/Context;)Ljava/util/ArrayList<Lcom/product/android/business/bean/UserInfo;>;"
aload 1
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
invokevirtual com/nd/rj/common/login/LoginPro/getUserList()Ljava/util/ArrayList;
areturn
.limit locals 2
.limit stack 1
.end method

.method public getWlSid(Landroid/content/Context;JILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
aload 0
aload 1
putfield com/nd/rj/common/login/NdLoginplatform/mContext Landroid/content/Context;
aload 1
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
lload 2
iload 4
aload 5
aload 6
aload 7
invokevirtual com/nd/rj/common/login/LoginPro/getWlSid(JILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
ireturn
.limit locals 8
.limit stack 7
.end method

.method public localSwitchUser(Landroid/content/Context;Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;)V
aload 0
aload 1
putfield com/nd/rj/common/login/NdLoginplatform/mContext Landroid/content/Context;
aload 2
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/setProcessListener(Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;)V
aload 0
aload 1
aload 1
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
invokevirtual com/nd/rj/common/login/LoginPro/getLastUserInfo()Lcom/product/android/business/bean/UserInfo;
iconst_1
iconst_1
invokespecial com/nd/rj/common/login/NdLoginplatform/startLoginAcitvity(Landroid/content/Context;Lcom/product/android/business/bean/UserInfo;ZZ)V
return
.limit locals 3
.limit stack 5
.end method

.method public logOut(Landroid/content/Context;JLjava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/login/NdLoginplatform/mContext Landroid/content/Context;
aload 1
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
lload 2
aload 4
invokevirtual com/nd/rj/common/login/LoginPro/logOut(JLjava/lang/String;)V
return
.limit locals 5
.limit stack 4
.end method

.method public loginBySessionId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/product/android/business/bean/UserInfo;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
L0:
aload 1
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
astore 7
aload 7
aload 2
invokevirtual com/nd/rj/common/login/LoginPro/getUserByUserName(Ljava/lang/String;)Lcom/product/android/business/bean/UserInfo;
astore 6
aload 7
aload 1
aload 3
invokevirtual com/nd/rj/common/login/LoginPro/checkSessionId(Landroid/content/Context;Ljava/lang/String;)J
lstore 4
L1:
aload 6
astore 1
lload 4
lconst_0
lcmp
ifle L5
aload 6
astore 1
aload 6
ifnonnull L4
L3:
new com/product/android/business/bean/UserInfo
dup
invokespecial com/product/android/business/bean/UserInfo/<init>()V
astore 1
aload 1
lload 4
invokevirtual com/product/android/business/bean/UserInfo/setUapUid(J)V
aload 1
aload 2
invokevirtual com/product/android/business/bean/UserInfo/setUserName(Ljava/lang/String;)V
L4:
aload 1
aload 3
invokevirtual com/product/android/business/bean/UserInfo/setSessionId(Ljava/lang/String;)V
aload 7
aload 1
invokevirtual com/nd/rj/common/login/LoginPro/setUserInfo(Lcom/product/android/business/bean/UserInfo;)I
pop
L5:
aload 1
areturn
L2:
astore 1
aconst_null
areturn
.limit locals 8
.limit stack 4
.end method

.method public loginForLastUser(Landroid/content/Context;Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;)V
aload 0
aload 1
aload 2
aconst_null
invokevirtual com/nd/rj/common/login/NdLoginplatform/loginForLastUser(Landroid/content/Context;Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;Lcom/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener;)V
return
.limit locals 3
.limit stack 4
.end method

.method public loginForLastUser(Landroid/content/Context;Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;Lcom/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener;)V
aload 0
aload 1
putfield com/nd/rj/common/login/NdLoginplatform/mContext Landroid/content/Context;
aload 2
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/setProcessListener(Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;)V
aload 3
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/setLoginProcessListener(Lcom/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener;)V
aload 0
aload 1
aload 1
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
invokevirtual com/nd/rj/common/login/LoginPro/getLastUserInfo()Lcom/product/android/business/bean/UserInfo;
iconst_1
invokespecial com/nd/rj/common/login/NdLoginplatform/userLogin(Landroid/content/Context;Lcom/product/android/business/bean/UserInfo;Z)V
return
.limit locals 4
.limit stack 4
.end method

.method public loginForSwitchUser(Landroid/content/Context;Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;)V
aload 0
aload 1
aload 2
aconst_null
invokevirtual com/nd/rj/common/login/NdLoginplatform/loginForSwitchUser(Landroid/content/Context;Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;Lcom/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener;)V
return
.limit locals 3
.limit stack 4
.end method

.method public loginForSwitchUser(Landroid/content/Context;Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;Lcom/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener;)V
aload 0
aload 1
putfield com/nd/rj/common/login/NdLoginplatform/mContext Landroid/content/Context;
aload 2
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/setProcessListener(Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;)V
aload 3
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/setLoginProcessListener(Lcom/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener;)V
aload 0
aload 1
aload 1
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
invokevirtual com/nd/rj/common/login/LoginPro/getLastUserInfo()Lcom/product/android/business/bean/UserInfo;
iconst_1
iconst_0
invokespecial com/nd/rj/common/login/NdLoginplatform/startLoginAcitvity(Landroid/content/Context;Lcom/product/android/business/bean/UserInfo;ZZ)V
return
.limit locals 4
.limit stack 5
.end method

.method public loginForUser(Landroid/content/Context;Lcom/product/android/business/bean/UserInfo;Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;)V
aload 0
aload 1
aload 2
aload 3
aconst_null
invokevirtual com/nd/rj/common/login/NdLoginplatform/loginForUser(Landroid/content/Context;Lcom/product/android/business/bean/UserInfo;Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;Lcom/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener;)V
return
.limit locals 4
.limit stack 5
.end method

.method public loginForUser(Landroid/content/Context;Lcom/product/android/business/bean/UserInfo;Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;Lcom/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener;)V
aload 0
aload 1
putfield com/nd/rj/common/login/NdLoginplatform/mContext Landroid/content/Context;
aload 3
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/setProcessListener(Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;)V
aload 4
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/setLoginProcessListener(Lcom/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener;)V
aload 0
aload 1
aload 2
iconst_0
invokespecial com/nd/rj/common/login/NdLoginplatform/userLogin(Landroid/content/Context;Lcom/product/android/business/bean/UserInfo;Z)V
return
.limit locals 5
.limit stack 4
.end method

.method public loginSync(Landroid/content/Context;Lcom/product/android/business/bean/UserInfo;Ljava/lang/StringBuilder;)I
aload 0
aload 1
putfield com/nd/rj/common/login/NdLoginplatform/mContext Landroid/content/Context;
aload 1
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
aload 0
getfield com/nd/rj/common/login/NdLoginplatform/mType I
aload 2
aload 3
invokevirtual com/nd/rj/common/login/LoginPro/userLoginByTicket(ILcom/product/android/business/bean/UserInfo;Ljava/lang/StringBuilder;)I
ireturn
.limit locals 4
.limit stack 4
.end method

.method public loginSyncForLastUser(Landroid/content/Context;Ljava/lang/StringBuilder;)I
aload 1
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
invokevirtual com/nd/rj/common/login/LoginPro/getLastUserInfo()Lcom/product/android/business/bean/UserInfo;
astore 3
aload 1
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
aload 0
getfield com/nd/rj/common/login/NdLoginplatform/mType I
aload 3
aload 2
invokevirtual com/nd/rj/common/login/LoginPro/userLoginByTicket(ILcom/product/android/business/bean/UserInfo;Ljava/lang/StringBuilder;)I
ireturn
.limit locals 4
.limit stack 4
.end method
