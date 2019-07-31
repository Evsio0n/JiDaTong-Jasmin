.bytecode 50.0
.class synchronized com/common/android/ui/CommonLoadingActivity$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/common/android/ui/CommonLoadingActivity
.inner class inner com/common/android/ui/CommonLoadingActivity$1

.field final synthetic 'this$0' Lcom/common/android/ui/CommonLoadingActivity;

.method <init>(Lcom/common/android/ui/CommonLoadingActivity;)V
aload 0
aload 1
putfield com/common/android/ui/CommonLoadingActivity$1/this$0 Lcom/common/android/ui/CommonLoadingActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/allcommon/R$id/flRoot I
if_icmpne L0
aload 0
getfield com/common/android/ui/CommonLoadingActivity$1/this$0 Lcom/common/android/ui/CommonLoadingActivity;
invokestatic com/common/android/ui/CommonLoadingActivity/access$000(Lcom/common/android/ui/CommonLoadingActivity;)I
iconst_1
if_icmpne L0
aload 0
getfield com/common/android/ui/CommonLoadingActivity$1/this$0 Lcom/common/android/ui/CommonLoadingActivity;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L1
ldc "\u7f51\u7edc\u4e0d\u7ed9\u529b"
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
L0:
return
L1:
aload 0
getfield com/common/android/ui/CommonLoadingActivity$1/this$0 Lcom/common/android/ui/CommonLoadingActivity;
invokevirtual com/common/android/ui/CommonLoadingActivity/showLoadingLayout()V
aload 0
getfield com/common/android/ui/CommonLoadingActivity$1/this$0 Lcom/common/android/ui/CommonLoadingActivity;
invokevirtual com/common/android/ui/CommonLoadingActivity/doOrRetry()V
return
.limit locals 2
.limit stack 2
.end method
