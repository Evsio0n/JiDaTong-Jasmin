.bytecode 50.0
.class final synchronized com/nd/android/u/contact/business/SynOapApp$1
.super java/lang/Thread
.enclosing method com/nd/android/u/contact/business/SynOapApp/initAppInfo(J)Z
.inner class static final inner com/nd/android/u/contact/business/SynOapApp$1

.field final synthetic 'val$unitAppList' Ljava/util/Vector;

.method <init>(Ljava/util/Vector;)V
aload 0
aload 1
putfield com/nd/android/u/contact/business/SynOapApp$1/val$unitAppList Ljava/util/Vector;
aload 0
invokespecial java/lang/Thread/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapAppCom()Lcom/nd/android/u/contact/com/OapAppCom;
aload 0
getfield com/nd/android/u/contact/business/SynOapApp$1/val$unitAppList Ljava/util/Vector;
invokevirtual com/nd/android/u/contact/com/OapAppCom/getAppVerInfo(Ljava/util/Vector;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91UND Lcom/product/android/business/ProductTypeDef$Product;
if_acmpeq L0
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
aload 0
getfield com/nd/android/u/contact/business/SynOapApp$1/val$unitAppList Ljava/util/Vector;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/setCommonAppList(Ljava/util/Vector;)V
L0:
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
aload 0
getfield com/nd/android/u/contact/business/SynOapApp$1/val$unitAppList Ljava/util/Vector;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/setAppAndTypeList(Ljava/util/Vector;)V
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "app_update"
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual com/product/android/business/manager/DataUpdateManager/save(Ljava/lang/String;J)V
return
.limit locals 1
.limit stack 4
.end method
