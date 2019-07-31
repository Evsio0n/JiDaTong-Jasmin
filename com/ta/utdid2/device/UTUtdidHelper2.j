.bytecode 50.0
.class public synchronized com/ta/utdid2/device/UTUtdidHelper2
.super java/lang/Object

.field private 'mAESKey' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "XwYp8WL8bm6S4wu6yEYmLGy4RRRdJDIhxCBdk3CiNZTwGoj1bScVZEeVp9vBiiIsgwDtqZHP8QLoFM6o6MRYjW8QqyrZBI654mqoUk5SOLDyzordzOU5QhYguEJh54q3K1KqMEXpdEQJJjs1Urqjm2s4jgPfCZ4hMuIjAMRrEQluA7FeoqWMJOwghcLcPVleQ8PLzAcaKidybmwhvNAxIyKRpbZlcDjNCcUvsJYvyzEA9VUIaHkIAJ62lpA3EE3H"
putfield com/ta/utdid2/device/UTUtdidHelper2/mAESKey Ljava/lang/String;
aload 0
aload 0
getfield com/ta/utdid2/device/UTUtdidHelper2/mAESKey Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
iconst_0
invokestatic com/ta/utdid2/android/utils/Base64/encodeToString([BI)Ljava/lang/String;
putfield com/ta/utdid2/device/UTUtdidHelper2/mAESKey Ljava/lang/String;
return
.limit locals 1
.limit stack 3
.end method

.method public dePack(Ljava/lang/String;)Ljava/lang/String;
aload 0
getfield com/ta/utdid2/device/UTUtdidHelper2/mAESKey Ljava/lang/String;
aload 1
invokestatic com/ta/utdid2/android/utils/AESUtils/decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public dePackWithBase64(Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
aload 0
getfield com/ta/utdid2/device/UTUtdidHelper2/mAESKey Ljava/lang/String;
aload 1
invokestatic com/ta/utdid2/android/utils/AESUtils/decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L3
L0:
new java/lang/String
dup
aload 1
iconst_0
invokestatic com/ta/utdid2/android/utils/Base64/decode(Ljava/lang/String;I)[B
invokespecial java/lang/String/<init>([B)V
astore 1
L1:
aload 1
areturn
L2:
astore 1
aconst_null
areturn
L3:
aconst_null
areturn
.limit locals 2
.limit stack 4
.end method
