.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/structure/TeamInfoBean
.super java/lang/Object

.field private 'avatar' Ljava/lang/String;

.field private 'grade' I

.field private 'id' J

.field private 'intro' Ljava/lang/String;

.field private 'membernum' I

.field private 'name' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/name Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/intro Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/avatar Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public getAvatar()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/avatar Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getGrade()I
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/grade I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getId()J
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getIntro()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/intro Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMembernum()I
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/membernum I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setAvatar(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/avatar Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setGrade(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/grade I
return
.limit locals 2
.limit stack 2
.end method

.method public setId(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/id J
return
.limit locals 3
.limit stack 3
.end method

.method public setIntro(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/intro Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setMembernum(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/membernum I
return
.limit locals 2
.limit stack 2
.end method

.method public setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
