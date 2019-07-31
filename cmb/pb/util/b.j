.bytecode 50.0
.class synchronized cmb/pb/util/b
.super android/os/Handler

.field final synthetic 'a' Lcmb/pb/util/CMBKeyboardFunc;

.method <init>(Lcmb/pb/util/CMBKeyboardFunc;)V
aload 0
aload 1
putfield cmb/pb/util/b/a Lcmb/pb/util/CMBKeyboardFunc;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic a(Lcmb/pb/util/b;)Lcmb/pb/util/CMBKeyboardFunc;
aload 0
getfield cmb/pb/util/b/a Lcmb/pb/util/CMBKeyboardFunc;
areturn
.limit locals 1
.limit stack 1
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
getfield cmb/pb/util/b/a Lcmb/pb/util/CMBKeyboardFunc;
new cmb/pb/util/c
dup
aload 0
invokespecial cmb/pb/util/c/<init>(Lcmb/pb/util/b;)V
invokestatic cmb/pb/util/CMBKeyboardFunc/a(Lcmb/pb/util/CMBKeyboardFunc;Lcmb/pb/ui/g;)V
aload 0
getfield cmb/pb/util/b/a Lcmb/pb/util/CMBKeyboardFunc;
invokestatic cmb/pb/util/CMBKeyboardFunc/h(Lcmb/pb/util/CMBKeyboardFunc;)Lcmb/pb/ui/g;
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Lcmb/pb/ui/g;)V
aload 0
getfield cmb/pb/util/b/a Lcmb/pb/util/CMBKeyboardFunc;
new cmb/pb/util/f
dup
aload 0
getfield cmb/pb/util/b/a Lcmb/pb/util/CMBKeyboardFunc;
invokespecial cmb/pb/util/f/<init>(Lcmb/pb/util/CMBKeyboardFunc;)V
invokestatic cmb/pb/util/CMBKeyboardFunc/a(Lcmb/pb/util/CMBKeyboardFunc;Lcmb/pb/util/f;)V
aload 0
getfield cmb/pb/util/b/a Lcmb/pb/util/CMBKeyboardFunc;
invokestatic cmb/pb/util/CMBKeyboardFunc/i(Lcmb/pb/util/CMBKeyboardFunc;)Lcmb/pb/util/f;
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Landroid/os/Handler;)V
iconst_1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
putstatic cmb/pb/cmbsafe/b/a Ljava/lang/Boolean;
aload 0
getfield cmb/pb/util/b/a Lcmb/pb/util/CMBKeyboardFunc;
invokestatic cmb/pb/cmbsafe/b/a(Lcmb/pb/util/CMBKeyboardFunc;)V
ldc "callKeyBoardActivity"
invokestatic cmb/pb/cmbsafe/b/a(Ljava/lang/String;)V
aload 0
getfield cmb/pb/util/b/a Lcmb/pb/util/CMBKeyboardFunc;
invokestatic cmb/pb/util/CMBKeyboardFunc/j(Lcmb/pb/util/CMBKeyboardFunc;)Landroid/app/Activity;
new android/content/Intent
dup
aload 0
getfield cmb/pb/util/b/a Lcmb/pb/util/CMBKeyboardFunc;
invokestatic cmb/pb/util/CMBKeyboardFunc/j(Lcmb/pb/util/CMBKeyboardFunc;)Landroid/app/Activity;
ldc cmb/pb/cmbsafe/CmbService
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual android/app/Activity/startService(Landroid/content/Intent;)Landroid/content/ComponentName;
pop
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
return
.limit locals 2
.limit stack 5
.end method
