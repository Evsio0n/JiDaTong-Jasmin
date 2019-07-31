.bytecode 50.0
.class synchronized com/nd/android/u/cloud/manager/CheckinImgManager$2$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/cloud/manager/CheckinImgManager$2/run()V
.inner class inner com/nd/android/u/cloud/manager/CheckinImgManager$2
.inner class inner com/nd/android/u/cloud/manager/CheckinImgManager$2$1

.field final synthetic 'this$1' Lcom/nd/android/u/cloud/manager/CheckinImgManager$2;

.field final synthetic 'val$signed' I

.method <init>(Lcom/nd/android/u/cloud/manager/CheckinImgManager$2;I)V
aload 0
aload 1
putfield com/nd/android/u/cloud/manager/CheckinImgManager$2$1/this$1 Lcom/nd/android/u/cloud/manager/CheckinImgManager$2;
aload 0
iload 2
putfield com/nd/android/u/cloud/manager/CheckinImgManager$2$1/val$signed I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "SimpleDateFormat" 
.end annotation
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager$2$1/val$signed I
ifne L0
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager$2$1/this$1 Lcom/nd/android/u/cloud/manager/CheckinImgManager$2;
getfield com/nd/android/u/cloud/manager/CheckinImgManager$2/this$0 Lcom/nd/android/u/cloud/manager/CheckinImgManager;
invokestatic com/nd/android/u/cloud/manager/CheckinImgManager/access$100(Lcom/nd/android/u/cloud/manager/CheckinImgManager;)Lcom/nd/android/u/cloud/view/widge/FloatView;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager$2$1/this$1 Lcom/nd/android/u/cloud/manager/CheckinImgManager$2;
getfield com/nd/android/u/cloud/manager/CheckinImgManager$2/this$0 Lcom/nd/android/u/cloud/manager/CheckinImgManager;
invokestatic com/nd/android/u/cloud/manager/CheckinImgManager/access$100(Lcom/nd/android/u/cloud/manager/CheckinImgManager;)Lcom/nd/android/u/cloud/view/widge/FloatView;
invokevirtual com/nd/android/u/cloud/view/widge/FloatView/getVisibility()I
ifeq L1
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager$2$1/this$1 Lcom/nd/android/u/cloud/manager/CheckinImgManager$2;
getfield com/nd/android/u/cloud/manager/CheckinImgManager$2/this$0 Lcom/nd/android/u/cloud/manager/CheckinImgManager;
invokestatic com/nd/android/u/cloud/manager/CheckinImgManager/access$100(Lcom/nd/android/u/cloud/manager/CheckinImgManager;)Lcom/nd/android/u/cloud/view/widge/FloatView;
iconst_0
invokevirtual com/nd/android/u/cloud/view/widge/FloatView/setVisibility(I)V
L1:
return
L0:
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager$2$1/this$1 Lcom/nd/android/u/cloud/manager/CheckinImgManager$2;
getfield com/nd/android/u/cloud/manager/CheckinImgManager$2/this$0 Lcom/nd/android/u/cloud/manager/CheckinImgManager;
invokestatic com/nd/android/u/cloud/manager/CheckinImgManager/access$100(Lcom/nd/android/u/cloud/manager/CheckinImgManager;)Lcom/nd/android/u/cloud/view/widge/FloatView;
ifnull L2
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager$2$1/this$1 Lcom/nd/android/u/cloud/manager/CheckinImgManager$2;
getfield com/nd/android/u/cloud/manager/CheckinImgManager$2/this$0 Lcom/nd/android/u/cloud/manager/CheckinImgManager;
invokestatic com/nd/android/u/cloud/manager/CheckinImgManager/access$100(Lcom/nd/android/u/cloud/manager/CheckinImgManager;)Lcom/nd/android/u/cloud/view/widge/FloatView;
bipush 8
invokevirtual com/nd/android/u/cloud/view/widge/FloatView/setVisibility(I)V
L2:
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager$2$1/val$signed I
iconst_1
if_icmpne L1
invokestatic com/nd/android/u/tast/TaskGlobalVariable/getInstance()Lcom/nd/android/u/tast/TaskGlobalVariable;
getfield com/nd/android/u/tast/TaskGlobalVariable/mOapScore Lcom/product/android/commonInterface/task/OapScore;
iconst_1
invokevirtual com/product/android/commonInterface/task/OapScore/setSignstatus(I)V
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
new java/util/Date
dup
invokestatic java/lang/System/currentTimeMillis()J
invokespecial java/util/Date/<init>(J)V
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 1
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "sign_in_one_day"
aload 1
invokevirtual com/product/android/business/manager/DataUpdateManager/save(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 5
.end method
