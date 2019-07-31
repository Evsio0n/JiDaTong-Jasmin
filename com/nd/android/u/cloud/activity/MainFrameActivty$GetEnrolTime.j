.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MainFrameActivty$GetEnrolTime
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Long;>;"
.inner class GetEnrolTime inner com/nd/android/u/cloud/activity/MainFrameActivty$GetEnrolTime outer com/nd/android/u/cloud/activity/MainFrameActivty

.field 'joinTime' J

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MainFrameActivty;

.method public <init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;J)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MainFrameActivty$GetEnrolTime/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
lload 2
putfield com/nd/android/u/cloud/activity/MainFrameActivty$GetEnrolTime/joinTime J
return
.limit locals 4
.limit stack 3
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance()Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "junior_time_from_net"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
lconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadLongKey(Ljava/lang/String;J)J
lstore 2
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance()Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "get_junior_time"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
lconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadLongKey(Ljava/lang/String;J)J
lstore 4
invokestatic java/lang/System/currentTimeMillis()J
lload 4
lsub
ldc2_w 86400000L
lcmp
ifle L3
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getSeniorSystemCom()Lcom/nd/android/u/contact/com/OapSeniorSystemCom;
invokevirtual com/nd/android/u/contact/com/OapSeniorSystemCom/getEnrolTime()J
lstore 4
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance()Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "junior_time_from_net"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
lload 4
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveLongKey(Ljava/lang/String;J)V
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance()Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "get_junior_time"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveLongKey(Ljava/lang/String;J)V
L1:
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L3:
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
areturn
.limit locals 6
.limit stack 4
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty$GetEnrolTime/doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
aload 1
astore 2
aload 1
invokevirtual java/lang/Long/longValue()J
lconst_0
lcmp
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$GetEnrolTime/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
invokestatic com/nd/android/u/cloud/activity/MainFrameActivty/access$000(Lcom/nd/android/u/cloud/activity/MainFrameActivty;)J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
astore 2
L0:
aload 2
invokevirtual java/lang/Long/longValue()J
ldc2_w 1000L
ldiv
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$GetEnrolTime/joinTime J
lconst_0
lcmp
ifne L1
iconst_0
putstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
L2:
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
ifeq L3
invokestatic com/nd/android/u/contact/listener/ContactDispatcher/getInstance()Lcom/nd/android/u/contact/listener/ContactDispatcher;
sipush 2000
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$GetEnrolTime/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
invokevirtual com/nd/android/u/contact/listener/ContactDispatcher/registerObserver(ILcom/nd/android/u/contact/listener/ContactObserver;)V
L3:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$GetEnrolTime/joinTime J
aload 1
invokevirtual java/lang/Long/longValue()J
lcmp
ifge L4
iconst_1
putstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance()Lcom/product/android/utils/SharedPreferenceHelper;
invokevirtual com/product/android/utils/SharedPreferenceHelper/getHasBeanSenior()Z
ifne L5
new com/nd/android/u/cloud/activity/MainFrameActivty$JudgeSenior
dup
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$GetEnrolTime/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty$JudgeSenior/<init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty$JudgeSenior/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
goto L2
L5:
iconst_1
putstatic com/nd/android/u/contact/business/ContactGlobalVariable/gHasBeanSenior Z
goto L2
L4:
iconst_0
putstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
goto L2
.limit locals 3
.limit stack 4
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Long
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty$GetEnrolTime/onPostExecute(Ljava/lang/Long;)V
return
.limit locals 2
.limit stack 2
.end method
