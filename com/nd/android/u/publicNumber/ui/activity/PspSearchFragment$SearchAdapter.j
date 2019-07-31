.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter
.super android/widget/BaseAdapter
.inner class private SearchAdapter inner com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter outer com/nd/android/u/publicNumber/ui/activity/PspSearchFragment

.field private 'mSearchResults' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/LocalSearchResult;>;"

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter/mSearchResults Ljava/util/List;
aload 0
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter/mSearchResults Ljava/util/List;
return
.limit locals 2
.limit stack 3
.end method

.method public AppendData(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/LocalSearchResult;>;)V"
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter/mSearchResults Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public cleanAllSearchResult()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter/mSearchResults Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter/mSearchResults Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter/mSearchResults Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter/mSearchResults Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/LocalSearchResult
astore 3
aload 2
ifnonnull L0
new com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView
dup
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/<init>(Landroid/content/Context;)V
astore 2
L1:
aload 2
aload 3
invokevirtual com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/updateContent(Lcom/product/android/commonInterface/contact/LocalSearchResult;)V
aload 2
areturn
L0:
aload 2
checkcast com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView
astore 2
goto L1
.limit locals 4
.limit stack 3
.end method

.method public setParam(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/LocalSearchResult;>;)V"
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter/mSearchResults Ljava/util/List;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter/mSearchResults Ljava/util/List;
ifnonnull L0
aload 0
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter/mSearchResults Ljava/util/List;
L0:
return
.limit locals 2
.limit stack 3
.end method
