.bytecode 50.0
.class synchronized com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8
.super java/lang/Object
.implements com/nd/android/u/contact/cache/ProfileUserCacheCallback
.enclosing method com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl
.inner class inner com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8
.inner class inner com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;

.method <init>(Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;)V
aload 0
aload 1
putfield com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8/this$0 Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public refresh(Lcom/product/android/commonInterface/contact/OapUser;)V
new java/lang/Thread
dup
new com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8$1
dup
aload 0
aload 1
invokespecial com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8$1/<init>(Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8;Lcom/product/android/commonInterface/contact/OapUser;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
return
.limit locals 2
.limit stack 6
.end method
