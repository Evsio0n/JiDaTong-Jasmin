.bytecode 50.0
.class final synchronized com/flurry/android/ad
.super java/lang/Object
.implements android/view/View$OnFocusChangeListener

.field private synthetic 'a' Landroid/widget/TextView;

.field private synthetic 'b' Lcom/flurry/android/ac;

.method <init>(Lcom/flurry/android/ac;Landroid/widget/TextView;)V
aload 0
aload 1
putfield com/flurry/android/ad/b Lcom/flurry/android/ac;
aload 0
aload 2
putfield com/flurry/android/ad/a Landroid/widget/TextView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
iload 2
ifeq L0
aload 0
getfield com/flurry/android/ad/b Lcom/flurry/android/ac;
invokestatic com/flurry/android/ac/a(Lcom/flurry/android/ac;)Landroid/text/SpannedString;
astore 1
L1:
aload 0
getfield com/flurry/android/ad/a Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/flurry/android/ad/b Lcom/flurry/android/ac;
invokestatic com/flurry/android/ac/b(Lcom/flurry/android/ac;)Landroid/text/SpannedString;
astore 1
goto L1
.limit locals 3
.limit stack 2
.end method
