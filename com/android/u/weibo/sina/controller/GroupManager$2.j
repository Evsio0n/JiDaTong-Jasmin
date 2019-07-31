.bytecode 50.0
.class synchronized com/android/u/weibo/sina/controller/GroupManager$2
.super java/lang/Object
.implements com/weibo/sdk/android/net/RequestListener
.enclosing method com/android/u/weibo/sina/controller/GroupManager/sinaUnFollow(JLjava/lang/String;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
.inner class inner com/android/u/weibo/sina/controller/GroupManager$2

.field final synthetic 'this$0' Lcom/android/u/weibo/sina/controller/GroupManager;

.field final synthetic 'val$listener' Lcom/android/u/weibo/weibo/controller/NdWeiboListener;

.method <init>(Lcom/android/u/weibo/sina/controller/GroupManager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
aload 1
putfield com/android/u/weibo/sina/controller/GroupManager$2/this$0 Lcom/android/u/weibo/sina/controller/GroupManager;
aload 0
aload 2
putfield com/android/u/weibo/sina/controller/GroupManager$2/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onComplete(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager$2/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
iconst_0
aload 1
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager$2/this$0 Lcom/android/u/weibo/sina/controller/GroupManager;
iconst_3
invokevirtual com/android/u/weibo/sina/controller/GroupManager/addLimitCount(I)V
return
.limit locals 2
.limit stack 4
.end method

.method public onComplete4binary(Ljava/io/ByteArrayOutputStream;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboException;)V
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager$2/this$0 Lcom/android/u/weibo/sina/controller/GroupManager;
aload 1
invokevirtual com/android/u/weibo/sina/controller/GroupManager/getErrorCode(Lcom/weibo/sdk/android/WeiboException;)I
istore 2
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager$2/this$0 Lcom/android/u/weibo/sina/controller/GroupManager;
iload 2
invokevirtual com/android/u/weibo/sina/controller/GroupManager/processWeiBoException(I)Ljava/lang/String;
astore 1
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager$2/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
iconst_0
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 1
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager$2/this$0 Lcom/android/u/weibo/sina/controller/GroupManager;
iconst_3
invokevirtual com/android/u/weibo/sina/controller/GroupManager/addLimitCount(I)V
return
.limit locals 3
.limit stack 5
.end method

.method public onIOException(Ljava/io/IOException;)V
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager$2/this$0 Lcom/android/u/weibo/sina/controller/GroupManager;
aload 1
invokevirtual com/android/u/weibo/sina/controller/GroupManager/getErrorCode(Ljava/io/IOException;)I
istore 2
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager$2/this$0 Lcom/android/u/weibo/sina/controller/GroupManager;
iload 2
invokevirtual com/android/u/weibo/sina/controller/GroupManager/processWeiBoException(I)Ljava/lang/String;
astore 1
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager$2/val$listener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
iconst_0
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 1
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager$2/this$0 Lcom/android/u/weibo/sina/controller/GroupManager;
iconst_3
invokevirtual com/android/u/weibo/sina/controller/GroupManager/addLimitCount(I)V
return
.limit locals 3
.limit stack 5
.end method
