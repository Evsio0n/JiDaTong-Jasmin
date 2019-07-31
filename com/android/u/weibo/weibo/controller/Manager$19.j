.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/controller/Manager$19
.super com/common/android/utils/concurrent/NdAbstractTask
.enclosing method com/android/u/weibo/weibo/controller/Manager/postComment(Ljava/lang/String;JZIIJLcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
.inner class inner com/android/u/weibo/weibo/controller/Manager$19

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/controller/Manager;

.field final synthetic 'val$content' Ljava/lang/String;

.field final synthetic 'val$id' J

.field final synthetic 'val$listener' Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;

.field final synthetic 'val$localCreateAt' J

.field final synthetic 'val$reflag' I

.field final synthetic 'val$relay' I

.method <init>(Lcom/android/u/weibo/weibo/controller/Manager;Ljava/lang/String;JIIJLcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/controller/Manager$19/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
aload 2
putfield com/android/u/weibo/weibo/controller/Manager$19/val$content Ljava/lang/String;
aload 0
lload 3
putfield com/android/u/weibo/weibo/controller/Manager$19/val$id J
aload 0
iload 5
putfield com/android/u/weibo/weibo/controller/Manager$19/val$relay I
aload 0
iload 6
putfield com/android/u/weibo/weibo/controller/Manager$19/val$reflag I
aload 0
lload 7
putfield com/android/u/weibo/weibo/controller/Manager$19/val$localCreateAt J
aload 0
aload 9
putfield com/android/u/weibo/weibo/controller/Manager$19/val$listener Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
return
.limit locals 10
.limit stack 3
.end method

.method public run()V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$19/this$0 Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$19/val$content Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$19/val$id J
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$19/val$relay I
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$19/val$reflag I
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$19/val$localCreateAt J
sipush 2002
aload 0
getfield com/android/u/weibo/weibo/controller/Manager$19/val$listener Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;
invokestatic com/android/u/weibo/weibo/controller/Manager/access$1200(Lcom/android/u/weibo/weibo/controller/Manager;Ljava/lang/String;JIIJILcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
return
.limit locals 1
.limit stack 10
.end method
