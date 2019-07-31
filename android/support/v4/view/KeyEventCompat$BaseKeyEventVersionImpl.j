.bytecode 50.0
.class synchronized android/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl
.super java/lang/Object
.implements android/support/v4/view/KeyEventCompat$KeyEventVersionImpl
.inner class static BaseKeyEventVersionImpl inner android/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl outer android/support/v4/view/KeyEventCompat

.field private static final 'META_ALL_MASK' I = 247


.field private static final 'META_MODIFIER_MASK' I = 247


.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static metaStateFilterDirectionalModifiers(IIIII)I
iconst_1
istore 6
iload 1
iload 2
iand
ifeq L0
iconst_1
istore 5
L1:
iload 3
iload 4
ior
istore 3
iload 1
iload 3
iand
ifeq L2
iload 6
istore 1
L3:
iload 5
ifeq L4
iload 1
ifeq L5
new java/lang/IllegalArgumentException
dup
ldc "bad arguments"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
iconst_0
istore 5
goto L1
L2:
iconst_0
istore 1
goto L3
L5:
iload 0
iload 3
iconst_m1
ixor
iand
istore 3
L6:
iload 3
ireturn
L4:
iload 0
istore 3
iload 1
ifeq L6
iload 0
iload 2
iconst_m1
ixor
iand
ireturn
.limit locals 7
.limit stack 3
.end method

.method public metaStateHasModifiers(II)Z
aload 0
iload 1
invokevirtual android/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl/normalizeMetaState(I)I
sipush 247
iand
iload 2
iconst_1
bipush 64
sipush 128
invokestatic android/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl/metaStateFilterDirectionalModifiers(IIIII)I
iload 2
iconst_2
bipush 16
bipush 32
invokestatic android/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl/metaStateFilterDirectionalModifiers(IIIII)I
iload 2
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 5
.end method

.method public metaStateHasNoModifiers(I)Z
aload 0
iload 1
invokevirtual android/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl/normalizeMetaState(I)I
sipush 247
iand
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public normalizeMetaState(I)I
iload 1
istore 2
iload 1
sipush 192
iand
ifeq L0
iload 1
iconst_1
ior
istore 2
L0:
iload 2
istore 1
iload 2
bipush 48
iand
ifeq L1
iload 2
iconst_2
ior
istore 1
L1:
iload 1
sipush 247
iand
ireturn
.limit locals 3
.limit stack 2
.end method
