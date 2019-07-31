.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity$2
.super java/lang/Object
.implements android/view/View$OnKeyListener
.enclosing method com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/initEvent()V
.inner class inner com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity$2

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;

.method <init>(Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;
invokestatic com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/access$100(Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;)Landroid/widget/EditText;
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
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;
invokestatic com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/access$100(Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;
ldc "\u8bf7\u8f93\u5165\u5173\u952e\u8bcd\uff01"
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
iconst_1
ireturn
L1:
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;
iconst_1
invokestatic com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/access$202(Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;I)I
pop
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;
invokestatic com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/access$100(Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;
invokestatic com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/access$200(Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;)I
bipush 10
iconst_1
invokestatic com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/access$300(Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;Lcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/String;IIZ)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;
invokestatic com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity/access$400(Lcom/nd/schoollife/ui/community/activity/SearchCommunityResultActivity;)Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter;
invokevirtual com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/clearData()V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 6
.end method
