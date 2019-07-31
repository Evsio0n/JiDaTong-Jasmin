.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/senior/MySeniorActivity$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/contact/activity/senior/MySeniorActivity/onReceiverNewContact(I)V
.inner class inner com/nd/android/u/contact/activity/senior/MySeniorActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;

.field final synthetic 'val$newContact' I

.method <init>(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;I)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/MySeniorActivity$1/this$0 Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;
aload 0
iload 2
putfield com/nd/android/u/contact/activity/senior/MySeniorActivity$1/val$newContact I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity$1/val$newContact I
ifle L0
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity$1/this$0 Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/MySeniorActivity/access$200(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;)Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L0:
return
.limit locals 1
.limit stack 2
.end method
