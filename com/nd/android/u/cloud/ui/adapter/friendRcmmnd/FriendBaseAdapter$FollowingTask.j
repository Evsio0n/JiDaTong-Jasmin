.bytecode 50.0
.class synchronized com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
.inner class private FollowingTask inner com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask outer com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter

.field private 'mUid' Ljava/lang/Long;

.field private 'retString' Ljava/lang/StringBuilder;

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter;

.method public <init>(Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter;J)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask/this$0 Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
putfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask/retString Ljava/lang/StringBuilder;
aload 0
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
putfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask/mUid Ljava/lang/Long;
return
.limit locals 4
.limit stack 3
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask/retString Ljava/lang/StringBuilder;
iconst_0
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask/retString Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask/this$0 Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask/mUid Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask/retString Ljava/lang/StringBuilder;
invokevirtual com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/follow(JLjava/lang/StringBuilder;)Z
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 4
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask/this$0 Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter;
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/mListAction Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask/mUid Ljava/lang/Long;
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
aload 1
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask/this$0 Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter;
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/mContext Landroid/content/Context;
ldc_w 2131493644
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask/this$0 Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask/mUid Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokevirtual com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/getUserName(J)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
L1:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask/retString Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask/this$0 Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter;
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/mContext Landroid/content/Context;
ldc_w 2131493643
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask/this$0 Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask/mUid Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokevirtual com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/getUserName(J)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
goto L1
L2:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask/retString Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
goto L1
.limit locals 2
.limit stack 7
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Boolean
invokevirtual com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask/onPostExecute(Ljava/lang/Boolean;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPreExecute()V
return
.limit locals 1
.limit stack 1
.end method
