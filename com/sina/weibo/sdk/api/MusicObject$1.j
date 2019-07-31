.bytecode 50.0
.class synchronized com/sina/weibo/sdk/api/MusicObject$1
.super java/lang/Object
.implements android/os/Parcelable$Creator
.signature "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/sina/weibo/sdk/api/MusicObject;>;"
.enclosing method com/sina/weibo/sdk/api/MusicObject
.inner class inner com/sina/weibo/sdk/api/MusicObject$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lcom/sina/weibo/sdk/api/MusicObject;
new com/sina/weibo/sdk/api/MusicObject
dup
aload 1
invokespecial com/sina/weibo/sdk/api/MusicObject/<init>(Landroid/os/Parcel;)V
areturn
.limit locals 2
.limit stack 3
.end method

.method public volatile synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
aload 0
aload 1
invokevirtual com/sina/weibo/sdk/api/MusicObject$1/createFromParcel(Landroid/os/Parcel;)Lcom/sina/weibo/sdk/api/MusicObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method public newArray(I)[Lcom/sina/weibo/sdk/api/MusicObject;
iload 1
anewarray com/sina/weibo/sdk/api/MusicObject
areturn
.limit locals 2
.limit stack 1
.end method

.method public volatile synthetic newArray(I)[Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/sina/weibo/sdk/api/MusicObject$1/newArray(I)[Lcom/sina/weibo/sdk/api/MusicObject;
areturn
.limit locals 2
.limit stack 2
.end method
