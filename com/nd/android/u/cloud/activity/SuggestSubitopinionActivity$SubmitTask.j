.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$SubmitTask
.super com/common/android/utils/task/progressTask/ProgressTask
.inner class private SubmitTask inner com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$SubmitTask outer com/nd/android/u/cloud/activity/SuggestSubitopinionActivity

.field private 'mCtx' Landroid/content/Context;

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;

.method public <init>(Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;Landroid/content/Context;I)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$SubmitTask/this$0 Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
aload 0
aload 2
putfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$SubmitTask/mCtx Landroid/content/Context;
return
.limit locals 4
.limit stack 3
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$SubmitTask/this$0 Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_editSubMessage Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$SubmitTask/this$0 Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;
invokestatic com/nd/rj/common/suggest/SuggestPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/suggest/SuggestPro;
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$SubmitTask/mCtx Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$SubmitTask/this$0 Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;
invokestatic com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/access$100(Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;)J
getstatic com/product/android/business/config/Configuration/SUGGESTPRODID Ljava/lang/String;
getstatic com/product/android/business/config/Configuration/SUGGESTPRODNAME Ljava/lang/String;
aload 1
invokevirtual com/nd/rj/common/suggest/SuggestPro/addNewSuggest(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 7
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$SubmitTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
new com/nd/rj/common/suggest/entity/SuggestInfo
dup
invokespecial com/nd/rj/common/suggest/entity/SuggestInfo/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$SubmitTask/this$0 Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;
ldc "yyyy-MM-dd"
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/millisToDateTime(Ljava/lang/String;J)Ljava/lang/String;
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/setSuggestDate(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$SubmitTask/this$0 Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_editSubMessage Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/setSuggest(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$SubmitTask/this$0 Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;
invokevirtual com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131495287
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/setRespond(Ljava/lang/String;)V
aload 1
ldc ""
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/setRespondDate(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$SubmitTask/this$0 Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_suggestInfos Ljava/util/ArrayList;
iconst_0
aload 1
invokevirtual java/util/ArrayList/add(ILjava/lang/Object;)V
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$SubmitTask/this$0 Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_suggestListAdapter Lcom/nd/rj/common/suggest/view/SuggestListAdapter;
invokevirtual com/nd/rj/common/suggest/view/SuggestListAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$SubmitTask/this$0 Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;
ldc_w 2131495283
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$SubmitTask/this$0 Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_editSubMessage Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$SubmitTask/this$0 Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_editConti Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 5
.end method
