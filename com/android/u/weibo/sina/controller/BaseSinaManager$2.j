.bytecode 50.0
.class synchronized com/android/u/weibo/sina/controller/BaseSinaManager$2
.super java/lang/Object
.implements com/android/u/weibo/weibo/controller/NdWeiboListener
.enclosing method com/android/u/weibo/sina/controller/BaseSinaManager
.inner class inner com/android/u/weibo/sina/controller/BaseSinaManager$2

.field final synthetic 'this$0' Lcom/android/u/weibo/sina/controller/BaseSinaManager;

.method <init>(Lcom/android/u/weibo/sina/controller/BaseSinaManager;)V
aload 0
aload 1
putfield com/android/u/weibo/sina/controller/BaseSinaManager$2/this$0 Lcom/android/u/weibo/sina/controller/BaseSinaManager;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onComplete(ILjava/lang/Object;Ljava/lang/String;)V
aload 2
instanceof java/lang/String
ifeq L0
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager$2/this$0 Lcom/android/u/weibo/sina/controller/BaseSinaManager;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "BaseSinaManager:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
checkcast java/lang/String
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/controller/BaseSinaManager/debug(Ljava/lang/String;)V
L0:
return
.limit locals 4
.limit stack 3
.end method

.method public onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 2
ifnull L0
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager$2/this$0 Lcom/android/u/weibo/sina/controller/BaseSinaManager;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "BaseSinaManager:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/controller/BaseSinaManager/debug(Ljava/lang/String;)V
L0:
return
.limit locals 3
.limit stack 3
.end method
