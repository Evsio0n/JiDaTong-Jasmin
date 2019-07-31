.bytecode 50.0
.class public synchronized com/nd/android/u/contact/util/ToastUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static customToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/custom_toast I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 2
getstatic com/nd/android/u/contact/R$id/tv_display_content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
new android/widget/Toast
dup
aload 0
invokespecial android/widget/Toast/<init>(Landroid/content/Context;)V
astore 0
aload 0
bipush 17
iconst_0
iconst_0
invokevirtual android/widget/Toast/setGravity(III)V
aload 0
iconst_0
invokevirtual android/widget/Toast/setDuration(I)V
aload 0
aload 2
invokevirtual android/widget/Toast/setView(Landroid/view/View;)V
aload 0
invokevirtual android/widget/Toast/show()V
return
.limit locals 3
.limit stack 4
.end method
