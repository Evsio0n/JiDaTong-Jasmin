.bytecode 50.0
.class synchronized com/nd/android/u/contact/business/OapGroupPro$2
.super java/lang/Object
.implements com/nd/android/u/contact/cache/ProfileGroupCallback
.enclosing method com/nd/android/u/contact/business/OapGroupPro/joinGroupFromIMS(Ljava/lang/String;II)V
.inner class inner com/nd/android/u/contact/business/OapGroupPro$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/business/OapGroupPro;

.method <init>(Lcom/nd/android/u/contact/business/OapGroupPro;)V
aload 0
aload 1
putfield com/nd/android/u/contact/business/OapGroupPro$2/this$0 Lcom/nd/android/u/contact/business/OapGroupPro;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public refresh(Lcom/product/android/commonInterface/contact/OapGroup;)V
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroup/setUid(J)V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/insertGroup(Lcom/product/android/commonInterface/contact/OapGroup;)J 1
pop2
invokestatic com/nd/android/u/contact/business/OapGroupPro/getInstance()Lcom/nd/android/u/contact/business/OapGroupPro;
aload 1
invokevirtual com/nd/android/u/contact/business/OapGroupPro/addGroup(Lcom/product/android/commonInterface/contact/OapGroup;)Lcom/product/android/commonInterface/contact/OapGroup;
pop
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
ldc ""
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendGroupInfoChange(Ljava/lang/String;)V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
ldc "GROUP_CHANGE"
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
getstatic com/nd/android/u/contact/R$string/add_to_group_success I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
.limit locals 2
.limit stack 3
.end method
