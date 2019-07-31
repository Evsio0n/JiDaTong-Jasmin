.bytecode 50.0
.class public synchronized com/common/android/ui/widget/TextViewEllipseEndFixed
.super android/widget/TextView

.field private static final 'ELLIPSE_END' Ljava/lang/String; = "\u2026"

.field private static final 'HAS_BUG' Z = 1


.field private 'mChecked' Z

.field private 'mELLIPSEWidth' I

.field private 'mMaxLines' I

.field private 'mOriText' Ljava/lang/CharSequence;

.field private 'mSingleLine' Z

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/common/android/ui/widget/TextViewEllipseEndFixed/mChecked Z
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
iconst_0
putfield com/common/android/ui/widget/TextViewEllipseEndFixed/mChecked Z
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
iconst_0
putfield com/common/android/ui/widget/TextViewEllipseEndFixed/mChecked Z
return
.limit locals 4
.limit stack 4
.end method

.method public getText()Ljava/lang/CharSequence;
aload 0
getfield com/common/android/ui/widget/TextViewEllipseEndFixed/mOriText Ljava/lang/CharSequence;
ifnull L0
aload 0
getfield com/common/android/ui/widget/TextViewEllipseEndFixed/mOriText Ljava/lang/CharSequence;
areturn
L0:
aload 0
invokespecial android/widget/TextView/getText()Ljava/lang/CharSequence;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
iconst_1
istore 2
aload 0
getfield com/common/android/ui/widget/TextViewEllipseEndFixed/mChecked Z
ifne L0
aload 0
iconst_1
putfield com/common/android/ui/widget/TextViewEllipseEndFixed/mChecked Z
aload 0
invokespecial android/widget/TextView/getLayout()Landroid/text/Layout;
astore 6
aload 0
getfield com/common/android/ui/widget/TextViewEllipseEndFixed/mMaxLines I
ifle L1
aload 0
getfield com/common/android/ui/widget/TextViewEllipseEndFixed/mMaxLines I
istore 2
L1:
aload 6
invokevirtual android/text/Layout/getLineCount()I
iload 2
if_icmple L0
aload 0
getfield com/common/android/ui/widget/TextViewEllipseEndFixed/mELLIPSEWidth I
ifne L2
aload 0
aload 0
invokevirtual com/common/android/ui/widget/TextViewEllipseEndFixed/getPaint()Landroid/text/TextPaint;
ldc "\u2026"
invokevirtual android/text/TextPaint/measureText(Ljava/lang/String;)F
f2i
putfield com/common/android/ui/widget/TextViewEllipseEndFixed/mELLIPSEWidth I
L2:
aload 0
aload 0
invokespecial android/widget/TextView/getText()Ljava/lang/CharSequence;
putfield com/common/android/ui/widget/TextViewEllipseEndFixed/mOriText Ljava/lang/CharSequence;
aload 6
invokevirtual android/text/Layout/getWidth()I
istore 4
aload 6
iload 2
iconst_1
isub
invokevirtual android/text/Layout/getLineWidth(I)F
f2i
istore 5
aload 6
iload 2
iconst_1
isub
invokevirtual android/text/Layout/getLineEnd(I)I
istore 3
iload 3
istore 2
aload 0
getfield com/common/android/ui/widget/TextViewEllipseEndFixed/mELLIPSEWidth I
iload 5
iadd
iload 4
if_icmple L3
aload 0
getfield com/common/android/ui/widget/TextViewEllipseEndFixed/mELLIPSEWidth I
iload 5
iadd
iload 4
isub
istore 5
iload 5
i2f
aload 0
invokespecial android/widget/TextView/getTextSize()F
fdiv
f2i
istore 4
iload 4
istore 2
iload 5
i2f
aload 0
invokespecial android/widget/TextView/getTextSize()F
frem
fconst_0
fcmpl
ifeq L4
iload 4
iconst_1
iadd
istore 2
L4:
iload 3
iload 2
isub
istore 2
L3:
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/common/android/ui/widget/TextViewEllipseEndFixed/mOriText Ljava/lang/CharSequence;
iconst_0
iload 2
invokeinterface java/lang/CharSequence/subSequence(II)Ljava/lang/CharSequence; 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "\u2026"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
aload 1
invokespecial android/widget/TextView/onDraw(Landroid/graphics/Canvas;)V
return
.limit locals 7
.limit stack 5
.end method

.method protected onSizeChanged(IIII)V
aload 0
iconst_0
putfield com/common/android/ui/widget/TextViewEllipseEndFixed/mChecked Z
aload 0
iload 1
iload 2
iload 3
iload 4
invokespecial android/widget/TextView/onSizeChanged(IIII)V
return
.limit locals 5
.limit stack 5
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
aload 0
iconst_0
putfield com/common/android/ui/widget/TextViewEllipseEndFixed/mChecked Z
aload 0
aload 1
iload 2
iload 3
iload 4
invokespecial android/widget/TextView/onTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 5
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
aload 1
getstatic android/text/TextUtils$TruncateAt/END Landroid/text/TextUtils$TruncateAt;
invokevirtual android/text/TextUtils$TruncateAt/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
iconst_0
putfield com/common/android/ui/widget/TextViewEllipseEndFixed/mChecked Z
aload 0
getfield com/common/android/ui/widget/TextViewEllipseEndFixed/mSingleLine Z
ifeq L1
aload 0
iconst_0
invokevirtual com/common/android/ui/widget/TextViewEllipseEndFixed/setSingleLine(Z)V
L1:
return
L0:
aload 0
aload 1
invokespecial android/widget/TextView/setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
aload 0
iconst_1
putfield com/common/android/ui/widget/TextViewEllipseEndFixed/mChecked Z
return
.limit locals 2
.limit stack 2
.end method

.method public setLineSpacing(FF)V
aload 0
iconst_0
putfield com/common/android/ui/widget/TextViewEllipseEndFixed/mChecked Z
aload 0
fload 1
fload 2
invokespecial android/widget/TextView/setLineSpacing(FF)V
return
.limit locals 3
.limit stack 3
.end method

.method public setMaxLines(I)V
iconst_1
istore 2
aload 0
iload 1
putfield com/common/android/ui/widget/TextViewEllipseEndFixed/mMaxLines I
iload 1
iconst_1
if_icmple L0
iconst_0
istore 2
L0:
aload 0
iload 2
putfield com/common/android/ui/widget/TextViewEllipseEndFixed/mChecked Z
aload 0
iload 1
invokespecial android/widget/TextView/setMaxLines(I)V
return
.limit locals 3
.limit stack 2
.end method

.method public setPadding(IIII)V
aload 0
iconst_0
putfield com/common/android/ui/widget/TextViewEllipseEndFixed/mChecked Z
aload 0
iload 1
iload 2
iload 3
iload 4
invokespecial android/widget/TextView/setPadding(IIII)V
return
.limit locals 5
.limit stack 5
.end method

.method public setSingleLine(Z)V
aload 0
iload 1
putfield com/common/android/ui/widget/TextViewEllipseEndFixed/mSingleLine Z
aload 0
iload 1
invokespecial android/widget/TextView/setSingleLine(Z)V
return
.limit locals 2
.limit stack 2
.end method
