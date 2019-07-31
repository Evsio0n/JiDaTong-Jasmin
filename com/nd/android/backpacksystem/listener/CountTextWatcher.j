.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/listener/CountTextWatcher
.super java/lang/Object
.implements android/text/TextWatcher

.field private 'mEditText' Landroid/widget/EditText;

.field private 'mMaxCount' I

.field private 'mMinCount' I

.method public <init>(IILandroid/widget/EditText;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/backpacksystem/listener/CountTextWatcher/mMinCount I
aload 0
iconst_0
putfield com/nd/android/backpacksystem/listener/CountTextWatcher/mMaxCount I
aload 0
iload 1
putfield com/nd/android/backpacksystem/listener/CountTextWatcher/mMinCount I
aload 0
iload 2
putfield com/nd/android/backpacksystem/listener/CountTextWatcher/mMaxCount I
aload 0
aload 3
putfield com/nd/android/backpacksystem/listener/CountTextWatcher/mEditText Landroid/widget/EditText;
aload 0
getfield com/nd/android/backpacksystem/listener/CountTextWatcher/mEditText Landroid/widget/EditText;
aload 0
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
return
.limit locals 4
.limit stack 2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 2
iload 2
aload 0
getfield com/nd/android/backpacksystem/listener/CountTextWatcher/mMaxCount I
if_icmple L1
aload 0
getfield com/nd/android/backpacksystem/listener/CountTextWatcher/mMaxCount I
istore 2
aload 0
getfield com/nd/android/backpacksystem/listener/CountTextWatcher/mEditText Landroid/widget/EditText;
iload 2
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/backpacksystem/listener/CountTextWatcher/mEditText Landroid/widget/EditText;
aload 0
getfield com/nd/android/backpacksystem/listener/CountTextWatcher/mEditText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokeinterface android/text/Editable/length()I 0
invokevirtual android/widget/EditText/setSelection(I)V
L0:
return
L1:
iload 2
aload 0
getfield com/nd/android/backpacksystem/listener/CountTextWatcher/mMinCount I
if_icmpge L0
aload 0
getfield com/nd/android/backpacksystem/listener/CountTextWatcher/mMinCount I
istore 2
aload 0
getfield com/nd/android/backpacksystem/listener/CountTextWatcher/mEditText Landroid/widget/EditText;
iload 2
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/backpacksystem/listener/CountTextWatcher/mEditText Landroid/widget/EditText;
aload 0
getfield com/nd/android/backpacksystem/listener/CountTextWatcher/mEditText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokeinterface android/text/Editable/length()I 0
invokevirtual android/widget/EditText/setSelection(I)V
return
.limit locals 3
.limit stack 2
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
