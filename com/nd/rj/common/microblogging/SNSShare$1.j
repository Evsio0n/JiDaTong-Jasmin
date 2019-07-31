.bytecode 50.0
.class synchronized com/nd/rj/common/microblogging/SNSShare$1
.super java/lang/Object
.implements com/nd/rj/common/microblogging/SNSShare$OnShareProcessListener
.enclosing method com/nd/rj/common/microblogging/SNSShare
.inner class inner com/nd/rj/common/microblogging/SNSShare$1

.field final synthetic 'this$0' Lcom/nd/rj/common/microblogging/SNSShare;

.method <init>(Lcom/nd/rj/common/microblogging/SNSShare;)V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSShare$1/this$0 Lcom/nd/rj/common/microblogging/SNSShare;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public OnFinish()V
aload 0
getfield com/nd/rj/common/microblogging/SNSShare$1/this$0 Lcom/nd/rj/common/microblogging/SNSShare;
invokestatic com/nd/rj/common/microblogging/SNSShare/access$000(Lcom/nd/rj/common/microblogging/SNSShare;)Landroid/content/Context;
ldc "\u53d1\u9001\u5b8c\u6210!"
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 1
.limit stack 3
.end method

.method public OnItemFinishRes(ILjava/lang/String;I)V
invokestatic com/nd/rj/common/microblogging/SNSShare/getInstance()Lcom/nd/rj/common/microblogging/SNSShare;
aload 0
getfield com/nd/rj/common/microblogging/SNSShare$1/this$0 Lcom/nd/rj/common/microblogging/SNSShare;
invokestatic com/nd/rj/common/microblogging/SNSShare/access$000(Lcom/nd/rj/common/microblogging/SNSShare;)Landroid/content/Context;
iload 1
aload 2
iload 3
invokevirtual com/nd/rj/common/microblogging/SNSShare/ShowShareProcessTip(Landroid/content/Context;ILjava/lang/String;I)V
return
.limit locals 4
.limit stack 5
.end method
