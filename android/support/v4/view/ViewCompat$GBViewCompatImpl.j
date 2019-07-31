.bytecode 50.0
.class synchronized android/support/v4/view/ViewCompat$GBViewCompatImpl
.super android/support/v4/view/ViewCompat$BaseViewCompatImpl
.inner class static GBViewCompatImpl inner android/support/v4/view/ViewCompat$GBViewCompatImpl outer android/support/v4/view/ViewCompat

.method <init>()V
aload 0
invokespecial android/support/v4/view/ViewCompat$BaseViewCompatImpl/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getOverScrollMode(Landroid/view/View;)I
aload 1
invokestatic android/support/v4/view/ViewCompatGingerbread/getOverScrollMode(Landroid/view/View;)I
ireturn
.limit locals 2
.limit stack 1
.end method

.method public setOverScrollMode(Landroid/view/View;I)V
aload 1
iload 2
invokestatic android/support/v4/view/ViewCompatGingerbread/setOverScrollMode(Landroid/view/View;I)V
return
.limit locals 3
.limit stack 2
.end method
