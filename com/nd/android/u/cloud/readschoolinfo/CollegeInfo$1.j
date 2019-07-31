.bytecode 50.0
.class synchronized com/nd/android/u/cloud/readschoolinfo/CollegeInfo$1
.super java/lang/Object
.implements android/os/Parcelable$Creator
.signature "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;>;"
.enclosing method com/nd/android/u/cloud/readschoolinfo/CollegeInfo
.inner class inner com/nd/android/u/cloud/readschoolinfo/CollegeInfo$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
new com/nd/android/u/cloud/readschoolinfo/CollegeInfo
dup
aload 1
invokespecial com/nd/android/u/cloud/readschoolinfo/CollegeInfo/<init>(Landroid/os/Parcel;)V
areturn
.limit locals 2
.limit stack 3
.end method

.method public volatile synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/readschoolinfo/CollegeInfo$1/createFromParcel(Landroid/os/Parcel;)Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public newArray(I)[Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
iload 1
anewarray com/nd/android/u/cloud/readschoolinfo/CollegeInfo
areturn
.limit locals 2
.limit stack 1
.end method

.method public volatile synthetic newArray(I)[Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/nd/android/u/cloud/readschoolinfo/CollegeInfo$1/newArray(I)[Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
areturn
.limit locals 2
.limit stack 2
.end method
