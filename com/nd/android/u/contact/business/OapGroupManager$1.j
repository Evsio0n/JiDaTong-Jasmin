.bytecode 50.0
.class final synchronized com/nd/android/u/contact/business/OapGroupManager$1
.super java/lang/Object
.implements com/nd/android/u/contact/cache/ProfileGroupCallback
.enclosing method com/nd/android/u/contact/business/OapGroupManager/getGroupNameByGid(J)Ljava/lang/String;
.inner class static final inner com/nd/android/u/contact/business/OapGroupManager$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public refresh(Lcom/product/android/commonInterface/contact/OapGroup;)V
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
ldc_w 131076
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyProcessComplete(I)V
return
.limit locals 2
.limit stack 2
.end method
