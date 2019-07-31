.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/GroupFruction
.super java/lang/Object

.field 'mFunName' Ljava/lang/String;

.field 'mIsCheck' I

.method public <init>(Ljava/lang/String;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/GroupFruction/mFunName Ljava/lang/String;
aload 0
iload 2
putfield com/nd/android/u/contact/dataStructure/GroupFruction/mIsCheck I
return
.limit locals 3
.limit stack 2
.end method

.method public final getFunName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/GroupFruction/mFunName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getIsCheck()I
aload 0
getfield com/nd/android/u/contact/dataStructure/GroupFruction/mIsCheck I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final setFunName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/GroupFruction/mFunName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setIsCheck(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/GroupFruction/mIsCheck I
return
.limit locals 2
.limit stack 2
.end method
