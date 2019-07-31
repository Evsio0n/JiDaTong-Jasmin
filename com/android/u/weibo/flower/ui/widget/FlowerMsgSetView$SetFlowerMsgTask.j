.bytecode 50.0
.class public synchronized com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask
.super com/common/android/utils/task/progressTask/ProgressTask
.inner class public SetFlowerMsgTask inner com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask outer com/android/u/weibo/flower/ui/widget/FlowerMsgSetView

.field final synthetic 'this$0' Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;

.method public <init>(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;Landroid/content/Context;I)V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
return
.limit locals 4
.limit stack 3
.end method

.method protected doFail(I)V
aload 0
iload 1
invokespecial com/common/android/utils/task/progressTask/ProgressTask/doFail(I)V
iload 1
getstatic com/android/u/weibo/R$string/wbflower_set_null_record I
if_icmpne L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$200(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)V
L1:
return
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$300(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/contentType I
iconst_1
if_icmpne L1
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$100(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch com/android/u/weibo/weibo/controller/WeiBoException from L4 to L5 using L2
.catch java/io/IOException from L4 to L5 using L3
.catch com/android/u/weibo/weibo/controller/WeiBoException from L5 to L6 using L2
.catch java/io/IOException from L5 to L6 using L3
getstatic com/android/u/weibo/R$string/wbflower_set_msg_err I
istore 2
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$300(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/setFlowerMessage(Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
astore 1
L1:
aload 1
ifnonnull L5
L4:
ldc "SetFlowerMsgTask"
ldc "result null"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$400(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L5:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$300(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/contentType I
iconst_1
if_icmpne L6
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$300(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 1
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_voice Ljava/lang/String;
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setMsgVoice(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$300(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
iconst_0
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setState(I)V
new java/io/File
dup
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$300(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/getMsgVoiceLocal()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$300(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_voice Ljava/lang/String;
invokestatic com/product/android/utils/FileHelper/getDefaultAudioFile(Ljava/lang/String;)Ljava/io/File;
astore 3
aload 1
aload 3
invokevirtual java/io/File/renameTo(Ljava/io/File;)Z
pop
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$300(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 3
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setMsgVoiceLocal(Ljava/lang/String;)V
L6:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$300(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setFlowerMessageInfo(Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)V
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L2:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$400(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L3:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
ldc "SetFlowerMsgTask"
ldc "\u4e0a\u4f20\u6210\u529f\u540e\u91cd\u547d\u540d\u5931\u8d25"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 4
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$100(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)V
return
.limit locals 1
.limit stack 1
.end method
