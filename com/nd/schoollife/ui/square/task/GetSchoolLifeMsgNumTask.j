.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/task/GetSchoolLifeMsgNumTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;>;"

.field 'mListener' Lcom/nd/schoollife/ui/square/listener/OnGetSchoolLifeMsgNum;

.method public <init>(Lcom/nd/schoollife/ui/square/listener/OnGetSchoolLifeMsgNum;)V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/task/GetSchoolLifeMsgNumTask/mListener Lcom/nd/schoollife/ui/square/listener/OnGetSchoolLifeMsgNum;
return
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Integer;)Ljava/lang/Long;
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getSquareOperator()Lcom/nd/schoollife/controller/operator/ISquareOperator;
invokeinterface com/nd/schoollife/controller/operator/ISquareOperator/getMsgNumTips()Lcom/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips; 0
astore 1
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/getMention()J
lstore 4
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/getPraise()I
istore 2
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/getReply()I
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/getComment()I
iadd
istore 3
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
lload 4
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/setAtMessageNum(J)V
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
iload 2
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/setLikeMessageNum(I)V
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
iload 3
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/setReplyMessageNum(I)V
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/getLatest_u()Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/setFirstShowView(Ljava/lang/String;)V
iload 2
i2l
lload 4
ladd
iload 3
i2l
ladd
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
areturn
.limit locals 6
.limit stack 4
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Integer;
invokevirtual com/nd/schoollife/ui/square/task/GetSchoolLifeMsgNumTask/doInBackground([Ljava/lang/Integer;)Ljava/lang/Long;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
aload 0
getfield com/nd/schoollife/ui/square/task/GetSchoolLifeMsgNumTask/mListener Lcom/nd/schoollife/ui/square/listener/OnGetSchoolLifeMsgNum;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/task/GetSchoolLifeMsgNumTask/mListener Lcom/nd/schoollife/ui/square/listener/OnGetSchoolLifeMsgNum;
aload 1
invokevirtual java/lang/Long/longValue()J
invokeinterface com/nd/schoollife/ui/square/listener/OnGetSchoolLifeMsgNum/getSchoolLifeMsgNum(J)V 2
L0:
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/notifyNumChange()V
return
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Long
invokevirtual com/nd/schoollife/ui/square/task/GetSchoolLifeMsgNumTask/onPostExecute(Ljava/lang/Long;)V
return
.limit locals 2
.limit stack 2
.end method

.method public showCount(J)V
aload 0
getfield com/nd/schoollife/ui/square/task/GetSchoolLifeMsgNumTask/mListener Lcom/nd/schoollife/ui/square/listener/OnGetSchoolLifeMsgNum;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/task/GetSchoolLifeMsgNumTask/mListener Lcom/nd/schoollife/ui/square/listener/OnGetSchoolLifeMsgNum;
lload 1
invokeinterface com/nd/schoollife/ui/square/listener/OnGetSchoolLifeMsgNum/getSchoolLifeMsgNum(J)V 2
L0:
return
.limit locals 3
.limit stack 3
.end method
