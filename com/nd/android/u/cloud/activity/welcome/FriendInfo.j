.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/welcome/FriendInfo
.super java/lang/Object

.field private 'mIsSelect' Z

.field private 'mName' Ljava/lang/String;

.field private 'mRelationship' I

.field private 'mUid' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/welcome/FriendInfo/mIsSelect Z
return
.limit locals 1
.limit stack 2
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/FriendInfo/mName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRelationship()I
aload 0
getfield com/nd/android/u/cloud/activity/welcome/FriendInfo/mRelationship I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUid()J
aload 0
getfield com/nd/android/u/cloud/activity/welcome/FriendInfo/mUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public isSelect()Z
aload 0
getfield com/nd/android/u/cloud/activity/welcome/FriendInfo/mIsSelect Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setIsSelect(Z)V
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/welcome/FriendInfo/mIsSelect Z
return
.limit locals 2
.limit stack 2
.end method

.method public setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/FriendInfo/mName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setRelationship(I)V
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/welcome/FriendInfo/mRelationship I
return
.limit locals 2
.limit stack 2
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/nd/android/u/cloud/activity/welcome/FriendInfo/mUid J
return
.limit locals 3
.limit stack 3
.end method
