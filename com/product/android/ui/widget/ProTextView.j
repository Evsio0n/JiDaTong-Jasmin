.bytecode 50.0
.class public synchronized com/product/android/ui/widget/ProTextView
.super android/widget/TextView
.inner class public static LocalLinkMovementMethod inner com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod outer com/product/android/ui/widget/ProTextView

.field 'dontConsumeNonUrlClicks' Z

.field 'linkHit' Z

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
aload 0
iconst_1
putfield com/product/android/ui/widget/ProTextView/dontConsumeNonUrlClicks Z
aload 0
iconst_0
putfield com/product/android/ui/widget/ProTextView/linkHit Z
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/TextView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_1
putfield com/product/android/ui/widget/ProTextView/dontConsumeNonUrlClicks Z
aload 0
iconst_0
putfield com/product/android/ui/widget/ProTextView/linkHit Z
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/TextView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
iconst_1
putfield com/product/android/ui/widget/ProTextView/dontConsumeNonUrlClicks Z
aload 0
iconst_0
putfield com/product/android/ui/widget/ProTextView/linkHit Z
return
.limit locals 4
.limit stack 4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
iconst_0
istore 2
aload 0
iconst_0
putfield com/product/android/ui/widget/ProTextView/linkHit Z
aload 0
invokevirtual com/product/android/ui/widget/ProTextView/getLayout()Landroid/text/Layout;
ifnonnull L0
aload 0
invokevirtual com/product/android/ui/widget/ProTextView/getText()Ljava/lang/CharSequence;
instanceof android/text/Spannable
ifeq L0
invokestatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/getInstance()Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
astore 3
aload 0
invokevirtual com/product/android/ui/widget/ProTextView/getText()Ljava/lang/CharSequence;
checkcast android/text/Spannable
astore 4
aload 1
invokevirtual android/view/MotionEvent/getAction()I
iconst_1
if_icmpne L1
iconst_1
istore 2
L1:
aload 3
aload 0
aload 4
iload 2
invokevirtual com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/cleanSelectSpan(Landroid/widget/TextView;Landroid/text/Spannable;Z)V
aload 0
iconst_1
putfield com/product/android/ui/widget/ProTextView/linkHit Z
L0:
aload 0
aload 1
invokespecial android/widget/TextView/onTouchEvent(Landroid/view/MotionEvent;)Z
istore 2
aload 0
getfield com/product/android/ui/widget/ProTextView/dontConsumeNonUrlClicks Z
ifeq L2
aload 0
getfield com/product/android/ui/widget/ProTextView/linkHit Z
istore 2
L2:
iload 2
ireturn
.limit locals 5
.limit stack 4
.end method

.method public performLongClick()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setTextViewHTML(Ljava/lang/String;)V
aload 0
new android/text/SpannableStringBuilder
dup
aload 1
invokestatic android/text/Html/fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
invokespecial android/text/SpannableStringBuilder/<init>(Ljava/lang/CharSequence;)V
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 4
.end method
