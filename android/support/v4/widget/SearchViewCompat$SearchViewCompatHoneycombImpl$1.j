.bytecode 50.0
.class synchronized android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1
.super java/lang/Object
.implements android/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge
.enclosing method android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl/newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)Ljava/lang/Object;
.inner class static SearchViewCompatHoneycombImpl inner android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl outer android/support/v4/widget/SearchViewCompat
.inner class inner android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1

.field final synthetic 'this$0' Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;

.field final synthetic 'val$listener' Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

.method <init>(Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)V
aload 0
aload 1
putfield android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1/this$0 Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;
aload 0
aload 2
putfield android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1/val$listener Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
aload 0
getfield android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1/val$listener Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;
aload 1
invokevirtual android/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat/onQueryTextChange(Ljava/lang/String;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
aload 0
getfield android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1/val$listener Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;
aload 1
invokevirtual android/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat/onQueryTextSubmit(Ljava/lang/String;)Z
ireturn
.limit locals 2
.limit stack 2
.end method
