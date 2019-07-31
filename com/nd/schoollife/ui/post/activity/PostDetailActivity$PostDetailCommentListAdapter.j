.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter
.super com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter
.signature "Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter<Lcom/nd/schoollife/common/bean/result/CommentInfoBean;>;"
.inner class private PostDetailCommentListAdapter inner com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter outer com/nd/schoollife/ui/post/activity/PostDetailActivity

.field private 'ctx' Landroid/content/Context;

.field private 'mDeleOnClickListener' Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;

.field private 'mMainPost' Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;

.method public <init>(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
aload 0
aload 2
aload 3
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;)V
aload 0
aload 2
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/ctx Landroid/content/Context;
aload 0
aload 4
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/mDeleOnClickListener Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;
return
.limit locals 5
.limit stack 3
.end method

.method public getCount()I
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/getList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/getList()Ljava/util/List;
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
new com/nd/schoollife/ui/post/view/PostDetailCommentListItemView
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/ctx Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/mDeleOnClickListener Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$200(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokespecial com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/post/view/ReplyListItemView$DeleteReplyOnClickListener;Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
astore 3
aload 3
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokevirtual com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/setDeleteCommentOnClickListener(Lcom/nd/schoollife/ui/post/view/PostDetailCommentListItemView$DeleteCommentOnClickListener;)V
aload 3
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokevirtual com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/setPositionListener(Lcom/nd/schoollife/ui/square/listener/PositionListener;)V
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/mMainPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/mMainPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/mMainPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
ifnull L1
aload 3
checkcast com/nd/schoollife/ui/post/view/PostDetailCommentListItemView
iload 1
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/getList()Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/result/CommentInfoBean
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/mMainPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/mMainPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getType()I
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/mMainPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getRole()I
invokevirtual com/nd/schoollife/ui/post/view/PostDetailCommentListItemView/fillValue(ILcom/nd/schoollife/common/bean/result/CommentInfoBean;JII)V
L1:
aload 3
areturn
.limit locals 4
.limit stack 7
.end method

.method protected isDuplicate(Lcom/nd/schoollife/common/bean/result/CommentInfoBean;Lcom/nd/schoollife/common/bean/result/CommentInfoBean;)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method protected volatile synthetic isDuplicate(Ljava/lang/Object;Ljava/lang/Object;)Z
aload 0
aload 1
checkcast com/nd/schoollife/common/bean/result/CommentInfoBean
aload 2
checkcast com/nd/schoollife/common/bean/result/CommentInfoBean
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/isDuplicate(Lcom/nd/schoollife/common/bean/result/CommentInfoBean;Lcom/nd/schoollife/common/bean/result/CommentInfoBean;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public setMainPost(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity$PostDetailCommentListAdapter/mMainPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
return
.limit locals 2
.limit stack 2
.end method
