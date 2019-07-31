.bytecode 50.0
.class public synchronized com/nd/rj/common/login/commonInterfaceImpl/NDCommonInterImpl
.super java/lang/Object
.implements com/product/android/commonInterface/ICommonInterObserver

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public onCommonInterModelProc(ILcom/product/android/commonInterface/BaseCommonStruct;)I
iload 1
tableswitch 40001
L0
L1
default : L2
L2:
sipush -1001
ireturn
L0:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L3
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof com/product/android/business/bean/UserInfo
ifeq L3
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast com/product/android/business/bean/UserInfo
astore 2
invokestatic com/nd/rj/common/login/atomoperation/OperUserInfo/getInstance()Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
aload 2
invokevirtual com/nd/rj/common/login/atomoperation/OperUserInfo/SetUserInfo(Lcom/product/android/business/bean/UserInfo;)I
ifne L4
iconst_0
ireturn
L4:
bipush -2
ireturn
L3:
iconst_m1
ireturn
L1:
aload 2
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokestatic com/nd/rj/common/login/NdLoginplatform/getInstance(I)Lcom/nd/rj/common/login/NdLoginplatform;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual com/nd/rj/common/login/NdLoginplatform/getLastUserInfo(Landroid/content/Context;)Lcom/product/android/business/bean/UserInfo;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method
