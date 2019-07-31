.bytecode 50.0
.class synchronized com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8/refresh(Lcom/product/android/commonInterface/contact/OapUser;)V
.inner class inner com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8
.inner class inner com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8$1

.field final synthetic 'this$1' Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8;

.field final synthetic 'val$user' Lcom/product/android/commonInterface/contact/OapUser;

.method <init>(Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8;Lcom/product/android/commonInterface/contact/OapUser;)V
aload 0
aload 1
putfield com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8$1/this$1 Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8;
aload 0
aload 2
putfield com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8$1/val$user Lcom/product/android/commonInterface/contact/OapUser;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8$1/this$1 Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8;
getfield com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8/this$0 Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;
aload 0
getfield com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8$1/val$user Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 0
getfield com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8$1/val$user Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
iconst_0
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl/access$000(Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;JLjava/lang/String;Z)V
return
.limit locals 1
.limit stack 5
.end method
