.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter
.super com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter
.signature "Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter<Lcom/nd/android/forumsdk/business/bean/structure/PostWithActiveBean;>;"

.field private 'mInputContentManager' Lcom/nd/schoollife/ui/common/process/InputContentViewManager;

.method public <init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo;Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
aload 0
aload 1
aload 2
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo;)V
aload 0
aload 3
putfield com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
return
.limit locals 4
.limit stack 3
.end method

.method public getCount()I
aload 0
invokevirtual com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter/getList()Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
invokevirtual com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter/getList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
invokevirtual com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter/getList()Ljava/util/List;
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
new com/nd/schoollife/ui/post/view/SubscribePostListItemView
dup
aload 0
getfield com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/post/view/SubscribePostListItemView/<init>(Landroid/content/Context;)V
astore 3
aload 3
checkcast com/nd/schoollife/ui/post/view/SubscribePostListItemView
aload 0
getfield com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/post/view/SubscribePostListItemView/setInputContentViewManager(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
L0:
aload 3
checkcast com/nd/schoollife/ui/post/view/SubscribePostListItemView
iload 1
aload 0
invokevirtual com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter/getList()Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean
invokevirtual com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean/getPost()Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/schoollife/ui/post/view/SubscribePostListItemView/fillValue(ILcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
aload 3
areturn
.limit locals 4
.limit stack 4
.end method

.method protected isDuplicate(Lcom/nd/android/forumsdk/business/bean/structure/PostWithActiveBean;Lcom/nd/android/forumsdk/business/bean/structure/PostWithActiveBean;)Z
aload 1
ifnull L0
aload 2
ifnonnull L1
L0:
iconst_0
ireturn
L1:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean/getPost()Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean/getPost()Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
lcmp
ifne L0
getstatic com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "isDuplicate postId="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean/getPost()Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/v(Ljava/lang/String;Ljava/lang/String;)V
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method protected volatile synthetic isDuplicate(Ljava/lang/Object;Ljava/lang/Object;)Z
aload 0
aload 1
checkcast com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean
aload 2
checkcast com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean
invokevirtual com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter/isDuplicate(Lcom/nd/android/forumsdk/business/bean/structure/PostWithActiveBean;Lcom/nd/android/forumsdk/business/bean/structure/PostWithActiveBean;)Z
ireturn
.limit locals 3
.limit stack 3
.end method
