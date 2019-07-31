.bytecode 50.0
.class public synchronized android/support/v4/widget/SearchViewCompat
.super java/lang/Object
.inner class public static abstract OnCloseListenerCompat inner android/support/v4/widget/SearchViewCompat$OnCloseListenerCompat outer android/support/v4/widget/SearchViewCompat
.inner class public static abstract OnQueryTextListenerCompat inner android/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat outer android/support/v4/widget/SearchViewCompat
.inner class static SearchViewCompatHoneycombImpl inner android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl outer android/support/v4/widget/SearchViewCompat
.inner class inner android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1
.inner class inner android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2
.inner class static SearchViewCompatIcsImpl inner android/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl outer android/support/v4/widget/SearchViewCompat
.inner class static abstract interface SearchViewCompatImpl inner android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl outer android/support/v4/widget/SearchViewCompat
.inner class static SearchViewCompatStubImpl inner android/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl outer android/support/v4/widget/SearchViewCompat

.field private static final 'IMPL' Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 14
if_icmplt L0
new android/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl
dup
invokespecial android/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl/<init>()V
putstatic android/support/v4/widget/SearchViewCompat/IMPL Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
return
L0:
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L1
new android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl
dup
invokespecial android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl/<init>()V
putstatic android/support/v4/widget/SearchViewCompat/IMPL Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
return
L1:
new android/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl
dup
invokespecial android/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl/<init>()V
putstatic android/support/v4/widget/SearchViewCompat/IMPL Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method static synthetic access$000()Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
getstatic android/support/v4/widget/SearchViewCompat/IMPL Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getQuery(Landroid/view/View;)Ljava/lang/CharSequence;
getstatic android/support/v4/widget/SearchViewCompat/IMPL Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
aload 0
invokeinterface android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl/getQuery(Landroid/view/View;)Ljava/lang/CharSequence; 1
areturn
.limit locals 1
.limit stack 2
.end method

.method public static isIconified(Landroid/view/View;)Z
getstatic android/support/v4/widget/SearchViewCompat/IMPL Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
aload 0
invokeinterface android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl/isIconified(Landroid/view/View;)Z 1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isQueryRefinementEnabled(Landroid/view/View;)Z
getstatic android/support/v4/widget/SearchViewCompat/IMPL Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
aload 0
invokeinterface android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl/isQueryRefinementEnabled(Landroid/view/View;)Z 1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isSubmitButtonEnabled(Landroid/view/View;)Z
getstatic android/support/v4/widget/SearchViewCompat/IMPL Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
aload 0
invokeinterface android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl/isSubmitButtonEnabled(Landroid/view/View;)Z 1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static newSearchView(Landroid/content/Context;)Landroid/view/View;
getstatic android/support/v4/widget/SearchViewCompat/IMPL Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
aload 0
invokeinterface android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl/newSearchView(Landroid/content/Context;)Landroid/view/View; 1
areturn
.limit locals 1
.limit stack 2
.end method

.method public static setIconified(Landroid/view/View;Z)V
getstatic android/support/v4/widget/SearchViewCompat/IMPL Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
aload 0
iload 1
invokeinterface android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl/setIconified(Landroid/view/View;Z)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public static setImeOptions(Landroid/view/View;I)V
getstatic android/support/v4/widget/SearchViewCompat/IMPL Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
aload 0
iload 1
invokeinterface android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl/setImeOptions(Landroid/view/View;I)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public static setInputType(Landroid/view/View;I)V
getstatic android/support/v4/widget/SearchViewCompat/IMPL Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
aload 0
iload 1
invokeinterface android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl/setInputType(Landroid/view/View;I)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public static setMaxWidth(Landroid/view/View;I)V
getstatic android/support/v4/widget/SearchViewCompat/IMPL Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
aload 0
iload 1
invokeinterface android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl/setMaxWidth(Landroid/view/View;I)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public static setOnCloseListener(Landroid/view/View;Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;)V
getstatic android/support/v4/widget/SearchViewCompat/IMPL Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
aload 0
aload 1
getfield android/support/v4/widget/SearchViewCompat$OnCloseListenerCompat/mListener Ljava/lang/Object;
invokeinterface android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl/setOnCloseListener(Ljava/lang/Object;Ljava/lang/Object;)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public static setOnQueryTextListener(Landroid/view/View;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)V
getstatic android/support/v4/widget/SearchViewCompat/IMPL Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
aload 0
aload 1
getfield android/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat/mListener Ljava/lang/Object;
invokeinterface android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl/setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public static setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V
getstatic android/support/v4/widget/SearchViewCompat/IMPL Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
aload 0
aload 1
iload 2
invokeinterface android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl/setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V 3
return
.limit locals 3
.limit stack 4
.end method

.method public static setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V
getstatic android/support/v4/widget/SearchViewCompat/IMPL Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
aload 0
aload 1
invokeinterface android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl/setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public static setQueryRefinementEnabled(Landroid/view/View;Z)V
getstatic android/support/v4/widget/SearchViewCompat/IMPL Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
aload 0
iload 1
invokeinterface android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl/setQueryRefinementEnabled(Landroid/view/View;Z)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public static setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V
getstatic android/support/v4/widget/SearchViewCompat/IMPL Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
aload 0
aload 1
invokeinterface android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl/setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public static setSubmitButtonEnabled(Landroid/view/View;Z)V
getstatic android/support/v4/widget/SearchViewCompat/IMPL Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
aload 0
iload 1
invokeinterface android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl/setSubmitButtonEnabled(Landroid/view/View;Z)V 2
return
.limit locals 2
.limit stack 3
.end method
