.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class MyCategoryAdapter inner com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter outer com/nd/schoollife/ui/community/activity/SearchCommunityActivity
.inner class inner com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter$1

.field final synthetic 'this$1' Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter;

.field final synthetic 'val$categoryID' J

.field final synthetic 'val$categoryName' Ljava/lang/String;

.method <init>(Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter;JLjava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter$1/this$1 Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter;
aload 0
lload 2
putfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter$1/val$categoryID J
aload 0
aload 4
putfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter$1/val$categoryName Ljava/lang/String;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 5
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter$1/this$1 Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter;
invokestatic com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/access$300(Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter$1/val$categoryID J
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter$1/val$categoryName Ljava/lang/String;
invokestatic com/nd/schoollife/ui/community/activity/SearchCommunityActivity/jumpToSearchByCategory(Landroid/content/Context;JLjava/lang/String;)Z
pop
return
.limit locals 2
.limit stack 4
.end method
