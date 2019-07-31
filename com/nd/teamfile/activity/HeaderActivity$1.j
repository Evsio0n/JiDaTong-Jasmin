.bytecode 50.0
.class synchronized com/nd/teamfile/activity/HeaderActivity$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/teamfile/activity/HeaderActivity
.inner class inner com/nd/teamfile/activity/HeaderActivity$1

.field final synthetic 'this$0' Lcom/nd/teamfile/activity/HeaderActivity;

.method <init>(Lcom/nd/teamfile/activity/HeaderActivity;)V
aload 0
aload 1
putfield com/nd/teamfile/activity/HeaderActivity$1/this$0 Lcom/nd/teamfile/activity/HeaderActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/teamfile/R$id/header_btn_left I
if_icmpne L0
aload 0
getfield com/nd/teamfile/activity/HeaderActivity$1/this$0 Lcom/nd/teamfile/activity/HeaderActivity;
invokevirtual com/nd/teamfile/activity/HeaderActivity/leftBtnHandle()V
L1:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/teamfile/R$id/header_btn_right I
if_icmpne L1
aload 0
getfield com/nd/teamfile/activity/HeaderActivity$1/this$0 Lcom/nd/teamfile/activity/HeaderActivity;
invokevirtual com/nd/teamfile/activity/HeaderActivity/rightBtnHandle()V
return
.limit locals 2
.limit stack 2
.end method
