.bytecode 50.0
.class synchronized com/android/u/weibo/sina/controller/Limit$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/android/u/weibo/sina/controller/Limit/startTimer(J)V
.inner class inner com/android/u/weibo/sina/controller/Limit$1

.field final synthetic 'this$0' Lcom/android/u/weibo/sina/controller/Limit;

.method <init>(Lcom/android/u/weibo/sina/controller/Limit;)V
aload 0
aload 1
putfield com/android/u/weibo/sina/controller/Limit$1/this$0 Lcom/android/u/weibo/sina/controller/Limit;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/android/u/weibo/sina/controller/Limit$1/this$0 Lcom/android/u/weibo/sina/controller/Limit;
iconst_0
invokestatic com/android/u/weibo/sina/controller/Limit/access$002(Lcom/android/u/weibo/sina/controller/Limit;I)I
pop
aload 0
getfield com/android/u/weibo/sina/controller/Limit$1/this$0 Lcom/android/u/weibo/sina/controller/Limit;
invokestatic com/android/u/weibo/sina/controller/Limit/access$100(Lcom/android/u/weibo/sina/controller/Limit;)Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 1
.limit stack 2
.end method
