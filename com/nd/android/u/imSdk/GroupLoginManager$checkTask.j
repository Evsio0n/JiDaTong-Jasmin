.bytecode 50.0
.class synchronized com/nd/android/u/imSdk/GroupLoginManager$checkTask
.super java/util/TimerTask
.inner class private checkTask inner com/nd/android/u/imSdk/GroupLoginManager$checkTask outer com/nd/android/u/imSdk/GroupLoginManager

.field final synthetic 'this$0' Lcom/nd/android/u/imSdk/GroupLoginManager;

.method private <init>(Lcom/nd/android/u/imSdk/GroupLoginManager;)V
aload 0
aload 1
putfield com/nd/android/u/imSdk/GroupLoginManager$checkTask/this$0 Lcom/nd/android/u/imSdk/GroupLoginManager;
aload 0
invokespecial java/util/TimerTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/imSdk/GroupLoginManager;Lcom/nd/android/u/imSdk/GroupLoginManager$checkTask;)V
aload 0
aload 1
invokespecial com/nd/android/u/imSdk/GroupLoginManager$checkTask/<init>(Lcom/nd/android/u/imSdk/GroupLoginManager;)V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager$checkTask/this$0 Lcom/nd/android/u/imSdk/GroupLoginManager;
invokestatic com/nd/android/u/imSdk/GroupLoginManager/access$2(Lcom/nd/android/u/imSdk/GroupLoginManager;)V
return
.limit locals 1
.limit stack 1
.end method
