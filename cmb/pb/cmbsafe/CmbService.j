.bytecode 50.0
.class public synchronized cmb/pb/cmbsafe/CmbService
.super android/app/Service

.method public <init>()V
aload 0
invokespecial android/app/Service/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public onCreate()V
aload 0
invokespecial android/app/Service/onCreate()V
return
.limit locals 1
.limit stack 1
.end method

.method public onDestroy()V
aload 0
invokespecial android/app/Service/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method

.method public onStart(Landroid/content/Intent;I)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
L0:
getstatic cmb/pb/cmbsafe/b/a Ljava/lang/Boolean;
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L3
invokestatic cmb/pb/cmbsafe/b/c()Lcmb/pb/util/CMBKeyboardFunc;
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokestatic cmb/pb/cmbsafe/b/b()Ljava/lang/String;
iconst_0
anewarray java/lang/Class
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
invokestatic cmb/pb/cmbsafe/b/c()Lcmb/pb/util/CMBKeyboardFunc;
iconst_0
anewarray java/lang/Object
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
pop
L1:
return
L3:
invokestatic cmb/pb/cmbsafe/b/a()Lcmb/pb/ui/cmbwidget/CmbEditText;
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokestatic cmb/pb/cmbsafe/b/b()Ljava/lang/String;
iconst_0
anewarray java/lang/Class
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
invokestatic cmb/pb/cmbsafe/b/a()Lcmb/pb/ui/cmbwidget/CmbEditText;
iconst_0
anewarray java/lang/Object
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
pop
L4:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 3
.limit stack 3
.end method
