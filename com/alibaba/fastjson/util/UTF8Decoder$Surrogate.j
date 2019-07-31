.bytecode 50.0
.class synchronized com/alibaba/fastjson/util/UTF8Decoder$Surrogate
.super java/lang/Object
.inner class private static Surrogate inner com/alibaba/fastjson/util/UTF8Decoder$Surrogate outer com/alibaba/fastjson/util/UTF8Decoder

.field static final synthetic '$assertionsDisabled' Z

.field public static final 'UCS4_MAX' I = 1114111


.field public static final 'UCS4_MIN' I = 65536


.method static <clinit>()V
ldc com/alibaba/fastjson/util/UTF8Decoder
invokevirtual java/lang/Class/desiredAssertionStatus()Z
ifne L0
iconst_1
istore 0
L1:
iload 0
putstatic com/alibaba/fastjson/util/UTF8Decoder$Surrogate/$assertionsDisabled Z
return
L0:
iconst_0
istore 0
goto L1
.limit locals 1
.limit stack 1
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static high(I)C
getstatic com/alibaba/fastjson/util/UTF8Decoder$Surrogate/$assertionsDisabled Z
ifne L0
iload 0
invokestatic com/alibaba/fastjson/util/UTF8Decoder$Surrogate/neededFor(I)Z
ifne L0
new java/lang/AssertionError
dup
invokespecial java/lang/AssertionError/<init>()V
athrow
L0:
ldc_w 55296
iload 0
ldc_w 65536
isub
bipush 10
ishr
sipush 1023
iand
ior
i2c
ireturn
.limit locals 1
.limit stack 3
.end method

.method public static low(I)C
getstatic com/alibaba/fastjson/util/UTF8Decoder$Surrogate/$assertionsDisabled Z
ifne L0
iload 0
invokestatic com/alibaba/fastjson/util/UTF8Decoder$Surrogate/neededFor(I)Z
ifne L0
new java/lang/AssertionError
dup
invokespecial java/lang/AssertionError/<init>()V
athrow
L0:
ldc_w 56320
iload 0
ldc_w 65536
isub
sipush 1023
iand
ior
i2c
ireturn
.limit locals 1
.limit stack 3
.end method

.method public static neededFor(I)Z
iload 0
ldc_w 65536
if_icmplt L0
iload 0
ldc_w 1114111
if_icmpgt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method
