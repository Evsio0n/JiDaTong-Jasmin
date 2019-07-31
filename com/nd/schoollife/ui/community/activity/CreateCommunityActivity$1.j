.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/CreateCommunityActivity$1
.super java/lang/Object
.implements android/view/View$OnTouchListener
.enclosing method com/nd/schoollife/ui/community/activity/CreateCommunityActivity/initEvent()V
.inner class inner com/nd/schoollife/ui/community/activity/CreateCommunityActivity$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;

.method <init>(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$200(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Landroid/view/GestureDetector;
aload 2
invokevirtual android/view/GestureDetector/onTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
.limit locals 3
.limit stack 2
.end method
