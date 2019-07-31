.bytecode 50.0
.class public synchronized com/product/android/utils/MyPasteListener
.super java/lang/Object
.implements android/text/InputFilter
.inner class public static abstract interface onPasteCatSmileyListener inner com/product/android/utils/MyPasteListener$onPasteCatSmileyListener outer com/product/android/utils/MyPasteListener

.field private 'mClipboardManager' Landroid/text/ClipboardManager;

.field private 'mHasDone' Z

.field private 'mIsDoPaste' Z

.field private 'mMaxLength' I

.field private 'mPasteCatSmileyListener' Lcom/product/android/utils/MyPasteListener$onPasteCatSmileyListener;

.field private 'mSelection' I

.field private 'mType' I

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/product/android/utils/MyPasteListener/mIsDoPaste Z
aload 0
iconst_0
putfield com/product/android/utils/MyPasteListener/mHasDone Z
aload 0
iconst_0
putfield com/product/android/utils/MyPasteListener/mMaxLength I
aload 0
aload 1
ldc "clipboard"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/text/ClipboardManager
putfield com/product/android/utils/MyPasteListener/mClipboardManager Landroid/text/ClipboardManager;
return
.limit locals 2
.limit stack 3
.end method

.method private cutSmileyCharSequenceInFilter(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
aload 2
astore 6
aload 0
getfield com/product/android/utils/MyPasteListener/mClipboardManager Landroid/text/ClipboardManager;
invokevirtual android/text/ClipboardManager/getText()Ljava/lang/CharSequence;
ifnull L0
aload 0
getfield com/product/android/utils/MyPasteListener/mClipboardManager Landroid/text/ClipboardManager;
invokevirtual android/text/ClipboardManager/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
astore 7
aload 2
astore 6
aload 2
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
aload 7
invokevirtual java/lang/String/toString()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/product/android/utils/MyPasteListener/mType I
iconst_1
if_icmpne L1
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 7
invokevirtual java/lang/String/toString()Ljava/lang/String;
iconst_0
invokevirtual com/common/android/utils/smiley/Smileyhelper/showSmileyByTip(Ljava/lang/String;I)Ljava/lang/String;
astore 2
L2:
new java/lang/StringBuffer
dup
aload 2
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 2
aload 2
ifnull L3
L4:
aload 0
getfield com/product/android/utils/MyPasteListener/mMaxLength I
ifle L3
aload 0
getfield com/product/android/utils/MyPasteListener/mMaxLength I
aload 2
invokevirtual java/lang/StringBuffer/length()I
iload 1
iadd
if_icmpge L3
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 2
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aload 2
invokevirtual java/lang/StringBuffer/length()I
aload 0
getfield com/product/android/utils/MyPasteListener/mType I
invokevirtual com/common/android/utils/smiley/Smileyhelper/delSmileyFromString(Ljava/lang/String;II)I
istore 4
aload 2
invokevirtual java/lang/StringBuffer/length()I
istore 5
iload 5
ifne L5
L3:
aload 2
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
astore 6
L0:
aload 6
areturn
L1:
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 7
invokevirtual java/lang/String/toString()Ljava/lang/String;
iconst_1
invokevirtual com/common/android/utils/smiley/Smileyhelper/convertMXSmileyToIMSmiley(Ljava/lang/String;I)Ljava/lang/String;
astore 2
goto L2
L5:
iload 4
istore 3
iload 4
iconst_m1
if_icmpne L6
iload 5
iconst_1
isub
istore 3
L6:
aload 2
iload 3
aload 2
invokevirtual java/lang/StringBuffer/length()I
invokevirtual java/lang/StringBuffer/delete(II)Ljava/lang/StringBuffer;
pop
goto L4
.limit locals 8
.limit stack 4
.end method

.method private filterCat(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aload 0
getfield com/product/android/utils/MyPasteListener/mPasteCatSmileyListener Lcom/product/android/utils/MyPasteListener$onPasteCatSmileyListener;
ifnonnull L5
L6:
aload 1
areturn
L5:
aload 1
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
astore 5
aload 5
ldc "&<img>"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L6
aload 5
ldc "<img>&"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L6
aload 5
ldc "&<img>"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "<img>&"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 5
L0:
aload 5
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 2
getstatic com/common/android/utils/smiley/SmileyValueArray/CAT_ID [I
iconst_0
iaload
istore 3
getstatic com/common/android/utils/smiley/SmileyValueArray/CAT_ID [I
getstatic com/common/android/utils/smiley/SmileyValueArray/CAT_ID [I
arraylength
iconst_1
isub
iaload
istore 4
L1:
iload 2
iload 3
if_icmplt L6
iload 2
iload 4
if_icmpgt L6
L3:
aload 0
getfield com/product/android/utils/MyPasteListener/mPasteCatSmileyListener Lcom/product/android/utils/MyPasteListener$onPasteCatSmileyListener;
iload 2
invokeinterface com/product/android/utils/MyPasteListener$onPasteCatSmileyListener/onPasteCatSmiley(I)V 1
L4:
ldc ""
areturn
L2:
astore 5
aload 1
areturn
.limit locals 6
.limit stack 3
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
aload 0
getfield com/product/android/utils/MyPasteListener/mClipboardManager Landroid/text/ClipboardManager;
invokevirtual android/text/ClipboardManager/getText()Ljava/lang/CharSequence;
ifnull L0
aload 0
getfield com/product/android/utils/MyPasteListener/mIsDoPaste Z
ifne L0
aload 0
getfield com/product/android/utils/MyPasteListener/mHasDone Z
ifeq L1
aload 0
iconst_0
putfield com/product/android/utils/MyPasteListener/mHasDone Z
aload 0
aload 1
invokespecial com/product/android/utils/MyPasteListener/filterCat(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
areturn
L1:
aload 0
getfield com/product/android/utils/MyPasteListener/mClipboardManager Landroid/text/ClipboardManager;
invokevirtual android/text/ClipboardManager/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
astore 7
aload 1
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
aload 7
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
iconst_1
putfield com/product/android/utils/MyPasteListener/mIsDoPaste Z
aload 0
aload 4
invokeinterface android/text/Spanned/length()I 0
aload 1
invokespecial com/product/android/utils/MyPasteListener/cutSmileyCharSequenceInFilter(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
astore 1
aload 0
aload 1
invokeinterface java/lang/CharSequence/length()I 0
iload 5
iadd
putfield com/product/android/utils/MyPasteListener/mSelection I
aload 0
aload 1
invokespecial com/product/android/utils/MyPasteListener/filterCat(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
areturn
L2:
aload 0
aload 1
invokeinterface java/lang/CharSequence/length()I 0
iload 5
iadd
putfield com/product/android/utils/MyPasteListener/mSelection I
aconst_null
areturn
L0:
aload 0
getfield com/product/android/utils/MyPasteListener/mClipboardManager Landroid/text/ClipboardManager;
invokevirtual android/text/ClipboardManager/getText()Ljava/lang/CharSequence;
ifnonnull L3
aload 0
aload 1
invokeinterface java/lang/CharSequence/length()I 0
iload 5
iadd
putfield com/product/android/utils/MyPasteListener/mSelection I
L3:
aload 0
aload 1
invokespecial com/product/android/utils/MyPasteListener/filterCat(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
areturn
.limit locals 8
.limit stack 3
.end method

.method public getHasDone()Z
aload 0
getfield com/product/android/utils/MyPasteListener/mHasDone Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIsDoPaste()Z
aload 0
getfield com/product/android/utils/MyPasteListener/mIsDoPaste Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getSelection()I
aload 0
getfield com/product/android/utils/MyPasteListener/mSelection I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setHasDone(Z)V
aload 0
iload 1
putfield com/product/android/utils/MyPasteListener/mHasDone Z
return
.limit locals 2
.limit stack 2
.end method

.method public setIsDoPaste(Z)V
aload 0
iload 1
putfield com/product/android/utils/MyPasteListener/mIsDoPaste Z
return
.limit locals 2
.limit stack 2
.end method

.method public setMaxLength(I)V
aload 0
iload 1
putfield com/product/android/utils/MyPasteListener/mMaxLength I
return
.limit locals 2
.limit stack 2
.end method

.method public setOnPasteCatSmileyListener(Lcom/product/android/utils/MyPasteListener$onPasteCatSmileyListener;)V
aload 0
aload 1
putfield com/product/android/utils/MyPasteListener/mPasteCatSmileyListener Lcom/product/android/utils/MyPasteListener$onPasteCatSmileyListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setSelection(I)V
aload 0
iload 1
putfield com/product/android/utils/MyPasteListener/mSelection I
return
.limit locals 2
.limit stack 2
.end method

.method public setType(I)V
aload 0
iload 1
putfield com/product/android/utils/MyPasteListener/mType I
return
.limit locals 2
.limit stack 2
.end method
