.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/fragment/BackpackBaseFragment$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/backpacksystem/fragment/BackpackBaseFragment
.inner class inner com/nd/android/backpacksystem/fragment/BackpackBaseFragment$1

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;

.method <init>(Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
getstatic com/nd/android/backpacksystem/R$id/btnHeaderLeft I
iload 2
if_icmpne L0
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;
invokevirtual com/nd/android/backpacksystem/fragment/BackpackBaseFragment/clickHeaderLeft()V
L0:
getstatic com/nd/android/backpacksystem/R$id/btnHeaderRight I
iload 2
if_icmpne L1
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;
invokevirtual com/nd/android/backpacksystem/fragment/BackpackBaseFragment/clickHeaderRight()V
L1:
return
.limit locals 3
.limit stack 2
.end method
