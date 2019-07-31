.bytecode 50.0
.class synchronized com/nd/rj/common/microblogging/SNSEditWeiBo$1
.super java/lang/Object
.implements com/nd/rj/common/microblogging/ResizeLayout$OnResizeListener
.enclosing method com/nd/rj/common/microblogging/SNSEditWeiBo/SetCtrl()V
.inner class inner com/nd/rj/common/microblogging/SNSEditWeiBo$1

.field final synthetic 'this$0' Lcom/nd/rj/common/microblogging/SNSEditWeiBo;

.method <init>(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSEditWeiBo$1/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public OnResize(IIII)V
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$1/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$000(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)I
iload 2
if_icmpge L0
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$1/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
iload 2
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$002(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;I)I
pop
L0:
iload 2
iload 4
if_icmpge L1
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$1/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$100(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/widget/ImageView;
bipush 100
invokevirtual android/widget/ImageView/setAlpha(I)V
L2:
return
L1:
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$1/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$000(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)I
iload 2
if_icmpne L2
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$1/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$100(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/widget/ImageView;
sipush 255
invokevirtual android/widget/ImageView/setAlpha(I)V
return
.limit locals 5
.limit stack 2
.end method
