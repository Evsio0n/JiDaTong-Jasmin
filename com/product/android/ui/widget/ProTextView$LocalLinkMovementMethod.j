.bytecode 50.0
.class public synchronized com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod
.super android/text/method/LinkMovementMethod
.inner class public static LocalLinkMovementMethod inner com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod outer com/product/android/ui/widget/ProTextView

.field static 'sInstance' Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;

.field private 'mSelectClickSpan' Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline;

.field private 'mSelectImageSpan' Lcom/product/android/utils/ContentUtils$UrlImageSpan;

.method public <init>()V
aload 0
invokespecial android/text/method/LinkMovementMethod/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getInstance()Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
getstatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/sInstance Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
ifnonnull L0
new com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod
dup
invokespecial com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/<init>()V
putstatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/sInstance Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
L0:
getstatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/sInstance Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
areturn
.limit locals 0
.limit stack 2
.end method

.method public cleanSelectSpan(Landroid/widget/TextView;Landroid/text/Spannable;Z)V
aload 0
getfield com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/mSelectImageSpan Lcom/product/android/utils/ContentUtils$UrlImageSpan;
ifnull L0
aload 1
aload 0
getfield com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/mSelectImageSpan Lcom/product/android/utils/ContentUtils$UrlImageSpan;
aload 2
iconst_0
aconst_null
invokestatic com/product/android/utils/ContentUtils/setUrlImageSpan(Landroid/widget/TextView;Lcom/product/android/utils/ContentUtils$UrlImageSpan;Landroid/text/Spannable;ZLjava/lang/String;)Lcom/product/android/utils/ContentUtils$UrlImageSpan;
pop
aload 0
aconst_null
putfield com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/mSelectImageSpan Lcom/product/android/utils/ContentUtils$UrlImageSpan;
L0:
iload 3
ifeq L1
aload 0
getfield com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/mSelectClickSpan Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline;
ifnull L1
aload 0
getfield com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/mSelectClickSpan Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline;
aload 1
invokevirtual com/product/android/utils/ContentUtils$URLSpanNoUnderline/onClick(Landroid/view/View;)V
L1:
aload 0
aconst_null
putfield com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/mSelectClickSpan Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline;
return
.limit locals 4
.limit stack 5
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
.catch java/lang/NullPointerException from L0 to L1 using L2
.catch java/lang/NullPointerException from L3 to L4 using L2
.catch java/lang/NullPointerException from L5 to L6 using L2
.catch java/lang/NullPointerException from L7 to L8 using L2
.catch java/lang/NullPointerException from L8 to L9 using L2
.catch java/lang/NullPointerException from L10 to L11 using L2
.catch java/lang/NullPointerException from L12 to L13 using L2
.catch java/lang/NullPointerException from L13 to L14 using L2
.catch java/lang/NullPointerException from L14 to L15 using L2
.catch java/lang/NullPointerException from L16 to L17 using L2
.catch java/lang/NullPointerException from L17 to L18 using L2
.catch java/lang/NullPointerException from L19 to L20 using L2
.catch java/lang/NullPointerException from L21 to L22 using L2
.catch java/lang/NullPointerException from L23 to L24 using L2
.catch java/lang/NullPointerException from L25 to L26 using L2
.catch java/lang/NullPointerException from L26 to L27 using L2
L0:
aload 3
invokevirtual android/view/MotionEvent/getAction()I
istore 4
L1:
iload 4
ifeq L3
iload 4
iconst_2
if_icmpne L28
L3:
aload 3
invokevirtual android/view/MotionEvent/getX()F
f2i
istore 5
aload 3
invokevirtual android/view/MotionEvent/getY()F
f2i
istore 6
aload 1
invokevirtual android/widget/TextView/getTotalPaddingLeft()I
istore 7
aload 1
invokevirtual android/widget/TextView/getTotalPaddingTop()I
istore 8
aload 1
invokevirtual android/widget/TextView/getScrollX()I
istore 9
aload 1
invokevirtual android/widget/TextView/getScrollY()I
istore 10
aload 1
invokevirtual android/widget/TextView/getLayout()Landroid/text/Layout;
astore 12
aload 12
aload 12
iload 6
iload 8
isub
iload 10
iadd
invokevirtual android/text/Layout/getLineForVertical(I)I
iload 5
iload 7
isub
iload 9
iadd
i2f
invokevirtual android/text/Layout/getOffsetForHorizontal(IF)I
istore 5
aload 2
iload 5
iload 5
ldc com/product/android/utils/ContentUtils$URLSpanNoUnderline
invokeinterface android/text/Spannable/getSpans(IILjava/lang/Class;)[Ljava/lang/Object; 3
checkcast [Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline;
astore 12
L4:
iload 4
ifne L29
L5:
aload 12
arraylength
ifeq L26
aload 2
iload 5
iload 5
ldc com/product/android/utils/ContentUtils$UrlImageSpan
invokeinterface android/text/Spannable/getSpans(IILjava/lang/Class;)[Ljava/lang/Object; 3
checkcast [Lcom/product/android/utils/ContentUtils$UrlImageSpan;
astore 3
aload 3
arraylength
ifeq L10
aload 0
aload 1
aload 3
iconst_0
aaload
aload 2
iconst_1
aconst_null
invokestatic com/product/android/utils/ContentUtils/setUrlImageSpan(Landroid/widget/TextView;Lcom/product/android/utils/ContentUtils$UrlImageSpan;Landroid/text/Spannable;ZLjava/lang/String;)Lcom/product/android/utils/ContentUtils$UrlImageSpan;
putfield com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/mSelectImageSpan Lcom/product/android/utils/ContentUtils$UrlImageSpan;
aload 12
arraylength
istore 5
L6:
iconst_0
istore 4
L30:
iload 4
iload 5
if_icmpge L8
aload 12
iload 4
aaload
astore 2
L7:
aload 2
instanceof com/product/android/utils/ContentUtils$URLImageClickSpan
ifeq L31
aload 0
aload 2
putfield com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/mSelectClickSpan Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline;
L8:
aload 1
instanceof com/product/android/ui/widget/ProTextView
ifeq L32
aload 1
checkcast com/product/android/ui/widget/ProTextView
iconst_1
putfield com/product/android/ui/widget/ProTextView/linkHit Z
L9:
goto L32
L10:
aload 0
aload 12
iconst_0
aaload
putfield com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/mSelectClickSpan Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline;
L11:
goto L8
L29:
iload 4
iconst_2
if_icmpne L26
L12:
aload 2
iload 5
iload 5
ldc com/product/android/utils/ContentUtils$UrlImageSpan
invokeinterface android/text/Spannable/getSpans(IILjava/lang/Class;)[Ljava/lang/Object; 3
checkcast [Lcom/product/android/utils/ContentUtils$UrlImageSpan;
astore 3
aload 0
getfield com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/mSelectImageSpan Lcom/product/android/utils/ContentUtils$UrlImageSpan;
ifnull L14
aload 3
arraylength
ifeq L13
aload 0
getfield com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/mSelectImageSpan Lcom/product/android/utils/ContentUtils$UrlImageSpan;
invokevirtual com/product/android/utils/ContentUtils$UrlImageSpan/getUrl()Ljava/lang/String;
aload 3
iconst_0
aaload
invokevirtual com/product/android/utils/ContentUtils$UrlImageSpan/getUrl()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L14
L13:
aload 0
aload 1
aload 2
iconst_0
invokevirtual com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/cleanSelectSpan(Landroid/widget/TextView;Landroid/text/Spannable;Z)V
L14:
aload 3
arraylength
ifeq L19
aload 0
aload 1
aload 3
iconst_0
aaload
aload 2
iconst_1
aconst_null
invokestatic com/product/android/utils/ContentUtils/setUrlImageSpan(Landroid/widget/TextView;Lcom/product/android/utils/ContentUtils$UrlImageSpan;Landroid/text/Spannable;ZLjava/lang/String;)Lcom/product/android/utils/ContentUtils$UrlImageSpan;
putfield com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/mSelectImageSpan Lcom/product/android/utils/ContentUtils$UrlImageSpan;
aload 12
arraylength
istore 5
L15:
iconst_0
istore 4
L33:
iload 4
iload 5
if_icmpge L17
aload 12
iload 4
aaload
astore 2
L16:
aload 2
instanceof com/product/android/utils/ContentUtils$URLImageClickSpan
ifeq L34
aload 0
aload 2
putfield com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/mSelectClickSpan Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline;
L17:
aload 1
instanceof com/product/android/ui/widget/ProTextView
ifeq L35
aload 1
checkcast com/product/android/ui/widget/ProTextView
iconst_1
putfield com/product/android/ui/widget/ProTextView/linkHit Z
L18:
goto L35
L19:
aload 12
arraylength
ifeq L21
aload 0
aload 12
iconst_0
aaload
putfield com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/mSelectClickSpan Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline;
L20:
goto L17
L21:
aload 0
aconst_null
putfield com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/mSelectClickSpan Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline;
L22:
goto L17
L28:
iload 4
iconst_1
if_icmpne L25
L23:
aload 0
aload 1
aload 2
iconst_1
invokevirtual com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/cleanSelectSpan(Landroid/widget/TextView;Landroid/text/Spannable;Z)V
aload 1
instanceof com/product/android/ui/widget/ProTextView
ifeq L36
aload 1
checkcast com/product/android/ui/widget/ProTextView
iconst_1
putfield com/product/android/ui/widget/ProTextView/linkHit Z
L24:
goto L36
L25:
aload 0
aload 1
aload 2
iconst_0
invokevirtual com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/cleanSelectSpan(Landroid/widget/TextView;Landroid/text/Spannable;Z)V
L26:
aload 1
aload 2
aload 3
invokestatic android/text/method/Touch/onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
istore 11
L27:
iload 11
ireturn
L32:
iconst_1
ireturn
L31:
iload 4
iconst_1
iadd
istore 4
goto L30
L2:
astore 1
iconst_0
ireturn
L35:
iconst_1
ireturn
L34:
iload 4
iconst_1
iadd
istore 4
goto L33
L36:
iconst_1
ireturn
.limit locals 13
.limit stack 6
.end method
