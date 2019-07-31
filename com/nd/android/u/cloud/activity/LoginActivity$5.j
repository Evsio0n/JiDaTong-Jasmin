.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/LoginActivity$5
.super java/lang/Object
.implements com/nd/rj/common/login/interfaces/LoginProcessListner
.enclosing method com/nd/android/u/cloud/activity/LoginActivity
.inner class inner com/nd/android/u/cloud/activity/LoginActivity$5

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/LoginActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/LoginActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/LoginActivity$5/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onCheckCode(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$5/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
iconst_3
aload 1
invokestatic com/nd/android/u/cloud/activity/LoginActivity/access$700(Lcom/nd/android/u/cloud/activity/LoginActivity;ILjava/lang/Object;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onErr(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$5/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
iconst_1
aload 1
invokestatic com/nd/android/u/cloud/activity/LoginActivity/access$700(Lcom/nd/android/u/cloud/activity/LoginActivity;ILjava/lang/Object;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onFinish()V
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$5/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
iconst_4
aconst_null
invokestatic com/nd/android/u/cloud/activity/LoginActivity/access$700(Lcom/nd/android/u/cloud/activity/LoginActivity;ILjava/lang/Object;)V
return
.limit locals 1
.limit stack 3
.end method

.method public onStart()V
return
.limit locals 1
.limit stack 0
.end method

.method public onSuccess()V
iconst_1
istore 2
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$5/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
invokestatic com/nd/rj/common/login/LoginInterfaceManager/getIUser(Landroid/content/Context;)Lcom/product/android/business/login/IGetUserInfo;
astore 5
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
aload 5
invokevirtual com/product/android/business/ApplicationVariable/setIUser(Lcom/product/android/business/login/IGetUserInfo;)V
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$5/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
invokestatic com/nd/android/u/cloud/helper/Utils/switchUserClearData(Landroid/content/Context;)V
iload 2
istore 1
aload 5
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L0
aload 5
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
lstore 3
new com/nd/android/u/cloud/com/OapFriendRecommendCom
dup
invokespecial com/nd/android/u/cloud/com/OapFriendRecommendCom/<init>()V
lload 3
aload 5
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
invokevirtual com/nd/android/u/cloud/com/OapFriendRecommendCom/getStudentInfo(JLjava/lang/String;)Lcom/product/android/commonInterface/contact/OapUser;
astore 5
iload 2
istore 1
aload 5
ifnull L0
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getGuideFlag()Z
istore 2
iload 2
istore 1
iload 2
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$5/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/getApplicationContext()Landroid/content/Context;
iload 2
lload 3
invokestatic com/nd/android/u/cloud/helper/Utils/setGuideFlag(Landroid/content/Context;ZJ)V
iload 2
istore 1
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 5
aload 5
ifnull L1
ldc com/nd/android/u/contact/dao/UserInfoDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/UserInfoDao
aload 5
invokeinterface com/nd/android/u/contact/dao/UserInfoDao/insertUserInfo(Lcom/product/android/business/login/BindUser;)J 1
pop2
L1:
invokestatic com/nd/android/u/cloud/helper/Utils/startIMSRelative()V
invokestatic com/nd/android/u/cloud/helper/Utils/preloadWhenSuccessfulLogin()V
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$5/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
iconst_2
iload 1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokestatic com/nd/android/u/cloud/activity/LoginActivity/access$700(Lcom/nd/android/u/cloud/activity/LoginActivity;ILjava/lang/Object;)V
return
.limit locals 6
.limit stack 4
.end method
