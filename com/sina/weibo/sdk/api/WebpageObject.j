.bytecode 50.0
.class public synchronized com/sina/weibo/sdk/api/WebpageObject
.super com/sina/weibo/sdk/api/BaseMediaObject
.inner class inner com/sina/weibo/sdk/api/WebpageObject$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/sina/weibo/sdk/api/WebpageObject;>;"

.method static <clinit>()V
new com/sina/weibo/sdk/api/WebpageObject$1
dup
invokespecial com/sina/weibo/sdk/api/WebpageObject$1/<init>()V
putstatic com/sina/weibo/sdk/api/WebpageObject/CREATOR Landroid/os/Parcelable$Creator;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial com/sina/weibo/sdk/api/BaseMediaObject/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Landroid/os/Parcel;)V
aload 0
aload 1
invokespecial com/sina/weibo/sdk/api/BaseMediaObject/<init>(Landroid/os/Parcel;)V
return
.limit locals 2
.limit stack 2
.end method

.method public checkArgs()Z
aload 0
invokespecial com/sina/weibo/sdk/api/BaseMediaObject/checkArgs()Z
ifne L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getObjType()I
iconst_5
ireturn
.limit locals 1
.limit stack 1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 0
aload 1
iload 2
invokespecial com/sina/weibo/sdk/api/BaseMediaObject/writeToParcel(Landroid/os/Parcel;I)V
return
.limit locals 3
.limit stack 3
.end method
