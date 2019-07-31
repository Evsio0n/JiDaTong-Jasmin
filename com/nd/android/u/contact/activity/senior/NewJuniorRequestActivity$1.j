.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$1
.super java/lang/Object
.implements com/nd/android/u/contact/adapter/NewJuniorRequestAdapter$OnItemClickListener
.enclosing method com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/initEvent()V
.inner class inner com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;

.method <init>(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$1/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public agreeJuniorRequest(Landroid/view/View;I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$1/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
getstatic com/nd/android/u/contact/R$string/server_request_fail I
invokestatic com/common/android/utils/ToastUtils/display(I)V
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$1/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$000(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$1/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
iload 2
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$1/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$000(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
iload 2
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dataStructure/SeniorInfo
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$100(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;Ljava/lang/String;Lcom/nd/android/u/contact/dataStructure/SeniorInfo;)V
return
.limit locals 3
.limit stack 4
.end method
