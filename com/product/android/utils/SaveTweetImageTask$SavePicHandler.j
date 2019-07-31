.bytecode 50.0
.class synchronized com/product/android/utils/SaveTweetImageTask$SavePicHandler
.super android/os/Handler
.inner class SavePicHandler inner com/product/android/utils/SaveTweetImageTask$SavePicHandler outer com/product/android/utils/SaveTweetImageTask

.field private 'mContext' Landroid/content/Context;

.field final synthetic 'this$0' Lcom/product/android/utils/SaveTweetImageTask;

.method public <init>(Lcom/product/android/utils/SaveTweetImageTask;Landroid/content/Context;)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "HandlerLeak" 
.end annotation
aload 0
aload 1
putfield com/product/android/utils/SaveTweetImageTask$SavePicHandler/this$0 Lcom/product/android/utils/SaveTweetImageTask;
aload 0
invokespecial android/os/Handler/<init>()V
aload 0
aload 2
putfield com/product/android/utils/SaveTweetImageTask$SavePicHandler/mContext Landroid/content/Context;
return
.limit locals 3
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 0
L0
L1
L2
L3
default : L4
L4:
return
L0:
aload 0
getfield com/product/android/utils/SaveTweetImageTask$SavePicHandler/mContext Landroid/content/Context;
ldc "\u5f00\u59cb\u4fdd\u5b58\u56fe\u7247..."
invokestatic com/common/android/utils/ToastUtils/displayTimeShort(Landroid/content/Context;Ljava/lang/String;)V
return
L1:
aload 0
getfield com/product/android/utils/SaveTweetImageTask$SavePicHandler/mContext Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u4fdd\u5b58\u56fe\u7247\u6210\u529f\uff01\u4fdd\u5b58\u8def\u5f84\u4e3a:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/String
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/displayTimeShort(Landroid/content/Context;Ljava/lang/String;)V
return
L2:
aload 0
getfield com/product/android/utils/SaveTweetImageTask$SavePicHandler/mContext Landroid/content/Context;
ldc "\u4fdd\u5b58\u56fe\u7247\u5931\u8d25\uff01"
invokestatic com/common/android/utils/ToastUtils/displayTimeShort(Landroid/content/Context;Ljava/lang/String;)V
return
L3:
aload 0
getfield com/product/android/utils/SaveTweetImageTask$SavePicHandler/mContext Landroid/content/Context;
ldc "\u56fe\u7247\u6b63\u5728\u4e0b\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"
invokestatic com/common/android/utils/ToastUtils/displayTimeShort(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
