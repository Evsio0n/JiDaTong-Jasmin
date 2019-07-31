.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/readschoolinfo/CollegeInfo
.super java/lang/Object
.implements android/os/Parcelable
.inner class inner com/nd/android/u/cloud/readschoolinfo/CollegeInfo$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;>;"

.field private 'mUnitCode' Ljava/lang/String;

.field private 'mUnitName' Ljava/lang/String;

.method static <clinit>()V
new com/nd/android/u/cloud/readschoolinfo/CollegeInfo$1
dup
invokespecial com/nd/android/u/cloud/readschoolinfo/CollegeInfo$1/<init>()V
putstatic com/nd/android/u/cloud/readschoolinfo/CollegeInfo/CREATOR Landroid/os/Parcelable$Creator;
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

.method public <init>(Landroid/os/Parcel;)V
aload 0
invokespecial java/lang/Object/<init>()V
iconst_2
anewarray java/lang/String
astore 2
aload 1
aload 2
invokevirtual android/os/Parcel/readStringArray([Ljava/lang/String;)V
aload 0
aload 2
iconst_0
aaload
putfield com/nd/android/u/cloud/readschoolinfo/CollegeInfo/mUnitCode Ljava/lang/String;
aload 0
aload 2
iconst_1
aaload
putfield com/nd/android/u/cloud/readschoolinfo/CollegeInfo/mUnitName Ljava/lang/String;
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/android/u/cloud/readschoolinfo/CollegeInfo/mUnitCode Ljava/lang/String;
aload 0
aload 2
putfield com/nd/android/u/cloud/readschoolinfo/CollegeInfo/mUnitName Ljava/lang/String;
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

.method public getUnitCode()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/readschoolinfo/CollegeInfo/mUnitCode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUnitName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/readschoolinfo/CollegeInfo/mUnitName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/android/u/cloud/readschoolinfo/CollegeInfo/mUnitCode Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/readschoolinfo/CollegeInfo/mUnitName Ljava/lang/String;
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

.method public setUnitCode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/readschoolinfo/CollegeInfo/mUnitCode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUnitName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/readschoolinfo/CollegeInfo/mUnitName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "name:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/readschoolinfo/CollegeInfo/mUnitName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ",code:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/readschoolinfo/CollegeInfo/mUnitCode Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 1
iconst_2
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/android/u/cloud/readschoolinfo/CollegeInfo/mUnitCode Ljava/lang/String;
aastore
dup
iconst_1
aload 0
getfield com/nd/android/u/cloud/readschoolinfo/CollegeInfo/mUnitName Ljava/lang/String;
aastore
invokevirtual android/os/Parcel/writeStringArray([Ljava/lang/String;)V
return
.limit locals 3
.limit stack 5
.end method
