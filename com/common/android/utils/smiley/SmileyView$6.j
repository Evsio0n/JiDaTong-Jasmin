.bytecode 50.0
.class synchronized com/common/android/utils/smiley/SmileyView$6
.super java/lang/Object
.implements android/text/TextWatcher
.enclosing method com/common/android/utils/smiley/SmileyView
.inner class inner com/common/android/utils/smiley/SmileyView$6

.field final synthetic 'this$0' Lcom/common/android/utils/smiley/SmileyView;

.method <init>(Lcom/common/android/utils/smiley/SmileyView;)V
aload 0
aload 1
putfield com/common/android/utils/smiley/SmileyView$6/this$0 Lcom/common/android/utils/smiley/SmileyView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
aload 0
getfield com/common/android/utils/smiley/SmileyView$6/this$0 Lcom/common/android/utils/smiley/SmileyView;
invokestatic com/common/android/utils/smiley/SmileyView/access$1900(Lcom/common/android/utils/smiley/SmileyView;)Lcom/product/android/utils/MyPasteListener;
invokevirtual com/product/android/utils/MyPasteListener/getIsDoPaste()Z
ifeq L0
aload 0
getfield com/common/android/utils/smiley/SmileyView$6/this$0 Lcom/common/android/utils/smiley/SmileyView;
invokestatic com/common/android/utils/smiley/SmileyView/access$1900(Lcom/common/android/utils/smiley/SmileyView;)Lcom/product/android/utils/MyPasteListener;
invokevirtual com/product/android/utils/MyPasteListener/getHasDone()Z
ifne L0
aload 0
getfield com/common/android/utils/smiley/SmileyView$6/this$0 Lcom/common/android/utils/smiley/SmileyView;
invokestatic com/common/android/utils/smiley/SmileyView/access$1600(Lcom/common/android/utils/smiley/SmileyView;)I
ifle L1
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
aload 0
getfield com/common/android/utils/smiley/SmileyView$6/this$0 Lcom/common/android/utils/smiley/SmileyView;
invokestatic com/common/android/utils/smiley/SmileyView/access$1400(Lcom/common/android/utils/smiley/SmileyView;)I
aload 0
getfield com/common/android/utils/smiley/SmileyView$6/this$0 Lcom/common/android/utils/smiley/SmileyView;
invokestatic com/common/android/utils/smiley/SmileyView/access$1600(Lcom/common/android/utils/smiley/SmileyView;)I
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileySpannableString(Ljava/lang/String;II)Landroid/text/SpannableString;
astore 1
L2:
aload 0
getfield com/common/android/utils/smiley/SmileyView$6/this$0 Lcom/common/android/utils/smiley/SmileyView;
invokestatic com/common/android/utils/smiley/SmileyView/access$1900(Lcom/common/android/utils/smiley/SmileyView;)Lcom/product/android/utils/MyPasteListener;
iconst_0
invokevirtual com/product/android/utils/MyPasteListener/setIsDoPaste(Z)V
aload 0
getfield com/common/android/utils/smiley/SmileyView$6/this$0 Lcom/common/android/utils/smiley/SmileyView;
invokestatic com/common/android/utils/smiley/SmileyView/access$1900(Lcom/common/android/utils/smiley/SmileyView;)Lcom/product/android/utils/MyPasteListener;
iconst_1
invokevirtual com/product/android/utils/MyPasteListener/setHasDone(Z)V
aload 0
getfield com/common/android/utils/smiley/SmileyView$6/this$0 Lcom/common/android/utils/smiley/SmileyView;
invokestatic com/common/android/utils/smiley/SmileyView/access$1100(Lcom/common/android/utils/smiley/SmileyView;)Landroid/widget/EditText;
aload 1
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
getfield com/common/android/utils/smiley/SmileyView$6/this$0 Lcom/common/android/utils/smiley/SmileyView;
invokestatic com/common/android/utils/smiley/SmileyView/access$1900(Lcom/common/android/utils/smiley/SmileyView;)Lcom/product/android/utils/MyPasteListener;
invokevirtual com/product/android/utils/MyPasteListener/getSelection()I
aload 0
getfield com/common/android/utils/smiley/SmileyView$6/this$0 Lcom/common/android/utils/smiley/SmileyView;
invokestatic com/common/android/utils/smiley/SmileyView/access$1100(Lcom/common/android/utils/smiley/SmileyView;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokeinterface android/text/Editable/length()I 0
invokestatic java/lang/Math/min(II)I
istore 2
aload 0
getfield com/common/android/utils/smiley/SmileyView$6/this$0 Lcom/common/android/utils/smiley/SmileyView;
invokestatic com/common/android/utils/smiley/SmileyView/access$1100(Lcom/common/android/utils/smiley/SmileyView;)Landroid/widget/EditText;
iload 2
invokevirtual android/widget/EditText/setSelection(I)V
return
L1:
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
aload 0
getfield com/common/android/utils/smiley/SmileyView$6/this$0 Lcom/common/android/utils/smiley/SmileyView;
invokestatic com/common/android/utils/smiley/SmileyView/access$1400(Lcom/common/android/utils/smiley/SmileyView;)I
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileySpannableString(Ljava/lang/String;I)Landroid/text/SpannableString;
astore 1
goto L2
.limit locals 3
.limit stack 4
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method
