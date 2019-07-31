.bytecode 50.0
.class synchronized com/nd/rj/common/suggest/view/UISubmitOpinionAty$SubmitTask
.super com/common/android/utils/task/progressTask/ProgressTask
.inner class private SubmitTask inner com/nd/rj/common/suggest/view/UISubmitOpinionAty$SubmitTask outer com/nd/rj/common/suggest/view/UISubmitOpinionAty

.field private 'mCtx' Landroid/content/Context;

.field final synthetic 'this$0' Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;

.method public <init>(Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;Landroid/content/Context;I)V
aload 0
aload 1
putfield com/nd/rj/common/suggest/view/UISubmitOpinionAty$SubmitTask/this$0 Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
aload 0
aload 2
putfield com/nd/rj/common/suggest/view/UISubmitOpinionAty$SubmitTask/mCtx Landroid/content/Context;
return
.limit locals 4
.limit stack 3
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty$SubmitTask/this$0 Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_editSubMessage Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty$SubmitTask/this$0 Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;
invokestatic com/nd/rj/common/suggest/SuggestPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/suggest/SuggestPro;
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty$SubmitTask/mCtx Landroid/content/Context;
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty$SubmitTask/this$0 Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;
invokestatic com/nd/rj/common/suggest/view/UISubmitOpinionAty/access$100(Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;)J
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty$SubmitTask/this$0 Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;
invokestatic com/nd/rj/common/suggest/view/UISubmitOpinionAty/access$000(Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty$SubmitTask/this$0 Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;
invokestatic com/nd/rj/common/suggest/view/UISubmitOpinionAty/access$200(Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;)Ljava/lang/String;
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
invokevirtual com/nd/rj/common/suggest/view/UISubmitOpinionAty$SubmitTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty$SubmitTask/this$0 Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;
getstatic com/nd/rj/common/R$string/suggest_success I
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty$SubmitTask/this$0 Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_editSubMessage Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty$SubmitTask/this$0 Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_editConti Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
new com/nd/rj/common/suggest/view/UISubmitOpinionAty$GetSuggestTask
dup
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty$SubmitTask/this$0 Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty$SubmitTask/mCtx Landroid/content/Context;
getstatic com/nd/rj/common/R$string/suggest_downing I
invokespecial com/nd/rj/common/suggest/view/UISubmitOpinionAty$GetSuggestTask/<init>(Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;Landroid/content/Context;I)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/rj/common/suggest/view/UISubmitOpinionAty$GetSuggestTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method
