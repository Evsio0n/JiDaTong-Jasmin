.bytecode 50.0
.class public synchronized com/hisun/b2c/api/core/InstallReceiver
.super android/content/BroadcastReceiver

.field private 'listener' Lcom/hisun/b2c/api/core/InstallReceiverListener;

.method public <init>()V
aload 0
invokespecial android/content/BroadcastReceiver/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
iconst_0
istore 3
aload 2
invokevirtual android/content/Intent/getAction()Ljava/lang/String;
ldc "android.intent.action.PACKAGE_ADDED"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
istore 3
L1:
aload 2
invokevirtual android/content/Intent/getDataString()Ljava/lang/String;
astore 1
aload 1
ifnull L2
aload 1
invokevirtual java/lang/String/length()I
ifeq L2
aload 1
ldc "package"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L2
aload 1
bipush 8
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
ldc "com.hisun.ipos2"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L2
aload 0
getfield com/hisun/b2c/api/core/InstallReceiver/listener Lcom/hisun/b2c/api/core/InstallReceiverListener;
ifnull L2
aload 0
getfield com/hisun/b2c/api/core/InstallReceiver/listener Lcom/hisun/b2c/api/core/InstallReceiverListener;
iload 3
invokeinterface com/hisun/b2c/api/core/InstallReceiverListener/notifyInstallState(Z)V 1
L2:
return
L0:
aload 2
invokevirtual android/content/Intent/getAction()Ljava/lang/String;
ldc "android.intent.action.PACKAGE_REMOVED"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
iconst_0
istore 3
goto L1
.limit locals 4
.limit stack 2
.end method

.method public setIPOSUtilsListener(Lcom/hisun/b2c/api/core/InstallReceiverListener;)V
aload 0
aload 1
putfield com/hisun/b2c/api/core/InstallReceiver/listener Lcom/hisun/b2c/api/core/InstallReceiverListener;
return
.limit locals 2
.limit stack 2
.end method
