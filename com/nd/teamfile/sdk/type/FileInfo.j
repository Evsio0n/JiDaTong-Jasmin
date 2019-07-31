.bytecode 50.0
.class public synchronized com/nd/teamfile/sdk/type/FileInfo
.super java/lang/Object
.implements com/common/android/utils/parser/BaseType
.implements java/io/Serializable

.field public static final 'STATE_UPLOAD_FINISHED' I = 1


.field public static final 'STATE_UPLOAD_UNFINISHED_ERROR' I = 0


.field private static final 'serialVersionUID' J = 2730720939673831153L


.field private 'createTime' J

.field private 'createUsername' Ljava/lang/String;

.field private 'createrUid' J

.field private 'currentUpLoadOrDownloadProgress' I

.field private 'gid' J

.field private 'id' Ljava/lang/String;

.field private 'isDowning' Z

.field private 'keyId' I

.field private 'localCachePath' Ljava/lang/String;

.field private 'mFilepath' Ljava/lang/String;

.field private 'md5' Ljava/lang/String;

.field private 'name' Ljava/lang/String;

.field private 'sha1' Ljava/lang/String;

.field private 'size' J

.field private 'state' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Ljava/lang/String;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/teamfile/sdk/type/FileInfo/name Ljava/lang/String;
aload 0
iload 2
putfield com/nd/teamfile/sdk/type/FileInfo/state I
return
.limit locals 3
.limit stack 2
.end method

.method public getCreateTime()J
aload 0
getfield com/nd/teamfile/sdk/type/FileInfo/createTime J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getCreateUsername()Ljava/lang/String;
aload 0
getfield com/nd/teamfile/sdk/type/FileInfo/createUsername Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCreaterUid()J
aload 0
getfield com/nd/teamfile/sdk/type/FileInfo/createrUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getCurrentUpLoadOrDownloadProgress()I
aload 0
getfield com/nd/teamfile/sdk/type/FileInfo/currentUpLoadOrDownloadProgress I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFilepath()Ljava/lang/String;
aload 0
getfield com/nd/teamfile/sdk/type/FileInfo/mFilepath Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getGid()J
aload 0
getfield com/nd/teamfile/sdk/type/FileInfo/gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getId()Ljava/lang/String;
aload 0
getfield com/nd/teamfile/sdk/type/FileInfo/id Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getKeyId()I
aload 0
getfield com/nd/teamfile/sdk/type/FileInfo/keyId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLocalCachePath()Ljava/lang/String;
aload 0
getfield com/nd/teamfile/sdk/type/FileInfo/localCachePath Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMd5()Ljava/lang/String;
aload 0
getfield com/nd/teamfile/sdk/type/FileInfo/md5 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/nd/teamfile/sdk/type/FileInfo/name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSha1()Ljava/lang/String;
aload 0
getfield com/nd/teamfile/sdk/type/FileInfo/sha1 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSize()J
aload 0
getfield com/nd/teamfile/sdk/type/FileInfo/size J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getState()I
aload 0
getfield com/nd/teamfile/sdk/type/FileInfo/state I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isDownloaded()Z
aload 0
getfield com/nd/teamfile/sdk/type/FileInfo/localCachePath Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isDownloading()Z
aload 0
getfield com/nd/teamfile/sdk/type/FileInfo/isDowning Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setCreateTime(J)V
aload 0
lload 1
putfield com/nd/teamfile/sdk/type/FileInfo/createTime J
return
.limit locals 3
.limit stack 3
.end method

.method public setCreateUsername(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/teamfile/sdk/type/FileInfo/createUsername Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setCreaterUid(J)V
aload 0
lload 1
putfield com/nd/teamfile/sdk/type/FileInfo/createrUid J
return
.limit locals 3
.limit stack 3
.end method

.method public setCurrentUpLoadOrDownloadProgress(I)V
aload 0
iload 1
putfield com/nd/teamfile/sdk/type/FileInfo/currentUpLoadOrDownloadProgress I
return
.limit locals 2
.limit stack 2
.end method

.method public setDownloading(Z)V
aload 0
iload 1
putfield com/nd/teamfile/sdk/type/FileInfo/isDowning Z
return
.limit locals 2
.limit stack 2
.end method

.method public setFilepath(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/teamfile/sdk/type/FileInfo/mFilepath Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setGid(J)V
aload 0
lload 1
putfield com/nd/teamfile/sdk/type/FileInfo/gid J
return
.limit locals 3
.limit stack 3
.end method

.method public setId(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/teamfile/sdk/type/FileInfo/id Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setKeyId(I)V
aload 0
iload 1
putfield com/nd/teamfile/sdk/type/FileInfo/keyId I
return
.limit locals 2
.limit stack 2
.end method

.method public setLocalCachePath(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/teamfile/sdk/type/FileInfo/localCachePath Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setMd5(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/teamfile/sdk/type/FileInfo/md5 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/teamfile/sdk/type/FileInfo/name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSha1(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/teamfile/sdk/type/FileInfo/sha1 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSize(J)V
aload 0
lload 1
putfield com/nd/teamfile/sdk/type/FileInfo/size J
return
.limit locals 3
.limit stack 3
.end method

.method public setState(I)V
aload 0
iload 1
putfield com/nd/teamfile/sdk/type/FileInfo/state I
return
.limit locals 2
.limit stack 2
.end method
