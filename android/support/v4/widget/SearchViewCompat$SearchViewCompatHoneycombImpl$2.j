.bytecode 50.0
.class synchronized android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2
.super java/lang/Object
.implements android/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge
.enclosing method android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl/newOnCloseListener(Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;)Ljava/lang/Object;
.inner class static SearchViewCompatHoneycombImpl inner android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl outer android/support/v4/widget/SearchViewCompat
.inner class inner android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2

.field final synthetic 'this$0' Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;

.field final synthetic 'val$listener' Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;

.method <init>(Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;)V
aload 0
aload 1
putfield android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2/this$0 Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;
aload 0
aload 2
putfield android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2/val$listener Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClose()Z
aload 0
getfield android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2/val$listener Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;
invokevirtual android/support/v4/widget/SearchViewCompat$OnCloseListenerCompat/onClose()Z
ireturn
.limit locals 1
.limit stack 1
.end method
