.bytecode 50.0
.class public synchronized com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio
.super com/nd/android/u/bean4xy/DisplayMessage_Person

.method public <init>()V
aload 0
invokespecial com/nd/android/u/bean4xy/DisplayMessage_Person/<init>()V
aload 0
iconst_3
putfield com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio/messageContentType I
aload 0
iconst_0
putfield com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio/isSaveToDb Z
aload 0
iconst_0
putfield com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio/isValidInList Z
return
.limit locals 1
.limit stack 2
.end method

.method public getFile()Ljava/io/File;
.catch java/io/IOException from L0 to L1 using L2
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio/mDownloadFile Ljava/io/File;
ifnonnull L1
L0:
aload 0
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio/url Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/FileHelper/getDefaultAudioFile(Ljava/lang/String;)Ljava/io/File;
putfield com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio/mDownloadFile Ljava/io/File;
L1:
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio/mDownloadFile Ljava/io/File;
areturn
L2:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L1
.limit locals 2
.limit stack 2
.end method

.method public getPath()Ljava/lang/String;
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio/filePath Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio/getFile()Ljava/io/File;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual java/io/File/exists()Z
ifeq L0
aload 0
aload 1
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
putfield com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio/filePath Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio/getDuration()I
ifgt L0
aload 0
aconst_null
putfield com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio/filePath Ljava/lang/String;
L0:
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio/filePath Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public prepareMessage()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method
