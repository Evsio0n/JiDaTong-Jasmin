.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter/bindData(ILcom/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter$ViewHolder;)V
.inner class inner com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter;

.field final synthetic 'val$source' Lcom/nd/schoollife/common/bean/structure/RecommandSourceBean;

.method <init>(Lcom/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter;Lcom/nd/schoollife/common/bean/structure/RecommandSourceBean;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter$1/this$0 Lcom/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter;
aload 0
aload 2
putfield com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter$1/val$source Lcom/nd/schoollife/common/bean/structure/RecommandSourceBean;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter$1/val$source Lcom/nd/schoollife/common/bean/structure/RecommandSourceBean;
ifnull L0
ldc "user"
aload 0
getfield com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter$1/val$source Lcom/nd/schoollife/common/bean/structure/RecommandSourceBean;
invokevirtual com/nd/schoollife/common/bean/structure/RecommandSourceBean/getType()Ljava/lang/String;
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L0
aload 0
getfield com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter$1/val$source Lcom/nd/schoollife/common/bean/structure/RecommandSourceBean;
invokevirtual com/nd/schoollife/common/bean/structure/RecommandSourceBean/getUser()Lcom/nd/schoollife/common/bean/structure/CommunityUserInfoBean;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter$1/this$0 Lcom/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter;
invokestatic com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter/access$100(Lcom/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter$1/val$source Lcom/nd/schoollife/common/bean/structure/RecommandSourceBean;
invokevirtual com/nd/schoollife/common/bean/structure/RecommandSourceBean/getUser()Lcom/nd/schoollife/common/bean/structure/CommunityUserInfoBean;
invokevirtual com/nd/schoollife/common/bean/structure/CommunityUserInfoBean/getUid()J
invokestatic com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel/gotoUserMainActivity(Landroid/content/Context;J)V
L1:
return
L0:
aload 0
getfield com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter$1/val$source Lcom/nd/schoollife/common/bean/structure/RecommandSourceBean;
ifnull L1
ldc "tags"
aload 0
getfield com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter$1/val$source Lcom/nd/schoollife/common/bean/structure/RecommandSourceBean;
invokevirtual com/nd/schoollife/common/bean/structure/RecommandSourceBean/getType()Ljava/lang/String;
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L1
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter$1/this$0 Lcom/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter;
invokestatic com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter/access$200(Lcom/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter;)Landroid/content/Context;
ldc com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "keyWord"
aload 0
getfield com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter$1/val$source Lcom/nd/schoollife/common/bean/structure/RecommandSourceBean;
invokevirtual com/nd/schoollife/common/bean/structure/RecommandSourceBean/getTag()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter$1/this$0 Lcom/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter;
invokestatic com/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter/access$300(Lcom/nd/schoollife/ui/community/adapter/RecommendCommunityAdapter;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method
