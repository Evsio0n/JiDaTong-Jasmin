.bytecode 50.0
.class public synchronized com/product/android/commonInterface/chat/SearchContactsItem
.super java/lang/Object

.field private 'mId' J

.field private 'mIsFriend' Z

.field private 'mUapUid' J

.field private 'mWorkid' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getId()J
aload 0
getfield com/product/android/commonInterface/chat/SearchContactsItem/mId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUapUid()J
aload 0
getfield com/product/android/commonInterface/chat/SearchContactsItem/mUapUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getWorkId()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/chat/SearchContactsItem/mWorkid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isFriend()Z
aload 0
getfield com/product/android/commonInterface/chat/SearchContactsItem/mIsFriend Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setFriendFlag(Z)V
aload 0
iload 1
putfield com/product/android/commonInterface/chat/SearchContactsItem/mIsFriend Z
return
.limit locals 2
.limit stack 2
.end method

.method public setId(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/chat/SearchContactsItem/mId J
return
.limit locals 3
.limit stack 3
.end method

.method public setUapUid(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/chat/SearchContactsItem/mUapUid J
return
.limit locals 3
.limit stack 3
.end method

.method public setWorkId(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/chat/SearchContactsItem/mWorkid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
