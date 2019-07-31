.bytecode 50.0
.class synchronized com/nd/android/u/cloud/helper/DoWithProgress$2
.super android/os/Handler
.enclosing method com/nd/android/u/cloud/helper/DoWithProgress/Execute()V
.inner class inner com/nd/android/u/cloud/helper/DoWithProgress$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/helper/DoWithProgress;

.method <init>(Lcom/nd/android/u/cloud/helper/DoWithProgress;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/helper/DoWithProgress$2/this$0 Lcom/nd/android/u/cloud/helper/DoWithProgress;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 257
L6
L7
default : L8
L8:
return
L6:
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress$2/this$0 Lcom/nd/android/u/cloud/helper/DoWithProgress;
getfield com/nd/android/u/cloud/helper/DoWithProgress/progressDialog Landroid/app/ProgressDialog;
ifnull L9
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress$2/this$0 Lcom/nd/android/u/cloud/helper/DoWithProgress;
getfield com/nd/android/u/cloud/helper/DoWithProgress/progressDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L9
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress$2/this$0 Lcom/nd/android/u/cloud/helper/DoWithProgress;
getfield com/nd/android/u/cloud/helper/DoWithProgress/progressDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L9:
aload 1
getfield android/os/Message/arg1 I
ifne L3
L0:
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress$2/this$0 Lcom/nd/android/u/cloud/helper/DoWithProgress;
invokevirtual com/nd/android/u/cloud/helper/DoWithProgress/doSuccess()V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
L3:
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress$2/this$0 Lcom/nd/android/u/cloud/helper/DoWithProgress;
aload 1
getfield android/os/Message/arg1 I
invokevirtual com/nd/android/u/cloud/helper/DoWithProgress/doFail(I)V
L4:
return
L5:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
L7:
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress$2/this$0 Lcom/nd/android/u/cloud/helper/DoWithProgress;
getfield com/nd/android/u/cloud/helper/DoWithProgress/progressDialog Landroid/app/ProgressDialog;
ifnull L8
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress$2/this$0 Lcom/nd/android/u/cloud/helper/DoWithProgress;
getfield com/nd/android/u/cloud/helper/DoWithProgress/progressDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L8
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress$2/this$0 Lcom/nd/android/u/cloud/helper/DoWithProgress;
getfield com/nd/android/u/cloud/helper/DoWithProgress/progressDialog Landroid/app/ProgressDialog;
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual android/app/ProgressDialog/setMessage(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress$2/this$0 Lcom/nd/android/u/cloud/helper/DoWithProgress;
getfield com/nd/android/u/cloud/helper/DoWithProgress/progressDialog Landroid/app/ProgressDialog;
aload 1
getfield android/os/Message/arg1 I
invokevirtual android/app/ProgressDialog/setMax(I)V
aload 0
getfield com/nd/android/u/cloud/helper/DoWithProgress$2/this$0 Lcom/nd/android/u/cloud/helper/DoWithProgress;
getfield com/nd/android/u/cloud/helper/DoWithProgress/progressDialog Landroid/app/ProgressDialog;
aload 1
getfield android/os/Message/arg2 I
invokevirtual android/app/ProgressDialog/setProgress(I)V
return
.limit locals 2
.limit stack 2
.end method
