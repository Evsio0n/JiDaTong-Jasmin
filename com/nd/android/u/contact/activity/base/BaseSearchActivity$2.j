.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/base/BaseSearchActivity$2
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/base/BaseSearchActivity
.inner class inner com/nd/android/u/contact/activity/base/BaseSearchActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;

.method <init>(Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity$2/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$2/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/recommendAdapter Lcom/nd/android/u/contact/adapter/RecommendFriendAdapter;
ifnonnull L0
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$2/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
new com/nd/android/u/contact/adapter/RecommendFriendAdapter
dup
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$2/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$2/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/commonList Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$2/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mIsBackpackSendflower Z
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$2/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
invokespecial com/nd/android/u/contact/adapter/RecommendFriendAdapter/<init>(Landroid/content/Context;Ljava/util/List;ZLcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;)V
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/recommendAdapter Lcom/nd/android/u/contact/adapter/RecommendFriendAdapter;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$2/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/lvRecommend Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$2/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/recommendAdapter Lcom/nd/android/u/contact/adapter/RecommendFriendAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
L0:
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$2/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/commonList Ljava/util/ArrayList;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$2/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/commonList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$2/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/recommendAdapter Lcom/nd/android/u/contact/adapter/RecommendFriendAdapter;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$2/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/commonList Ljava/util/ArrayList;
invokevirtual com/nd/android/u/contact/adapter/RecommendFriendAdapter/setList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$2/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/recommendAdapter Lcom/nd/android/u/contact/adapter/RecommendFriendAdapter;
invokevirtual com/nd/android/u/contact/adapter/RecommendFriendAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$2/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/layoutRecommend Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L1:
return
.limit locals 3
.limit stack 7
.end method
