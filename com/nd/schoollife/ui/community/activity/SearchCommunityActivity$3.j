.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/SearchCommunityActivity$3
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/community/activity/SearchCommunityActivity/createAndFillView(Lcom/nd/schoollife/common/bean/result/ResultGetCommunityHotKey;)V
.inner class inner com/nd/schoollife/ui/community/activity/SearchCommunityActivity$3

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;

.field final synthetic 'val$key' Ljava/lang/String;

.method <init>(Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$3/this$0 Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;
aload 0
aload 2
putfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$3/val$key Ljava/lang/String;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$3/this$0 Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$3/val$key Ljava/lang/String;
invokestatic com/nd/schoollife/ui/community/activity/SearchCommunityActivity/jumpToSearchByKey(Landroid/content/Context;Ljava/lang/String;)Z
pop
return
.limit locals 2
.limit stack 2
.end method
