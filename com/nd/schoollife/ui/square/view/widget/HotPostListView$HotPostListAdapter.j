.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter
.super com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter
.signature "Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;"
.inner class private HotPostListAdapter inner com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter outer com/nd/schoollife/ui/square/view/widget/HotPostListView

.field private 'mInputContentManager' Lcom/nd/schoollife/ui/common/process/InputContentViewManager;

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;

.method public <init>(Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/this$0 Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;
aload 0
aload 2
aload 3
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;)V
aload 0
aload 4
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
return
.limit locals 5
.limit stack 3
.end method

.method public getCount()I
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/getList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/getList()Ljava/util/List;
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
new com/nd/schoollife/ui/post/view/HotPostListItemView
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/this$0 Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;
invokestatic com/nd/schoollife/ui/square/view/widget/HotPostListView/access$100(Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;)Landroid/app/Activity;
invokespecial com/nd/schoollife/ui/post/view/HotPostListItemView/<init>(Landroid/content/Context;)V
astore 3
aload 3
checkcast com/nd/schoollife/ui/post/view/HotPostListItemView
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/post/view/HotPostListItemView/setInputContentViewManager(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
L0:
aload 3
checkcast com/nd/schoollife/ui/post/view/HotPostListItemView
iload 1
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/getList()Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
invokevirtual com/nd/schoollife/ui/post/view/HotPostListItemView/fillValue(ILcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
aload 3
areturn
.limit locals 4
.limit stack 4
.end method

.method protected isDuplicate(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)Z
aload 1
ifnull L0
aload 2
ifnonnull L1
L0:
iconst_0
ireturn
L1:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
lcmp
ifne L0
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method protected volatile synthetic isDuplicate(Ljava/lang/Object;Ljava/lang/Object;)Z
aload 0
aload 1
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
aload 2
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/isDuplicate(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)Z
ireturn
.limit locals 3
.limit stack 3
.end method
