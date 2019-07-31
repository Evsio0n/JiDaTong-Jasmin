.bytecode 50.0
.class synchronized android/support/v4/app/FragmentTabHost$DummyTabFactory
.super java/lang/Object
.implements android/widget/TabHost$TabContentFactory
.inner class static DummyTabFactory inner android/support/v4/app/FragmentTabHost$DummyTabFactory outer android/support/v4/app/FragmentTabHost

.field private final 'mContext' Landroid/content/Context;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield android/support/v4/app/FragmentTabHost$DummyTabFactory/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
new android/view/View
dup
aload 0
getfield android/support/v4/app/FragmentTabHost$DummyTabFactory/mContext Landroid/content/Context;
invokespecial android/view/View/<init>(Landroid/content/Context;)V
astore 1
aload 1
iconst_0
invokevirtual android/view/View/setMinimumWidth(I)V
aload 1
iconst_0
invokevirtual android/view/View/setMinimumHeight(I)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method
