.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/activity/LotMainActivity$4
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/tast/lottery/activity/LotMainActivity
.inner class inner com/nd/android/u/tast/lottery/activity/LotMainActivity$4

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;

.method <init>(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$100(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
bipush -2
if_icmpne L0
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
iconst_m1
putfield android/os/Message/what I
aload 1
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$300(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
bipush 20
irem
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$1600(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L0:
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$100(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
iflt L1
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$300(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$1700(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
bipush 20
imul
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$100(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
iadd
if_icmplt L2
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
iconst_1
putfield android/os/Message/what I
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$1600(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L2:
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
iconst_2
putfield android/os/Message/what I
aload 1
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$300(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
bipush 20
irem
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$1600(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$308(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$1600(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$1800(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Ljava/lang/Runnable;
ldc2_w 100L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
L1:
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$1700(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
bipush 10
if_icmplt L3
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
iconst_0
putfield android/os/Message/what I
aload 1
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$300(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
bipush 20
irem
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$1600(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L3:
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$300(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$1700(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
bipush 20
imul
if_icmplt L4
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$1708(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
pop
L4:
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
iconst_2
putfield android/os/Message/what I
aload 1
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$300(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
bipush 20
irem
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$1600(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$308(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$1600(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$1800(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Ljava/lang/Runnable;
ldc2_w 100L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
.limit locals 2
.limit stack 4
.end method
