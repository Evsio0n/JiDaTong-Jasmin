.bytecode 50.0
.class synchronized com/nd/rj/common/microblogging/SNSAuthorized$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/rj/common/microblogging/SNSAuthorized
.inner class inner com/nd/rj/common/microblogging/SNSAuthorized$1

.field final synthetic 'this$0' Lcom/nd/rj/common/microblogging/SNSAuthorized;

.method <init>(Lcom/nd/rj/common/microblogging/SNSAuthorized;)V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSAuthorized$1/this$0 Lcom/nd/rj/common/microblogging/SNSAuthorized;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized$1/this$0 Lcom/nd/rj/common/microblogging/SNSAuthorized;
invokevirtual com/nd/rj/common/microblogging/SNSAuthorized/finish()V
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized$1/this$0 Lcom/nd/rj/common/microblogging/SNSAuthorized;
invokestatic com/nd/rj/common/microblogging/SNSAuthorized/access$100(Lcom/nd/rj/common/microblogging/SNSAuthorized;)Landroid/os/Handler;
iconst_5
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 2
.limit stack 2
.end method
