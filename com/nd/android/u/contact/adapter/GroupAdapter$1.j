.bytecode 50.0
.class synchronized com/nd/android/u/contact/adapter/GroupAdapter$1
.super android/os/Handler
.enclosing method com/nd/android/u/contact/adapter/GroupAdapter
.inner class inner com/nd/android/u/contact/adapter/GroupAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/adapter/GroupAdapter;

.method <init>(Lcom/nd/android/u/contact/adapter/GroupAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/GroupAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/GroupAdapter;
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
getfield com/nd/android/u/contact/adapter/GroupAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/GroupAdapter;
invokevirtual com/nd/android/u/contact/adapter/GroupAdapter/refresh()V
return
.limit locals 2
.limit stack 2
.end method
