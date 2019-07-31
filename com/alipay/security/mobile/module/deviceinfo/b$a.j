.bytecode 50.0
.class final synchronized com/alipay/security/mobile/module/deviceinfo/b$a
.super java/lang/Object
.implements java/util/Comparator
.signature "Ljava/lang/Object;Ljava/util/Comparator<Landroid/hardware/Camera$Size;>;"
.inner class private final a inner com/alipay/security/mobile/module/deviceinfo/b$a outer com/alipay/security/mobile/module/deviceinfo/b

.field final synthetic 'a' Lcom/alipay/security/mobile/module/deviceinfo/b;

.method private <init>(Lcom/alipay/security/mobile/module/deviceinfo/b;)V
aload 0
aload 1
putfield com/alipay/security/mobile/module/deviceinfo/b$a/a Lcom/alipay/security/mobile/module/deviceinfo/b;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/alipay/security/mobile/module/deviceinfo/b;B)V
aload 0
aload 1
invokespecial com/alipay/security/mobile/module/deviceinfo/b$a/<init>(Lcom/alipay/security/mobile/module/deviceinfo/b;)V
return
.limit locals 3
.limit stack 2
.end method

.method private static a(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
aload 0
getfield android/hardware/Camera$Size/width I
aload 1
getfield android/hardware/Camera$Size/width I
if_icmpne L0
iconst_0
ireturn
L0:
aload 0
getfield android/hardware/Camera$Size/width I
aload 1
getfield android/hardware/Camera$Size/width I
if_icmple L1
iconst_1
ireturn
L1:
iconst_m1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public final volatile synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
aload 1
checkcast android/hardware/Camera$Size
astore 1
aload 2
checkcast android/hardware/Camera$Size
astore 2
aload 1
getfield android/hardware/Camera$Size/width I
aload 2
getfield android/hardware/Camera$Size/width I
if_icmpne L0
iconst_0
ireturn
L0:
aload 1
getfield android/hardware/Camera$Size/width I
aload 2
getfield android/hardware/Camera$Size/width I
if_icmple L1
iconst_1
ireturn
L1:
iconst_m1
ireturn
.limit locals 3
.limit stack 2
.end method
