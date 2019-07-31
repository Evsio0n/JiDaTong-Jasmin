.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$3
.super android/os/Handler
.enclosing method com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public
.inner class inner com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$3

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 1
L0
L0
L0
L1
default : L0
L0:
return
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;
invokestatic com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/access$1100(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getMenuFromDb(Ljava/lang/String;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
astore 1
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;
aload 1
invokestatic com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/access$1200(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;)V
return
.limit locals 2
.limit stack 2
.end method
