.bytecode 50.0
.class public synchronized com/weibo/sdk/android/WeiboParameters
.super java/lang/Object

.field private 'mKeys' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.field private 'mValues' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/weibo/sdk/android/WeiboParameters/mKeys Ljava/util/ArrayList;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/weibo/sdk/android/WeiboParameters/mValues Ljava/util/ArrayList;
return
.limit locals 1
.limit stack 3
.end method

.method private getLocation(Ljava/lang/String;)I
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mKeys Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mKeys Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/indexOf(Ljava/lang/Object;)I
ireturn
L0:
iconst_m1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public add(Ljava/lang/String;I)V
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mKeys Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mValues Ljava/util/ArrayList;
iload 2
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 3
.limit stack 2
.end method

.method public add(Ljava/lang/String;J)V
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mKeys Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mValues Ljava/util/ArrayList;
lload 2
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 4
.limit stack 3
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mKeys Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mValues Ljava/util/ArrayList;
aload 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L0:
return
.limit locals 3
.limit stack 2
.end method

.method public addAll(Lcom/weibo/sdk/android/WeiboParameters;)V
iconst_0
istore 2
L0:
iload 2
aload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/size()I
if_icmplt L1
return
L1:
aload 0
aload 1
iload 2
invokevirtual com/weibo/sdk/android/WeiboParameters/getKey(I)Ljava/lang/String;
aload 1
iload 2
invokevirtual com/weibo/sdk/android/WeiboParameters/getValue(I)Ljava/lang/String;
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
iload 2
iconst_1
iadd
istore 2
goto L0
.limit locals 3
.limit stack 4
.end method

.method public clear()V
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mKeys Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mValues Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
return
.limit locals 1
.limit stack 1
.end method

.method public getKey(I)Ljava/lang/String;
iload 1
iflt L0
iload 1
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mKeys Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mKeys Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
areturn
L0:
ldc ""
areturn
.limit locals 2
.limit stack 2
.end method

.method public getValue(I)Ljava/lang/String;
iload 1
iflt L0
iload 1
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mKeys Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mValues Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
invokespecial com/weibo/sdk/android/WeiboParameters/getLocation(Ljava/lang/String;)I
istore 2
iload 2
iflt L0
iload 2
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mKeys Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mValues Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
areturn
L0:
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method public remove(I)V
iload 1
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mKeys Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mKeys Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mValues Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public remove(Ljava/lang/String;)V
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mKeys Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/indexOf(Ljava/lang/Object;)I
istore 2
iload 2
iflt L0
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mKeys Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mValues Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
L0:
return
.limit locals 3
.limit stack 2
.end method

.method public size()I
aload 0
getfield com/weibo/sdk/android/WeiboParameters/mKeys Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method
