.bytecode 50.0
.class final synchronized android/support/v4/widget/SearchViewCompatHoneycomb$2
.super java/lang/Object
.implements android/widget/SearchView$OnCloseListener
.enclosing method android/support/v4/widget/SearchViewCompatHoneycomb/newOnCloseListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)Ljava/lang/Object;
.inner class static final inner android/support/v4/widget/SearchViewCompatHoneycomb$2

.field final synthetic 'val$listener' Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;

.method <init>(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)V
aload 0
aload 1
putfield android/support/v4/widget/SearchViewCompatHoneycomb$2/val$listener Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClose()Z
aload 0
getfield android/support/v4/widget/SearchViewCompatHoneycomb$2/val$listener Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;
invokeinterface android/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge/onClose()Z 0
ireturn
.limit locals 1
.limit stack 1
.end method
