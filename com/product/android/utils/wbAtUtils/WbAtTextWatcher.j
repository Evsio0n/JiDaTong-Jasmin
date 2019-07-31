.bytecode 50.0
.class public synchronized com/product/android/utils/wbAtUtils/WbAtTextWatcher
.super java/lang/Object
.implements android/text/TextWatcher

.field private 'mContext' Landroid/content/Context;

.field private 'mEditText' Landroid/widget/EditText;

.field private 'mPasteListener' Lcom/product/android/utils/MyPasteListener;

.method public <init>(Landroid/content/Context;Landroid/widget/EditText;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/product/android/utils/wbAtUtils/WbAtTextWatcher/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/product/android/utils/wbAtUtils/WbAtTextWatcher/mEditText Landroid/widget/EditText;
return
.limit locals 3
.limit stack 2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
aload 0
getfield com/product/android/utils/wbAtUtils/WbAtTextWatcher/mPasteListener Lcom/product/android/utils/MyPasteListener;
ifnonnull L0
return
L0:
aload 0
getfield com/product/android/utils/wbAtUtils/WbAtTextWatcher/mPasteListener Lcom/product/android/utils/MyPasteListener;
invokevirtual com/product/android/utils/MyPasteListener/getIsDoPaste()Z
ifeq L1
aload 0
getfield com/product/android/utils/wbAtUtils/WbAtTextWatcher/mContext Landroid/content/Context;
aload 1
aload 0
getfield com/product/android/utils/wbAtUtils/WbAtTextWatcher/mEditText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getTextSize()F
f2i
invokestatic com/product/android/utils/wbAtUtils/WbAtView/setSpanAtName(Landroid/content/Context;Landroid/text/Editable;I)V
aload 0
getfield com/product/android/utils/wbAtUtils/WbAtTextWatcher/mPasteListener Lcom/product/android/utils/MyPasteListener;
iconst_0
invokevirtual com/product/android/utils/MyPasteListener/setIsDoPaste(Z)V
L1:
aload 0
getfield com/product/android/utils/wbAtUtils/WbAtTextWatcher/mPasteListener Lcom/product/android/utils/MyPasteListener;
invokevirtual com/product/android/utils/MyPasteListener/getSelection()I
istore 2
iload 2
ifge L2
aload 0
getfield com/product/android/utils/wbAtUtils/WbAtTextWatcher/mPasteListener Lcom/product/android/utils/MyPasteListener;
iconst_0
invokevirtual com/product/android/utils/MyPasteListener/setSelection(I)V
L3:
aload 0
getfield com/product/android/utils/wbAtUtils/WbAtTextWatcher/mEditText Landroid/widget/EditText;
aload 0
getfield com/product/android/utils/wbAtUtils/WbAtTextWatcher/mPasteListener Lcom/product/android/utils/MyPasteListener;
invokevirtual com/product/android/utils/MyPasteListener/getSelection()I
invokevirtual android/widget/EditText/setSelection(I)V
return
L2:
iload 2
aload 1
invokeinterface android/text/Editable/length()I 0
if_icmple L3
aload 0
getfield com/product/android/utils/wbAtUtils/WbAtTextWatcher/mPasteListener Lcom/product/android/utils/MyPasteListener;
aload 1
invokeinterface android/text/Editable/length()I 0
invokevirtual com/product/android/utils/MyPasteListener/setSelection(I)V
goto L3
.limit locals 3
.limit stack 3
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

.method public setPasteListener(Lcom/product/android/utils/MyPasteListener;)V
aload 0
aload 1
putfield com/product/android/utils/wbAtUtils/WbAtTextWatcher/mPasteListener Lcom/product/android/utils/MyPasteListener;
return
.limit locals 2
.limit stack 2
.end method
