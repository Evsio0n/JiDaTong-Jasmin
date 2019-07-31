.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$MyTimeThread
.super java/lang/Object
.implements java/lang/Runnable
.inner class private MyTimeThread inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$MyTimeThread outer com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;

.method private <init>(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$MyTimeThread/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$1;)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$MyTimeThread/<init>(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
L4:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$MyTimeThread/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1200(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Z
ifeq L5
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$MyTimeThread/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic java/lang/System/currentTimeMillis()J
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$3602(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;J)J
pop2
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$MyTimeThread/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$3600(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)J
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$MyTimeThread/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$3700(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)J
lsub
ldc2_w 1000L
lcmp
iflt L4
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$MyTimeThread/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$MyTimeThread/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$3600(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)J
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$3702(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;J)J
pop2
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$MyTimeThread/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1200(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Z
ifeq L5
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$MyTimeThread/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$MyTimeThread/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1100(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)I
iconst_1
iadd
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1102(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;I)I
pop
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$MyTimeThread/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1100(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)I
bipush 120
if_icmplt L1
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$MyTimeThread/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
bipush 120
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1102(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;I)I
pop
L1:
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
iconst_1
putfield android/os/Message/what I
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$MyTimeThread/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/handler Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L3:
goto L4
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L4
L5:
return
.limit locals 2
.limit stack 4
.end method
