.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/OtherContactActivity$2
.super java/lang/Object
.implements android/text/TextWatcher
.enclosing method com/nd/android/u/cloud/activity/OtherContactActivity
.inner class inner com/nd/android/u/cloud/activity/OtherContactActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/OtherContactActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/OtherContactActivity$2/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
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
getfield com/nd/android/u/cloud/activity/OtherContactActivity$2/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$600(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$2/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
iconst_1
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedSign Z
return
.limit locals 5
.limit stack 2
.end method
