.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$GetSuggestTask
.super com/common/android/utils/task/progressTask/ProgressTask
.inner class private GetSuggestTask inner com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$GetSuggestTask outer com/nd/android/u/cloud/activity/SuggestSubitopinionActivity

.field private 'mCtx' Landroid/content/Context;

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;

.method public <init>(Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;Landroid/content/Context;I)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$GetSuggestTask/this$0 Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
aload 0
aload 2
putfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$GetSuggestTask/mCtx Landroid/content/Context;
return
.limit locals 4
.limit stack 3
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$GetSuggestTask/this$0 Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;
invokestatic com/nd/rj/common/suggest/SuggestPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/suggest/SuggestPro;
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$GetSuggestTask/mCtx Landroid/content/Context;
getstatic com/product/android/business/config/Configuration/SUGGESTPRODID Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$GetSuggestTask/this$0 Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;
invokestatic com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/access$100(Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;)J
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$GetSuggestTask/this$0 Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_suggestInfos Ljava/util/ArrayList;
iconst_1
invokevirtual com/nd/rj/common/suggest/SuggestPro/getSuggestList(Landroid/content/Context;Ljava/lang/String;JLjava/util/ArrayList;Z)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 7
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$GetSuggestTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$GetSuggestTask/this$0 Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_suggestListAdapter Lcom/nd/rj/common/suggest/view/SuggestListAdapter;
invokevirtual com/nd/rj/common/suggest/view/SuggestListAdapter/notifyDataSetChanged()V
iconst_0
invokestatic com/nd/android/u/cloud/manager/SuggestManager/setSugguestPer(Z)V
return
.limit locals 1
.limit stack 1
.end method
