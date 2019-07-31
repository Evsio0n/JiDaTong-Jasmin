.bytecode 50.0
.class final synchronized com/product/android/commonInterface/chat/SearchContract$1
.super java/lang/Object
.implements android/os/Parcelable$Creator
.signature "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/product/android/commonInterface/chat/SearchContract;>;"
.enclosing method com/product/android/commonInterface/chat/SearchContract
.inner class static final inner com/product/android/commonInterface/chat/SearchContract$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lcom/product/android/commonInterface/chat/SearchContract;
new com/product/android/commonInterface/chat/SearchContract
dup
aload 1
aconst_null
invokespecial com/product/android/commonInterface/chat/SearchContract/<init>(Landroid/os/Parcel;Lcom/product/android/commonInterface/chat/SearchContract$1;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method public volatile synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
aload 0
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract$1/createFromParcel(Landroid/os/Parcel;)Lcom/product/android/commonInterface/chat/SearchContract;
areturn
.limit locals 2
.limit stack 2
.end method

.method public newArray(I)[Lcom/product/android/commonInterface/chat/SearchContract;
iload 1
anewarray com/product/android/commonInterface/chat/SearchContract
areturn
.limit locals 2
.limit stack 1
.end method

.method public volatile synthetic newArray(I)[Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract$1/newArray(I)[Lcom/product/android/commonInterface/chat/SearchContract;
areturn
.limit locals 2
.limit stack 2
.end method
