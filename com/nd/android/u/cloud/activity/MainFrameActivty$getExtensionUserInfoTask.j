.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MainFrameActivty$getExtensionUserInfoTask
.super com/common/android/utils/concurrent/NdAbstractTask
.inner class private getExtensionUserInfoTask inner com/nd/android/u/cloud/activity/MainFrameActivty$getExtensionUserInfoTask outer com/nd/android/u/cloud/activity/MainFrameActivty

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MainFrameActivty;

.method private <init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MainFrameActivty$getExtensionUserInfoTask/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;Lcom/nd/android/u/cloud/activity/MainFrameActivty$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty$getExtensionUserInfoTask/<init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;)V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 1
aload 1
invokestatic com/nd/android/u/cloud/LoginManager/getBusinessInfo(Lcom/product/android/business/login/BindUser;)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 2
aload 2
ifnull L0
aload 2
aload 1
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
L0:
return
L1:
aload 1
iconst_0
invokevirtual com/product/android/business/login/BindUser/setIsgetall(I)V
ldc com/nd/android/u/contact/dao/UserInfoDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/UserInfoDao
aload 1
invokeinterface com/nd/android/u/contact/dao/UserInfoDao/insertUserInfo(Lcom/product/android/business/login/BindUser;)J 1
pop2
return
.limit locals 3
.limit stack 2
.end method
