.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/SearchCommunityActivity$2
.super java/lang/Object
.implements android/view/View$OnKeyListener
.enclosing method com/nd/schoollife/ui/community/activity/SearchCommunityActivity/initEvent()V
.inner class inner com/nd/schoollife/ui/community/activity/SearchCommunityActivity$2

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;

.method <init>(Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/SearchCommunityActivity/access$100(Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;)Landroid/widget/EditText;
ifnull L0
aload 3
invokevirtual android/view/KeyEvent/getAction()I
iconst_1
if_icmpne L0
iload 2
bipush 66
if_icmpne L0
aload 1
invokevirtual android/view/View/cancelLongPress()V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/SearchCommunityActivity/access$100(Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/ui/community/activity/SearchCommunityActivity/jumpToSearchByKey(Landroid/content/Context;Ljava/lang/String;)Z
ireturn
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 2
.end method
