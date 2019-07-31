.bytecode 50.0
.class public synchronized com/nd/android/u/filestoragesystem/business/bean/FolderInfo
.super java/lang/Object
.implements com/common/android/utils/parser/BaseType
.implements com/nd/android/u/filestoragesystem/externalInterface/IFolder

.field public 'appid' I

.field public 'cloudid' Ljava/lang/String;

.field public 'folderid' J

.field public 'id' J

.field public 'ip' Ljava/lang/String;

.field public 'mDefault_fid' J

.field public 'mFiles' I

.field public 'mFolders' I

.field 'mInfo' Lorg/json/JSONObject;

.field public 'mLast_fid' J

.field public 'mLocation' Ljava/lang/String;

.field public 'mName' Ljava/lang/String;

.field public 'mPath' Ljava/lang/String;

.field public 'mTime' J

.field public 'open' I

.field public 'type' I

.field public 'up_id' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getCreateTime()J
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FolderInfo/mTime J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getDefaultId()J
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FolderInfo/mDefault_fid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getFiles()I
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FolderInfo/mFiles I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFolderId()J
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FolderInfo/folderid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getFolderInfo()Lorg/json/JSONObject;
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FolderInfo/mInfo Lorg/json/JSONObject;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFolderName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FolderInfo/mName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFolders()I
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FolderInfo/mFolders I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLastFid()J
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FolderInfo/mLast_fid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getLocation()Ljava/lang/String;
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FolderInfo/mLocation Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPath()Ljava/lang/String;
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FolderInfo/mPath Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUpFolderId()J
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/FolderInfo/up_id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public setCreateTime(J)V
aload 0
lload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FolderInfo/mTime J
return
.limit locals 3
.limit stack 3
.end method

.method public setDefaultId(J)V
aload 0
lload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FolderInfo/mDefault_fid J
return
.limit locals 3
.limit stack 3
.end method

.method public setFiles(I)V
aload 0
iload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FolderInfo/mFiles I
return
.limit locals 2
.limit stack 2
.end method

.method public setFolderId(J)V
aload 0
lload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FolderInfo/folderid J
return
.limit locals 3
.limit stack 3
.end method

.method public setFolderInfo(Lorg/json/JSONObject;)V
aload 0
aload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FolderInfo/mInfo Lorg/json/JSONObject;
return
.limit locals 2
.limit stack 2
.end method

.method public setFolderName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FolderInfo/mName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFolders(I)V
aload 0
iload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FolderInfo/mFolders I
return
.limit locals 2
.limit stack 2
.end method

.method public setLastFid(J)V
aload 0
lload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FolderInfo/mLast_fid J
return
.limit locals 3
.limit stack 3
.end method

.method public setLocation(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FolderInfo/mLocation Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPath(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FolderInfo/mPath Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUpFolderId(J)V
aload 0
lload 1
putfield com/nd/android/u/filestoragesystem/business/bean/FolderInfo/up_id J
return
.limit locals 3
.limit stack 3
.end method
