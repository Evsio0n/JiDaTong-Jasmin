.bytecode 50.0
.class public synchronized android/support/v4/widget/SearchViewCompatIcs$MySearchView
.super android/widget/SearchView
.inner class public static MySearchView inner android/support/v4/widget/SearchViewCompatIcs$MySearchView outer android/support/v4/widget/SearchViewCompatIcs

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/SearchView/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onActionViewCollapsed()V
aload 0
ldc ""
iconst_0
invokevirtual android/support/v4/widget/SearchViewCompatIcs$MySearchView/setQuery(Ljava/lang/CharSequence;Z)V
aload 0
invokespecial android/widget/SearchView/onActionViewCollapsed()V
return
.limit locals 1
.limit stack 3
.end method
