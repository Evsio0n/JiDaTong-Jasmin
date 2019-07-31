.bytecode 50.0
.class synchronized com/nd/rj/common/microblogging/SNSEditWeiBo$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/rj/common/microblogging/SNSEditWeiBo/SetCtrl()V
.inner class inner com/nd/rj/common/microblogging/SNSEditWeiBo$2

.field final synthetic 'this$0' Lcom/nd/rj/common/microblogging/SNSEditWeiBo;

.method <init>(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSEditWeiBo$2/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$2/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$200(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method
