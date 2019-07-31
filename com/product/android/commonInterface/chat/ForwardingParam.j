.bytecode 50.0
.class public synchronized com/product/android/commonInterface/chat/ForwardingParam
.super java/lang/Object
.implements android/os/Parcelable
.inner class static final inner com/product/android/commonInterface/chat/ForwardingParam$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/product/android/commonInterface/chat/ForwardingParam;>;"

.field public 'mGenerateId' Ljava/lang/String;

.field public 'mId' J

.field public 'mMsgType' I

.method static <clinit>()V
new com/product/android/commonInterface/chat/ForwardingParam$1
dup
invokespecial com/product/android/commonInterface/chat/ForwardingParam$1/<init>()V
putstatic com/product/android/commonInterface/chat/ForwardingParam/CREATOR Landroid/os/Parcelable$Creator;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private <init>(Landroid/os/Parcel;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual android/os/Parcel/readLong()J
putfield com/product/android/commonInterface/chat/ForwardingParam/mId J
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/product/android/commonInterface/chat/ForwardingParam/mGenerateId Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readInt()I
putfield com/product/android/commonInterface/chat/ForwardingParam/mMsgType I
return
.limit locals 2
.limit stack 3
.end method

.method synthetic <init>(Landroid/os/Parcel;Lcom/product/android/commonInterface/chat/ForwardingParam$1;)V
aload 0
aload 1
invokespecial com/product/android/commonInterface/chat/ForwardingParam/<init>(Landroid/os/Parcel;)V
return
.limit locals 3
.limit stack 2
.end method

.method public describeContents()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield com/product/android/commonInterface/chat/ForwardingParam/mId J
invokevirtual android/os/Parcel/writeLong(J)V
aload 1
aload 0
getfield com/product/android/commonInterface/chat/ForwardingParam/mGenerateId Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/product/android/commonInterface/chat/ForwardingParam/mMsgType I
invokevirtual android/os/Parcel/writeInt(I)V
return
.limit locals 3
.limit stack 3
.end method
