.bytecode 50.0
.class synchronized android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl
.super android/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl
.inner class static SearchViewCompatHoneycombImpl inner android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl outer android/support/v4/widget/SearchViewCompat
.inner class inner android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1
.inner class inner android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2

.method <init>()V
aload 0
invokespecial android/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getQuery(Landroid/view/View;)Ljava/lang/CharSequence;
aload 1
invokestatic android/support/v4/widget/SearchViewCompatHoneycomb/getQuery(Landroid/view/View;)Ljava/lang/CharSequence;
areturn
.limit locals 2
.limit stack 1
.end method

.method public isIconified(Landroid/view/View;)Z
aload 1
invokestatic android/support/v4/widget/SearchViewCompatHoneycomb/isIconified(Landroid/view/View;)Z
ireturn
.limit locals 2
.limit stack 1
.end method

.method public isQueryRefinementEnabled(Landroid/view/View;)Z
aload 1
invokestatic android/support/v4/widget/SearchViewCompatHoneycomb/isQueryRefinementEnabled(Landroid/view/View;)Z
ireturn
.limit locals 2
.limit stack 1
.end method

.method public isSubmitButtonEnabled(Landroid/view/View;)Z
aload 1
invokestatic android/support/v4/widget/SearchViewCompatHoneycomb/isSubmitButtonEnabled(Landroid/view/View;)Z
ireturn
.limit locals 2
.limit stack 1
.end method

.method public newOnCloseListener(Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;)Ljava/lang/Object;
new android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2
dup
aload 0
aload 1
invokespecial android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2/<init>(Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;)V
invokestatic android/support/v4/widget/SearchViewCompatHoneycomb/newOnCloseListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 4
.end method

.method public newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)Ljava/lang/Object;
new android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1
dup
aload 0
aload 1
invokespecial android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1/<init>(Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)V
invokestatic android/support/v4/widget/SearchViewCompatHoneycomb/newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 4
.end method

.method public newSearchView(Landroid/content/Context;)Landroid/view/View;
aload 1
invokestatic android/support/v4/widget/SearchViewCompatHoneycomb/newSearchView(Landroid/content/Context;)Landroid/view/View;
areturn
.limit locals 2
.limit stack 1
.end method

.method public setIconified(Landroid/view/View;Z)V
aload 1
iload 2
invokestatic android/support/v4/widget/SearchViewCompatHoneycomb/setIconified(Landroid/view/View;Z)V
return
.limit locals 3
.limit stack 2
.end method

.method public setMaxWidth(Landroid/view/View;I)V
aload 1
iload 2
invokestatic android/support/v4/widget/SearchViewCompatHoneycomb/setMaxWidth(Landroid/view/View;I)V
return
.limit locals 3
.limit stack 2
.end method

.method public setOnCloseListener(Ljava/lang/Object;Ljava/lang/Object;)V
aload 1
aload 2
invokestatic android/support/v4/widget/SearchViewCompatHoneycomb/setOnCloseListener(Ljava/lang/Object;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 2
.end method

.method public setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V
aload 1
aload 2
invokestatic android/support/v4/widget/SearchViewCompatHoneycomb/setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 2
.end method

.method public setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V
aload 1
aload 2
iload 3
invokestatic android/support/v4/widget/SearchViewCompatHoneycomb/setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V
return
.limit locals 4
.limit stack 3
.end method

.method public setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V
aload 1
aload 2
invokestatic android/support/v4/widget/SearchViewCompatHoneycomb/setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 2
.end method

.method public setQueryRefinementEnabled(Landroid/view/View;Z)V
aload 1
iload 2
invokestatic android/support/v4/widget/SearchViewCompatHoneycomb/setQueryRefinementEnabled(Landroid/view/View;Z)V
return
.limit locals 3
.limit stack 2
.end method

.method public setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V
aload 1
aload 2
invokestatic android/support/v4/widget/SearchViewCompatHoneycomb/setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V
return
.limit locals 3
.limit stack 2
.end method

.method public setSubmitButtonEnabled(Landroid/view/View;Z)V
aload 1
iload 2
invokestatic android/support/v4/widget/SearchViewCompatHoneycomb/setSubmitButtonEnabled(Landroid/view/View;Z)V
return
.limit locals 3
.limit stack 2
.end method
