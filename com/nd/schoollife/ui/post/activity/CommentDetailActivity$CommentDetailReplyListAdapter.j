.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter
.super com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter
.signature "Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter<Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;>;"
.inner class private CommentDetailReplyListAdapter inner com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter outer com/nd/schoollife/ui/post/activity/CommentDetailActivity

.field private 'mDelebtnOnClickListener' Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;

.field private 'mPostUserId' J

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;

.method public <init>(Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter/this$0 Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;
aload 0
aload 2
aload 3
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;)V
aload 0
aload 4
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter/mDelebtnOnClickListener Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;
return
.limit locals 5
.limit stack 3
.end method

.method public getCount()I
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter/getList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter/getList()Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
astore 3
aload 2
ifnonnull L0
new com/nd/schoollife/ui/post/view/ReplyListItemView
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter/mCtx Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter/mDelebtnOnClickListener Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter/this$0 Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/CommentDetailActivity/access$000(Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokespecial com/nd/schoollife/ui/post/view/ReplyListItemView/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
astore 3
L0:
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter/getList()Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
ifnull L1
aload 3
checkcast com/nd/schoollife/ui/post/view/ReplyListItemView
iload 1
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter/getList()Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter/mPostUserId J
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter/this$0 Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/CommentDetailActivity/access$100(Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;)Lcom/nd/schoollife/common/bean/result/CommentInfoBean;
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter/this$0 Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/CommentDetailActivity/access$200(Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;)I
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter/this$0 Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/CommentDetailActivity/access$300(Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;)I
invokevirtual com/nd/schoollife/ui/post/view/ReplyListItemView/fillValue(ILcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;JJII)V
L1:
aload 3
areturn
.limit locals 4
.limit stack 9
.end method

.method protected isDuplicate(Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method protected volatile synthetic isDuplicate(Ljava/lang/Object;Ljava/lang/Object;)Z
aload 0
aload 1
checkcast com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
aload 2
checkcast com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
invokevirtual com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter/isDuplicate(Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public setPostUserId(J)V
aload 0
lload 1
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity$CommentDetailReplyListAdapter/mPostUserId J
return
.limit locals 3
.limit stack 3
.end method
