.bytecode 50.0
.class final synchronized android/support/v4/widget/SearchViewCompatHoneycomb$1
.super java/lang/Object
.implements android/widget/SearchView$OnQueryTextListener
.enclosing method android/support/v4/widget/SearchViewCompatHoneycomb/newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)Ljava/lang/Object;
.inner class static final inner android/support/v4/widget/SearchViewCompatHoneycomb$1

.field final synthetic 'val$listener' Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;

.method <init>(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)V
aload 0
aload 1
putfield android/support/v4/widget/SearchViewCompatHoneycomb$1/val$listener Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
aload 0
getfield android/support/v4/widget/SearchViewCompatHoneycomb$1/val$listener Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;
aload 1
invokeinterface android/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge/onQueryTextChange(Ljava/lang/String;)Z 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
aload 0
getfield android/support/v4/widget/SearchViewCompatHoneycomb$1/val$listener Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;
aload 1
invokeinterface android/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge/onQueryTextSubmit(Ljava/lang/String;)Z 1
ireturn
.limit locals 2
.limit stack 2
.end method
