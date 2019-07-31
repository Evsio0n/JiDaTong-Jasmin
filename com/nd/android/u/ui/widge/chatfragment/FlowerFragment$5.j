.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/FlowerFragment$5
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IMessageObserver
.enclosing method com/nd/android/u/ui/widge/chatfragment/FlowerFragment
.inner class inner com/nd/android/u/ui/widge/chatfragment/FlowerFragment$5

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;

.method <init>(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$5/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
aload 1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$5/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$000(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L0
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$5/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$1500(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 3
aload 3
iload 2
putfield android/os/Message/what I
aload 3
aload 1
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$5/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$1500(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Landroid/os/Handler;
aload 3
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 4
.limit stack 2
.end method

.method public onOtherMessageNotify(Landroid/os/Message;)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 1
getfield android/os/Message/what I
tableswitch 22
L2
default : L3
L3:
return
L2:
aload 1
getfield android/os/Message/arg1 I
istore 3
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$5/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$200(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Landroid/widget/Button;
invokevirtual android/widget/Button/getHeight()I
i2f
fstore 2
iload 3
i2f
fload 2
fcmpl
iflt L1
iload 3
i2f
ldc_w 4.0F
fload 2
fmul
fcmpg
ifgt L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$5/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$500(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Landroid/view/View;
ifnull L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$5/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$500(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Landroid/view/View;
invokevirtual android/view/View/getVisibility()I
bipush 8
if_icmpne L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$5/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$200(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Landroid/widget/Button;
invokevirtual android/widget/Button/getText()Ljava/lang/CharSequence;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$5/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$1500(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 4
.limit stack 3
.end method

.method public onReceiveMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onSendNewMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
.limit locals 2
.limit stack 0
.end method
