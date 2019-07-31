.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher
.super java/lang/Object
.implements android/text/TextWatcher
.inner class public static MaxLengthWatcher inner com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher outer com/nd/schoollife/ui/common/util/CommunityUtils

.field private 'editText' Landroid/widget/EditText;

.field private 'mContext' Landroid/content/Context;

.field private 'maxLen' I

.method public <init>(Landroid/content/Context;ILandroid/widget/EditText;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher/maxLen I
aload 0
aconst_null
putfield com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher/editText Landroid/widget/EditText;
aload 0
aload 1
putfield com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher/mContext Landroid/content/Context;
aload 0
iload 2
putfield com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher/maxLen I
aload 0
aload 3
putfield com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher/editText Landroid/widget/EditText;
return
.limit locals 4
.limit stack 2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
return
.limit locals 2
.limit stack 0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
aload 0
getfield com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher/editText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
astore 1
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/length()I
aload 0
getfield com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher/maxLen I
if_icmple L0
aload 0
getfield com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher/mContext Landroid/content/Context;
ldc "\u4e0d\u80fd\u8d85\u8fc7%d\u5b57"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher/maxLen I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
aload 1
invokestatic android/text/Selection/getSelectionEnd(Ljava/lang/CharSequence;)I
istore 3
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
iconst_0
aload 0
getfield com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher/maxLen I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher/editText Landroid/widget/EditText;
aload 1
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher/editText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
astore 1
iload 3
istore 2
iload 3
aload 1
invokeinterface android/text/Editable/length()I 0
if_icmple L1
aload 1
invokeinterface android/text/Editable/length()I 0
istore 2
L1:
aload 1
iload 2
invokestatic android/text/Selection/setSelection(Landroid/text/Spannable;I)V
L0:
return
.limit locals 5
.limit stack 6
.end method
