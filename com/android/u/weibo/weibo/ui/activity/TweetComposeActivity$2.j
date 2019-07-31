.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$2
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/initComponent()V
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$2

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)I
if_icmpge L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/getCount()I
iload 3
iconst_1
iadd
if_icmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
iconst_0
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$500(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;Z)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Z
ifeq L1
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
new com/android/u/weibo/weibo/business/bean/WbImage
dup
invokespecial com/android/u/weibo/weibo/business/bean/WbImage/<init>()V
astore 6
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Ljava/util/ArrayList;
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
astore 7
aload 6
aload 7
putfield com/android/u/weibo/weibo/business/bean/WbImage/image_thumb Ljava/lang/String;
aload 6
aload 7
putfield com/android/u/weibo/weibo/business/bean/WbImage/image_original Ljava/lang/String;
aload 2
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
ldc "image_position"
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
aload 1
aload 2
bipush 105
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toPanonamaGL(Landroid/app/Activity;Landroid/content/Intent;Ljava/util/List;I)V
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Ljava/util/ArrayList;
iload 3
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$700(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;Ljava/util/ArrayList;I)V
return
.limit locals 8
.limit stack 4
.end method
