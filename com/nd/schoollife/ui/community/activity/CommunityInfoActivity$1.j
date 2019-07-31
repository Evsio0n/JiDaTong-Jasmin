.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/CommunityInfoActivity$1
.super java/lang/Object
.implements com/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback
.enclosing method com/nd/schoollife/ui/community/activity/CommunityInfoActivity/onUpdateUserImageTask(Landroid/graphics/Bitmap;)V
.inner class inner com/nd/schoollife/ui/community/activity/CommunityInfoActivity$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;

.field final synthetic 'val$bmp' Landroid/graphics/Bitmap;

.method <init>(Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;Landroid/graphics/Bitmap;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
aload 0
aload 2
putfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$1/val$bmp Landroid/graphics/Bitmap;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onProcessPreExecute()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
iconst_1
invokestatic com/nd/schoollife/ui/community/activity/CommunityInfoActivity/access$202(Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;Z)Z
pop
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
invokevirtual com/nd/schoollife/ui/community/activity/CommunityInfoActivity/showLoading()V
return
.limit locals 1
.limit stack 2
.end method

.method public transient onProcessingExecute([Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onProcessingPostExecute(Ljava/lang/Object;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
invokevirtual com/nd/schoollife/ui/community/activity/CommunityInfoActivity/dismissLoading()V
aload 1
ifnull L0
aload 1
instanceof com/nd/schoollife/common/bean/SchoolLifeResultBase
ifeq L0
aload 1
checkcast com/nd/schoollife/common/bean/SchoolLifeResultBase
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getResultCode()I
sipush 200
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$1/val$bmp Landroid/graphics/Bitmap;
invokestatic com/nd/schoollife/ui/community/activity/CommunityInfoActivity/access$300(Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;Landroid/graphics/Bitmap;)V
L0:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
iconst_0
invokestatic com/nd/schoollife/ui/community/activity/CommunityInfoActivity/access$202(Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;Z)Z
pop
return
.limit locals 2
.limit stack 2
.end method
