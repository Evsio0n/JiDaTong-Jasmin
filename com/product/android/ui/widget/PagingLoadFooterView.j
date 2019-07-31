.bytecode 50.0
.class public synchronized com/product/android/ui/widget/PagingLoadFooterView
.super android/widget/LinearLayout

.method private <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;I)V
aload 0
aload 1
invokespecial com/product/android/ui/widget/PagingLoadFooterView/<init>(Landroid/content/Context;)V
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
iload 2
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
iconst_1
invokevirtual com/product/android/ui/widget/PagingLoadFooterView/setGravity(I)V
aload 0
aload 1
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
invokevirtual com/product/android/ui/widget/PagingLoadFooterView/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 3
.limit stack 6
.end method
