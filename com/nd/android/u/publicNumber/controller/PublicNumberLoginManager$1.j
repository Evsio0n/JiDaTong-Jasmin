.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/controller/PublicNumberLoginManager$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/publicNumber/controller/PublicNumberLoginManager/loginAllGroup(Ljava/util/ArrayList;)V
.inner class inner com/nd/android/u/publicNumber/controller/PublicNumberLoginManager$1

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/controller/PublicNumberLoginManager;

.method <init>(Lcom/nd/android/u/publicNumber/controller/PublicNumberLoginManager;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/controller/PublicNumberLoginManager$1/this$0 Lcom/nd/android/u/publicNumber/controller/PublicNumberLoginManager;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getMyFocusPublicNumberFromServer()Ljava/util/ArrayList;
pop
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberLoginManager$1/this$0 Lcom/nd/android/u/publicNumber/controller/PublicNumberLoginManager;
invokevirtual com/nd/android/u/publicNumber/controller/PublicNumberLoginManager/getGroupList()Ljava/util/ArrayList;
astore 1
aload 1
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L0
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberLoginManager$1/this$0 Lcom/nd/android/u/publicNumber/controller/PublicNumberLoginManager;
aload 1
invokevirtual com/nd/android/u/publicNumber/controller/PublicNumberLoginManager/loginAllGroup(Ljava/util/ArrayList;)V
L0:
return
.limit locals 2
.limit stack 2
.end method
