.bytecode 50.0
.class public synchronized com/product/android/commonInterface/weibo/FlowerMessageInfo
.super java/lang/Object
.implements com/common/android/utils/parser/BaseType
.implements java/io/Serializable
.inner class public FlowerMsgContentType inner com/product/android/commonInterface/weibo/FlowerMessageInfo$FlowerMsgContentType outer com/product/android/commonInterface/weibo/FlowerMessageInfo
.inner class public FlowerMsgRecordState inner com/product/android/commonInterface/weibo/FlowerMessageInfo$FlowerMsgRecordState outer com/product/android/commonInterface/weibo/FlowerMessageInfo
.inner class public FlowerMsgType inner com/product/android/commonInterface/weibo/FlowerMessageInfo$FlowerMsgType outer com/product/android/commonInterface/weibo/FlowerMessageInfo

.field public static final 'serialVersionUID' J = 2979717219746213786L


.field public 'contentType' I

.field public 'isSend' I

.field public 'msg_text' Ljava/lang/String;

.field public 'msg_voice' Ljava/lang/String;

.field public 'msg_voice_local' Ljava/lang/String;

.field public 'receiveFlowerNum' I

.field public 'state' I

.field public 'type' I

.field public 'uid' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getMsgVoiceLocal()Ljava/lang/String;
.catch java/io/IOException from L0 to L1 using L2
aload 0
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_voice_local Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 0
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_voice_local Ljava/lang/String;
areturn
L3:
aload 0
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_voice Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
L0:
aload 0
aload 0
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_voice Ljava/lang/String;
invokestatic com/product/android/utils/FileHelper/getDefaultAudioFile(Ljava/lang/String;)Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
putfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_voice_local Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_voice_local Ljava/lang/String;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
L4:
ldc ""
areturn
.limit locals 2
.limit stack 2
.end method

.method public setContentType(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/weibo/FlowerMessageInfo/contentType I
return
.limit locals 2
.limit stack 2
.end method

.method public setMsgText(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_text Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setMsgVoice(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_voice Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setMsgVoiceLocal(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_voice_local Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setState(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/weibo/FlowerMessageInfo/state I
return
.limit locals 2
.limit stack 2
.end method

.method public setType(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/weibo/FlowerMessageInfo/type I
return
.limit locals 2
.limit stack 2
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/weibo/FlowerMessageInfo/uid J
return
.limit locals 3
.limit stack 3
.end method
