.bytecode 50.0
.class public final synchronized com/nd/schoollife/common/utils/ui/ToastUtil
.super java/lang/Object

.field public static 'mToastCustomeView' Ljava/lang/ref/WeakReference; signature "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static initToastLayout(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
aconst_null
astore 2
getstatic com/nd/schoollife/common/utils/ui/ToastUtil/mToastCustomeView Ljava/lang/ref/WeakReference;
ifnull L0
getstatic com/nd/schoollife/common/utils/ui/ToastUtil/mToastCustomeView Ljava/lang/ref/WeakReference;
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
checkcast android/view/View
astore 2
L0:
aload 2
astore 3
aload 2
ifnonnull L1
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/toast_custome_layout I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
new java/lang/ref/WeakReference
dup
aload 3
invokespecial java/lang/ref/WeakReference/<init>(Ljava/lang/Object;)V
putstatic com/nd/schoollife/common/utils/ui/ToastUtil/mToastCustomeView Ljava/lang/ref/WeakReference;
L1:
aload 3
getstatic com/nd/schoollife/R$id/tv_toast I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
new android/widget/Toast
dup
aload 0
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
invokespecial android/widget/Toast/<init>(Landroid/content/Context;)V
astore 0
aload 0
aload 3
invokevirtual android/widget/Toast/setView(Landroid/view/View;)V
aload 0
areturn
.limit locals 4
.limit stack 3
.end method

.method private static showCustomeToast(Landroid/content/Context;Ljava/lang/String;II)V
aload 0
ifnonnull L0
return
L0:
aload 0
aload 1
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/initToastLayout(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
astore 0
aload 0
iload 3
iconst_0
iconst_0
invokevirtual android/widget/Toast/setGravity(III)V
aload 0
iload 2
invokevirtual android/widget/Toast/setDuration(I)V
aload 0
invokevirtual android/widget/Toast/show()V
return
.limit locals 4
.limit stack 4
.end method

.method public static showLongCustomToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
aload 1
iconst_1
bipush 17
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showCustomeToast(Landroid/content/Context;Ljava/lang/String;II)V
return
.limit locals 2
.limit stack 4
.end method

.method public static showLongToast(Landroid/content/Context;I)V
aload 0
ifnonnull L0
return
L0:
aload 0
iload 1
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 2
.limit stack 3
.end method

.method public static showLongToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
ifnonnull L0
return
L0:
aload 0
aload 1
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 2
.limit stack 3
.end method

.method public static showLongToast4Debug(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 0
.end method

.method public static showShortCustomToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
aload 1
iconst_0
bipush 17
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showCustomeToast(Landroid/content/Context;Ljava/lang/String;II)V
return
.limit locals 2
.limit stack 4
.end method

.method public static showShortToast(Landroid/content/Context;I)V
aload 0
ifnonnull L0
return
L0:
aload 0
iload 1
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 2
.limit stack 3
.end method

.method public static showShortToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
ifnonnull L0
return
L0:
aload 0
aload 1
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 2
.limit stack 3
.end method
