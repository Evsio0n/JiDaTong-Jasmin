.bytecode 50.0
.class synchronized com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$1
.super java/lang/Object
.implements com/nd/android/u/contact/cache/ProfileUserCacheCallback
.enclosing method com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl/InterProcessPersonInfo(ILcom/product/android/commonInterface/BaseCommonStruct;)I
.inner class inner com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;

.method <init>(Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;)V
aload 0
aload 1
putfield com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$1/this$0 Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public refresh(Lcom/product/android/commonInterface/contact/OapUser;)V
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyMsg()V
return
.limit locals 2
.limit stack 1
.end method
