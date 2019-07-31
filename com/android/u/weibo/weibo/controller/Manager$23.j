.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/controller/Manager$23
.super java/lang/Object
.implements com/android/u/weibo/weibo/controller/NdWeiboListener
.enclosing method com/android/u/weibo/weibo/controller/Manager/followSina(JZ)V
.inner class inner com/android/u/weibo/weibo/controller/Manager$23
.inner class inner com/android/u/weibo/weibo/controller/Manager$23$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/controller/Manager;

.field final synthetic 'val$addToGroup' Z

.field final synthetic 'val$sinaId' J

.method <init>(Lcom/android/u/weibo/weibo/controller/Manager;JZ)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/controller/Manager$23/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
lload 2
putfield com/android/u/weibo/weibo/controller/Manager$23/val$sinaId J
aload 0
iload 4
putfield com/android/u/weibo/weibo/controller/Manager$23/val$addToGroup Z
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 5
.limit stack 3
.end method

.method public onComplete(ILjava/lang/Object;Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$23/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "followSina:uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$23/val$sinaId J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",success:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$100(Lcom/android/u/weibo/weibo/controller/Manager;Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$23/val$addToGroup Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$23/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$1000(Lcom/android/u/weibo/weibo/controller/Manager;)Lcom/android/u/weibo/sina/controller/StatusManager;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$23/val$sinaId J
new com/android/u/weibo/weibo/controller/Manager$23$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/controller/Manager$23$1/<init>(Lcom/android/u/weibo/weibo/controller/Manager$23;)V
invokevirtual com/android/u/weibo/sina/controller/StatusManager/addToGroup(JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
L0:
return
.limit locals 4
.limit stack 6
.end method

.method public onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$23/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "followSina:uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$23/val$sinaId J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",error:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$100(Lcom/android/u/weibo/weibo/controller/Manager;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 4
.end method
