.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/MessageInfo
.super java/lang/Object
.implements java/io/Serializable

.field private 'mFailednum' I

.field private 'mId' I

.field private 'mIsCheck' Z

.field private 'mIsRead' I

.field private 'mIssuccess' I

.field private 'mMsg' Ljava/lang/String;

.field private 'mMsgtype' I

.field private 'mReplynum' I

.field private 'mSelfuid' J

.field private 'mSendtoname' Ljava/lang/String;

.field private 'mSmsid' Ljava/lang/String;

.field private 'mSucnum' I

.field private 'mTime' Ljava/util/Date;

.field private 'mTotalnum' I

.field private 'receiveradmit' I

.field private 'receiverids' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final getFailednum()I
aload 0
getfield com/nd/android/u/contact/dataStructure/MessageInfo/mFailednum I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getId()I
aload 0
getfield com/nd/android/u/contact/dataStructure/MessageInfo/mId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getIsRead()I
aload 0
getfield com/nd/android/u/contact/dataStructure/MessageInfo/mIsRead I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getIssuccess()I
aload 0
getfield com/nd/android/u/contact/dataStructure/MessageInfo/mIssuccess I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getMsg()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/MessageInfo/mMsg Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getMsgtype()I
aload 0
getfield com/nd/android/u/contact/dataStructure/MessageInfo/mMsgtype I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getReceiver_ids()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/MessageInfo/receiverids Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getReceiveradmit()I
aload 0
getfield com/nd/android/u/contact/dataStructure/MessageInfo/receiveradmit I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getReplynum()I
aload 0
getfield com/nd/android/u/contact/dataStructure/MessageInfo/mReplynum I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getSelfuid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/MessageInfo/mSelfuid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final getSendtoname()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/MessageInfo/mSendtoname Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getSmsid()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/MessageInfo/mSmsid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getSucnum()I
aload 0
getfield com/nd/android/u/contact/dataStructure/MessageInfo/mSucnum I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getTime()Ljava/util/Date;
aload 0
getfield com/nd/android/u/contact/dataStructure/MessageInfo/mTime Ljava/util/Date;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getTotalnum()I
aload 0
getfield com/nd/android/u/contact/dataStructure/MessageInfo/mTotalnum I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final initValueByJson(Lorg/json/JSONObject;)V
aload 0
iconst_1
putfield com/nd/android/u/contact/dataStructure/MessageInfo/mIsRead I
aload 0
aload 1
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/MessageInfo/mTotalnum I
aload 0
aload 1
ldc "success"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/MessageInfo/mSucnum I
aload 0
aload 1
ldc "failed"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/MessageInfo/mFailednum I
aload 0
aload 1
ldc "status"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/MessageInfo/mReplynum I
return
.limit locals 2
.limit stack 3
.end method

.method public final isCheck()Z
aload 0
getfield com/nd/android/u/contact/dataStructure/MessageInfo/mIsCheck Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final setCheck(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/MessageInfo/mIsCheck Z
return
.limit locals 2
.limit stack 2
.end method

.method public final setFailednum(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/MessageInfo/mFailednum I
return
.limit locals 2
.limit stack 2
.end method

.method public final setId(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/MessageInfo/mId I
return
.limit locals 2
.limit stack 2
.end method

.method public final setIsRead(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/MessageInfo/mIsRead I
return
.limit locals 2
.limit stack 2
.end method

.method public final setIssuccess(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/MessageInfo/mIssuccess I
return
.limit locals 2
.limit stack 2
.end method

.method public final setMsg(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/MessageInfo/mMsg Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setMsgtype(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/MessageInfo/mMsgtype I
return
.limit locals 2
.limit stack 2
.end method

.method public final setReceiver_ids(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/MessageInfo/receiverids Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setReceiveradmit(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/MessageInfo/receiveradmit I
return
.limit locals 2
.limit stack 2
.end method

.method public final setReplynum(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/MessageInfo/mReplynum I
return
.limit locals 2
.limit stack 2
.end method

.method public final setSelfuid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/MessageInfo/mSelfuid J
return
.limit locals 3
.limit stack 3
.end method

.method public final setSendtoname(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/MessageInfo/mSendtoname Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setSmsid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/MessageInfo/mSmsid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setSucnum(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/MessageInfo/mSucnum I
return
.limit locals 2
.limit stack 2
.end method

.method public final setTime(Ljava/util/Date;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/MessageInfo/mTime Ljava/util/Date;
return
.limit locals 2
.limit stack 2
.end method

.method public final setTotalnum(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/MessageInfo/mTotalnum I
return
.limit locals 2
.limit stack 2
.end method
