.bytecode 50.0
.class final synchronized com/nd/android/backpacksystem/data/BaseItemProperty$1
.super java/lang/Object
.implements android/os/Parcelable$Creator
.signature "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/nd/android/backpacksystem/data/BaseItemProperty;>;"
.enclosing method com/nd/android/backpacksystem/data/BaseItemProperty
.inner class static final inner com/nd/android/backpacksystem/data/BaseItemProperty$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lcom/nd/android/backpacksystem/data/BaseItemProperty;
new com/nd/android/backpacksystem/data/BaseItemProperty
dup
aload 1
aconst_null
invokespecial com/nd/android/backpacksystem/data/BaseItemProperty/<init>(Landroid/os/Parcel;Lcom/nd/android/backpacksystem/data/BaseItemProperty$1;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method public volatile synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
aload 0
aload 1
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty$1/createFromParcel(Landroid/os/Parcel;)Lcom/nd/android/backpacksystem/data/BaseItemProperty;
areturn
.limit locals 2
.limit stack 2
.end method

.method public newArray(I)[Lcom/nd/android/backpacksystem/data/BaseItemProperty;
iload 1
anewarray com/nd/android/backpacksystem/data/BaseItemProperty
areturn
.limit locals 2
.limit stack 1
.end method

.method public volatile synthetic newArray(I)[Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty$1/newArray(I)[Lcom/nd/android/backpacksystem/data/BaseItemProperty;
areturn
.limit locals 2
.limit stack 2
.end method
