.bytecode 50.0
.class public synchronized com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$DelFlowerMsgTask
.super com/common/android/utils/task/progressTask/ProgressTask
.inner class public DelFlowerMsgTask inner com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$DelFlowerMsgTask outer com/android/u/weibo/flower/ui/widget/FlowerMsgSetView

.field final synthetic 'this$0' Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;

.method public <init>(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;Landroid/content/Context;I)V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$DelFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
return
.limit locals 4
.limit stack 3
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$DelFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$300(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/type I
istore 3
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$DelFlowerMsgTask/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
iload 3
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$DelFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$300(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/contentType I
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$DelFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$300(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/state I
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/delFlowerMessage(III)I
istore 2
iload 2
ifeq L0
getstatic com/android/u/weibo/R$string/wbflower_del_msg_err I
istore 2
L1:
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$DelFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
new com/product/android/commonInterface/weibo/FlowerMessageInfo
dup
invokespecial com/product/android/commonInterface/weibo/FlowerMessageInfo/<init>()V
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$302(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
pop
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$DelFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$300(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
iload 3
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setType(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$DelFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$300(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setUid(J)V
goto L1
.limit locals 4
.limit stack 4
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$DelFlowerMsgTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$DelFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$200(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)V
return
.limit locals 1
.limit stack 1
.end method
