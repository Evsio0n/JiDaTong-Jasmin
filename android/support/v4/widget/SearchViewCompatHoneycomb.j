.bytecode 50.0
.class synchronized android/support/v4/widget/SearchViewCompatHoneycomb
.super java/lang/Object
.inner class static final inner android/support/v4/widget/SearchViewCompatHoneycomb$1
.inner class static final inner android/support/v4/widget/SearchViewCompatHoneycomb$2
.inner class static abstract interface OnCloseListenerCompatBridge inner android/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge outer android/support/v4/widget/SearchViewCompatHoneycomb
.inner class static abstract interface OnQueryTextListenerCompatBridge inner android/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge outer android/support/v4/widget/SearchViewCompatHoneycomb

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getQuery(Landroid/view/View;)Ljava/lang/CharSequence;
aload 0
checkcast android/widget/SearchView
invokevirtual android/widget/SearchView/getQuery()Ljava/lang/CharSequence;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static isIconified(Landroid/view/View;)Z
aload 0
checkcast android/widget/SearchView
invokevirtual android/widget/SearchView/isIconified()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static isQueryRefinementEnabled(Landroid/view/View;)Z
aload 0
checkcast android/widget/SearchView
invokevirtual android/widget/SearchView/isQueryRefinementEnabled()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static isSubmitButtonEnabled(Landroid/view/View;)Z
aload 0
checkcast android/widget/SearchView
invokevirtual android/widget/SearchView/isSubmitButtonEnabled()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static newOnCloseListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)Ljava/lang/Object;
new android/support/v4/widget/SearchViewCompatHoneycomb$2
dup
aload 0
invokespecial android/support/v4/widget/SearchViewCompatHoneycomb$2/<init>(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public static newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)Ljava/lang/Object;
new android/support/v4/widget/SearchViewCompatHoneycomb$1
dup
aload 0
invokespecial android/support/v4/widget/SearchViewCompatHoneycomb$1/<init>(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public static newSearchView(Landroid/content/Context;)Landroid/view/View;
new android/widget/SearchView
dup
aload 0
invokespecial android/widget/SearchView/<init>(Landroid/content/Context;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public static setIconified(Landroid/view/View;Z)V
aload 0
checkcast android/widget/SearchView
iload 1
invokevirtual android/widget/SearchView/setIconified(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public static setMaxWidth(Landroid/view/View;I)V
aload 0
checkcast android/widget/SearchView
iload 1
invokevirtual android/widget/SearchView/setMaxWidth(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public static setOnCloseListener(Ljava/lang/Object;Ljava/lang/Object;)V
aload 0
checkcast android/widget/SearchView
aload 1
checkcast android/widget/SearchView$OnCloseListener
invokevirtual android/widget/SearchView/setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V
aload 0
checkcast android/widget/SearchView
aload 1
checkcast android/widget/SearchView$OnQueryTextListener
invokevirtual android/widget/SearchView/setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V
aload 0
checkcast android/widget/SearchView
aload 1
iload 2
invokevirtual android/widget/SearchView/setQuery(Ljava/lang/CharSequence;Z)V
return
.limit locals 3
.limit stack 3
.end method

.method public static setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V
aload 0
checkcast android/widget/SearchView
aload 1
invokevirtual android/widget/SearchView/setQueryHint(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static setQueryRefinementEnabled(Landroid/view/View;Z)V
aload 0
checkcast android/widget/SearchView
iload 1
invokevirtual android/widget/SearchView/setQueryRefinementEnabled(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public static setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V
aload 0
checkcast android/widget/SearchView
astore 0
aload 0
aload 0
invokevirtual android/widget/SearchView/getContext()Landroid/content/Context;
ldc "search"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/app/SearchManager
aload 1
invokevirtual android/app/SearchManager/getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
invokevirtual android/widget/SearchView/setSearchableInfo(Landroid/app/SearchableInfo;)V
return
.limit locals 2
.limit stack 3
.end method

.method public static setSubmitButtonEnabled(Landroid/view/View;Z)V
aload 0
checkcast android/widget/SearchView
iload 1
invokevirtual android/widget/SearchView/setSubmitButtonEnabled(Z)V
return
.limit locals 2
.limit stack 2
.end method
