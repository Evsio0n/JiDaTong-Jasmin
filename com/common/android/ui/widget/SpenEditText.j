.bytecode 50.0
.class public synchronized com/common/android/ui/widget/SpenEditText
.super android/widget/EditText

.field private 'mSelectionStar' I

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/EditText/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield com/common/android/ui/widget/SpenEditText/mSelectionStar I
return
.limit locals 3
.limit stack 3
.end method

.method public getSelectionEnd()I
.annotation visible Landroid/view/ViewDebug$ExportedProperty;
category s = "text"
.end annotation
aload 0
invokevirtual com/common/android/ui/widget/SpenEditText/getText()Landroid/text/Editable;
astore 4
aload 4
instanceof android/text/Spanned
ifeq L0
aload 4
checkcast android/text/Spanned
getstatic android/text/Selection/SELECTION_END Ljava/lang/Object;
invokeinterface android/text/Spanned/getSpanEnd(Ljava/lang/Object;)I 1
istore 2
aload 0
invokevirtual com/common/android/ui/widget/SpenEditText/getEditableText()Landroid/text/Editable;
aload 0
getfield com/common/android/ui/widget/SpenEditText/mSelectionStar I
aload 4
invokeinterface java/lang/CharSequence/length()I 0
ldc android/text/style/ImageSpan
invokeinterface android/text/Editable/getSpans(IILjava/lang/Class;)[Ljava/lang/Object; 3
checkcast [Landroid/text/style/ImageSpan;
astore 5
aload 5
ifnull L1
aload 5
arraylength
ifgt L2
L1:
iload 2
ireturn
L2:
aload 0
getfield com/common/android/ui/widget/SpenEditText/mSelectionStar I
iload 2
iconst_1
isub
if_icmpne L3
aload 5
arraylength
istore 3
iconst_0
istore 1
L4:
iload 1
iload 3
if_icmpge L3
aload 5
iload 1
aaload
invokevirtual android/text/style/ImageSpan/getSource()Ljava/lang/String;
astore 6
aload 0
getfield com/common/android/ui/widget/SpenEditText/mSelectionStar I
aload 6
invokevirtual java/lang/String/length()I
iadd
aload 4
invokeinterface java/lang/CharSequence/length()I 0
if_icmple L5
L3:
iload 2
ireturn
L5:
aload 6
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L6
aload 6
aload 4
aload 0
getfield com/common/android/ui/widget/SpenEditText/mSelectionStar I
aload 0
getfield com/common/android/ui/widget/SpenEditText/mSelectionStar I
aload 6
invokevirtual java/lang/String/length()I
iadd
invokeinterface java/lang/CharSequence/subSequence(II)Ljava/lang/CharSequence; 2
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L6
aload 0
getfield com/common/android/ui/widget/SpenEditText/mSelectionStar I
aload 6
invokevirtual java/lang/String/length()I
iadd
ireturn
L6:
iload 1
iconst_1
iadd
istore 1
goto L4
L0:
iconst_m1
ireturn
.limit locals 7
.limit stack 5
.end method

.method public getSelectionStart()I
.annotation visible Landroid/view/ViewDebug$ExportedProperty;
category s = "text"
.end annotation
aload 0
invokevirtual com/common/android/ui/widget/SpenEditText/getText()Landroid/text/Editable;
astore 2
aload 2
instanceof android/text/Spanned
ifeq L0
aload 0
aload 2
checkcast android/text/Spanned
getstatic android/text/Selection/SELECTION_START Ljava/lang/Object;
invokeinterface android/text/Spanned/getSpanStart(Ljava/lang/Object;)I 1
putfield com/common/android/ui/widget/SpenEditText/mSelectionStar I
aload 0
getfield com/common/android/ui/widget/SpenEditText/mSelectionStar I
iconst_1
iadd
aload 2
invokeinterface java/lang/CharSequence/length()I 0
if_icmpne L1
aload 0
invokevirtual com/common/android/ui/widget/SpenEditText/getEditableText()Landroid/text/Editable;
aload 0
getfield com/common/android/ui/widget/SpenEditText/mSelectionStar I
aload 2
invokeinterface java/lang/CharSequence/length()I 0
ldc android/text/style/ImageSpan
invokeinterface android/text/Editable/getSpans(IILjava/lang/Class;)[Ljava/lang/Object; 3
checkcast [Landroid/text/style/ImageSpan;
astore 3
aload 3
ifnull L2
aload 3
arraylength
ifgt L3
L2:
aload 0
getfield com/common/android/ui/widget/SpenEditText/mSelectionStar I
ireturn
L3:
aload 3
aload 3
arraylength
iconst_1
isub
aaload
invokevirtual android/text/style/ImageSpan/getSource()Ljava/lang/String;
astore 3
aload 2
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
aload 3
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
istore 1
iload 1
iconst_m1
if_icmpeq L1
aload 3
invokevirtual java/lang/String/length()I
iload 1
iadd
aload 2
invokeinterface java/lang/CharSequence/length()I 0
if_icmpne L1
aload 0
iload 1
putfield com/common/android/ui/widget/SpenEditText/mSelectionStar I
L1:
aload 0
getfield com/common/android/ui/widget/SpenEditText/mSelectionStar I
ireturn
L0:
iconst_m1
ireturn
.limit locals 4
.limit stack 4
.end method
