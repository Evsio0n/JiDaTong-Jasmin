.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog$1
.super android/os/Handler
.enclosing method com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog
.inner class inner com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog$1

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;

.method <init>(Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog$1/this$0 Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog$1/this$0 Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog$1/this$0 Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog$1/this$0 Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog$1/this$0 Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
invokestatic com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/access$000(Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;)I
iconst_1
if_icmpne L1
aload 1
bipush 17
putfield android/os/Message/what I
L2:
aload 1
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog$1/this$0 Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
invokestatic com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/access$100(Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;)Ljava/lang/String;
putfield android/os/Message/obj Ljava/lang/Object;
aload 1
sipush 200
putfield android/os/Message/arg1 I
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog$1/this$0 Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mGenKey Ljava/lang/String;
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifeq L3
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 0
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog$1/this$0 Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
getfield com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/mGenKey Ljava/lang/String;
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
aload 1
aload 1
getfield android/os/Message/arg1 I
iconst_1
isub
putfield android/os/Message/arg1 I
L3:
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iconst_5
aload 1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyOtherMessage(ILandroid/os/Message;)V
L0:
return
L1:
aload 1
bipush 18
putfield android/os/Message/what I
goto L2
.limit locals 2
.limit stack 3
.end method
