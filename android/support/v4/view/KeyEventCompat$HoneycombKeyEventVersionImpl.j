.bytecode 50.0
.class synchronized android/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl
.super java/lang/Object
.implements android/support/v4/view/KeyEventCompat$KeyEventVersionImpl
.inner class static HoneycombKeyEventVersionImpl inner android/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl outer android/support/v4/view/KeyEventCompat

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public metaStateHasModifiers(II)Z
iload 1
iload 2
invokestatic android/support/v4/view/KeyEventCompatHoneycomb/metaStateHasModifiers(II)Z
ireturn
.limit locals 3
.limit stack 2
.end method

.method public metaStateHasNoModifiers(I)Z
iload 1
invokestatic android/support/v4/view/KeyEventCompatHoneycomb/metaStateHasNoModifiers(I)Z
ireturn
.limit locals 2
.limit stack 1
.end method

.method public normalizeMetaState(I)I
iload 1
invokestatic android/support/v4/view/KeyEventCompatHoneycomb/normalizeMetaState(I)I
ireturn
.limit locals 2
.limit stack 1
.end method
