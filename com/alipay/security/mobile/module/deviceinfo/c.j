.bytecode 50.0
.class final synchronized com/alipay/security/mobile/module/deviceinfo/c
.super java/lang/Object
.implements java/io/FileFilter

.field final synthetic 'a' Lcom/alipay/security/mobile/module/deviceinfo/b;

.method <init>(Lcom/alipay/security/mobile/module/deviceinfo/b;)V
aload 0
aload 1
putfield com/alipay/security/mobile/module/deviceinfo/c/a Lcom/alipay/security/mobile/module/deviceinfo/b;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final accept(Ljava/io/File;)Z
ldc "cpu[0-9]+"
aload 1
invokevirtual java/io/File/getName()Ljava/lang/String;
invokestatic java/util/regex/Pattern/matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method
