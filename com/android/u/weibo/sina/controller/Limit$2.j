.bytecode 50.0
.class synchronized com/android/u/weibo/sina/controller/Limit$2
.super android/os/Handler
.enclosing method com/android/u/weibo/sina/controller/Limit
.inner class inner com/android/u/weibo/sina/controller/Limit$2

.field final synthetic 'this$0' Lcom/android/u/weibo/sina/controller/Limit;

.method <init>(Lcom/android/u/weibo/sina/controller/Limit;)V
aload 0
aload 1
putfield com/android/u/weibo/sina/controller/Limit$2/this$0 Lcom/android/u/weibo/sina/controller/Limit;
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
getfield com/android/u/weibo/sina/controller/Limit$2/this$0 Lcom/android/u/weibo/sina/controller/Limit;
aload 0
getfield com/android/u/weibo/sina/controller/Limit$2/this$0 Lcom/android/u/weibo/sina/controller/Limit;
invokestatic com/android/u/weibo/sina/controller/Limit/access$200(Lcom/android/u/weibo/sina/controller/Limit;)J
invokestatic com/android/u/weibo/sina/controller/Limit/access$300(Lcom/android/u/weibo/sina/controller/Limit;J)V
return
.limit locals 2
.limit stack 3
.end method
