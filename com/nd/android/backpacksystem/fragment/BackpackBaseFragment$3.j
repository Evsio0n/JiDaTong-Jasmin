.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/fragment/BackpackBaseFragment$3
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/backpacksystem/fragment/BackpackBaseFragment/requestFaildialog(Ljava/lang/String;)V
.inner class inner com/nd/android/backpacksystem/fragment/BackpackBaseFragment$3

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;

.method <init>(Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment$3/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment$3/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;
invokevirtual com/nd/android/backpacksystem/fragment/BackpackBaseFragment/doRetry()V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
.limit locals 3
.limit stack 1
.end method
