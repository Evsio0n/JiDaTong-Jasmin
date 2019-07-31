.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2
.super java/lang/Object
.implements com/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback
.enclosing method com/nd/schoollife/ui/community/activity/CommunityInfoActivity/onGetCommunityInfoTask()V
.inner class inner com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2
.inner class inner com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;

.method <init>(Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onProcessPreExecute()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
getstatic com/nd/schoollife/R$id/sv_community_info I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ScrollView
bipush 8
invokevirtual android/widget/ScrollView/setVisibility(I)V
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
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
aload 1
checkcast com/nd/schoollife/common/bean/result/ResultGetCommunityInfo
putfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity/communityInfo Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity/communityInfo Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity/communityInfo Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getResultCode()I
sipush 200
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity/communityInfo Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getAvatar()Ljava/lang/String;
astore 1
new com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2$1
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2$1/<init>(Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity$2;)V
astore 4
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity/communityId J
aload 1
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
invokestatic com/nd/schoollife/ui/community/activity/CommunityInfoActivity/access$400(Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;)Lcom/nd/schoollife/ui/common/view/CircleImageView;
aload 4
invokestatic com/nd/schoollife/ui/common/util/CommunityUtils/showAvatar(JLjava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity/communityInfo Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getName()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
getstatic com/nd/schoollife/R$id/tv_community_info_community_name I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity/communityInfo Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getCategory()[Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;
astore 1
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
getstatic com/nd/schoollife/R$id/tv_community_info_category I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 1
iconst_0
aaload
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity/communityInfo Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getTags()[Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;
astore 1
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
invokestatic com/nd/schoollife/ui/community/activity/CommunityInfoActivity/access$500(Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;)Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/clear()V
aload 1
arraylength
iconst_5
if_icmpge L1
aload 1
arraylength
istore 2
L2:
iconst_0
istore 3
L3:
iload 3
iload 2
if_icmpge L4
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
invokestatic com/nd/schoollife/ui/community/activity/CommunityInfoActivity/access$500(Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;)Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 1
iload 3
aaload
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/addTagInfo(Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;)I
pop
iload 3
iconst_1
iadd
istore 3
goto L3
L1:
iconst_5
istore 2
goto L2
L4:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
getstatic com/nd/schoollife/R$id/gv_community_info_signs I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
new com/nd/schoollife/ui/community/adapter/CommunityTagSelectGridviewAdapter
dup
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
invokestatic com/nd/schoollife/ui/community/activity/CommunityInfoActivity/access$500(Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;)Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
invokespecial com/nd/schoollife/ui/community/adapter/CommunityTagSelectGridviewAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;)V
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
getstatic com/nd/schoollife/R$id/tv_community_info_intro I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity/communityInfo Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getIntro()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
getstatic com/nd/schoollife/R$id/sv_community_info I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ScrollView
iconst_0
invokevirtual android/widget/ScrollView/setVisibility(I)V
L5:
return
L0:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity/communityInfo Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;
ifnull L5
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity/communityInfo Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getResultCode()I
bipush -100
if_icmpeq L5
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
getstatic com/nd/schoollife/R$string/loading_faild I
invokevirtual com/nd/schoollife/ui/community/activity/CommunityInfoActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 5
.limit stack 5
.end method
