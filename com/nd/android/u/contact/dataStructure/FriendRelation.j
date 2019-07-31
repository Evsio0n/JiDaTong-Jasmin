.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/FriendRelation
.super java/lang/Object

.field 'mFgid' I

.field 'mFid' J

.field 'mUid' J

.field 'note' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(JJILjava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/FriendRelation/mUid J
aload 0
lload 3
putfield com/nd/android/u/contact/dataStructure/FriendRelation/mFid J
aload 0
iload 5
putfield com/nd/android/u/contact/dataStructure/FriendRelation/mFgid I
aload 0
aload 6
putfield com/nd/android/u/contact/dataStructure/FriendRelation/note Ljava/lang/String;
return
.limit locals 7
.limit stack 3
.end method

.method public final getFgid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendRelation/mFgid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getFid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendRelation/mFid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final getNode()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendRelation/note Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getUid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendRelation/mUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final setFgid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/FriendRelation/mFgid I
return
.limit locals 2
.limit stack 2
.end method

.method public final setFid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/FriendRelation/mFid J
return
.limit locals 3
.limit stack 3
.end method

.method public final setNoTe(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/FriendRelation/note Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setUid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/FriendRelation/mUid J
return
.limit locals 3
.limit stack 3
.end method
