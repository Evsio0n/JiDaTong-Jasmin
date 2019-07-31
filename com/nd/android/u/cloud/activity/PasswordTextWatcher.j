.bytecode 50.0
.class public synchronized abstract com/nd/android/u/cloud/activity/PasswordTextWatcher
.super java/lang/Object
.implements android/text/TextWatcher

.field private static final 'PASSWORD_REGEX' Ljava/lang/String; = "[A-Z0-9a-z!@#$%^&*.~/\\{\\}|()'\"?><,.`\\+-=_\\[\\]:;]+"

.field private 'mIsMatch' Z

.field private 'mPswEditText' Landroid/widget/EditText;

.field private 'mResult' Ljava/lang/CharSequence;

.field private 'mSelectionEnd' I

.field private 'mSelectionStart' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Landroid/widget/EditText;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/PasswordTextWatcher/mPswEditText Landroid/widget/EditText;
return
.limit locals 2
.limit stack 2
.end method

.method private pswFilter(Ljava/lang/CharSequence;)Z
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
iconst_1
ireturn
L0:
ldc "[A-Z0-9a-z!@#$%^&*.~/\\{\\}|()'\"?><,.`\\+-=_\\[\\]:;]+"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 1
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/matches()Z
ifne L1
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
aload 0
getfield com/nd/android/u/cloud/activity/PasswordTextWatcher/mIsMatch Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/PasswordTextWatcher/mPswEditText Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/PasswordTextWatcher/mResult Ljava/lang/CharSequence;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/PasswordTextWatcher/mPswEditText Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/PasswordTextWatcher/mSelectionEnd I
invokevirtual android/widget/EditText/setSelection(I)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/PasswordTextWatcher/mPswEditText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionStart()I
putfield com/nd/android/u/cloud/activity/PasswordTextWatcher/mSelectionStart I
return
.limit locals 5
.limit stack 2
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
ldc ""
astore 5
aload 0
getfield com/nd/android/u/cloud/activity/PasswordTextWatcher/mSelectionStart I
iload 4
iadd
aload 1
invokeinterface java/lang/CharSequence/length()I 0
if_icmpgt L0
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/PasswordTextWatcher/mSelectionStart I
aload 0
getfield com/nd/android/u/cloud/activity/PasswordTextWatcher/mSelectionStart I
iload 4
iadd
invokeinterface java/lang/CharSequence/subSequence(II)Ljava/lang/CharSequence; 2
astore 5
L0:
aload 0
aload 0
aload 5
invokespecial com/nd/android/u/cloud/activity/PasswordTextWatcher/pswFilter(Ljava/lang/CharSequence;)Z
putfield com/nd/android/u/cloud/activity/PasswordTextWatcher/mIsMatch Z
aload 0
getfield com/nd/android/u/cloud/activity/PasswordTextWatcher/mIsMatch Z
ifne L1
aload 0
aload 1
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
aload 5
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/PasswordTextWatcher/mResult Ljava/lang/CharSequence;
aload 0
iload 2
putfield com/nd/android/u/cloud/activity/PasswordTextWatcher/mSelectionEnd I
L1:
return
.limit locals 6
.limit stack 4
.end method
