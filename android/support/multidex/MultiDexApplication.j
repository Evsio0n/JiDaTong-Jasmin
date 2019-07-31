.bytecode 50.0
.class public synchronized android/support/multidex/MultiDexApplication
.super android/app/Application

.method public <init>()V
aload 0
invokespecial android/app/Application/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/app/Application/attachBaseContext(Landroid/content/Context;)V
aload 0
invokestatic android/support/multidex/MultiDex/install(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method
