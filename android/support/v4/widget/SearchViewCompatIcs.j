.bytecode 50.0
.class synchronized android/support/v4/widget/SearchViewCompatIcs
.super java/lang/Object
.inner class public static MySearchView inner android/support/v4/widget/SearchViewCompatIcs$MySearchView outer android/support/v4/widget/SearchViewCompatIcs

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static newSearchView(Landroid/content/Context;)Landroid/view/View;
new android/support/v4/widget/SearchViewCompatIcs$MySearchView
dup
aload 0
invokespecial android/support/v4/widget/SearchViewCompatIcs$MySearchView/<init>(Landroid/content/Context;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public static setImeOptions(Landroid/view/View;I)V
aload 0
checkcast android/widget/SearchView
iload 1
invokevirtual android/widget/SearchView/setImeOptions(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public static setInputType(Landroid/view/View;I)V
aload 0
checkcast android/widget/SearchView
iload 1
invokevirtual android/widget/SearchView/setInputType(I)V
return
.limit locals 2
.limit stack 2
.end method
