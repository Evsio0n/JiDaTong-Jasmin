.bytecode 50.0
.class synchronized android/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl
.super android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl
.inner class static SearchViewCompatIcsImpl inner android/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl outer android/support/v4/widget/SearchViewCompat

.method <init>()V
aload 0
invokespecial android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public newSearchView(Landroid/content/Context;)Landroid/view/View;
aload 1
invokestatic android/support/v4/widget/SearchViewCompatIcs/newSearchView(Landroid/content/Context;)Landroid/view/View;
areturn
.limit locals 2
.limit stack 1
.end method

.method public setImeOptions(Landroid/view/View;I)V
aload 1
iload 2
invokestatic android/support/v4/widget/SearchViewCompatIcs/setImeOptions(Landroid/view/View;I)V
return
.limit locals 3
.limit stack 2
.end method

.method public setInputType(Landroid/view/View;I)V
aload 1
iload 2
invokestatic android/support/v4/widget/SearchViewCompatIcs/setInputType(Landroid/view/View;I)V
return
.limit locals 3
.limit stack 2
.end method
