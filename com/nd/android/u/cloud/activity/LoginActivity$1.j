.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/LoginActivity$1
.super java/lang/Object
.implements com/nd/rj/common/login/jobnumber/InputWidget$InputWidgetInteract
.enclosing method com/nd/android/u/cloud/activity/LoginActivity/initInputView()V
.inner class inner com/nd/android/u/cloud/activity/LoginActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/LoginActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/LoginActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/LoginActivity$1/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onCleanAllWidget(Z)V
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$1/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
invokestatic com/nd/android/u/cloud/activity/LoginActivity/access$000(Lcom/nd/android/u/cloud/activity/LoginActivity;)Lcom/nd/rj/common/login/jobnumber/InputWidget;
invokevirtual com/nd/rj/common/login/jobnumber/InputWidget/cleanInput()V
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$1/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
invokestatic com/nd/android/u/cloud/activity/LoginActivity/access$100(Lcom/nd/android/u/cloud/activity/LoginActivity;)Lcom/nd/rj/common/login/jobnumber/InputWidget;
invokevirtual com/nd/rj/common/login/jobnumber/InputWidget/cleanInput()V
iload 1
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$1/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
invokestatic com/nd/android/u/cloud/activity/LoginActivity/access$200(Lcom/nd/android/u/cloud/activity/LoginActivity;)V
L0:
return
.limit locals 2
.limit stack 1
.end method

.method public setAccountWidget(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$1/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
invokestatic com/nd/android/u/cloud/activity/LoginActivity/access$000(Lcom/nd/android/u/cloud/activity/LoginActivity;)Lcom/nd/rj/common/login/jobnumber/InputWidget;
aload 1
invokevirtual com/nd/rj/common/login/jobnumber/InputWidget/setText(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setPasswordWidget(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$1/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
invokestatic com/nd/android/u/cloud/activity/LoginActivity/access$100(Lcom/nd/android/u/cloud/activity/LoginActivity;)Lcom/nd/rj/common/login/jobnumber/InputWidget;
aload 1
invokevirtual com/nd/rj/common/login/jobnumber/InputWidget/setText(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method
