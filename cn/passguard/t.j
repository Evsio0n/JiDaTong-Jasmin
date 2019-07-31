.bytecode 50.0
.class final synchronized cn/passguard/t
.super java/lang/Object
.implements java/lang/Runnable

.field private synthetic 'a' Lcn/passguard/s;

.method <init>(Lcn/passguard/s;)V
aload 0
aload 1
putfield cn/passguard/t/a Lcn/passguard/s;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final run()V
aload 0
getfield cn/passguard/t/a Lcn/passguard/s;
invokestatic cn/passguard/s/a(Lcn/passguard/s;)Lcn/passguard/r;
invokestatic cn/passguard/r/a(Lcn/passguard/r;)Lcn/passguard/k;
getstatic cn/passguard/y/b Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L0
aload 0
getfield cn/passguard/t/a Lcn/passguard/s;
invokestatic cn/passguard/s/a(Lcn/passguard/s;)Lcn/passguard/r;
invokestatic cn/passguard/r/a(Lcn/passguard/r;)Lcn/passguard/k;
invokestatic cn/passguard/k/a(Lcn/passguard/k;)V
L0:
aload 0
getfield cn/passguard/t/a Lcn/passguard/s;
invokestatic cn/passguard/s/a(Lcn/passguard/s;)Lcn/passguard/r;
invokestatic cn/passguard/r/a(Lcn/passguard/r;)Lcn/passguard/k;
invokestatic cn/passguard/k/l(Lcn/passguard/k;)Landroid/content/Context;
ldc "audio"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/media/AudioManager
iconst_5
ldc_w 0.5F
invokevirtual android/media/AudioManager/playSoundEffect(IF)V
aload 0
getfield cn/passguard/t/a Lcn/passguard/s;
invokestatic cn/passguard/s/a(Lcn/passguard/s;)Lcn/passguard/r;
invokestatic cn/passguard/r/a(Lcn/passguard/r;)Lcn/passguard/k;
invokestatic cn/passguard/k/b(Lcn/passguard/k;)Lcn/passguard/f;
invokeinterface cn/passguard/f/b()V 0
return
.limit locals 1
.limit stack 3
.end method
