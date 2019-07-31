.bytecode 50.0
.class synchronized com/hisun/b2c/api/core/IPOSBinder$2
.super com/hisun/b2c/api/IRemoteServiceCallback$Stub
.enclosing method com/hisun/b2c/api/core/IPOSBinder
.inner class inner com/hisun/b2c/api/core/IPOSBinder$2
.inner class inner com/hisun/b2c/api/core/IPOSBinder$2$1

.field final synthetic 'this$0' Lcom/hisun/b2c/api/core/IPOSBinder;

.method <init>(Lcom/hisun/b2c/api/core/IPOSBinder;)V
aload 0
aload 1
putfield com/hisun/b2c/api/core/IPOSBinder$2/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
aload 0
invokespecial com/hisun/b2c/api/IRemoteServiceCallback$Stub/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$0(Lcom/hisun/b2c/api/core/IPOSBinder$2;)Lcom/hisun/b2c/api/core/IPOSBinder;
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$2/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
.throws android/os/RemoteException
.catch java/lang/Exception from L0 to L1 using L2
new android/content/Intent
dup
ldc "android.intent.action.MAIN"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
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
new java/lang/Thread
dup
new com/hisun/b2c/api/core/IPOSBinder$2$1
dup
aload 0
invokespecial com/hisun/b2c/api/core/IPOSBinder$2$1/<init>(Lcom/hisun/b2c/api/core/IPOSBinder$2;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
aload 6
aload 1
aload 2
invokevirtual android/content/Intent/setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$2/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
invokevirtual com/hisun/b2c/api/core/IPOSBinder/getContext()Landroid/content/Context;
checkcast android/app/Activity
aload 6
ldc_w 619067
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
return
L2:
astore 4
aload 4
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
.limit locals 7
.limit stack 5
.end method

.method public valueChanged(I)V
return
.limit locals 2
.limit stack 0
.end method
