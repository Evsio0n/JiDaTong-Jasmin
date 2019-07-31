.bytecode 50.0
.class public synchronized com/product/android/commonInterface/contact/LocalSearchResult
.super java/lang/Object
.implements java/lang/Comparable
.signature "Ljava/lang/Object;Ljava/lang/Comparable<Lcom/product/android/commonInterface/contact/LocalSearchResult;>;"
.inner class public static final enum ResultType inner com/product/android/commonInterface/contact/LocalSearchResult$ResultType outer com/product/android/commonInterface/contact/LocalSearchResult

.field private 'description' Ljava/lang/String;

.field private 'displayId' Ljava/lang/String;

.field private 'groupType' I

.field private 'id' J

.field private 'name' Ljava/lang/String;

.field private 'type' Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;

.field private 'typeName' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_m1
putfield com/product/android/commonInterface/contact/LocalSearchResult/groupType I
return
.limit locals 1
.limit stack 2
.end method

.method public compareTo(Lcom/product/android/commonInterface/contact/LocalSearchResult;)I
aload 1
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getTypeName()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L0
aload 0
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getTypeName()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L1
L0:
iconst_0
ireturn
L1:
aload 0
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getName()Ljava/lang/String;
invokevirtual java/lang/String/length()I
aload 1
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getName()Ljava/lang/String;
invokevirtual java/lang/String/length()I
isub
ireturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic compareTo(Ljava/lang/Object;)I
aload 0
aload 1
checkcast com/product/android/commonInterface/contact/LocalSearchResult
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/compareTo(Lcom/product/android/commonInterface/contact/LocalSearchResult;)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getDescription()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/LocalSearchResult/description Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDisplayId()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/LocalSearchResult/displayId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getGroupType()I
aload 0
getfield com/product/android/commonInterface/contact/LocalSearchResult/groupType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getId()J
aload 0
getfield com/product/android/commonInterface/contact/LocalSearchResult/id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/LocalSearchResult/name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getType()Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
aload 0
getfield com/product/android/commonInterface/contact/LocalSearchResult/type Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTypeName()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/LocalSearchResult/typeName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setDescription(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/LocalSearchResult/description Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setDisplayId(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/LocalSearchResult/displayId Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setGroupType(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/LocalSearchResult/groupType I
return
.limit locals 2
.limit stack 2
.end method

.method public setId(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/contact/LocalSearchResult/id J
return
.limit locals 3
.limit stack 3
.end method

.method public setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/LocalSearchResult/name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setType(Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/LocalSearchResult/type Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
return
.limit locals 2
.limit stack 2
.end method

.method public setTypeName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/LocalSearchResult/typeName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "LocalSearchResult{id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/LocalSearchResult/id J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ", name='"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/LocalSearchResult/name Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 39
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
ldc ", typeName='"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/LocalSearchResult/typeName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 39
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
ldc ", type="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/LocalSearchResult/type Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ", groupType="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/LocalSearchResult/groupType I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", description='"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/LocalSearchResult/description Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 39
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
bipush 125
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method
