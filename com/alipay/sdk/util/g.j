.bytecode 50.0
.class final synchronized com/alipay/sdk/util/g
.super com/alipay/android/app/IRemoteServiceCallback$Stub

.field final synthetic 'a' Lcom/alipay/sdk/util/e;

.method <init>(Lcom/alipay/sdk/util/e;)V
aload 0
aload 1
putfield com/alipay/sdk/util/g/a Lcom/alipay/sdk/util/e;
aload 0
invokespecial com/alipay/android/app/IRemoteServiceCallback$Stub/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final isHideLoadingScreen()Z
.throws android/os/RemoteException
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final payEnd(ZLjava/lang/String;)V
.throws android/os/RemoteException
return
.limit locals 3
.limit stack 0
.end method

.method public final startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
.throws android/os/RemoteException
.catch java/lang/Exception from L0 to L1 using L2
new android/content/Intent
dup
ldc "android.intent.action.MAIN"
aconst_null
invokespecial android/content/Intent/<init>(Ljava/lang/String;Landroid/net/Uri;)V
astore 6
aload 4
astore 5
aload 4
ifnonnull L0
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 5
L0:
aload 5
ldc "CallingPid"
iload 3
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 6
aload 5
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
L1:
aload 6
aload 1
aload 2
invokevirtual android/content/Intent/setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/alipay/sdk/util/g/a Lcom/alipay/sdk/util/e;
invokestatic com/alipay/sdk/util/e/b(Lcom/alipay/sdk/util/e;)Landroid/app/Activity;
ifnull L3
aload 0
getfield com/alipay/sdk/util/g/a Lcom/alipay/sdk/util/e;
invokestatic com/alipay/sdk/util/e/b(Lcom/alipay/sdk/util/e;)Landroid/app/Activity;
aload 6
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
L3:
return
L2:
astore 4
goto L1
.limit locals 7
.limit stack 4
.end method
