.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/SearchCommunityActivity$1
.super java/lang/Object
.implements android/text/TextWatcher
.enclosing method com/nd/schoollife/ui/community/activity/SearchCommunityActivity/initEvent()V
.inner class inner com/nd/schoollife/ui/community/activity/SearchCommunityActivity$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;

.method <init>(Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/SearchCommunityActivity/access$000(Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/SearchCommunityActivity/access$000(Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;)Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 2
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
