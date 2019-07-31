.bytecode 50.0
.class public synchronized com/nd/android/u/contact/ui/bean/CallBackResult
.super java/lang/Object

.field public static 'FAILURE' I

.field public static 'SUCCESS' I

.field private 'code' I

.field private 'datas' Ljava/util/List; signature "Ljava/util/List<*>;"

.field private 'extras' Ljava/lang/Object;

.field private 'resId' I

.field private 'type' I

.method static <clinit>()V
iconst_0
putstatic com/nd/android/u/contact/ui/bean/CallBackResult/SUCCESS I
iconst_m1
putstatic com/nd/android/u/contact/ui/bean/CallBackResult/FAILURE I
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getCode()I
aload 0
getfield com/nd/android/u/contact/ui/bean/CallBackResult/code I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getDatas()Ljava/util/List;
.signature "()Ljava/util/List<*>;"
aload 0
getfield com/nd/android/u/contact/ui/bean/CallBackResult/datas Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getExtras()Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/ui/bean/CallBackResult/extras Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getResId()I
aload 0
getfield com/nd/android/u/contact/ui/bean/CallBackResult/resId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getType()I
aload 0
getfield com/nd/android/u/contact/ui/bean/CallBackResult/type I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setCode(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/ui/bean/CallBackResult/code I
return
.limit locals 2
.limit stack 2
.end method

.method public setDatas(Ljava/util/List;)V
.signature "(Ljava/util/List<*>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/ui/bean/CallBackResult/datas Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setExtras(Ljava/lang/Object;)V
aload 0
aload 1
putfield com/nd/android/u/contact/ui/bean/CallBackResult/extras Ljava/lang/Object;
return
.limit locals 2
.limit stack 2
.end method

.method public setResId(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/ui/bean/CallBackResult/resId I
return
.limit locals 2
.limit stack 2
.end method

.method public setType(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/ui/bean/CallBackResult/type I
return
.limit locals 2
.limit stack 2
.end method
