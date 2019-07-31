.bytecode 50.0
.class synchronized android/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl
.super java/lang/Object
.implements android/support/v4/view/MenuItemCompat$MenuVersionImpl
.inner class static HoneycombMenuVersionImpl inner android/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl outer android/support/v4/view/MenuItemCompat

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
aload 1
aload 2
invokestatic android/support/v4/view/MenuItemCompatHoneycomb/setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
areturn
.limit locals 3
.limit stack 2
.end method

.method public setShowAsAction(Landroid/view/MenuItem;I)Z
aload 1
iload 2
invokestatic android/support/v4/view/MenuItemCompatHoneycomb/setShowAsAction(Landroid/view/MenuItem;I)V
iconst_1
ireturn
.limit locals 3
.limit stack 2
.end method
