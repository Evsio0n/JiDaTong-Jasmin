.bytecode 50.0
.class public synchronized com/common/android/utils/download/DownLoadData
.super java/lang/Object

.field public static final 'DOWNLOADING' I = 2


.field public static final 'FAIL' I = 1


.field public static final 'STOP' I = 3


.field public static final 'SUCCESS' I = 0


.field public static final 'TO_START' I = 4


.field private 'mErrorMsg' Ljava/lang/String;

.field private 'mFileName' Ljava/lang/String;

.field private 'mIsChaterDownload' Z

.field private 'mLastModify' Ljava/lang/String;

.field private 'mServerFileName' Ljava/lang/String;

.field private 'mSize' J

.field private 'mState' I

.field private 'mUrl' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/common/android/utils/download/DownLoadData/mUrl Ljava/lang/String;
aload 0
ldc ""
putfield com/common/android/utils/download/DownLoadData/mFileName Ljava/lang/String;
aload 0
lconst_0
putfield com/common/android/utils/download/DownLoadData/mSize J
aload 0
ldc ""
putfield com/common/android/utils/download/DownLoadData/mLastModify Ljava/lang/String;
aload 0
iconst_4
putfield com/common/android/utils/download/DownLoadData/mState I
aload 0
iconst_0
putfield com/common/android/utils/download/DownLoadData/mIsChaterDownload Z
aload 0
ldc ""
putfield com/common/android/utils/download/DownLoadData/mServerFileName Ljava/lang/String;
aload 0
ldc ""
putfield com/common/android/utils/download/DownLoadData/mErrorMsg Ljava/lang/String;
return
.limit locals 1
.limit stack 3
.end method

.method public getErrorMsg()Ljava/lang/String;
aload 0
getfield com/common/android/utils/download/DownLoadData/mErrorMsg Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFileName()Ljava/lang/String;
aload 0
getfield com/common/android/utils/download/DownLoadData/mFileName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getLastModify()Ljava/lang/String;
aload 0
getfield com/common/android/utils/download/DownLoadData/mLastModify Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getServerFileName()Ljava/lang/String;
aload 0
getfield com/common/android/utils/download/DownLoadData/mServerFileName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSize()J
aload 0
getfield com/common/android/utils/download/DownLoadData/mSize J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getState()I
aload 0
getfield com/common/android/utils/download/DownLoadData/mState I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUrl()Ljava/lang/String;
aload 0
getfield com/common/android/utils/download/DownLoadData/mUrl Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isChaterDownload()Z
aload 0
getfield com/common/android/utils/download/DownLoadData/mIsChaterDownload Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public parseFromJSONString(Ljava/lang/String;)Z
.catch org/json/JSONException from L0 to L1 using L2
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 0
aload 1
ldc "mUrl"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/common/android/utils/download/DownLoadData/mUrl Ljava/lang/String;
aload 0
aload 1
ldc "mSize"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
putfield com/common/android/utils/download/DownLoadData/mSize J
aload 0
aload 1
ldc "mLastModify"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/common/android/utils/download/DownLoadData/mLastModify Ljava/lang/String;
aload 0
aload 1
ldc "mFileName"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/common/android/utils/download/DownLoadData/mFileName Ljava/lang/String;
aload 0
aload 1
ldc "mState"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
putfield com/common/android/utils/download/DownLoadData/mState I
aload 0
aload 1
ldc "mErrorMsg"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/common/android/utils/download/DownLoadData/mErrorMsg Ljava/lang/String;
L1:
iconst_1
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method public setErrorMsg(Ljava/lang/String;)V
aload 0
aload 1
putfield com/common/android/utils/download/DownLoadData/mErrorMsg Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFileName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/common/android/utils/download/DownLoadData/mFileName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setIsChaterDownload(Z)V
aload 0
iload 1
putfield com/common/android/utils/download/DownLoadData/mIsChaterDownload Z
return
.limit locals 2
.limit stack 2
.end method

.method public setLastModify(Ljava/lang/String;)V
aload 0
aload 1
putfield com/common/android/utils/download/DownLoadData/mLastModify Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setServerFileName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/common/android/utils/download/DownLoadData/mServerFileName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSize(J)V
aload 0
lload 1
putfield com/common/android/utils/download/DownLoadData/mSize J
return
.limit locals 3
.limit stack 3
.end method

.method public setState(I)V
aload 0
iload 1
putfield com/common/android/utils/download/DownLoadData/mState I
return
.limit locals 2
.limit stack 2
.end method

.method public setUrl(Ljava/lang/String;)V
aload 0
aload 1
putfield com/common/android/utils/download/DownLoadData/mUrl Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public toJSONString()Ljava/lang/String;
.catch org/json/JSONException from L0 to L1 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
L0:
aload 1
ldc "mUrl"
aload 0
getfield com/common/android/utils/download/DownLoadData/mUrl Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "mSize"
aload 0
getfield com/common/android/utils/download/DownLoadData/mSize J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 1
ldc "mLastModify"
aload 0
getfield com/common/android/utils/download/DownLoadData/mLastModify Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "mFileName"
aload 0
getfield com/common/android/utils/download/DownLoadData/mFileName Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "mState"
aload 0
getfield com/common/android/utils/download/DownLoadData/mState I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 1
ldc "mErrorMsg"
aload 0
getfield com/common/android/utils/download/DownLoadData/mErrorMsg Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 1
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 4
.end method
