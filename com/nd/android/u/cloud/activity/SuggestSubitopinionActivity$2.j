.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$2
.super java/lang/Object
.implements android/text/TextWatcher
.enclosing method com/nd/android/u/cloud/activity/SuggestSubitopinionActivity
.inner class inner com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$2/this$0 Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$2/this$0 Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_editSubMessage Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/length()I
istore 2
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$2/this$0 Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;
ldc_w 2131495281
invokevirtual com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
sipush 140
iload 2
isub
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$2/this$0 Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_textViewHit Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 6
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
