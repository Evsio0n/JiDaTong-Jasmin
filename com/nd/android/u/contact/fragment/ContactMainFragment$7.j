.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/ContactMainFragment$7
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/contact/fragment/ContactMainFragment/onReceiverNewContact(I)V
.inner class inner com/nd/android/u/contact/fragment/ContactMainFragment$7

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/ContactMainFragment;

.field final synthetic 'val$newContact' I

.method <init>(Lcom/nd/android/u/contact/fragment/ContactMainFragment;I)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/ContactMainFragment$7/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
aload 0
iload 2
putfield com/nd/android/u/contact/fragment/ContactMainFragment$7/val$newContact I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$7/val$newContact I
ifle L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$7/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokestatic com/nd/android/u/contact/fragment/ContactMainFragment/access$100(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
astore 2
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$7/val$newContact I
ifle L1
iconst_1
istore 1
L2:
aload 2
iload 1
invokevirtual com/nd/android/u/contact/adapter/XYFriendGroupAdapter/setNewJuniorApply(Z)V
L0:
return
L1:
iconst_0
istore 1
goto L2
.limit locals 3
.limit stack 2
.end method
