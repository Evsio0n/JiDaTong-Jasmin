.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/utils/SsoHandler$1
.super java/lang/Object
.implements android/content/ServiceConnection
.enclosing method com/android/u/weibo/weibo/utils/SsoHandler/<init>(Landroid/app/Activity;Lcom/weibo/sdk/android/Weibo;)V
.inner class inner com/android/u/weibo/weibo/utils/SsoHandler$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/utils/SsoHandler;

.method <init>(Lcom/android/u/weibo/weibo/utils/SsoHandler;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/SsoHandler$1/this$0 Lcom/android/u/weibo/weibo/utils/SsoHandler;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.catch android/os/RemoteException from L0 to L1 using L2
aload 2
invokestatic com/sina/sso/RemoteSSO$Stub/asInterface(Landroid/os/IBinder;)Lcom/sina/sso/RemoteSSO;
astore 1
L0:
aload 1
invokeinterface com/sina/sso/RemoteSSO/getPackageName()Ljava/lang/String; 0
invokestatic com/android/u/weibo/weibo/utils/SsoHandler/access$402(Ljava/lang/String;)Ljava/lang/String;
pop
aload 1
invokeinterface com/sina/sso/RemoteSSO/getActivityName()Ljava/lang/String; 0
invokestatic com/android/u/weibo/weibo/utils/SsoHandler/access$502(Ljava/lang/String;)Ljava/lang/String;
pop
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler$1/this$0 Lcom/android/u/weibo/weibo/utils/SsoHandler;
astore 1
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler$1/this$0 Lcom/android/u/weibo/weibo/utils/SsoHandler;
invokestatic com/android/u/weibo/weibo/utils/SsoHandler/access$000(Lcom/android/u/weibo/weibo/utils/SsoHandler;)Landroid/app/Activity;
astore 2
invokestatic com/weibo/sdk/android/Weibo/getApp_key()Ljava/lang/String;
astore 4
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler$1/this$0 Lcom/android/u/weibo/weibo/utils/SsoHandler;
invokestatic com/android/u/weibo/weibo/utils/SsoHandler/access$600(Lcom/android/u/weibo/weibo/utils/SsoHandler;)I
istore 3
aload 1
aload 2
aload 4
iconst_0
anewarray java/lang/String
iload 3
invokestatic com/android/u/weibo/weibo/utils/SsoHandler/access$700(Lcom/android/u/weibo/weibo/utils/SsoHandler;Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;I)Z
ifne L1
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler$1/this$0 Lcom/android/u/weibo/weibo/utils/SsoHandler;
invokestatic com/android/u/weibo/weibo/utils/SsoHandler/access$300(Lcom/android/u/weibo/weibo/utils/SsoHandler;)Lcom/weibo/sdk/android/Weibo;
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler$1/this$0 Lcom/android/u/weibo/weibo/utils/SsoHandler;
invokestatic com/android/u/weibo/weibo/utils/SsoHandler/access$000(Lcom/android/u/weibo/weibo/utils/SsoHandler;)Landroid/app/Activity;
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler$1/this$0 Lcom/android/u/weibo/weibo/utils/SsoHandler;
invokestatic com/android/u/weibo/weibo/utils/SsoHandler/access$100(Lcom/android/u/weibo/weibo/utils/SsoHandler;)Lcom/weibo/sdk/android/WeiboAuthListener;
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler$1/this$0 Lcom/android/u/weibo/weibo/utils/SsoHandler;
invokestatic com/android/u/weibo/weibo/utils/SsoHandler/access$200(Lcom/android/u/weibo/weibo/utils/SsoHandler;)I
invokevirtual com/weibo/sdk/android/Weibo/startAuthDialog(Landroid/content/Context;Lcom/weibo/sdk/android/WeiboAuthListener;I)V
L1:
return
L2:
astore 1
aload 1
invokevirtual android/os/RemoteException/printStackTrace()V
return
.limit locals 5
.limit stack 5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler$1/this$0 Lcom/android/u/weibo/weibo/utils/SsoHandler;
invokestatic com/android/u/weibo/weibo/utils/SsoHandler/access$300(Lcom/android/u/weibo/weibo/utils/SsoHandler;)Lcom/weibo/sdk/android/Weibo;
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler$1/this$0 Lcom/android/u/weibo/weibo/utils/SsoHandler;
invokestatic com/android/u/weibo/weibo/utils/SsoHandler/access$000(Lcom/android/u/weibo/weibo/utils/SsoHandler;)Landroid/app/Activity;
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler$1/this$0 Lcom/android/u/weibo/weibo/utils/SsoHandler;
invokestatic com/android/u/weibo/weibo/utils/SsoHandler/access$100(Lcom/android/u/weibo/weibo/utils/SsoHandler;)Lcom/weibo/sdk/android/WeiboAuthListener;
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler$1/this$0 Lcom/android/u/weibo/weibo/utils/SsoHandler;
invokestatic com/android/u/weibo/weibo/utils/SsoHandler/access$200(Lcom/android/u/weibo/weibo/utils/SsoHandler;)I
invokevirtual com/weibo/sdk/android/Weibo/startAuthDialog(Landroid/content/Context;Lcom/weibo/sdk/android/WeiboAuthListener;I)V
return
.limit locals 2
.limit stack 4
.end method
