.bytecode 50.0
.class synchronized com/nd/rj/common/microblogging/SNSSet$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/rj/common/microblogging/SNSSet
.inner class inner com/nd/rj/common/microblogging/SNSSet$2

.field final synthetic 'this$0' Lcom/nd/rj/common/microblogging/SNSSet;

.method <init>(Lcom/nd/rj/common/microblogging/SNSSet;)V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSSet$2/this$0 Lcom/nd/rj/common/microblogging/SNSSet;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
iconst_1
istore 2
aload 0
getfield com/nd/rj/common/microblogging/SNSSet$2/this$0 Lcom/nd/rj/common/microblogging/SNSSet;
invokestatic com/nd/rj/common/microblogging/help/HttpTool/getActiveNetWorkName(Landroid/content/Context;)Ljava/lang/String;
ifnonnull L0
aload 0
getfield com/nd/rj/common/microblogging/SNSSet$2/this$0 Lcom/nd/rj/common/microblogging/SNSSet;
invokestatic com/nd/rj/common/microblogging/SNSSet/access$200(Lcom/nd/rj/common/microblogging/SNSSet;)I
ifne L0
aload 0
getfield com/nd/rj/common/microblogging/SNSSet$2/this$0 Lcom/nd/rj/common/microblogging/SNSSet;
getstatic com/nd/rj/common/R$string/sns_cannot_disassociate I
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L0:
aload 0
getfield com/nd/rj/common/microblogging/SNSSet$2/this$0 Lcom/nd/rj/common/microblogging/SNSSet;
astore 1
aload 0
getfield com/nd/rj/common/microblogging/SNSSet$2/this$0 Lcom/nd/rj/common/microblogging/SNSSet;
invokestatic com/nd/rj/common/microblogging/SNSSet/access$200(Lcom/nd/rj/common/microblogging/SNSSet;)I
ifne L1
L2:
aload 1
iload 2
invokestatic com/nd/rj/common/microblogging/SNSSet/access$202(Lcom/nd/rj/common/microblogging/SNSSet;I)I
pop
aload 0
getfield com/nd/rj/common/microblogging/SNSSet$2/this$0 Lcom/nd/rj/common/microblogging/SNSSet;
invokestatic com/nd/rj/common/microblogging/SNSSet/access$300(Lcom/nd/rj/common/microblogging/SNSSet;)V
return
L1:
iconst_0
istore 2
goto L2
.limit locals 3
.limit stack 3
.end method
