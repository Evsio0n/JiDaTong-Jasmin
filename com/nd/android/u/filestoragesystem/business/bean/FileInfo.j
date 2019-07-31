.bytecode 50.0
.class public synchronized com/nd/android/u/filestoragesystem/business/bean/FileInfo
.super java/lang/Object
.implements com/common/android/utils/parser/BaseType
.implements com/nd/android/u/filestoragesystem/externalInterface/IFile

.field private static final 'serialVersionUID' J = 1L


.field private 'mAppid' I

.field private 'mCloudid' Ljava/lang/String;

.field private 'mExt' Ljava/lang/String;

.field private 'mFid' J

.field private 'mFlag' I

.field private 'mFolderid' J

.field private 'mHeight' I

.field private 'mHits' I

.field private 'mId' J

.field private 'mInfo' Lorg/json/JSONObject;

.field private 'mInterActionAttr' Lcom/nd/android/u/filestoragesystem/externalInterface/IInterActionAttr;

.field private 'mIp' Ljava/lang/String;

.field private 'mLocal' Ljava/lang/String;

.field private 'mMd5' Ljava/lang/String;

.field private 'mMime' Ljava/lang/String;

.field private 'mName' Ljava/lang/String;

.field private 'mPath' Ljava/lang/String;

.field private 'mSize' J

.field private 'mSort' Ljava/lang/String;

.field private 'mTime' J

.field private 'mType' I

.field private 'mWidth' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getAppid()I
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mAppid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCloudid()Ljava/lang/String;
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mCloudid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getExt()Ljava/lang/String;
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mExt Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFid()J
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mFid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getFlag()I
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mFlag I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFolderid()J
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mFolderid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getHeight()I
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mHeight I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getHits()I
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mHits I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getId()J
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getInfo()Lorg/json/JSONObject;
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mInfo Lorg/json/JSONObject;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getInterActionAttr()Lcom/nd/android/u/filestoragesystem/externalInterface/IInterActionAttr;
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mInterActionAttr Lcom/nd/android/u/filestoragesystem/externalInterface/IInterActionAttr;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getIp()Ljava/lang/String;
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mIp Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getLocal()Ljava/lang/String;
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mLocal Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMd5()Ljava/lang/String;
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mMd5 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMime()Ljava/lang/String;
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mMime Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPath()Ljava/lang/String;
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mPath Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSize()J
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mSize J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getSort()Ljava/lang/String;
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mSort Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTime()J
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mTime J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getType()I
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getWidth()I
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mWidth I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setAppid(I)V
aload 0
iload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mAppid I
return
.limit locals 2
.limit stack 2
.end method

.method public setCloudid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mCloudid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setExt(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mExt Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFid(J)V
aload 0
lload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mFid J
return
.limit locals 3
.limit stack 3
.end method

.method public setFlag(I)V
aload 0
iload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mFlag I
return
.limit locals 2
.limit stack 2
.end method

.method public setFolderid(J)V
aload 0
lload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mFolderid J
return
.limit locals 3
.limit stack 3
.end method

.method public setHeight(I)V
aload 0
iload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mHeight I
return
.limit locals 2
.limit stack 2
.end method

.method public setHits(I)V
aload 0
iload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mHits I
return
.limit locals 2
.limit stack 2
.end method

.method public setId(J)V
aload 0
lload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mId J
return
.limit locals 3
.limit stack 3
.end method

.method public setInfo(Lorg/json/JSONObject;)V
aload 0
aload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mInfo Lorg/json/JSONObject;
return
.limit locals 2
.limit stack 2
.end method

.method public setInterActionAttr(Lcom/nd/android/u/filestoragesystem/externalInterface/IInterActionAttr;)V
aload 0
aload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mInterActionAttr Lcom/nd/android/u/filestoragesystem/externalInterface/IInterActionAttr;
return
.limit locals 2
.limit stack 2
.end method

.method public setIp(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mIp Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setLocal(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mLocal Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setMd5(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mMd5 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setMime(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mMime Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPath(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mPath Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSize(J)V
aload 0
lload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mSize J
return
.limit locals 3
.limit stack 3
.end method

.method public setSort(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mSort Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setTime(J)V
aload 0
lload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mTime J
return
.limit locals 3
.limit stack 3
.end method

.method public setType(I)V
aload 0
iload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mType I
return
.limit locals 2
.limit stack 2
.end method

.method public setWidth(I)V
aload 0
iload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FileInfo/mWidth I
return
.limit locals 2
.limit stack 2
.end method
