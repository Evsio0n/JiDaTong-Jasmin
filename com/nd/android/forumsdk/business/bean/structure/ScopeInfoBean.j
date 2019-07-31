.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = 1L


.field private 'avatar' Ljava/lang/String;

.field private 'id' J

.field private 'intro' Ljava/lang/String;

.field private 'name' Ljava/lang/String;

.field private 'role' I

.field private 'total' I

.field private 'type' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/name Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/intro Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/avatar Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public getAvatar()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/avatar Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getId()J
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getIntro()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/intro Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRole()I
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/role I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTotal()I
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/total I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getType()I
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/type I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setAvatar(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/avatar Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setId(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/id J
return
.limit locals 3
.limit stack 3
.end method

.method public setIntro(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/intro Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setRole(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/role I
return
.limit locals 2
.limit stack 2
.end method

.method public setTotal(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/total I
return
.limit locals 2
.limit stack 2
.end method

.method public setType(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/type I
return
.limit locals 2
.limit stack 2
.end method
