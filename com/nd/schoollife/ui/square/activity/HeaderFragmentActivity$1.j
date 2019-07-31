.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/activity/HeaderFragmentActivity$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/square/activity/HeaderFragmentActivity
.inner class inner com/nd/schoollife/ui/square/activity/HeaderFragmentActivity$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/activity/HeaderFragmentActivity;

.method <init>(Lcom/nd/schoollife/ui/square/activity/HeaderFragmentActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/activity/HeaderFragmentActivity$1/this$0 Lcom/nd/schoollife/ui/square/activity/HeaderFragmentActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/schoollife/R$id/btn_common_head_back I
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/square/activity/HeaderFragmentActivity$1/this$0 Lcom/nd/schoollife/ui/square/activity/HeaderFragmentActivity;
invokevirtual com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/leftBtnHandle()V
L1:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/schoollife/R$id/btn_common_head_right I
if_icmpne L1
aload 0
getfield com/nd/schoollife/ui/square/activity/HeaderFragmentActivity$1/this$0 Lcom/nd/schoollife/ui/square/activity/HeaderFragmentActivity;
invokevirtual com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/rightBtnHandle()V
return
.limit locals 2
.limit stack 2
.end method
