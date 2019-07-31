.bytecode 50.0
.class public synchronized cmb/pb/util/i
.super java/lang/Object

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 2
aload 1
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
ireturn
.limit locals 3
.limit stack 4
.end method

.method public static a(Landroid/content/Context;)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
ldc "string"
ldc "cmbkb_publickey"
invokestatic cmb/pb/util/i/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
istore 1
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 0
ldc "pK"
aload 0
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
invokestatic cmb/pb/util/h/a(Ljava/lang/String;)V
L1:
return
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 3
.end method
