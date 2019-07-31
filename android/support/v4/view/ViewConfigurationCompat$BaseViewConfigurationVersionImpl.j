.bytecode 50.0
.class synchronized android/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl
.super java/lang/Object
.implements android/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl
.inner class static BaseViewConfigurationVersionImpl inner android/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl outer android/support/v4/view/ViewConfigurationCompat

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
aload 1
invokevirtual android/view/ViewConfiguration/getScaledTouchSlop()I
ireturn
.limit locals 2
.limit stack 1
.end method
