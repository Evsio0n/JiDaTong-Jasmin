.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Integer;>;"
.inner class private IsAlreadyBeanSeniorTask inner com/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask outer com/nd/android/u/cloud/activity/SeniorApplyActivity

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;

.method private <init>(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask/<init>(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
iconst_0
istore 2
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getSeniorSystemCom()Lcom/nd/android/u/contact/com/OapSeniorSystemCom;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$000(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)J
invokevirtual com/nd/android/u/contact/com/OapSeniorSystemCom/isAlreadyBeanSenior(J)Z
istore 3
L1:
iload 3
ifeq L3
iconst_1
istore 2
L3:
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L3
.limit locals 4
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
aload 1
invokevirtual java/lang/Integer/intValue()I
tableswitch 1
L0
default : L1
L1:
return
L0:
iconst_1
putstatic com/nd/android/u/contact/business/ContactGlobalVariable/gHasBeanSenior Z
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveHasBeanSenior()V
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/INSTANCE Lcom/product/android/business/broadcast/PersonInfoBroadHelper;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
new com/product/android/business/login/BindUser
dup
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokespecial com/product/android/business/login/BindUser/<init>(Lcom/product/android/commonInterface/contact/OapUser;)V
invokevirtual com/product/android/business/broadcast/PersonInfoBroadHelper/sendModifyMyInfoBroadCast(Landroid/content/Context;Lcom/product/android/business/login/BindUser;)V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$600(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setEnabled(Z)V
return
.limit locals 2
.limit stack 5
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Integer
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity$IsAlreadyBeanSeniorTask/onPostExecute(Ljava/lang/Integer;)V
return
.limit locals 2
.limit stack 2
.end method
