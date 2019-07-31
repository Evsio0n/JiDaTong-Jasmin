.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/FlowerFragment$3
.super android/os/CountDownTimer
.enclosing method com/nd/android/u/ui/widge/chatfragment/FlowerFragment/startTimer()V
.inner class inner com/nd/android/u/ui/widge/chatfragment/FlowerFragment$3

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;

.method <init>(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;JJ)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$3/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
aload 0
lload 2
lload 4
invokespecial android/os/CountDownTimer/<init>(JJ)V
return
.limit locals 6
.limit stack 5
.end method

.method public onFinish()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$3/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
ldc2_w 10000L
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$402(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;J)J
pop2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$3/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$500(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Landroid/view/View;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$3/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$500(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$3/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
aconst_null
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$602(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
pop
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$3/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
iconst_0
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$702(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;Z)Z
pop
return
.limit locals 1
.limit stack 3
.end method

.method public onTick(J)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$3/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
lload 1
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$402(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;J)J
pop2
return
.limit locals 3
.limit stack 3
.end method
